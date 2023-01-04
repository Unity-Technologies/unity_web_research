struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_162 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_365 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1683 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2147 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2255 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat41 : f32;
  var u_xlat3 : vec3<f32>;
  var x_104 : f32;
  var x_118 : f32;
  var x_130 : f32;
  var u_xlat21 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var u_xlat24 : f32;
  var u_xlat60 : f32;
  var u_xlat44 : f32;
  var u_xlatb64 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat64 : f32;
  var u_xlatb65 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat65 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat26 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec3<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb7 : vec2<bool>;
  var x_1768 : f32;
  var x_1779 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat61 : f32;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu62 : u32;
  var u_xlati64 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu66 : u32;
  var u_xlati47 : i32;
  var u_xlati66 : i32;
  var u_xlati67 : i32;
  var u_xlatb66 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlatb47 : vec2<bool>;
  var u_xlat47 : vec2<f32>;
  var x_2549 : f32;
  var x_2562 : f32;
  var x_2614 : f32;
  var x_2625 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1.x = x_63.x;
  let x_72 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb21 = (x_72 == 0.0f);
  let x_78 : vec3<f32> = vs_TEXCOORD7;
  let x_83 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_84 : vec3<f32> = (-(x_78) + x_83);
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_88 : vec4<f32> = u_xlat2;
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat41 = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_93 : f32 = u_xlat41;
  u_xlat41 = inverseSqrt(x_93);
  let x_95 : f32 = u_xlat41;
  let x_97 : vec4<f32> = u_xlat2;
  let x_99 : vec3<f32> = (vec3<f32>(x_95, x_95, x_95) * vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_100 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_99.x, x_99.y, x_99.z, x_100.w);
  let x_103 : bool = u_xlatb21;
  if (x_103) {
    let x_108 : f32 = u_xlat2.x;
    x_104 = x_108;
  } else {
    let x_114 : f32 = x_44.unity_MatrixV[0i].z;
    x_104 = x_114;
  }
  let x_115 : f32 = x_104;
  u_xlat3.x = x_115;
  let x_117 : bool = u_xlatb21;
  if (x_117) {
    let x_123 : f32 = u_xlat2.y;
    x_118 = x_123;
  } else {
    let x_126 : f32 = x_44.unity_MatrixV[1i].z;
    x_118 = x_126;
  }
  let x_127 : f32 = x_118;
  u_xlat3.y = x_127;
  let x_129 : bool = u_xlatb21;
  if (x_129) {
    let x_134 : f32 = u_xlat2.z;
    x_130 = x_134;
  } else {
    let x_138 : f32 = x_44.unity_MatrixV[2i].z;
    x_130 = x_138;
  }
  let x_139 : f32 = x_130;
  u_xlat3.z = x_139;
  let x_143 : vec3<f32> = vs_TEXCOORD3;
  let x_144 : vec3<f32> = vs_TEXCOORD3;
  u_xlat21.x = dot(x_143, x_144);
  let x_148 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_148);
  let x_151 : vec3<f32> = u_xlat21;
  let x_153 : vec3<f32> = vs_TEXCOORD3;
  let x_154 : vec3<f32> = (vec3<f32>(x_151.x, x_151.x, x_151.x) * x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  u_xlat2.w = 1.0f;
  let x_166 : vec4<f32> = x_162.unity_SHAr;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_166, x_167);
  let x_172 : vec4<f32> = x_162.unity_SHAg;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_172, x_173);
  let x_178 : vec4<f32> = x_162.unity_SHAb;
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_178, x_179);
  let x_183 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_183.y, x_183.z, x_183.z, x_183.x) * vec4<f32>(x_185.x, x_185.y, x_185.z, x_185.z));
  let x_191 : vec4<f32> = x_162.unity_SHBr;
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_162.unity_SHBg;
  let x_198 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_197, x_198);
  let x_203 : vec4<f32> = x_162.unity_SHBb;
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_203, x_204);
  let x_208 : f32 = u_xlat2.y;
  let x_210 : f32 = u_xlat2.y;
  u_xlat21.x = (x_208 * x_210);
  let x_214 : f32 = u_xlat2.x;
  let x_216 : f32 = u_xlat2.x;
  let x_219 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_214 * x_216) + -(x_219));
  let x_225 : vec4<f32> = x_162.unity_SHC;
  let x_227 : vec3<f32> = u_xlat21;
  let x_230 : vec4<f32> = u_xlat6;
  u_xlat21 = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.x, x_227.x, x_227.x)) + vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec3<f32> = u_xlat21;
  let x_234 : vec3<f32> = u_xlat4;
  u_xlat21 = (x_233 + x_234);
  let x_236 : vec3<f32> = u_xlat21;
  u_xlat21 = max(x_236, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_241 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_242 : vec2<f32> = vec2<f32>(x_241.x, x_241.y);
  let x_246 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_242.x, x_242.y));
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_246.x, x_246.y, x_247.z);
  let x_249 : vec3<f32> = u_xlat4;
  let x_251 : vec4<f32> = hlslcc_FragCoord;
  let x_253 : vec2<f32> = (vec2<f32>(x_249.x, x_249.y) * vec2<f32>(x_251.x, x_251.y));
  let x_254 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_253.x, x_253.y, x_254.z);
  let x_258 : f32 = u_xlat4.y;
  let x_261 : f32 = x_44.x_ScaleBiasRt.x;
  let x_264 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat62 = ((x_258 * x_261) + x_264);
  let x_266 : f32 = u_xlat62;
  u_xlat4.z = (-(x_266) + 1.0f);
  let x_271 : f32 = u_xlat1.x;
  u_xlat62 = ((-(x_271) * 0.959999979f) + 0.959999979f);
  let x_277 : f32 = u_xlat62;
  u_xlat63 = (-(x_277) + 1.0f);
  let x_280 : vec4<f32> = u_xlat0;
  let x_282 : f32 = u_xlat62;
  let x_284 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282, x_282, x_282));
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat0;
  let x_291 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec3<f32> = u_xlat1;
  let x_296 : vec4<f32> = u_xlat0;
  let x_301 : vec3<f32> = ((vec3<f32>(x_294.x, x_294.x, x_294.x) * vec3<f32>(x_296.x, x_296.y, x_296.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_302 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_305) + 1.0f);
  let x_310 : f32 = u_xlat1.x;
  let x_312 : f32 = u_xlat1.x;
  u_xlat62 = (x_310 * x_312);
  let x_314 : f32 = u_xlat62;
  u_xlat62 = max(x_314, 0.0078125f);
  let x_318 : f32 = u_xlat62;
  let x_319 : f32 = u_xlat62;
  u_xlat24 = (x_318 * x_319);
  let x_323 : f32 = u_xlat0.w;
  let x_324 : f32 = u_xlat63;
  u_xlat60 = (x_323 + x_324);
  let x_326 : f32 = u_xlat60;
  u_xlat60 = clamp(x_326, 0.0f, 1.0f);
  let x_328 : f32 = u_xlat62;
  u_xlat63 = ((x_328 * 4.0f) + 2.0f);
  let x_338 : vec3<f32> = u_xlat4;
  let x_341 : f32 = x_44.x_GlobalMipBias.x;
  let x_342 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_338.x, x_338.z), x_341);
  u_xlat4.x = x_342.x;
  let x_347 : f32 = u_xlat4.x;
  u_xlat44 = (x_347 + -1.0f);
  let x_352 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_353 : f32 = u_xlat44;
  u_xlat44 = ((x_352 * x_353) + 1.0f);
  let x_357 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_357, 1.0f);
  let x_367 : f32 = x_365.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_367);
  let x_369 : bool = u_xlatb64;
  if (x_369) {
    let x_373 : f32 = x_365.x_MainLightShadowParams.y;
    u_xlatb64 = (x_373 == 1.0f);
    let x_375 : bool = u_xlatb64;
    if (x_375) {
      let x_379 : vec4<f32> = vs_TEXCOORD8;
      let x_382 : vec4<f32> = x_365.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_379.x, x_379.y, x_379.x, x_379.y) + x_382);
      let x_385 : vec4<f32> = u_xlat6;
      let x_386 : vec2<f32> = vec2<f32>(x_385.x, x_385.y);
      let x_388 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_386.x, x_386.y, x_388);
      let x_401 : vec3<f32> = txVec0;
      let x_403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_401.xy, x_401.z);
      u_xlat7.x = x_403;
      let x_406 : vec4<f32> = u_xlat6;
      let x_407 : vec2<f32> = vec2<f32>(x_406.z, x_406.w);
      let x_409 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_407.x, x_407.y, x_409);
      let x_416 : vec3<f32> = txVec1;
      let x_418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_416.xy, x_416.z);
      u_xlat7.y = x_418;
      let x_420 : vec4<f32> = vs_TEXCOORD8;
      let x_423 : vec4<f32> = x_365.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_420.x, x_420.y, x_420.x, x_420.y) + x_423);
      let x_426 : vec4<f32> = u_xlat6;
      let x_427 : vec2<f32> = vec2<f32>(x_426.x, x_426.y);
      let x_429 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_427.x, x_427.y, x_429);
      let x_436 : vec3<f32> = txVec2;
      let x_438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_436.xy, x_436.z);
      u_xlat7.z = x_438;
      let x_441 : vec4<f32> = u_xlat6;
      let x_442 : vec2<f32> = vec2<f32>(x_441.z, x_441.w);
      let x_444 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_442.x, x_442.y, x_444);
      let x_451 : vec3<f32> = txVec3;
      let x_453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_451.xy, x_451.z);
      u_xlat7.w = x_453;
      let x_456 : vec4<f32> = u_xlat7;
      u_xlat64 = dot(x_456, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_463 : f32 = x_365.x_MainLightShadowParams.y;
      u_xlatb65 = (x_463 == 2.0f);
      let x_465 : bool = u_xlatb65;
      if (x_465) {
        let x_468 : vec4<f32> = vs_TEXCOORD8;
        let x_471 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_476 : vec2<f32> = ((vec2<f32>(x_468.x, x_468.y) * vec2<f32>(x_471.z, x_471.w)) + vec2<f32>(0.5f, 0.5f));
        let x_477 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
        let x_479 : vec4<f32> = u_xlat6;
        let x_481 : vec2<f32> = floor(vec2<f32>(x_479.x, x_479.y));
        let x_482 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_486 : vec4<f32> = vs_TEXCOORD8;
        let x_489 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_492 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_486.x, x_486.y) * vec2<f32>(x_489.z, x_489.w)) + -(vec2<f32>(x_492.x, x_492.y)));
        let x_496 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_496.x, x_496.x, x_496.y, x_496.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_501 : vec4<f32> = u_xlat7;
        let x_503 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_501.x, x_501.x, x_501.z, x_501.z) * vec4<f32>(x_503.x, x_503.x, x_503.z, x_503.z));
        let x_506 : vec4<f32> = u_xlat8;
        let x_510 : vec2<f32> = (vec2<f32>(x_506.y, x_506.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_511 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_510.x, x_511.y, x_510.y, x_511.w);
        let x_513 : vec4<f32> = u_xlat8;
        let x_516 : vec2<f32> = u_xlat46;
        let x_518 : vec2<f32> = ((vec2<f32>(x_513.x, x_513.z) * vec2<f32>(0.5f, 0.5f)) + -(x_516));
        let x_519 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
        let x_522 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_522) + vec2<f32>(1.0f, 1.0f));
        let x_526 : vec2<f32> = u_xlat46;
        let x_528 : vec2<f32> = min(x_526, vec2<f32>(0.0f, 0.0f));
        let x_529 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_531 : vec4<f32> = u_xlat9;
        let x_534 : vec4<f32> = u_xlat9;
        let x_537 : vec2<f32> = u_xlat48;
        let x_538 : vec2<f32> = ((-(vec2<f32>(x_531.x, x_531.y)) * vec2<f32>(x_534.x, x_534.y)) + x_537);
        let x_539 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
        let x_541 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_541, vec2<f32>(0.0f, 0.0f));
        let x_543 : vec2<f32> = u_xlat46;
        let x_545 : vec2<f32> = u_xlat46;
        let x_547 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_543) * x_545) + vec2<f32>(x_547.y, x_547.w));
        let x_550 : vec4<f32> = u_xlat9;
        let x_552 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) + vec2<f32>(1.0f, 1.0f));
        let x_553 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
        let x_555 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_555 + vec2<f32>(1.0f, 1.0f));
        let x_558 : vec4<f32> = u_xlat8;
        let x_562 : vec2<f32> = (vec2<f32>(x_558.x, x_558.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_563 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_562.x, x_562.y, x_563.z, x_563.w);
        let x_565 : vec2<f32> = u_xlat48;
        let x_566 : vec2<f32> = (x_565 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_567 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_566.x, x_566.y, x_567.z, x_567.w);
        let x_569 : vec4<f32> = u_xlat9;
        let x_571 : vec2<f32> = (vec2<f32>(x_569.x, x_569.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_572 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
        let x_575 : vec2<f32> = u_xlat46;
        let x_576 : vec2<f32> = (x_575 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_577 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
        let x_579 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_579.y, x_579.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_583 : f32 = u_xlat9.x;
        u_xlat10.z = x_583;
        let x_586 : f32 = u_xlat46.x;
        u_xlat10.w = x_586;
        let x_589 : f32 = u_xlat11.x;
        u_xlat8.z = x_589;
        let x_592 : f32 = u_xlat7.x;
        u_xlat8.w = x_592;
        let x_595 : vec4<f32> = u_xlat8;
        let x_597 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_595.z, x_595.w, x_595.x, x_595.z) + vec4<f32>(x_597.z, x_597.w, x_597.x, x_597.z));
        let x_601 : f32 = u_xlat10.y;
        u_xlat9.z = x_601;
        let x_604 : f32 = u_xlat46.y;
        u_xlat9.w = x_604;
        let x_607 : f32 = u_xlat8.y;
        u_xlat11.z = x_607;
        let x_610 : f32 = u_xlat7.z;
        u_xlat11.w = x_610;
        let x_612 : vec4<f32> = u_xlat9;
        let x_614 : vec4<f32> = u_xlat11;
        let x_616 : vec3<f32> = (vec3<f32>(x_612.z, x_612.y, x_612.w) + vec3<f32>(x_614.z, x_614.y, x_614.w));
        let x_617 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
        let x_619 : vec4<f32> = u_xlat8;
        let x_621 : vec4<f32> = u_xlat12;
        let x_623 : vec3<f32> = (vec3<f32>(x_619.x, x_619.z, x_619.w) / vec3<f32>(x_621.z, x_621.w, x_621.y));
        let x_624 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
        let x_626 : vec4<f32> = u_xlat8;
        let x_632 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_633 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
        let x_635 : vec4<f32> = u_xlat11;
        let x_637 : vec4<f32> = u_xlat7;
        let x_639 : vec3<f32> = (vec3<f32>(x_635.z, x_635.y, x_635.w) / vec3<f32>(x_637.x, x_637.y, x_637.z));
        let x_640 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
        let x_642 : vec4<f32> = u_xlat9;
        let x_644 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_645 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
        let x_647 : vec4<f32> = u_xlat8;
        let x_650 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_652 : vec3<f32> = (vec3<f32>(x_647.y, x_647.x, x_647.z) * vec3<f32>(x_650.x, x_650.x, x_650.x));
        let x_653 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
        let x_655 : vec4<f32> = u_xlat9;
        let x_658 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_660 : vec3<f32> = (vec3<f32>(x_655.x, x_655.y, x_655.z) * vec3<f32>(x_658.y, x_658.y, x_658.y));
        let x_661 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
        let x_664 : f32 = u_xlat9.x;
        u_xlat8.w = x_664;
        let x_666 : vec4<f32> = u_xlat6;
        let x_669 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_672 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y) * vec4<f32>(x_669.x, x_669.y, x_669.x, x_669.y)) + vec4<f32>(x_672.y, x_672.w, x_672.x, x_672.w));
        let x_675 : vec4<f32> = u_xlat6;
        let x_678 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_681 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_675.x, x_675.y) * vec2<f32>(x_678.x, x_678.y)) + vec2<f32>(x_681.z, x_681.w));
        let x_685 : f32 = u_xlat8.y;
        u_xlat9.w = x_685;
        let x_687 : vec4<f32> = u_xlat9;
        let x_688 : vec2<f32> = vec2<f32>(x_687.y, x_687.z);
        let x_689 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_689.x, x_688.x, x_689.z, x_688.y);
        let x_691 : vec4<f32> = u_xlat6;
        let x_694 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_697 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_691.x, x_691.y, x_691.x, x_691.y) * vec4<f32>(x_694.x, x_694.y, x_694.x, x_694.y)) + vec4<f32>(x_697.x, x_697.y, x_697.z, x_697.y));
        let x_700 : vec4<f32> = u_xlat6;
        let x_703 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_706 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_700.x, x_700.y, x_700.x, x_700.y) * vec4<f32>(x_703.x, x_703.y, x_703.x, x_703.y)) + vec4<f32>(x_706.w, x_706.y, x_706.w, x_706.z));
        let x_709 : vec4<f32> = u_xlat6;
        let x_712 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_715 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_709.x, x_709.y, x_709.x, x_709.y) * vec4<f32>(x_712.x, x_712.y, x_712.x, x_712.y)) + vec4<f32>(x_715.x, x_715.w, x_715.z, x_715.w));
        let x_719 : vec4<f32> = u_xlat7;
        let x_721 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_719.x, x_719.x, x_719.x, x_719.y) * vec4<f32>(x_721.z, x_721.w, x_721.y, x_721.z));
        let x_725 : vec4<f32> = u_xlat7;
        let x_727 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_725.y, x_725.y, x_725.z, x_725.z) * x_727);
        let x_731 : f32 = u_xlat7.z;
        let x_733 : f32 = u_xlat12.y;
        u_xlat65 = (x_731 * x_733);
        let x_736 : vec4<f32> = u_xlat10;
        let x_737 : vec2<f32> = vec2<f32>(x_736.x, x_736.y);
        let x_739 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_737.x, x_737.y, x_739);
        let x_746 : vec3<f32> = txVec4;
        let x_748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_746.xy, x_746.z);
        u_xlat6.x = x_748;
        let x_751 : vec4<f32> = u_xlat10;
        let x_752 : vec2<f32> = vec2<f32>(x_751.z, x_751.w);
        let x_754 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_752.x, x_752.y, x_754);
        let x_762 : vec3<f32> = txVec5;
        let x_764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_762.xy, x_762.z);
        u_xlat26 = x_764;
        let x_765 : f32 = u_xlat26;
        let x_767 : f32 = u_xlat13.y;
        u_xlat26 = (x_765 * x_767);
        let x_770 : f32 = u_xlat13.x;
        let x_772 : f32 = u_xlat6.x;
        let x_774 : f32 = u_xlat26;
        u_xlat6.x = ((x_770 * x_772) + x_774);
        let x_778 : vec2<f32> = u_xlat46;
        let x_780 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_778.x, x_778.y, x_780);
        let x_787 : vec3<f32> = txVec6;
        let x_789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_787.xy, x_787.z);
        u_xlat26 = x_789;
        let x_791 : f32 = u_xlat13.z;
        let x_792 : f32 = u_xlat26;
        let x_795 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_791 * x_792) + x_795);
        let x_799 : vec4<f32> = u_xlat9;
        let x_800 : vec2<f32> = vec2<f32>(x_799.x, x_799.y);
        let x_802 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_800.x, x_800.y, x_802);
        let x_809 : vec3<f32> = txVec7;
        let x_811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_809.xy, x_809.z);
        u_xlat26 = x_811;
        let x_813 : f32 = u_xlat13.w;
        let x_814 : f32 = u_xlat26;
        let x_817 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_813 * x_814) + x_817);
        let x_821 : vec4<f32> = u_xlat11;
        let x_822 : vec2<f32> = vec2<f32>(x_821.x, x_821.y);
        let x_824 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_822.x, x_822.y, x_824);
        let x_831 : vec3<f32> = txVec8;
        let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_831.xy, x_831.z);
        u_xlat26 = x_833;
        let x_835 : f32 = u_xlat14.x;
        let x_836 : f32 = u_xlat26;
        let x_839 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_835 * x_836) + x_839);
        let x_843 : vec4<f32> = u_xlat11;
        let x_844 : vec2<f32> = vec2<f32>(x_843.z, x_843.w);
        let x_846 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_844.x, x_844.y, x_846);
        let x_853 : vec3<f32> = txVec9;
        let x_855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_853.xy, x_853.z);
        u_xlat26 = x_855;
        let x_857 : f32 = u_xlat14.y;
        let x_858 : f32 = u_xlat26;
        let x_861 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_857 * x_858) + x_861);
        let x_865 : vec4<f32> = u_xlat9;
        let x_866 : vec2<f32> = vec2<f32>(x_865.z, x_865.w);
        let x_868 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_875 : vec3<f32> = txVec10;
        let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_875.xy, x_875.z);
        u_xlat26 = x_877;
        let x_879 : f32 = u_xlat14.z;
        let x_880 : f32 = u_xlat26;
        let x_883 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_879 * x_880) + x_883);
        let x_887 : vec4<f32> = u_xlat8;
        let x_888 : vec2<f32> = vec2<f32>(x_887.x, x_887.y);
        let x_890 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec11;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_897.xy, x_897.z);
        u_xlat26 = x_899;
        let x_901 : f32 = u_xlat14.w;
        let x_902 : f32 = u_xlat26;
        let x_905 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_901 * x_902) + x_905);
        let x_909 : vec4<f32> = u_xlat8;
        let x_910 : vec2<f32> = vec2<f32>(x_909.z, x_909.w);
        let x_912 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_910.x, x_910.y, x_912);
        let x_919 : vec3<f32> = txVec12;
        let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_919.xy, x_919.z);
        u_xlat26 = x_921;
        let x_922 : f32 = u_xlat65;
        let x_923 : f32 = u_xlat26;
        let x_926 : f32 = u_xlat6.x;
        u_xlat64 = ((x_922 * x_923) + x_926);
      } else {
        let x_929 : vec4<f32> = vs_TEXCOORD8;
        let x_932 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_935 : vec2<f32> = ((vec2<f32>(x_929.x, x_929.y) * vec2<f32>(x_932.z, x_932.w)) + vec2<f32>(0.5f, 0.5f));
        let x_936 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat6;
        let x_940 : vec2<f32> = floor(vec2<f32>(x_938.x, x_938.y));
        let x_941 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec4<f32> = vs_TEXCOORD8;
        let x_946 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_949 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_943.x, x_943.y) * vec2<f32>(x_946.z, x_946.w)) + -(vec2<f32>(x_949.x, x_949.y)));
        let x_953 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_953.x, x_953.x, x_953.y, x_953.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_956 : vec4<f32> = u_xlat7;
        let x_958 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_956.x, x_956.x, x_956.z, x_956.z) * vec4<f32>(x_958.x, x_958.x, x_958.z, x_958.z));
        let x_961 : vec4<f32> = u_xlat8;
        let x_965 : vec2<f32> = (vec2<f32>(x_961.y, x_961.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_966 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_966.x, x_965.x, x_966.z, x_965.y);
        let x_968 : vec4<f32> = u_xlat8;
        let x_971 : vec2<f32> = u_xlat46;
        let x_973 : vec2<f32> = ((vec2<f32>(x_968.x, x_968.z) * vec2<f32>(0.5f, 0.5f)) + -(x_971));
        let x_974 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_973.x, x_974.y, x_973.y, x_974.w);
        let x_976 : vec2<f32> = u_xlat46;
        let x_978 : vec2<f32> = (-(x_976) + vec2<f32>(1.0f, 1.0f));
        let x_979 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_978.x, x_978.y, x_979.z, x_979.w);
        let x_981 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_981, vec2<f32>(0.0f, 0.0f));
        let x_983 : vec2<f32> = u_xlat48;
        let x_985 : vec2<f32> = u_xlat48;
        let x_987 : vec4<f32> = u_xlat8;
        let x_989 : vec2<f32> = ((-(x_983) * x_985) + vec2<f32>(x_987.x, x_987.y));
        let x_990 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_992 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_992, vec2<f32>(0.0f, 0.0f));
        let x_995 : vec2<f32> = u_xlat48;
        let x_997 : vec2<f32> = u_xlat48;
        let x_999 : vec4<f32> = u_xlat7;
        let x_1001 : vec2<f32> = ((-(x_995) * x_997) + vec2<f32>(x_999.y, x_999.w));
        let x_1002 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1001.x, x_1002.y, x_1001.y);
        let x_1004 : vec4<f32> = u_xlat8;
        let x_1007 : vec2<f32> = (vec2<f32>(x_1004.x, x_1004.y) + vec2<f32>(2.0f, 2.0f));
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec3<f32> = u_xlat27;
        let x_1012 : vec2<f32> = (vec2<f32>(x_1010.x, x_1010.z) + vec2<f32>(2.0f, 2.0f));
        let x_1013 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1013.x, x_1012.x, x_1013.z, x_1012.y);
        let x_1016 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1016 * 0.081632003f);
        let x_1020 : vec4<f32> = u_xlat7;
        let x_1023 : vec3<f32> = (vec3<f32>(x_1020.z, x_1020.x, x_1020.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1024 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
        let x_1026 : vec4<f32> = u_xlat8;
        let x_1029 : vec2<f32> = (vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1030 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1029.x, x_1029.y, x_1030.z, x_1030.w);
        let x_1033 : f32 = u_xlat11.y;
        u_xlat10.x = x_1033;
        let x_1035 : vec2<f32> = u_xlat46;
        let x_1042 : vec2<f32> = ((vec2<f32>(x_1035.x, x_1035.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1043 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1043.x, x_1042.x, x_1043.z, x_1042.y);
        let x_1045 : vec2<f32> = u_xlat46;
        let x_1049 : vec2<f32> = ((vec2<f32>(x_1045.x, x_1045.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1050 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1049.x, x_1050.y, x_1049.y, x_1050.w);
        let x_1053 : f32 = u_xlat7.x;
        u_xlat8.y = x_1053;
        let x_1056 : f32 = u_xlat9.y;
        u_xlat8.w = x_1056;
        let x_1058 : vec4<f32> = u_xlat8;
        let x_1059 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1058 + x_1059);
        let x_1061 : vec2<f32> = u_xlat46;
        let x_1064 : vec2<f32> = ((vec2<f32>(x_1061.y, x_1061.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1065 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1065.x, x_1064.x, x_1065.z, x_1064.y);
        let x_1067 : vec2<f32> = u_xlat46;
        let x_1070 : vec2<f32> = ((vec2<f32>(x_1067.y, x_1067.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1071 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1070.x, x_1071.y, x_1070.y, x_1071.w);
        let x_1074 : f32 = u_xlat7.y;
        u_xlat9.y = x_1074;
        let x_1076 : vec4<f32> = u_xlat9;
        let x_1077 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1076 + x_1077);
        let x_1079 : vec4<f32> = u_xlat8;
        let x_1080 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1079 / x_1080);
        let x_1082 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1082 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1088 : vec4<f32> = u_xlat9;
        let x_1089 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1088 / x_1089);
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1091 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1093 : vec4<f32> = u_xlat8;
        let x_1096 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1093.w, x_1093.x, x_1093.y, x_1093.z) * vec4<f32>(x_1096.x, x_1096.x, x_1096.x, x_1096.x));
        let x_1099 : vec4<f32> = u_xlat9;
        let x_1102 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1099.x, x_1099.w, x_1099.y, x_1099.z) * vec4<f32>(x_1102.y, x_1102.y, x_1102.y, x_1102.y));
        let x_1105 : vec4<f32> = u_xlat8;
        let x_1106 : vec3<f32> = vec3<f32>(x_1105.y, x_1105.z, x_1105.w);
        let x_1107 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1106.x, x_1107.y, x_1106.y, x_1106.z);
        let x_1110 : f32 = u_xlat9.x;
        u_xlat11.y = x_1110;
        let x_1112 : vec4<f32> = u_xlat6;
        let x_1115 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1118 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1112.x, x_1112.y, x_1112.x, x_1112.y) * vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y)) + vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1118.y));
        let x_1121 : vec4<f32> = u_xlat6;
        let x_1124 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1121.x, x_1121.y) * vec2<f32>(x_1124.x, x_1124.y)) + vec2<f32>(x_1127.w, x_1127.y));
        let x_1131 : f32 = u_xlat11.y;
        u_xlat8.y = x_1131;
        let x_1134 : f32 = u_xlat9.z;
        u_xlat11.y = x_1134;
        let x_1136 : vec4<f32> = u_xlat6;
        let x_1139 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1142 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1136.x, x_1136.y, x_1136.x, x_1136.y) * vec4<f32>(x_1139.x, x_1139.y, x_1139.x, x_1139.y)) + vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1142.y));
        let x_1145 : vec4<f32> = u_xlat6;
        let x_1148 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat11;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.w, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1157 : f32 = u_xlat11.y;
        u_xlat8.z = x_1157;
        let x_1160 : vec4<f32> = u_xlat6;
        let x_1163 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1160.x, x_1160.y, x_1160.x, x_1160.y) * vec4<f32>(x_1163.x, x_1163.y, x_1163.x, x_1163.y)) + vec4<f32>(x_1166.x, x_1166.y, x_1166.x, x_1166.z));
        let x_1170 : f32 = u_xlat9.w;
        u_xlat11.y = x_1170;
        let x_1173 : vec4<f32> = u_xlat6;
        let x_1176 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1173.x, x_1173.y, x_1173.x, x_1173.y) * vec4<f32>(x_1176.x, x_1176.y, x_1176.x, x_1176.y)) + vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1179.y));
        let x_1183 : vec4<f32> = u_xlat6;
        let x_1186 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat11;
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1183.x, x_1183.y) * vec2<f32>(x_1186.x, x_1186.y)) + vec2<f32>(x_1189.w, x_1189.y));
        let x_1192 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1191.x, x_1191.y, x_1192.z);
        let x_1195 : f32 = u_xlat11.y;
        u_xlat8.w = x_1195;
        let x_1198 : vec4<f32> = u_xlat6;
        let x_1201 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1198.x, x_1198.y) * vec2<f32>(x_1201.x, x_1201.y)) + vec2<f32>(x_1204.x, x_1204.w));
        let x_1207 : vec4<f32> = u_xlat11;
        let x_1208 : vec3<f32> = vec3<f32>(x_1207.x, x_1207.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1208.x, x_1209.y, x_1208.y, x_1208.z);
        let x_1211 : vec4<f32> = u_xlat6;
        let x_1214 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y) * vec4<f32>(x_1214.x, x_1214.y, x_1214.x, x_1214.y)) + vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1217.y));
        let x_1221 : vec4<f32> = u_xlat6;
        let x_1224 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1227 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1221.x, x_1221.y) * vec2<f32>(x_1224.x, x_1224.y)) + vec2<f32>(x_1227.w, x_1227.y));
        let x_1231 : f32 = u_xlat8.x;
        u_xlat9.x = x_1231;
        let x_1233 : vec4<f32> = u_xlat6;
        let x_1236 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1239 : vec4<f32> = u_xlat9;
        let x_1241 : vec2<f32> = ((vec2<f32>(x_1233.x, x_1233.y) * vec2<f32>(x_1236.x, x_1236.y)) + vec2<f32>(x_1239.x, x_1239.y));
        let x_1242 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
        let x_1245 : vec4<f32> = u_xlat7;
        let x_1247 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1245.x, x_1245.x, x_1245.x, x_1245.x) * x_1247);
        let x_1250 : vec4<f32> = u_xlat7;
        let x_1252 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1250.y, x_1250.y, x_1250.y, x_1250.y) * x_1252);
        let x_1255 : vec4<f32> = u_xlat7;
        let x_1257 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1255.z, x_1255.z, x_1255.z, x_1255.z) * x_1257);
        let x_1259 : vec4<f32> = u_xlat7;
        let x_1261 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1259.w, x_1259.w, x_1259.w, x_1259.w) * x_1261);
        let x_1264 : vec4<f32> = u_xlat12;
        let x_1265 : vec2<f32> = vec2<f32>(x_1264.x, x_1264.y);
        let x_1267 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec13;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1274.xy, x_1274.z);
        u_xlat65 = x_1276;
        let x_1278 : vec4<f32> = u_xlat12;
        let x_1279 : vec2<f32> = vec2<f32>(x_1278.z, x_1278.w);
        let x_1281 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1279.x, x_1279.y, x_1281);
        let x_1288 : vec3<f32> = txVec14;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1288.xy, x_1288.z);
        u_xlat8.x = x_1290;
        let x_1293 : f32 = u_xlat8.x;
        let x_1295 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1293 * x_1295);
        let x_1299 : f32 = u_xlat17.x;
        let x_1300 : f32 = u_xlat65;
        let x_1303 : f32 = u_xlat8.x;
        u_xlat65 = ((x_1299 * x_1300) + x_1303);
        let x_1306 : vec2<f32> = u_xlat46;
        let x_1308 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec15;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1315.xy, x_1315.z);
        u_xlat46.x = x_1317;
        let x_1320 : f32 = u_xlat17.z;
        let x_1322 : f32 = u_xlat46.x;
        let x_1324 : f32 = u_xlat65;
        u_xlat65 = ((x_1320 * x_1322) + x_1324);
        let x_1327 : vec4<f32> = u_xlat15;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.x, x_1327.y);
        let x_1330 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec16;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1337.xy, x_1337.z);
        u_xlat46.x = x_1339;
        let x_1342 : f32 = u_xlat17.w;
        let x_1344 : f32 = u_xlat46.x;
        let x_1346 : f32 = u_xlat65;
        u_xlat65 = ((x_1342 * x_1344) + x_1346);
        let x_1349 : vec4<f32> = u_xlat13;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.x, x_1349.y);
        let x_1352 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec17;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1359.xy, x_1359.z);
        u_xlat46.x = x_1361;
        let x_1364 : f32 = u_xlat18.x;
        let x_1366 : f32 = u_xlat46.x;
        let x_1368 : f32 = u_xlat65;
        u_xlat65 = ((x_1364 * x_1366) + x_1368);
        let x_1371 : vec4<f32> = u_xlat13;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.z, x_1371.w);
        let x_1374 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec18;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1381.xy, x_1381.z);
        u_xlat46.x = x_1383;
        let x_1386 : f32 = u_xlat18.y;
        let x_1388 : f32 = u_xlat46.x;
        let x_1390 : f32 = u_xlat65;
        u_xlat65 = ((x_1386 * x_1388) + x_1390);
        let x_1393 : vec4<f32> = u_xlat14;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.x, x_1393.y);
        let x_1396 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec19;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1403.xy, x_1403.z);
        u_xlat46.x = x_1405;
        let x_1408 : f32 = u_xlat18.z;
        let x_1410 : f32 = u_xlat46.x;
        let x_1412 : f32 = u_xlat65;
        u_xlat65 = ((x_1408 * x_1410) + x_1412);
        let x_1415 : vec4<f32> = u_xlat15;
        let x_1416 : vec2<f32> = vec2<f32>(x_1415.z, x_1415.w);
        let x_1418 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1416.x, x_1416.y, x_1418);
        let x_1425 : vec3<f32> = txVec20;
        let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1425.xy, x_1425.z);
        u_xlat46.x = x_1427;
        let x_1430 : f32 = u_xlat18.w;
        let x_1432 : f32 = u_xlat46.x;
        let x_1434 : f32 = u_xlat65;
        u_xlat65 = ((x_1430 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat16;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.x, x_1437.y);
        let x_1440 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec21;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1447.xy, x_1447.z);
        u_xlat46.x = x_1449;
        let x_1452 : f32 = u_xlat19.x;
        let x_1454 : f32 = u_xlat46.x;
        let x_1456 : f32 = u_xlat65;
        u_xlat65 = ((x_1452 * x_1454) + x_1456);
        let x_1459 : vec4<f32> = u_xlat16;
        let x_1460 : vec2<f32> = vec2<f32>(x_1459.z, x_1459.w);
        let x_1462 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1469 : vec3<f32> = txVec22;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1469.xy, x_1469.z);
        u_xlat46.x = x_1471;
        let x_1474 : f32 = u_xlat19.y;
        let x_1476 : f32 = u_xlat46.x;
        let x_1478 : f32 = u_xlat65;
        u_xlat65 = ((x_1474 * x_1476) + x_1478);
        let x_1481 : vec3<f32> = u_xlat28;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.x, x_1481.y);
        let x_1484 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec23;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1491.xy, x_1491.z);
        u_xlat46.x = x_1493;
        let x_1496 : f32 = u_xlat19.z;
        let x_1498 : f32 = u_xlat46.x;
        let x_1500 : f32 = u_xlat65;
        u_xlat65 = ((x_1496 * x_1498) + x_1500);
        let x_1503 : vec2<f32> = u_xlat54;
        let x_1505 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec24;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1512.xy, x_1512.z);
        u_xlat46.x = x_1514;
        let x_1517 : f32 = u_xlat19.w;
        let x_1519 : f32 = u_xlat46.x;
        let x_1521 : f32 = u_xlat65;
        u_xlat65 = ((x_1517 * x_1519) + x_1521);
        let x_1524 : vec4<f32> = u_xlat11;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.x, x_1524.y);
        let x_1527 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec25;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1534.xy, x_1534.z);
        u_xlat46.x = x_1536;
        let x_1539 : f32 = u_xlat7.x;
        let x_1541 : f32 = u_xlat46.x;
        let x_1543 : f32 = u_xlat65;
        u_xlat65 = ((x_1539 * x_1541) + x_1543);
        let x_1546 : vec4<f32> = u_xlat11;
        let x_1547 : vec2<f32> = vec2<f32>(x_1546.z, x_1546.w);
        let x_1549 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1547.x, x_1547.y, x_1549);
        let x_1556 : vec3<f32> = txVec26;
        let x_1558 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1556.xy, x_1556.z);
        u_xlat46.x = x_1558;
        let x_1561 : f32 = u_xlat7.y;
        let x_1563 : f32 = u_xlat46.x;
        let x_1565 : f32 = u_xlat65;
        u_xlat65 = ((x_1561 * x_1563) + x_1565);
        let x_1568 : vec2<f32> = u_xlat49;
        let x_1570 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1568.x, x_1568.y, x_1570);
        let x_1577 : vec3<f32> = txVec27;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1577.xy, x_1577.z);
        u_xlat46.x = x_1579;
        let x_1582 : f32 = u_xlat7.z;
        let x_1584 : f32 = u_xlat46.x;
        let x_1586 : f32 = u_xlat65;
        u_xlat65 = ((x_1582 * x_1584) + x_1586);
        let x_1589 : vec4<f32> = u_xlat6;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.x, x_1589.y);
        let x_1592 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec28;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1599.xy, x_1599.z);
        u_xlat6.x = x_1601;
        let x_1604 : f32 = u_xlat7.w;
        let x_1606 : f32 = u_xlat6.x;
        let x_1608 : f32 = u_xlat65;
        u_xlat64 = ((x_1604 * x_1606) + x_1608);
      }
    }
  } else {
    let x_1612 : vec4<f32> = vs_TEXCOORD8;
    let x_1613 : vec2<f32> = vec2<f32>(x_1612.x, x_1612.y);
    let x_1615 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1613.x, x_1613.y, x_1615);
    let x_1622 : vec3<f32> = txVec29;
    let x_1624 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1622.xy, x_1622.z);
    u_xlat64 = x_1624;
  }
  let x_1626 : f32 = x_365.x_MainLightShadowParams.x;
  u_xlat65 = (-(x_1626) + 1.0f);
  let x_1629 : f32 = u_xlat64;
  let x_1631 : f32 = x_365.x_MainLightShadowParams.x;
  let x_1633 : f32 = u_xlat65;
  u_xlat64 = ((x_1629 * x_1631) + x_1633);
  let x_1636 : f32 = vs_TEXCOORD8.z;
  u_xlatb65 = (0.0f >= x_1636);
  let x_1640 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_1640 >= 1.0f);
  let x_1642 : bool = u_xlatb65;
  let x_1643 : bool = u_xlatb6;
  u_xlatb65 = (x_1642 | x_1643);
  let x_1645 : bool = u_xlatb65;
  let x_1646 : f32 = u_xlat64;
  u_xlat64 = select(x_1646, 1.0f, x_1645);
  let x_1648 : vec3<f32> = vs_TEXCOORD7;
  let x_1650 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1652 : vec3<f32> = (x_1648 + -(x_1650));
  let x_1653 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1652.x, x_1652.y, x_1652.z, x_1653.w);
  let x_1655 : vec4<f32> = u_xlat6;
  let x_1657 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_1655.x, x_1655.y, x_1655.z), vec3<f32>(x_1657.x, x_1657.y, x_1657.z));
  let x_1660 : f32 = u_xlat65;
  let x_1662 : f32 = x_365.x_MainLightShadowParams.z;
  let x_1665 : f32 = x_365.x_MainLightShadowParams.w;
  u_xlat65 = ((x_1660 * x_1662) + x_1665);
  let x_1667 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1667, 0.0f, 1.0f);
  let x_1669 : f32 = u_xlat64;
  u_xlat6.x = (-(x_1669) + 1.0f);
  let x_1673 : f32 = u_xlat65;
  let x_1675 : f32 = u_xlat6.x;
  let x_1677 : f32 = u_xlat64;
  u_xlat64 = ((x_1673 * x_1675) + x_1677);
  let x_1685 : f32 = x_1683.x_MainLightCookieTextureFormat;
  u_xlatb65 = !((x_1685 == -1.0f));
  let x_1687 : bool = u_xlatb65;
  if (x_1687) {
    let x_1690 : vec3<f32> = vs_TEXCOORD7;
    let x_1693 : vec4<f32> = x_1683.x_MainLightWorldToLight[1i];
    let x_1695 : vec2<f32> = (vec2<f32>(x_1690.y, x_1690.y) * vec2<f32>(x_1693.x, x_1693.y));
    let x_1696 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1695.x, x_1695.y, x_1696.z, x_1696.w);
    let x_1699 : vec4<f32> = x_1683.x_MainLightWorldToLight[0i];
    let x_1701 : vec3<f32> = vs_TEXCOORD7;
    let x_1704 : vec4<f32> = u_xlat6;
    let x_1706 : vec2<f32> = ((vec2<f32>(x_1699.x, x_1699.y) * vec2<f32>(x_1701.x, x_1701.x)) + vec2<f32>(x_1704.x, x_1704.y));
    let x_1707 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1706.x, x_1706.y, x_1707.z, x_1707.w);
    let x_1710 : vec4<f32> = x_1683.x_MainLightWorldToLight[2i];
    let x_1712 : vec3<f32> = vs_TEXCOORD7;
    let x_1715 : vec4<f32> = u_xlat6;
    let x_1717 : vec2<f32> = ((vec2<f32>(x_1710.x, x_1710.y) * vec2<f32>(x_1712.z, x_1712.z)) + vec2<f32>(x_1715.x, x_1715.y));
    let x_1718 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1717.x, x_1717.y, x_1718.z, x_1718.w);
    let x_1720 : vec4<f32> = u_xlat6;
    let x_1724 : vec4<f32> = x_1683.x_MainLightWorldToLight[3i];
    let x_1726 : vec2<f32> = (vec2<f32>(x_1720.x, x_1720.y) + vec2<f32>(x_1724.x, x_1724.y));
    let x_1727 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1726.x, x_1726.y, x_1727.z, x_1727.w);
    let x_1729 : vec4<f32> = u_xlat6;
    let x_1732 : vec2<f32> = ((vec2<f32>(x_1729.x, x_1729.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1733 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1732.x, x_1732.y, x_1733.z, x_1733.w);
    let x_1740 : vec4<f32> = u_xlat6;
    let x_1743 : f32 = x_44.x_GlobalMipBias.x;
    let x_1744 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1740.x, x_1740.y), x_1743);
    u_xlat6 = x_1744;
    let x_1749 : f32 = x_1683.x_MainLightCookieTextureFormat;
    let x_1751 : f32 = x_1683.x_MainLightCookieTextureFormat;
    let x_1753 : f32 = x_1683.x_MainLightCookieTextureFormat;
    let x_1755 : f32 = x_1683.x_MainLightCookieTextureFormat;
    let x_1756 : vec4<f32> = vec4<f32>(x_1749, x_1751, x_1753, x_1755);
    let x_1764 : vec4<bool> = (vec4<f32>(x_1756.x, x_1756.y, x_1756.z, x_1756.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1764.x, x_1764.y);
    let x_1767 : bool = u_xlatb7.y;
    if (x_1767) {
      let x_1772 : f32 = u_xlat6.w;
      x_1768 = x_1772;
    } else {
      let x_1775 : f32 = u_xlat6.x;
      x_1768 = x_1775;
    }
    let x_1776 : f32 = x_1768;
    u_xlat65 = x_1776;
    let x_1778 : bool = u_xlatb7.x;
    if (x_1778) {
      let x_1782 : vec4<f32> = u_xlat6;
      x_1779 = vec3<f32>(x_1782.x, x_1782.y, x_1782.z);
    } else {
      let x_1785 : f32 = u_xlat65;
      x_1779 = vec3<f32>(x_1785, x_1785, x_1785);
    }
    let x_1787 : vec3<f32> = x_1779;
    let x_1788 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1794 : vec4<f32> = u_xlat6;
  let x_1797 : vec4<f32> = x_44.x_MainLightColor;
  let x_1799 : vec3<f32> = (vec3<f32>(x_1794.x, x_1794.y, x_1794.z) * vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
  let x_1800 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1800.w);
  let x_1802 : f32 = u_xlat44;
  let x_1804 : vec4<f32> = u_xlat6;
  let x_1806 : vec3<f32> = (vec3<f32>(x_1802, x_1802, x_1802) * vec3<f32>(x_1804.x, x_1804.y, x_1804.z));
  let x_1807 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1806.x, x_1806.y, x_1806.z, x_1807.w);
  let x_1809 : vec3<f32> = u_xlat3;
  let x_1811 : vec4<f32> = u_xlat2;
  u_xlat65 = dot(-(x_1809), vec3<f32>(x_1811.x, x_1811.y, x_1811.z));
  let x_1814 : f32 = u_xlat65;
  let x_1815 : f32 = u_xlat65;
  u_xlat65 = (x_1814 + x_1815);
  let x_1817 : vec4<f32> = u_xlat2;
  let x_1819 : f32 = u_xlat65;
  let x_1823 : vec3<f32> = u_xlat3;
  let x_1825 : vec3<f32> = ((vec3<f32>(x_1817.x, x_1817.y, x_1817.z) * -(vec3<f32>(x_1819, x_1819, x_1819))) + -(x_1823));
  let x_1826 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1825.x, x_1825.y, x_1825.z, x_1826.w);
  let x_1828 : vec4<f32> = u_xlat2;
  let x_1830 : vec3<f32> = u_xlat3;
  u_xlat65 = dot(vec3<f32>(x_1828.x, x_1828.y, x_1828.z), x_1830);
  let x_1832 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1832, 0.0f, 1.0f);
  let x_1834 : f32 = u_xlat65;
  u_xlat65 = (-(x_1834) + 1.0f);
  let x_1837 : f32 = u_xlat65;
  let x_1838 : f32 = u_xlat65;
  u_xlat65 = (x_1837 * x_1838);
  let x_1840 : f32 = u_xlat65;
  let x_1841 : f32 = u_xlat65;
  u_xlat65 = (x_1840 * x_1841);
  let x_1845 : f32 = u_xlat1.x;
  u_xlat66 = ((-(x_1845) * 0.699999988f) + 1.700000048f);
  let x_1852 : f32 = u_xlat1.x;
  let x_1853 : f32 = u_xlat66;
  u_xlat1.x = (x_1852 * x_1853);
  let x_1857 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1857 * 6.0f);
  let x_1869 : vec4<f32> = u_xlat7;
  let x_1872 : f32 = u_xlat1.x;
  let x_1873 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1869.x, x_1869.y, x_1869.z), x_1872);
  u_xlat7 = x_1873;
  let x_1875 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1875 + -1.0f);
  let x_1879 : f32 = x_162.unity_SpecCube0_HDR.w;
  let x_1881 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1879 * x_1881) + 1.0f);
  let x_1886 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1886, 0.0f);
  let x_1890 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1890);
  let x_1894 : f32 = u_xlat1.x;
  let x_1896 : f32 = x_162.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1894 * x_1896);
  let x_1900 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1900);
  let x_1904 : f32 = u_xlat1.x;
  let x_1906 : f32 = x_162.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1904 * x_1906);
  let x_1909 : vec4<f32> = u_xlat7;
  let x_1911 : vec3<f32> = u_xlat1;
  let x_1913 : vec3<f32> = (vec3<f32>(x_1909.x, x_1909.y, x_1909.z) * vec3<f32>(x_1911.x, x_1911.x, x_1911.x));
  let x_1914 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1913.x, x_1913.y, x_1913.z, x_1914.w);
  let x_1916 : f32 = u_xlat62;
  let x_1918 : f32 = u_xlat62;
  let x_1922 : vec2<f32> = ((vec2<f32>(x_1916, x_1916) * vec2<f32>(x_1918, x_1918)) + vec2<f32>(-1.0f, 1.0f));
  let x_1923 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1922.x, x_1922.y, x_1923.z, x_1923.w);
  let x_1926 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_1926);
  let x_1929 : vec4<f32> = u_xlat0;
  let x_1932 : f32 = u_xlat60;
  u_xlat28 = (-(vec3<f32>(x_1929.x, x_1929.y, x_1929.z)) + vec3<f32>(x_1932, x_1932, x_1932));
  let x_1935 : f32 = u_xlat65;
  let x_1937 : vec3<f32> = u_xlat28;
  let x_1939 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1935, x_1935, x_1935) * x_1937) + vec3<f32>(x_1939.x, x_1939.y, x_1939.z));
  let x_1942 : vec3<f32> = u_xlat1;
  let x_1944 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1942.x, x_1942.x, x_1942.x) * x_1944);
  let x_1946 : vec4<f32> = u_xlat7;
  let x_1948 : vec3<f32> = u_xlat28;
  let x_1949 : vec3<f32> = (vec3<f32>(x_1946.x, x_1946.y, x_1946.z) * x_1948);
  let x_1950 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1950.w);
  let x_1952 : vec3<f32> = u_xlat21;
  let x_1953 : vec4<f32> = u_xlat5;
  let x_1956 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1952 * vec3<f32>(x_1953.x, x_1953.y, x_1953.z)) + vec3<f32>(x_1956.x, x_1956.y, x_1956.z));
  let x_1959 : f32 = u_xlat64;
  let x_1962 : f32 = x_162.unity_LightData.z;
  u_xlat60 = (x_1959 * x_1962);
  let x_1965 : vec4<f32> = u_xlat2;
  let x_1968 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat61 = dot(vec3<f32>(x_1965.x, x_1965.y, x_1965.z), vec3<f32>(x_1968.x, x_1968.y, x_1968.z));
  let x_1971 : f32 = u_xlat61;
  u_xlat61 = clamp(x_1971, 0.0f, 1.0f);
  let x_1973 : f32 = u_xlat60;
  let x_1974 : f32 = u_xlat61;
  u_xlat60 = (x_1973 * x_1974);
  let x_1976 : f32 = u_xlat60;
  let x_1978 : vec4<f32> = u_xlat6;
  let x_1980 : vec3<f32> = (vec3<f32>(x_1976, x_1976, x_1976) * vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1981 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
  let x_1983 : vec3<f32> = u_xlat3;
  let x_1985 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1987 : vec3<f32> = (x_1983 + vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
  let x_1988 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1988.w);
  let x_1990 : vec4<f32> = u_xlat7;
  let x_1992 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1990.x, x_1990.y, x_1990.z), vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
  let x_1995 : f32 = u_xlat60;
  u_xlat60 = max(x_1995, 1.17549435e-37f);
  let x_1998 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1998);
  let x_2000 : f32 = u_xlat60;
  let x_2002 : vec4<f32> = u_xlat7;
  let x_2004 : vec3<f32> = (vec3<f32>(x_2000, x_2000, x_2000) * vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
  let x_2005 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2004.x, x_2004.y, x_2004.z, x_2005.w);
  let x_2007 : vec4<f32> = u_xlat2;
  let x_2009 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2007.x, x_2007.y, x_2007.z), vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
  let x_2012 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2012, 0.0f, 1.0f);
  let x_2015 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2017 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec3<f32>(x_2015.x, x_2015.y, x_2015.z), vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
  let x_2020 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2020, 0.0f, 1.0f);
  let x_2022 : f32 = u_xlat60;
  let x_2023 : f32 = u_xlat60;
  u_xlat60 = (x_2022 * x_2023);
  let x_2025 : f32 = u_xlat60;
  let x_2027 : f32 = u_xlat8.x;
  u_xlat60 = ((x_2025 * x_2027) + 1.000010014f);
  let x_2031 : f32 = u_xlat61;
  let x_2032 : f32 = u_xlat61;
  u_xlat61 = (x_2031 * x_2032);
  let x_2034 : f32 = u_xlat60;
  let x_2035 : f32 = u_xlat60;
  u_xlat60 = (x_2034 * x_2035);
  let x_2037 : f32 = u_xlat61;
  u_xlat61 = max(x_2037, 0.100000001f);
  let x_2040 : f32 = u_xlat60;
  let x_2041 : f32 = u_xlat61;
  u_xlat60 = (x_2040 * x_2041);
  let x_2043 : f32 = u_xlat63;
  let x_2044 : f32 = u_xlat60;
  u_xlat60 = (x_2043 * x_2044);
  let x_2046 : f32 = u_xlat24;
  let x_2047 : f32 = u_xlat60;
  u_xlat60 = (x_2046 / x_2047);
  let x_2049 : vec4<f32> = u_xlat0;
  let x_2051 : f32 = u_xlat60;
  let x_2054 : vec4<f32> = u_xlat5;
  let x_2056 : vec3<f32> = ((vec3<f32>(x_2049.x, x_2049.y, x_2049.z) * vec3<f32>(x_2051, x_2051, x_2051)) + vec3<f32>(x_2054.x, x_2054.y, x_2054.z));
  let x_2057 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
  let x_2059 : vec4<f32> = u_xlat6;
  let x_2061 : vec4<f32> = u_xlat7;
  let x_2063 : vec3<f32> = (vec3<f32>(x_2059.x, x_2059.y, x_2059.z) * vec3<f32>(x_2061.x, x_2061.y, x_2061.z));
  let x_2064 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2063.x, x_2063.y, x_2063.z, x_2064.w);
  let x_2067 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2069 : f32 = x_162.unity_LightData.y;
  u_xlat60 = min(x_2067, x_2069);
  let x_2073 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2073));
  let x_2077 : f32 = x_1683.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2079 : f32 = x_1683.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2081 : f32 = x_1683.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2083 : f32 = x_1683.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2084 : vec4<f32> = vec4<f32>(x_2077, x_2079, x_2081, x_2083);
  let x_2090 : vec4<bool> = (vec4<f32>(x_2084.x, x_2084.y, x_2084.z, x_2084.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2090.x, x_2090.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2101 : u32 = u_xlatu_loop_1;
    let x_2102 : u32 = u_xlatu60;
    if ((x_2101 < x_2102)) {
    } else {
      break;
    }
    let x_2105 : u32 = u_xlatu_loop_1;
    u_xlatu62 = (x_2105 >> 2u);
    let x_2109 : u32 = u_xlatu_loop_1;
    u_xlati64 = bitcast<i32>((x_2109 & 3u));
    let x_2112 : u32 = u_xlatu62;
    let x_2115 : vec4<f32> = x_162.unity_LightIndices[bitcast<i32>(x_2112)];
    let x_2125 : i32 = u_xlati64;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2130 : vec4<u32> = indexable[x_2125];
    u_xlat62 = dot(x_2115, bitcast<vec4<f32>>(x_2130));
    let x_2133 : f32 = u_xlat62;
    u_xlatu62 = bitcast<u32>(i32(x_2133));
    let x_2136 : vec3<f32> = vs_TEXCOORD7;
    let x_2148 : u32 = u_xlatu62;
    let x_2151 : vec4<f32> = x_2147.x_AdditionalLightsPosition[bitcast<i32>(x_2148)];
    let x_2154 : u32 = u_xlatu62;
    let x_2157 : vec4<f32> = x_2147.x_AdditionalLightsPosition[bitcast<i32>(x_2154)];
    let x_2159 : vec3<f32> = ((-(x_2136) * vec3<f32>(x_2151.w, x_2151.w, x_2151.w)) + vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
    let x_2160 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
    let x_2162 : vec4<f32> = u_xlat9;
    let x_2164 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2162.x, x_2162.y, x_2162.z), vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
    let x_2167 : f32 = u_xlat64;
    u_xlat64 = max(x_2167, 6.10351562e-05f);
    let x_2170 : f32 = u_xlat64;
    u_xlat65 = inverseSqrt(x_2170);
    let x_2172 : f32 = u_xlat65;
    let x_2174 : vec4<f32> = u_xlat9;
    let x_2176 : vec3<f32> = (vec3<f32>(x_2172, x_2172, x_2172) * vec3<f32>(x_2174.x, x_2174.y, x_2174.z));
    let x_2177 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
    let x_2179 : f32 = u_xlat64;
    u_xlat66 = (1.0f / x_2179);
    let x_2181 : f32 = u_xlat64;
    let x_2182 : u32 = u_xlatu62;
    let x_2185 : f32 = x_2147.x_AdditionalLightsAttenuation[bitcast<i32>(x_2182)].x;
    u_xlat64 = (x_2181 * x_2185);
    let x_2187 : f32 = u_xlat64;
    let x_2189 : f32 = u_xlat64;
    u_xlat64 = ((-(x_2187) * x_2189) + 1.0f);
    let x_2192 : f32 = u_xlat64;
    u_xlat64 = max(x_2192, 0.0f);
    let x_2194 : f32 = u_xlat64;
    let x_2195 : f32 = u_xlat64;
    u_xlat64 = (x_2194 * x_2195);
    let x_2197 : f32 = u_xlat64;
    let x_2198 : f32 = u_xlat66;
    u_xlat64 = (x_2197 * x_2198);
    let x_2200 : u32 = u_xlatu62;
    let x_2203 : vec4<f32> = x_2147.x_AdditionalLightsSpotDir[bitcast<i32>(x_2200)];
    let x_2205 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2203.x, x_2203.y, x_2203.z), vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
    let x_2208 : f32 = u_xlat66;
    let x_2209 : u32 = u_xlatu62;
    let x_2212 : f32 = x_2147.x_AdditionalLightsAttenuation[bitcast<i32>(x_2209)].z;
    let x_2214 : u32 = u_xlatu62;
    let x_2217 : f32 = x_2147.x_AdditionalLightsAttenuation[bitcast<i32>(x_2214)].w;
    u_xlat66 = ((x_2208 * x_2212) + x_2217);
    let x_2219 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2219, 0.0f, 1.0f);
    let x_2221 : f32 = u_xlat66;
    let x_2222 : f32 = u_xlat66;
    u_xlat66 = (x_2221 * x_2222);
    let x_2224 : f32 = u_xlat64;
    let x_2225 : f32 = u_xlat66;
    u_xlat64 = (x_2224 * x_2225);
    let x_2228 : u32 = u_xlatu62;
    u_xlatu66 = (x_2228 >> 5u);
    let x_2231 : u32 = u_xlatu62;
    u_xlati47 = (1i << bitcast<u32>((bitcast<i32>(x_2231) & 31i)));
    let x_2237 : i32 = u_xlati47;
    let x_2239 : u32 = u_xlatu66;
    let x_2242 : f32 = x_1683.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2239)].el;
    u_xlati66 = bitcast<i32>((bitcast<u32>(x_2237) & bitcast<u32>(x_2242)));
    let x_2246 : i32 = u_xlati66;
    if ((x_2246 != 0i)) {
      let x_2256 : u32 = u_xlatu62;
      let x_2259 : f32 = x_2255.x_AdditionalLightsLightTypes[bitcast<i32>(x_2256)].el;
      u_xlati66 = i32(x_2259);
      let x_2261 : i32 = u_xlati66;
      u_xlati47 = select(1i, 0i, (x_2261 != 0i));
      let x_2265 : u32 = u_xlatu62;
      u_xlati67 = (bitcast<i32>(x_2265) << bitcast<u32>(2i));
      let x_2268 : i32 = u_xlati47;
      if ((x_2268 != 0i)) {
        let x_2272 : vec3<f32> = vs_TEXCOORD7;
        let x_2274 : i32 = u_xlati67;
        let x_2277 : i32 = u_xlati67;
        let x_2281 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2274 + 1i) / 4i)][((x_2277 + 1i) % 4i)];
        let x_2283 : vec3<f32> = (vec3<f32>(x_2272.y, x_2272.y, x_2272.y) * vec3<f32>(x_2281.x, x_2281.y, x_2281.w));
        let x_2284 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
        let x_2286 : i32 = u_xlati67;
        let x_2288 : i32 = u_xlati67;
        let x_2291 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[(x_2286 / 4i)][(x_2288 % 4i)];
        let x_2293 : vec3<f32> = vs_TEXCOORD7;
        let x_2296 : vec4<f32> = u_xlat11;
        let x_2298 : vec3<f32> = ((vec3<f32>(x_2291.x, x_2291.y, x_2291.w) * vec3<f32>(x_2293.x, x_2293.x, x_2293.x)) + vec3<f32>(x_2296.x, x_2296.y, x_2296.z));
        let x_2299 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
        let x_2301 : i32 = u_xlati67;
        let x_2304 : i32 = u_xlati67;
        let x_2308 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2301 + 2i) / 4i)][((x_2304 + 2i) % 4i)];
        let x_2310 : vec3<f32> = vs_TEXCOORD7;
        let x_2313 : vec4<f32> = u_xlat11;
        let x_2315 : vec3<f32> = ((vec3<f32>(x_2308.x, x_2308.y, x_2308.w) * vec3<f32>(x_2310.z, x_2310.z, x_2310.z)) + vec3<f32>(x_2313.x, x_2313.y, x_2313.z));
        let x_2316 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
        let x_2318 : vec4<f32> = u_xlat11;
        let x_2320 : i32 = u_xlati67;
        let x_2323 : i32 = u_xlati67;
        let x_2327 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2320 + 3i) / 4i)][((x_2323 + 3i) % 4i)];
        let x_2329 : vec3<f32> = (vec3<f32>(x_2318.x, x_2318.y, x_2318.z) + vec3<f32>(x_2327.x, x_2327.y, x_2327.w));
        let x_2330 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
        let x_2332 : vec4<f32> = u_xlat11;
        let x_2334 : vec4<f32> = u_xlat11;
        let x_2336 : vec2<f32> = (vec2<f32>(x_2332.x, x_2332.y) / vec2<f32>(x_2334.z, x_2334.z));
        let x_2337 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2336.x, x_2336.y, x_2337.z, x_2337.w);
        let x_2339 : vec4<f32> = u_xlat11;
        let x_2342 : vec2<f32> = ((vec2<f32>(x_2339.x, x_2339.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2343 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2342.x, x_2342.y, x_2343.z, x_2343.w);
        let x_2345 : vec4<f32> = u_xlat11;
        let x_2349 : vec2<f32> = clamp(vec2<f32>(x_2345.x, x_2345.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2350 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2349.x, x_2349.y, x_2350.z, x_2350.w);
        let x_2352 : u32 = u_xlatu62;
        let x_2355 : vec4<f32> = x_2255.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2352)];
        let x_2357 : vec4<f32> = u_xlat11;
        let x_2360 : u32 = u_xlatu62;
        let x_2363 : vec4<f32> = x_2255.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2360)];
        let x_2365 : vec2<f32> = ((vec2<f32>(x_2355.x, x_2355.y) * vec2<f32>(x_2357.x, x_2357.y)) + vec2<f32>(x_2363.z, x_2363.w));
        let x_2366 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2365.x, x_2365.y, x_2366.z, x_2366.w);
      } else {
        let x_2370 : i32 = u_xlati66;
        u_xlatb66 = (x_2370 == 1i);
        let x_2372 : bool = u_xlatb66;
        u_xlati66 = select(0i, 1i, x_2372);
        let x_2374 : i32 = u_xlati66;
        if ((x_2374 != 0i)) {
          let x_2379 : vec3<f32> = vs_TEXCOORD7;
          let x_2381 : i32 = u_xlati67;
          let x_2384 : i32 = u_xlati67;
          let x_2388 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2381 + 1i) / 4i)][((x_2384 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2379.y, x_2379.y) * vec2<f32>(x_2388.x, x_2388.y));
          let x_2391 : i32 = u_xlati67;
          let x_2393 : i32 = u_xlati67;
          let x_2396 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[(x_2391 / 4i)][(x_2393 % 4i)];
          let x_2398 : vec3<f32> = vs_TEXCOORD7;
          let x_2401 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2396.x, x_2396.y) * vec2<f32>(x_2398.x, x_2398.x)) + x_2401);
          let x_2403 : i32 = u_xlati67;
          let x_2406 : i32 = u_xlati67;
          let x_2410 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2403 + 2i) / 4i)][((x_2406 + 2i) % 4i)];
          let x_2412 : vec3<f32> = vs_TEXCOORD7;
          let x_2415 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2410.x, x_2410.y) * vec2<f32>(x_2412.z, x_2412.z)) + x_2415);
          let x_2417 : vec2<f32> = u_xlat51;
          let x_2418 : i32 = u_xlati67;
          let x_2421 : i32 = u_xlati67;
          let x_2425 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2418 + 3i) / 4i)][((x_2421 + 3i) % 4i)];
          u_xlat51 = (x_2417 + vec2<f32>(x_2425.x, x_2425.y));
          let x_2428 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2428 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2431 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2431);
          let x_2433 : u32 = u_xlatu62;
          let x_2436 : vec4<f32> = x_2255.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2433)];
          let x_2438 : vec2<f32> = u_xlat51;
          let x_2440 : u32 = u_xlatu62;
          let x_2443 : vec4<f32> = x_2255.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2440)];
          let x_2445 : vec2<f32> = ((vec2<f32>(x_2436.x, x_2436.y) * x_2438) + vec2<f32>(x_2443.z, x_2443.w));
          let x_2446 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2445.x, x_2445.y, x_2446.z, x_2446.w);
        } else {
          let x_2449 : vec3<f32> = vs_TEXCOORD7;
          let x_2451 : i32 = u_xlati67;
          let x_2454 : i32 = u_xlati67;
          let x_2458 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2451 + 1i) / 4i)][((x_2454 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2449.y, x_2449.y, x_2449.y, x_2449.y) * x_2458);
          let x_2460 : i32 = u_xlati67;
          let x_2462 : i32 = u_xlati67;
          let x_2465 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[(x_2460 / 4i)][(x_2462 % 4i)];
          let x_2466 : vec3<f32> = vs_TEXCOORD7;
          let x_2469 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2465 * vec4<f32>(x_2466.x, x_2466.x, x_2466.x, x_2466.x)) + x_2469);
          let x_2471 : i32 = u_xlati67;
          let x_2474 : i32 = u_xlati67;
          let x_2478 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2471 + 2i) / 4i)][((x_2474 + 2i) % 4i)];
          let x_2479 : vec3<f32> = vs_TEXCOORD7;
          let x_2482 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2478 * vec4<f32>(x_2479.z, x_2479.z, x_2479.z, x_2479.z)) + x_2482);
          let x_2484 : vec4<f32> = u_xlat12;
          let x_2485 : i32 = u_xlati67;
          let x_2488 : i32 = u_xlati67;
          let x_2492 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2485 + 3i) / 4i)][((x_2488 + 3i) % 4i)];
          u_xlat12 = (x_2484 + x_2492);
          let x_2494 : vec4<f32> = u_xlat12;
          let x_2496 : vec4<f32> = u_xlat12;
          let x_2498 : vec3<f32> = (vec3<f32>(x_2494.x, x_2494.y, x_2494.z) / vec3<f32>(x_2496.w, x_2496.w, x_2496.w));
          let x_2499 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
          let x_2501 : vec4<f32> = u_xlat12;
          let x_2503 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(vec3<f32>(x_2501.x, x_2501.y, x_2501.z), vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
          let x_2506 : f32 = u_xlat66;
          u_xlat66 = inverseSqrt(x_2506);
          let x_2508 : f32 = u_xlat66;
          let x_2510 : vec4<f32> = u_xlat12;
          let x_2512 : vec3<f32> = (vec3<f32>(x_2508, x_2508, x_2508) * vec3<f32>(x_2510.x, x_2510.y, x_2510.z));
          let x_2513 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2512.x, x_2512.y, x_2512.z, x_2513.w);
          let x_2515 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(abs(vec3<f32>(x_2515.x, x_2515.y, x_2515.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2520 : f32 = u_xlat66;
          u_xlat66 = max(x_2520, 0.000001f);
          let x_2523 : f32 = u_xlat66;
          u_xlat66 = (1.0f / x_2523);
          let x_2525 : f32 = u_xlat66;
          let x_2527 : vec4<f32> = u_xlat12;
          let x_2529 : vec3<f32> = (vec3<f32>(x_2525, x_2525, x_2525) * vec3<f32>(x_2527.z, x_2527.x, x_2527.y));
          let x_2530 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2529.x, x_2529.y, x_2529.z, x_2530.w);
          let x_2533 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2533);
          let x_2537 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2537, 0.0f, 1.0f);
          let x_2541 : vec4<f32> = u_xlat13;
          let x_2544 : vec4<bool> = (vec4<f32>(x_2541.y, x_2541.z, x_2541.y, x_2541.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2544.x, x_2544.y);
          let x_2548 : bool = u_xlatb47.x;
          if (x_2548) {
            let x_2553 : f32 = u_xlat13.x;
            x_2549 = x_2553;
          } else {
            let x_2556 : f32 = u_xlat13.x;
            x_2549 = -(x_2556);
          }
          let x_2558 : f32 = x_2549;
          u_xlat47.x = x_2558;
          let x_2561 : bool = u_xlatb47.y;
          if (x_2561) {
            let x_2566 : f32 = u_xlat13.x;
            x_2562 = x_2566;
          } else {
            let x_2569 : f32 = u_xlat13.x;
            x_2562 = -(x_2569);
          }
          let x_2571 : f32 = x_2562;
          u_xlat47.y = x_2571;
          let x_2573 : vec4<f32> = u_xlat12;
          let x_2575 : f32 = u_xlat66;
          let x_2578 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2573.x, x_2573.y) * vec2<f32>(x_2575, x_2575)) + x_2578);
          let x_2580 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2580 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2583 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2583, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2587 : u32 = u_xlatu62;
          let x_2590 : vec4<f32> = x_2255.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2587)];
          let x_2592 : vec2<f32> = u_xlat47;
          let x_2594 : u32 = u_xlatu62;
          let x_2597 : vec4<f32> = x_2255.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2594)];
          let x_2599 : vec2<f32> = ((vec2<f32>(x_2590.x, x_2590.y) * x_2592) + vec2<f32>(x_2597.z, x_2597.w));
          let x_2600 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2599.x, x_2599.y, x_2600.z, x_2600.w);
        }
      }
      let x_2607 : vec4<f32> = u_xlat11;
      let x_2610 : f32 = x_44.x_GlobalMipBias.x;
      let x_2611 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2607.x, x_2607.y), x_2610);
      u_xlat11 = x_2611;
      let x_2613 : bool = u_xlatb7.y;
      if (x_2613) {
        let x_2618 : f32 = u_xlat11.w;
        x_2614 = x_2618;
      } else {
        let x_2621 : f32 = u_xlat11.x;
        x_2614 = x_2621;
      }
      let x_2622 : f32 = x_2614;
      u_xlat66 = x_2622;
      let x_2624 : bool = u_xlatb7.x;
      if (x_2624) {
        let x_2628 : vec4<f32> = u_xlat11;
        x_2625 = vec3<f32>(x_2628.x, x_2628.y, x_2628.z);
      } else {
        let x_2631 : f32 = u_xlat66;
        x_2625 = vec3<f32>(x_2631, x_2631, x_2631);
      }
      let x_2633 : vec3<f32> = x_2625;
      let x_2634 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2633.x, x_2633.y, x_2633.z, x_2634.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2640 : vec4<f32> = u_xlat11;
    let x_2642 : u32 = u_xlatu62;
    let x_2645 : vec4<f32> = x_2147.x_AdditionalLightsColor[bitcast<i32>(x_2642)];
    let x_2647 : vec3<f32> = (vec3<f32>(x_2640.x, x_2640.y, x_2640.z) * vec3<f32>(x_2645.x, x_2645.y, x_2645.z));
    let x_2648 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2647.x, x_2647.y, x_2647.z, x_2648.w);
    let x_2650 : f32 = u_xlat44;
    let x_2652 : vec4<f32> = u_xlat11;
    let x_2654 : vec3<f32> = (vec3<f32>(x_2650, x_2650, x_2650) * vec3<f32>(x_2652.x, x_2652.y, x_2652.z));
    let x_2655 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2654.x, x_2654.y, x_2654.z, x_2655.w);
    let x_2657 : vec4<f32> = u_xlat2;
    let x_2659 : vec4<f32> = u_xlat10;
    u_xlat62 = dot(vec3<f32>(x_2657.x, x_2657.y, x_2657.z), vec3<f32>(x_2659.x, x_2659.y, x_2659.z));
    let x_2662 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2662, 0.0f, 1.0f);
    let x_2664 : f32 = u_xlat62;
    let x_2665 : f32 = u_xlat64;
    u_xlat62 = (x_2664 * x_2665);
    let x_2667 : f32 = u_xlat62;
    let x_2669 : vec4<f32> = u_xlat11;
    let x_2671 : vec3<f32> = (vec3<f32>(x_2667, x_2667, x_2667) * vec3<f32>(x_2669.x, x_2669.y, x_2669.z));
    let x_2672 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2671.x, x_2671.y, x_2671.z, x_2672.w);
    let x_2674 : vec4<f32> = u_xlat9;
    let x_2676 : f32 = u_xlat65;
    let x_2679 : vec3<f32> = u_xlat3;
    let x_2680 : vec3<f32> = ((vec3<f32>(x_2674.x, x_2674.y, x_2674.z) * vec3<f32>(x_2676, x_2676, x_2676)) + x_2679);
    let x_2681 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2681.w);
    let x_2683 : vec4<f32> = u_xlat9;
    let x_2685 : vec4<f32> = u_xlat9;
    u_xlat62 = dot(vec3<f32>(x_2683.x, x_2683.y, x_2683.z), vec3<f32>(x_2685.x, x_2685.y, x_2685.z));
    let x_2688 : f32 = u_xlat62;
    u_xlat62 = max(x_2688, 1.17549435e-37f);
    let x_2690 : f32 = u_xlat62;
    u_xlat62 = inverseSqrt(x_2690);
    let x_2692 : f32 = u_xlat62;
    let x_2694 : vec4<f32> = u_xlat9;
    let x_2696 : vec3<f32> = (vec3<f32>(x_2692, x_2692, x_2692) * vec3<f32>(x_2694.x, x_2694.y, x_2694.z));
    let x_2697 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2696.x, x_2696.y, x_2696.z, x_2697.w);
    let x_2699 : vec4<f32> = u_xlat2;
    let x_2701 : vec4<f32> = u_xlat9;
    u_xlat62 = dot(vec3<f32>(x_2699.x, x_2699.y, x_2699.z), vec3<f32>(x_2701.x, x_2701.y, x_2701.z));
    let x_2704 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2704, 0.0f, 1.0f);
    let x_2706 : vec4<f32> = u_xlat10;
    let x_2708 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2706.x, x_2706.y, x_2706.z), vec3<f32>(x_2708.x, x_2708.y, x_2708.z));
    let x_2711 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2711, 0.0f, 1.0f);
    let x_2713 : f32 = u_xlat62;
    let x_2714 : f32 = u_xlat62;
    u_xlat62 = (x_2713 * x_2714);
    let x_2716 : f32 = u_xlat62;
    let x_2718 : f32 = u_xlat8.x;
    u_xlat62 = ((x_2716 * x_2718) + 1.000010014f);
    let x_2721 : f32 = u_xlat64;
    let x_2722 : f32 = u_xlat64;
    u_xlat64 = (x_2721 * x_2722);
    let x_2724 : f32 = u_xlat62;
    let x_2725 : f32 = u_xlat62;
    u_xlat62 = (x_2724 * x_2725);
    let x_2727 : f32 = u_xlat64;
    u_xlat64 = max(x_2727, 0.100000001f);
    let x_2729 : f32 = u_xlat62;
    let x_2730 : f32 = u_xlat64;
    u_xlat62 = (x_2729 * x_2730);
    let x_2732 : f32 = u_xlat63;
    let x_2733 : f32 = u_xlat62;
    u_xlat62 = (x_2732 * x_2733);
    let x_2735 : f32 = u_xlat24;
    let x_2736 : f32 = u_xlat62;
    u_xlat62 = (x_2735 / x_2736);
    let x_2738 : vec4<f32> = u_xlat0;
    let x_2740 : f32 = u_xlat62;
    let x_2743 : vec4<f32> = u_xlat5;
    let x_2745 : vec3<f32> = ((vec3<f32>(x_2738.x, x_2738.y, x_2738.z) * vec3<f32>(x_2740, x_2740, x_2740)) + vec3<f32>(x_2743.x, x_2743.y, x_2743.z));
    let x_2746 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2745.x, x_2745.y, x_2745.z, x_2746.w);
    let x_2748 : vec4<f32> = u_xlat9;
    let x_2750 : vec4<f32> = u_xlat11;
    let x_2753 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_2748.x, x_2748.y, x_2748.z) * vec3<f32>(x_2750.x, x_2750.y, x_2750.z)) + x_2753);

    continuing {
      let x_2755 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2755 + bitcast<u32>(1i));
    }
  }
  let x_2757 : vec3<f32> = u_xlat1;
  let x_2758 : vec3<f32> = u_xlat4;
  let x_2761 : vec4<f32> = u_xlat6;
  let x_2763 : vec3<f32> = ((x_2757 * vec3<f32>(x_2758.x, x_2758.x, x_2758.x)) + vec3<f32>(x_2761.x, x_2761.y, x_2761.z));
  let x_2764 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2763.x, x_2763.y, x_2763.z, x_2764.w);
  let x_2768 : vec3<f32> = u_xlat28;
  let x_2769 : vec4<f32> = u_xlat0;
  let x_2771 : vec3<f32> = (x_2768 + vec3<f32>(x_2769.x, x_2769.y, x_2769.z));
  let x_2772 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2771.x, x_2771.y, x_2771.z, x_2772.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

