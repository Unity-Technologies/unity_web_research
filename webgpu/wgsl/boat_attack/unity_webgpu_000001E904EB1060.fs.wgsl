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

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_331 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1648 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1836 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2091 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2199 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb21 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat41 : f32;
  var u_xlat3 : vec3<f32>;
  var x_103 : f32;
  var x_117 : f32;
  var x_129 : f32;
  var u_xlat21 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat60 : f32;
  var u_xlat44 : f32;
  var u_xlatb64 : bool;
  var u_xlat6 : vec4<f32>;
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
  var x_1733 : f32;
  var x_1744 : vec3<f32>;
  var u_xlat66 : f32;
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
  var x_2493 : f32;
  var x_2506 : f32;
  var x_2558 : f32;
  var x_2569 : vec3<f32>;
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
  u_xlat1 = x_63.x;
  let x_70 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb21 = (x_70 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD7;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_82 : vec3<f32> = (-(x_76) + x_81);
  let x_83 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat41 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat41;
  u_xlat41 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat41;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = (vec3<f32>(x_93, x_93, x_93) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_102 : bool = u_xlatb21;
  if (x_102) {
    let x_107 : f32 = u_xlat2.x;
    x_103 = x_107;
  } else {
    let x_113 : f32 = x_44.unity_MatrixV[0i].z;
    x_103 = x_113;
  }
  let x_114 : f32 = x_103;
  u_xlat3.x = x_114;
  let x_116 : bool = u_xlatb21;
  if (x_116) {
    let x_122 : f32 = u_xlat2.y;
    x_117 = x_122;
  } else {
    let x_125 : f32 = x_44.unity_MatrixV[1i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.y = x_126;
  let x_128 : bool = u_xlatb21;
  if (x_128) {
    let x_133 : f32 = u_xlat2.z;
    x_129 = x_133;
  } else {
    let x_137 : f32 = x_44.unity_MatrixV[2i].z;
    x_129 = x_137;
  }
  let x_138 : f32 = x_129;
  u_xlat3.z = x_138;
  let x_142 : vec3<f32> = vs_TEXCOORD3;
  let x_143 : vec3<f32> = vs_TEXCOORD3;
  u_xlat21.x = dot(x_142, x_143);
  let x_147 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_147);
  let x_150 : vec3<f32> = u_xlat21;
  let x_152 : vec3<f32> = vs_TEXCOORD3;
  u_xlat21 = (vec3<f32>(x_150.x, x_150.x, x_150.x) * x_152);
  let x_159 : vec4<f32> = vs_TEXCOORD0;
  let x_162 : f32 = x_44.x_GlobalMipBias.x;
  let x_163 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_159.z, x_159.w), x_162);
  u_xlat2 = x_163;
  let x_169 : vec4<f32> = vs_TEXCOORD0;
  let x_172 : f32 = x_44.x_GlobalMipBias.x;
  let x_173 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_169.z, x_169.w), x_172);
  u_xlat4 = vec3<f32>(x_173.x, x_173.y, x_173.z);
  let x_175 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_182 : vec3<f32> = u_xlat21;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_182, vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_188 : f32 = u_xlat2.x;
  u_xlat2.x = (x_188 + 0.5f);
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec3<f32> = u_xlat4;
  let x_195 : vec3<f32> = (vec3<f32>(x_192.x, x_192.x, x_192.x) * x_194);
  let x_196 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_200 : f32 = u_xlat2.w;
  u_xlat62 = max(x_200, 0.0001f);
  let x_203 : vec4<f32> = u_xlat2;
  let x_205 : f32 = u_xlat62;
  let x_207 : vec3<f32> = (vec3<f32>(x_203.x, x_203.y, x_203.z) / vec3<f32>(x_205, x_205, x_205));
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_213 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_214 : vec2<f32> = vec2<f32>(x_213.x, x_213.y);
  let x_218 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_214.x, x_214.y));
  let x_219 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_218.x, x_218.y, x_219.z);
  let x_221 : vec3<f32> = u_xlat4;
  let x_223 : vec4<f32> = hlslcc_FragCoord;
  let x_225 : vec2<f32> = (vec2<f32>(x_221.x, x_221.y) * vec2<f32>(x_223.x, x_223.y));
  let x_226 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_225.x, x_225.y, x_226.z);
  let x_229 : f32 = u_xlat4.y;
  let x_232 : f32 = x_44.x_ScaleBiasRt.x;
  let x_235 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat62 = ((x_229 * x_232) + x_235);
  let x_237 : f32 = u_xlat62;
  u_xlat4.z = (-(x_237) + 1.0f);
  let x_241 : f32 = u_xlat1;
  u_xlat62 = ((-(x_241) * 0.959999979f) + 0.959999979f);
  let x_247 : f32 = u_xlat62;
  u_xlat63 = (-(x_247) + 1.0f);
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : f32 = u_xlat62;
  u_xlat5 = (vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253, x_253, x_253));
  let x_256 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : f32 = u_xlat1;
  let x_265 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = ((vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_265.x, x_265.y, x_265.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_274 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_274) + 1.0f);
  let x_277 : f32 = u_xlat1;
  let x_278 : f32 = u_xlat1;
  u_xlat62 = (x_277 * x_278);
  let x_280 : f32 = u_xlat62;
  u_xlat62 = max(x_280, 0.0078125f);
  let x_284 : f32 = u_xlat62;
  let x_285 : f32 = u_xlat62;
  u_xlat24 = (x_284 * x_285);
  let x_289 : f32 = u_xlat0.w;
  let x_290 : f32 = u_xlat63;
  u_xlat60 = (x_289 + x_290);
  let x_292 : f32 = u_xlat60;
  u_xlat60 = clamp(x_292, 0.0f, 1.0f);
  let x_294 : f32 = u_xlat62;
  u_xlat63 = ((x_294 * 4.0f) + 2.0f);
  let x_304 : vec3<f32> = u_xlat4;
  let x_307 : f32 = x_44.x_GlobalMipBias.x;
  let x_308 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_304.x, x_304.z), x_307);
  u_xlat4.x = x_308.x;
  let x_313 : f32 = u_xlat4.x;
  u_xlat44 = (x_313 + -1.0f);
  let x_318 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_319 : f32 = u_xlat44;
  u_xlat44 = ((x_318 * x_319) + 1.0f);
  let x_323 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_323, 1.0f);
  let x_333 : f32 = x_331.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_333);
  let x_335 : bool = u_xlatb64;
  if (x_335) {
    let x_339 : f32 = x_331.x_MainLightShadowParams.y;
    u_xlatb64 = (x_339 == 1.0f);
    let x_341 : bool = u_xlatb64;
    if (x_341) {
      let x_346 : vec4<f32> = vs_TEXCOORD8;
      let x_349 : vec4<f32> = x_331.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_346.x, x_346.y, x_346.x, x_346.y) + x_349);
      let x_352 : vec4<f32> = u_xlat6;
      let x_353 : vec2<f32> = vec2<f32>(x_352.x, x_352.y);
      let x_355 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_353.x, x_353.y, x_355);
      let x_368 : vec3<f32> = txVec0;
      let x_370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_368.xy, x_368.z);
      u_xlat7.x = x_370;
      let x_373 : vec4<f32> = u_xlat6;
      let x_374 : vec2<f32> = vec2<f32>(x_373.z, x_373.w);
      let x_376 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_374.x, x_374.y, x_376);
      let x_383 : vec3<f32> = txVec1;
      let x_385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_383.xy, x_383.z);
      u_xlat7.y = x_385;
      let x_387 : vec4<f32> = vs_TEXCOORD8;
      let x_390 : vec4<f32> = x_331.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_387.x, x_387.y, x_387.x, x_387.y) + x_390);
      let x_393 : vec4<f32> = u_xlat6;
      let x_394 : vec2<f32> = vec2<f32>(x_393.x, x_393.y);
      let x_396 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_394.x, x_394.y, x_396);
      let x_403 : vec3<f32> = txVec2;
      let x_405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_403.xy, x_403.z);
      u_xlat7.z = x_405;
      let x_408 : vec4<f32> = u_xlat6;
      let x_409 : vec2<f32> = vec2<f32>(x_408.z, x_408.w);
      let x_411 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_409.x, x_409.y, x_411);
      let x_418 : vec3<f32> = txVec3;
      let x_420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_418.xy, x_418.z);
      u_xlat7.w = x_420;
      let x_423 : vec4<f32> = u_xlat7;
      u_xlat64 = dot(x_423, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_430 : f32 = x_331.x_MainLightShadowParams.y;
      u_xlatb65 = (x_430 == 2.0f);
      let x_432 : bool = u_xlatb65;
      if (x_432) {
        let x_435 : vec4<f32> = vs_TEXCOORD8;
        let x_438 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_442 : vec2<f32> = ((vec2<f32>(x_435.x, x_435.y) * vec2<f32>(x_438.z, x_438.w)) + vec2<f32>(0.5f, 0.5f));
        let x_443 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
        let x_445 : vec4<f32> = u_xlat6;
        let x_447 : vec2<f32> = floor(vec2<f32>(x_445.x, x_445.y));
        let x_448 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
        let x_452 : vec4<f32> = vs_TEXCOORD8;
        let x_455 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_458 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_452.x, x_452.y) * vec2<f32>(x_455.z, x_455.w)) + -(vec2<f32>(x_458.x, x_458.y)));
        let x_462 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_462.x, x_462.x, x_462.y, x_462.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_467 : vec4<f32> = u_xlat7;
        let x_469 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_467.x, x_467.x, x_467.z, x_467.z) * vec4<f32>(x_469.x, x_469.x, x_469.z, x_469.z));
        let x_472 : vec4<f32> = u_xlat8;
        let x_476 : vec2<f32> = (vec2<f32>(x_472.y, x_472.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_477 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_476.x, x_477.y, x_476.y, x_477.w);
        let x_479 : vec4<f32> = u_xlat8;
        let x_482 : vec2<f32> = u_xlat46;
        let x_484 : vec2<f32> = ((vec2<f32>(x_479.x, x_479.z) * vec2<f32>(0.5f, 0.5f)) + -(x_482));
        let x_485 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
        let x_488 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_488) + vec2<f32>(1.0f, 1.0f));
        let x_492 : vec2<f32> = u_xlat46;
        let x_494 : vec2<f32> = min(x_492, vec2<f32>(0.0f, 0.0f));
        let x_495 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_494.x, x_494.y, x_495.z, x_495.w);
        let x_497 : vec4<f32> = u_xlat9;
        let x_500 : vec4<f32> = u_xlat9;
        let x_503 : vec2<f32> = u_xlat48;
        let x_504 : vec2<f32> = ((-(vec2<f32>(x_497.x, x_497.y)) * vec2<f32>(x_500.x, x_500.y)) + x_503);
        let x_505 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_505.w);
        let x_507 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_507, vec2<f32>(0.0f, 0.0f));
        let x_509 : vec2<f32> = u_xlat46;
        let x_511 : vec2<f32> = u_xlat46;
        let x_513 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_509) * x_511) + vec2<f32>(x_513.y, x_513.w));
        let x_516 : vec4<f32> = u_xlat9;
        let x_518 : vec2<f32> = (vec2<f32>(x_516.x, x_516.y) + vec2<f32>(1.0f, 1.0f));
        let x_519 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
        let x_521 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_521 + vec2<f32>(1.0f, 1.0f));
        let x_524 : vec4<f32> = u_xlat8;
        let x_528 : vec2<f32> = (vec2<f32>(x_524.x, x_524.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_529 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_531 : vec2<f32> = u_xlat48;
        let x_532 : vec2<f32> = (x_531 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_533 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
        let x_535 : vec4<f32> = u_xlat9;
        let x_537 : vec2<f32> = (vec2<f32>(x_535.x, x_535.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_538 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
        let x_541 : vec2<f32> = u_xlat46;
        let x_542 : vec2<f32> = (x_541 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_543 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
        let x_545 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_545.y, x_545.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_549 : f32 = u_xlat9.x;
        u_xlat10.z = x_549;
        let x_552 : f32 = u_xlat46.x;
        u_xlat10.w = x_552;
        let x_555 : f32 = u_xlat11.x;
        u_xlat8.z = x_555;
        let x_558 : f32 = u_xlat7.x;
        u_xlat8.w = x_558;
        let x_561 : vec4<f32> = u_xlat8;
        let x_563 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_561.z, x_561.w, x_561.x, x_561.z) + vec4<f32>(x_563.z, x_563.w, x_563.x, x_563.z));
        let x_567 : f32 = u_xlat10.y;
        u_xlat9.z = x_567;
        let x_570 : f32 = u_xlat46.y;
        u_xlat9.w = x_570;
        let x_573 : f32 = u_xlat8.y;
        u_xlat11.z = x_573;
        let x_576 : f32 = u_xlat7.z;
        u_xlat11.w = x_576;
        let x_578 : vec4<f32> = u_xlat9;
        let x_580 : vec4<f32> = u_xlat11;
        let x_582 : vec3<f32> = (vec3<f32>(x_578.z, x_578.y, x_578.w) + vec3<f32>(x_580.z, x_580.y, x_580.w));
        let x_583 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
        let x_585 : vec4<f32> = u_xlat8;
        let x_587 : vec4<f32> = u_xlat12;
        let x_589 : vec3<f32> = (vec3<f32>(x_585.x, x_585.z, x_585.w) / vec3<f32>(x_587.z, x_587.w, x_587.y));
        let x_590 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
        let x_592 : vec4<f32> = u_xlat8;
        let x_597 : vec3<f32> = (vec3<f32>(x_592.x, x_592.y, x_592.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_598 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
        let x_600 : vec4<f32> = u_xlat11;
        let x_602 : vec4<f32> = u_xlat7;
        let x_604 : vec3<f32> = (vec3<f32>(x_600.z, x_600.y, x_600.w) / vec3<f32>(x_602.x, x_602.y, x_602.z));
        let x_605 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
        let x_607 : vec4<f32> = u_xlat9;
        let x_609 : vec3<f32> = (vec3<f32>(x_607.x, x_607.y, x_607.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_610 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
        let x_612 : vec4<f32> = u_xlat8;
        let x_615 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_617 : vec3<f32> = (vec3<f32>(x_612.y, x_612.x, x_612.z) * vec3<f32>(x_615.x, x_615.x, x_615.x));
        let x_618 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
        let x_620 : vec4<f32> = u_xlat9;
        let x_623 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_625 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(x_623.y, x_623.y, x_623.y));
        let x_626 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
        let x_629 : f32 = u_xlat9.x;
        u_xlat8.w = x_629;
        let x_631 : vec4<f32> = u_xlat6;
        let x_634 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_637 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y) * vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y)) + vec4<f32>(x_637.y, x_637.w, x_637.x, x_637.w));
        let x_640 : vec4<f32> = u_xlat6;
        let x_643 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_646 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_640.x, x_640.y) * vec2<f32>(x_643.x, x_643.y)) + vec2<f32>(x_646.z, x_646.w));
        let x_650 : f32 = u_xlat8.y;
        u_xlat9.w = x_650;
        let x_652 : vec4<f32> = u_xlat9;
        let x_653 : vec2<f32> = vec2<f32>(x_652.y, x_652.z);
        let x_654 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_654.x, x_653.x, x_654.z, x_653.y);
        let x_656 : vec4<f32> = u_xlat6;
        let x_659 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_662 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_656.x, x_656.y, x_656.x, x_656.y) * vec4<f32>(x_659.x, x_659.y, x_659.x, x_659.y)) + vec4<f32>(x_662.x, x_662.y, x_662.z, x_662.y));
        let x_665 : vec4<f32> = u_xlat6;
        let x_668 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_671 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_665.x, x_665.y, x_665.x, x_665.y) * vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y)) + vec4<f32>(x_671.w, x_671.y, x_671.w, x_671.z));
        let x_674 : vec4<f32> = u_xlat6;
        let x_677 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_680 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_674.x, x_674.y, x_674.x, x_674.y) * vec4<f32>(x_677.x, x_677.y, x_677.x, x_677.y)) + vec4<f32>(x_680.x, x_680.w, x_680.z, x_680.w));
        let x_684 : vec4<f32> = u_xlat7;
        let x_686 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_684.x, x_684.x, x_684.x, x_684.y) * vec4<f32>(x_686.z, x_686.w, x_686.y, x_686.z));
        let x_690 : vec4<f32> = u_xlat7;
        let x_692 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_690.y, x_690.y, x_690.z, x_690.z) * x_692);
        let x_696 : f32 = u_xlat7.z;
        let x_698 : f32 = u_xlat12.y;
        u_xlat65 = (x_696 * x_698);
        let x_701 : vec4<f32> = u_xlat10;
        let x_702 : vec2<f32> = vec2<f32>(x_701.x, x_701.y);
        let x_704 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_702.x, x_702.y, x_704);
        let x_711 : vec3<f32> = txVec4;
        let x_713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_711.xy, x_711.z);
        u_xlat6.x = x_713;
        let x_716 : vec4<f32> = u_xlat10;
        let x_717 : vec2<f32> = vec2<f32>(x_716.z, x_716.w);
        let x_719 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_717.x, x_717.y, x_719);
        let x_727 : vec3<f32> = txVec5;
        let x_729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_727.xy, x_727.z);
        u_xlat26 = x_729;
        let x_730 : f32 = u_xlat26;
        let x_732 : f32 = u_xlat13.y;
        u_xlat26 = (x_730 * x_732);
        let x_735 : f32 = u_xlat13.x;
        let x_737 : f32 = u_xlat6.x;
        let x_739 : f32 = u_xlat26;
        u_xlat6.x = ((x_735 * x_737) + x_739);
        let x_743 : vec2<f32> = u_xlat46;
        let x_745 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_743.x, x_743.y, x_745);
        let x_752 : vec3<f32> = txVec6;
        let x_754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_752.xy, x_752.z);
        u_xlat26 = x_754;
        let x_756 : f32 = u_xlat13.z;
        let x_757 : f32 = u_xlat26;
        let x_760 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_756 * x_757) + x_760);
        let x_764 : vec4<f32> = u_xlat9;
        let x_765 : vec2<f32> = vec2<f32>(x_764.x, x_764.y);
        let x_767 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_765.x, x_765.y, x_767);
        let x_774 : vec3<f32> = txVec7;
        let x_776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_774.xy, x_774.z);
        u_xlat26 = x_776;
        let x_778 : f32 = u_xlat13.w;
        let x_779 : f32 = u_xlat26;
        let x_782 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_778 * x_779) + x_782);
        let x_786 : vec4<f32> = u_xlat11;
        let x_787 : vec2<f32> = vec2<f32>(x_786.x, x_786.y);
        let x_789 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_787.x, x_787.y, x_789);
        let x_796 : vec3<f32> = txVec8;
        let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_796.xy, x_796.z);
        u_xlat26 = x_798;
        let x_800 : f32 = u_xlat14.x;
        let x_801 : f32 = u_xlat26;
        let x_804 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_800 * x_801) + x_804);
        let x_808 : vec4<f32> = u_xlat11;
        let x_809 : vec2<f32> = vec2<f32>(x_808.z, x_808.w);
        let x_811 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_809.x, x_809.y, x_811);
        let x_818 : vec3<f32> = txVec9;
        let x_820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_818.xy, x_818.z);
        u_xlat26 = x_820;
        let x_822 : f32 = u_xlat14.y;
        let x_823 : f32 = u_xlat26;
        let x_826 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_822 * x_823) + x_826);
        let x_830 : vec4<f32> = u_xlat9;
        let x_831 : vec2<f32> = vec2<f32>(x_830.z, x_830.w);
        let x_833 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_831.x, x_831.y, x_833);
        let x_840 : vec3<f32> = txVec10;
        let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_840.xy, x_840.z);
        u_xlat26 = x_842;
        let x_844 : f32 = u_xlat14.z;
        let x_845 : f32 = u_xlat26;
        let x_848 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_844 * x_845) + x_848);
        let x_852 : vec4<f32> = u_xlat8;
        let x_853 : vec2<f32> = vec2<f32>(x_852.x, x_852.y);
        let x_855 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_853.x, x_853.y, x_855);
        let x_862 : vec3<f32> = txVec11;
        let x_864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_862.xy, x_862.z);
        u_xlat26 = x_864;
        let x_866 : f32 = u_xlat14.w;
        let x_867 : f32 = u_xlat26;
        let x_870 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_866 * x_867) + x_870);
        let x_874 : vec4<f32> = u_xlat8;
        let x_875 : vec2<f32> = vec2<f32>(x_874.z, x_874.w);
        let x_877 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_875.x, x_875.y, x_877);
        let x_884 : vec3<f32> = txVec12;
        let x_886 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_884.xy, x_884.z);
        u_xlat26 = x_886;
        let x_887 : f32 = u_xlat65;
        let x_888 : f32 = u_xlat26;
        let x_891 : f32 = u_xlat6.x;
        u_xlat64 = ((x_887 * x_888) + x_891);
      } else {
        let x_894 : vec4<f32> = vs_TEXCOORD8;
        let x_897 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_900 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.y) * vec2<f32>(x_897.z, x_897.w)) + vec2<f32>(0.5f, 0.5f));
        let x_901 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat6;
        let x_905 : vec2<f32> = floor(vec2<f32>(x_903.x, x_903.y));
        let x_906 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_908 : vec4<f32> = vs_TEXCOORD8;
        let x_911 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_914 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_908.x, x_908.y) * vec2<f32>(x_911.z, x_911.w)) + -(vec2<f32>(x_914.x, x_914.y)));
        let x_918 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_918.x, x_918.x, x_918.y, x_918.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_921 : vec4<f32> = u_xlat7;
        let x_923 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_921.x, x_921.x, x_921.z, x_921.z) * vec4<f32>(x_923.x, x_923.x, x_923.z, x_923.z));
        let x_926 : vec4<f32> = u_xlat8;
        let x_930 : vec2<f32> = (vec2<f32>(x_926.y, x_926.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_931 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_931.x, x_930.x, x_931.z, x_930.y);
        let x_933 : vec4<f32> = u_xlat8;
        let x_936 : vec2<f32> = u_xlat46;
        let x_938 : vec2<f32> = ((vec2<f32>(x_933.x, x_933.z) * vec2<f32>(0.5f, 0.5f)) + -(x_936));
        let x_939 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_938.x, x_939.y, x_938.y, x_939.w);
        let x_941 : vec2<f32> = u_xlat46;
        let x_943 : vec2<f32> = (-(x_941) + vec2<f32>(1.0f, 1.0f));
        let x_944 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_946 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_946, vec2<f32>(0.0f, 0.0f));
        let x_948 : vec2<f32> = u_xlat48;
        let x_950 : vec2<f32> = u_xlat48;
        let x_952 : vec4<f32> = u_xlat8;
        let x_954 : vec2<f32> = ((-(x_948) * x_950) + vec2<f32>(x_952.x, x_952.y));
        let x_955 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_957, vec2<f32>(0.0f, 0.0f));
        let x_960 : vec2<f32> = u_xlat48;
        let x_962 : vec2<f32> = u_xlat48;
        let x_964 : vec4<f32> = u_xlat7;
        let x_966 : vec2<f32> = ((-(x_960) * x_962) + vec2<f32>(x_964.y, x_964.w));
        let x_967 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_966.x, x_967.y, x_966.y);
        let x_969 : vec4<f32> = u_xlat8;
        let x_972 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) + vec2<f32>(2.0f, 2.0f));
        let x_973 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_975 : vec3<f32> = u_xlat27;
        let x_977 : vec2<f32> = (vec2<f32>(x_975.x, x_975.z) + vec2<f32>(2.0f, 2.0f));
        let x_978 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_978.x, x_977.x, x_978.z, x_977.y);
        let x_981 : f32 = u_xlat7.y;
        u_xlat10.z = (x_981 * 0.081632003f);
        let x_985 : vec4<f32> = u_xlat7;
        let x_988 : vec3<f32> = (vec3<f32>(x_985.z, x_985.x, x_985.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_989 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat8;
        let x_994 : vec2<f32> = (vec2<f32>(x_991.x, x_991.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_995 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_998 : f32 = u_xlat11.y;
        u_xlat10.x = x_998;
        let x_1000 : vec2<f32> = u_xlat46;
        let x_1007 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1008 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1008.x, x_1007.x, x_1008.z, x_1007.y);
        let x_1010 : vec2<f32> = u_xlat46;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1010.x, x_1010.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1015 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1014.x, x_1015.y, x_1014.y, x_1015.w);
        let x_1018 : f32 = u_xlat7.x;
        u_xlat8.y = x_1018;
        let x_1021 : f32 = u_xlat9.y;
        u_xlat8.w = x_1021;
        let x_1023 : vec4<f32> = u_xlat8;
        let x_1024 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1023 + x_1024);
        let x_1026 : vec2<f32> = u_xlat46;
        let x_1029 : vec2<f32> = ((vec2<f32>(x_1026.y, x_1026.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1030 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1030.x, x_1029.x, x_1030.z, x_1029.y);
        let x_1032 : vec2<f32> = u_xlat46;
        let x_1035 : vec2<f32> = ((vec2<f32>(x_1032.y, x_1032.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1036 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1035.x, x_1036.y, x_1035.y, x_1036.w);
        let x_1039 : f32 = u_xlat7.y;
        u_xlat9.y = x_1039;
        let x_1041 : vec4<f32> = u_xlat9;
        let x_1042 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1041 + x_1042);
        let x_1044 : vec4<f32> = u_xlat8;
        let x_1045 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1044 / x_1045);
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1047 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1053 : vec4<f32> = u_xlat9;
        let x_1054 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1053 / x_1054);
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1056 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1058 : vec4<f32> = u_xlat8;
        let x_1061 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1058.w, x_1058.x, x_1058.y, x_1058.z) * vec4<f32>(x_1061.x, x_1061.x, x_1061.x, x_1061.x));
        let x_1064 : vec4<f32> = u_xlat9;
        let x_1067 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1064.x, x_1064.w, x_1064.y, x_1064.z) * vec4<f32>(x_1067.y, x_1067.y, x_1067.y, x_1067.y));
        let x_1070 : vec4<f32> = u_xlat8;
        let x_1071 : vec3<f32> = vec3<f32>(x_1070.y, x_1070.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1071.z);
        let x_1075 : f32 = u_xlat9.x;
        u_xlat11.y = x_1075;
        let x_1077 : vec4<f32> = u_xlat6;
        let x_1080 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y) * vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y)) + vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1083.y));
        let x_1086 : vec4<f32> = u_xlat6;
        let x_1089 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(x_1089.x, x_1089.y)) + vec2<f32>(x_1092.w, x_1092.y));
        let x_1096 : f32 = u_xlat11.y;
        u_xlat8.y = x_1096;
        let x_1099 : f32 = u_xlat9.z;
        u_xlat11.y = x_1099;
        let x_1101 : vec4<f32> = u_xlat6;
        let x_1104 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1107 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y) * vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y)) + vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1107.y));
        let x_1110 : vec4<f32> = u_xlat6;
        let x_1113 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat11;
        let x_1118 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.w, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1122 : f32 = u_xlat11.y;
        u_xlat8.z = x_1122;
        let x_1125 : vec4<f32> = u_xlat6;
        let x_1128 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) * vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y)) + vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.z));
        let x_1135 : f32 = u_xlat9.w;
        u_xlat11.y = x_1135;
        let x_1138 : vec4<f32> = u_xlat6;
        let x_1141 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1144.y));
        let x_1148 : vec4<f32> = u_xlat6;
        let x_1151 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat11;
        let x_1156 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(x_1154.w, x_1154.y));
        let x_1157 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1156.x, x_1156.y, x_1157.z);
        let x_1160 : f32 = u_xlat11.y;
        u_xlat8.w = x_1160;
        let x_1163 : vec4<f32> = u_xlat6;
        let x_1166 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1163.x, x_1163.y) * vec2<f32>(x_1166.x, x_1166.y)) + vec2<f32>(x_1169.x, x_1169.w));
        let x_1172 : vec4<f32> = u_xlat11;
        let x_1173 : vec3<f32> = vec3<f32>(x_1172.x, x_1172.z, x_1172.w);
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1173.x, x_1174.y, x_1173.y, x_1173.z);
        let x_1176 : vec4<f32> = u_xlat6;
        let x_1179 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1182 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1176.x, x_1176.y, x_1176.x, x_1176.y) * vec4<f32>(x_1179.x, x_1179.y, x_1179.x, x_1179.y)) + vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1182.y));
        let x_1186 : vec4<f32> = u_xlat6;
        let x_1189 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1186.x, x_1186.y) * vec2<f32>(x_1189.x, x_1189.y)) + vec2<f32>(x_1192.w, x_1192.y));
        let x_1196 : f32 = u_xlat8.x;
        u_xlat9.x = x_1196;
        let x_1198 : vec4<f32> = u_xlat6;
        let x_1201 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat9;
        let x_1206 : vec2<f32> = ((vec2<f32>(x_1198.x, x_1198.y) * vec2<f32>(x_1201.x, x_1201.y)) + vec2<f32>(x_1204.x, x_1204.y));
        let x_1207 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1210 : vec4<f32> = u_xlat7;
        let x_1212 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1210.x, x_1210.x, x_1210.x, x_1210.x) * x_1212);
        let x_1215 : vec4<f32> = u_xlat7;
        let x_1217 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1215.y, x_1215.y, x_1215.y, x_1215.y) * x_1217);
        let x_1220 : vec4<f32> = u_xlat7;
        let x_1222 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1220.z, x_1220.z, x_1220.z, x_1220.z) * x_1222);
        let x_1224 : vec4<f32> = u_xlat7;
        let x_1226 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1224.w, x_1224.w, x_1224.w, x_1224.w) * x_1226);
        let x_1229 : vec4<f32> = u_xlat12;
        let x_1230 : vec2<f32> = vec2<f32>(x_1229.x, x_1229.y);
        let x_1232 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1239 : vec3<f32> = txVec13;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1239.xy, x_1239.z);
        u_xlat65 = x_1241;
        let x_1243 : vec4<f32> = u_xlat12;
        let x_1244 : vec2<f32> = vec2<f32>(x_1243.z, x_1243.w);
        let x_1246 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1244.x, x_1244.y, x_1246);
        let x_1253 : vec3<f32> = txVec14;
        let x_1255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1253.xy, x_1253.z);
        u_xlat8.x = x_1255;
        let x_1258 : f32 = u_xlat8.x;
        let x_1260 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1258 * x_1260);
        let x_1264 : f32 = u_xlat17.x;
        let x_1265 : f32 = u_xlat65;
        let x_1268 : f32 = u_xlat8.x;
        u_xlat65 = ((x_1264 * x_1265) + x_1268);
        let x_1271 : vec2<f32> = u_xlat46;
        let x_1273 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1271.x, x_1271.y, x_1273);
        let x_1280 : vec3<f32> = txVec15;
        let x_1282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1280.xy, x_1280.z);
        u_xlat46.x = x_1282;
        let x_1285 : f32 = u_xlat17.z;
        let x_1287 : f32 = u_xlat46.x;
        let x_1289 : f32 = u_xlat65;
        u_xlat65 = ((x_1285 * x_1287) + x_1289);
        let x_1292 : vec4<f32> = u_xlat15;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.x, x_1292.y);
        let x_1295 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec16;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1302.xy, x_1302.z);
        u_xlat46.x = x_1304;
        let x_1307 : f32 = u_xlat17.w;
        let x_1309 : f32 = u_xlat46.x;
        let x_1311 : f32 = u_xlat65;
        u_xlat65 = ((x_1307 * x_1309) + x_1311);
        let x_1314 : vec4<f32> = u_xlat13;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.x, x_1314.y);
        let x_1317 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec17;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1324.xy, x_1324.z);
        u_xlat46.x = x_1326;
        let x_1329 : f32 = u_xlat18.x;
        let x_1331 : f32 = u_xlat46.x;
        let x_1333 : f32 = u_xlat65;
        u_xlat65 = ((x_1329 * x_1331) + x_1333);
        let x_1336 : vec4<f32> = u_xlat13;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.z, x_1336.w);
        let x_1339 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1346 : vec3<f32> = txVec18;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1346.xy, x_1346.z);
        u_xlat46.x = x_1348;
        let x_1351 : f32 = u_xlat18.y;
        let x_1353 : f32 = u_xlat46.x;
        let x_1355 : f32 = u_xlat65;
        u_xlat65 = ((x_1351 * x_1353) + x_1355);
        let x_1358 : vec4<f32> = u_xlat14;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.x, x_1358.y);
        let x_1361 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec19;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1368.xy, x_1368.z);
        u_xlat46.x = x_1370;
        let x_1373 : f32 = u_xlat18.z;
        let x_1375 : f32 = u_xlat46.x;
        let x_1377 : f32 = u_xlat65;
        u_xlat65 = ((x_1373 * x_1375) + x_1377);
        let x_1380 : vec4<f32> = u_xlat15;
        let x_1381 : vec2<f32> = vec2<f32>(x_1380.z, x_1380.w);
        let x_1383 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1381.x, x_1381.y, x_1383);
        let x_1390 : vec3<f32> = txVec20;
        let x_1392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1390.xy, x_1390.z);
        u_xlat46.x = x_1392;
        let x_1395 : f32 = u_xlat18.w;
        let x_1397 : f32 = u_xlat46.x;
        let x_1399 : f32 = u_xlat65;
        u_xlat65 = ((x_1395 * x_1397) + x_1399);
        let x_1402 : vec4<f32> = u_xlat16;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.x, x_1402.y);
        let x_1405 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec21;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1412.xy, x_1412.z);
        u_xlat46.x = x_1414;
        let x_1417 : f32 = u_xlat19.x;
        let x_1419 : f32 = u_xlat46.x;
        let x_1421 : f32 = u_xlat65;
        u_xlat65 = ((x_1417 * x_1419) + x_1421);
        let x_1424 : vec4<f32> = u_xlat16;
        let x_1425 : vec2<f32> = vec2<f32>(x_1424.z, x_1424.w);
        let x_1427 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1434 : vec3<f32> = txVec22;
        let x_1436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1434.xy, x_1434.z);
        u_xlat46.x = x_1436;
        let x_1439 : f32 = u_xlat19.y;
        let x_1441 : f32 = u_xlat46.x;
        let x_1443 : f32 = u_xlat65;
        u_xlat65 = ((x_1439 * x_1441) + x_1443);
        let x_1446 : vec3<f32> = u_xlat28;
        let x_1447 : vec2<f32> = vec2<f32>(x_1446.x, x_1446.y);
        let x_1449 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec23;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1456.xy, x_1456.z);
        u_xlat46.x = x_1458;
        let x_1461 : f32 = u_xlat19.z;
        let x_1463 : f32 = u_xlat46.x;
        let x_1465 : f32 = u_xlat65;
        u_xlat65 = ((x_1461 * x_1463) + x_1465);
        let x_1468 : vec2<f32> = u_xlat54;
        let x_1470 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec24;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1477.xy, x_1477.z);
        u_xlat46.x = x_1479;
        let x_1482 : f32 = u_xlat19.w;
        let x_1484 : f32 = u_xlat46.x;
        let x_1486 : f32 = u_xlat65;
        u_xlat65 = ((x_1482 * x_1484) + x_1486);
        let x_1489 : vec4<f32> = u_xlat11;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
        let x_1492 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec25;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1499.xy, x_1499.z);
        u_xlat46.x = x_1501;
        let x_1504 : f32 = u_xlat7.x;
        let x_1506 : f32 = u_xlat46.x;
        let x_1508 : f32 = u_xlat65;
        u_xlat65 = ((x_1504 * x_1506) + x_1508);
        let x_1511 : vec4<f32> = u_xlat11;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.z, x_1511.w);
        let x_1514 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec26;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1521.xy, x_1521.z);
        u_xlat46.x = x_1523;
        let x_1526 : f32 = u_xlat7.y;
        let x_1528 : f32 = u_xlat46.x;
        let x_1530 : f32 = u_xlat65;
        u_xlat65 = ((x_1526 * x_1528) + x_1530);
        let x_1533 : vec2<f32> = u_xlat49;
        let x_1535 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec27;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1542.xy, x_1542.z);
        u_xlat46.x = x_1544;
        let x_1547 : f32 = u_xlat7.z;
        let x_1549 : f32 = u_xlat46.x;
        let x_1551 : f32 = u_xlat65;
        u_xlat65 = ((x_1547 * x_1549) + x_1551);
        let x_1554 : vec4<f32> = u_xlat6;
        let x_1555 : vec2<f32> = vec2<f32>(x_1554.x, x_1554.y);
        let x_1557 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec28;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1564.xy, x_1564.z);
        u_xlat6.x = x_1566;
        let x_1569 : f32 = u_xlat7.w;
        let x_1571 : f32 = u_xlat6.x;
        let x_1573 : f32 = u_xlat65;
        u_xlat64 = ((x_1569 * x_1571) + x_1573);
      }
    }
  } else {
    let x_1577 : vec4<f32> = vs_TEXCOORD8;
    let x_1578 : vec2<f32> = vec2<f32>(x_1577.x, x_1577.y);
    let x_1580 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1578.x, x_1578.y, x_1580);
    let x_1587 : vec3<f32> = txVec29;
    let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1587.xy, x_1587.z);
    u_xlat64 = x_1589;
  }
  let x_1591 : f32 = x_331.x_MainLightShadowParams.x;
  u_xlat65 = (-(x_1591) + 1.0f);
  let x_1594 : f32 = u_xlat64;
  let x_1596 : f32 = x_331.x_MainLightShadowParams.x;
  let x_1598 : f32 = u_xlat65;
  u_xlat64 = ((x_1594 * x_1596) + x_1598);
  let x_1601 : f32 = vs_TEXCOORD8.z;
  u_xlatb65 = (0.0f >= x_1601);
  let x_1605 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_1605 >= 1.0f);
  let x_1607 : bool = u_xlatb65;
  let x_1608 : bool = u_xlatb6;
  u_xlatb65 = (x_1607 | x_1608);
  let x_1610 : bool = u_xlatb65;
  let x_1611 : f32 = u_xlat64;
  u_xlat64 = select(x_1611, 1.0f, x_1610);
  let x_1613 : vec3<f32> = vs_TEXCOORD7;
  let x_1615 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1617 : vec3<f32> = (x_1613 + -(x_1615));
  let x_1618 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
  let x_1620 : vec4<f32> = u_xlat6;
  let x_1622 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_1620.x, x_1620.y, x_1620.z), vec3<f32>(x_1622.x, x_1622.y, x_1622.z));
  let x_1625 : f32 = u_xlat65;
  let x_1627 : f32 = x_331.x_MainLightShadowParams.z;
  let x_1630 : f32 = x_331.x_MainLightShadowParams.w;
  u_xlat65 = ((x_1625 * x_1627) + x_1630);
  let x_1632 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1632, 0.0f, 1.0f);
  let x_1634 : f32 = u_xlat64;
  u_xlat6.x = (-(x_1634) + 1.0f);
  let x_1638 : f32 = u_xlat65;
  let x_1640 : f32 = u_xlat6.x;
  let x_1642 : f32 = u_xlat64;
  u_xlat64 = ((x_1638 * x_1640) + x_1642);
  let x_1650 : f32 = x_1648.x_MainLightCookieTextureFormat;
  u_xlatb65 = !((x_1650 == -1.0f));
  let x_1652 : bool = u_xlatb65;
  if (x_1652) {
    let x_1655 : vec3<f32> = vs_TEXCOORD7;
    let x_1658 : vec4<f32> = x_1648.x_MainLightWorldToLight[1i];
    let x_1660 : vec2<f32> = (vec2<f32>(x_1655.y, x_1655.y) * vec2<f32>(x_1658.x, x_1658.y));
    let x_1661 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1660.x, x_1660.y, x_1661.z, x_1661.w);
    let x_1664 : vec4<f32> = x_1648.x_MainLightWorldToLight[0i];
    let x_1666 : vec3<f32> = vs_TEXCOORD7;
    let x_1669 : vec4<f32> = u_xlat6;
    let x_1671 : vec2<f32> = ((vec2<f32>(x_1664.x, x_1664.y) * vec2<f32>(x_1666.x, x_1666.x)) + vec2<f32>(x_1669.x, x_1669.y));
    let x_1672 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1671.x, x_1671.y, x_1672.z, x_1672.w);
    let x_1675 : vec4<f32> = x_1648.x_MainLightWorldToLight[2i];
    let x_1677 : vec3<f32> = vs_TEXCOORD7;
    let x_1680 : vec4<f32> = u_xlat6;
    let x_1682 : vec2<f32> = ((vec2<f32>(x_1675.x, x_1675.y) * vec2<f32>(x_1677.z, x_1677.z)) + vec2<f32>(x_1680.x, x_1680.y));
    let x_1683 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1682.x, x_1682.y, x_1683.z, x_1683.w);
    let x_1685 : vec4<f32> = u_xlat6;
    let x_1689 : vec4<f32> = x_1648.x_MainLightWorldToLight[3i];
    let x_1691 : vec2<f32> = (vec2<f32>(x_1685.x, x_1685.y) + vec2<f32>(x_1689.x, x_1689.y));
    let x_1692 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1691.x, x_1691.y, x_1692.z, x_1692.w);
    let x_1694 : vec4<f32> = u_xlat6;
    let x_1697 : vec2<f32> = ((vec2<f32>(x_1694.x, x_1694.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1698 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1697.x, x_1697.y, x_1698.z, x_1698.w);
    let x_1705 : vec4<f32> = u_xlat6;
    let x_1708 : f32 = x_44.x_GlobalMipBias.x;
    let x_1709 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1705.x, x_1705.y), x_1708);
    u_xlat6 = x_1709;
    let x_1714 : f32 = x_1648.x_MainLightCookieTextureFormat;
    let x_1716 : f32 = x_1648.x_MainLightCookieTextureFormat;
    let x_1718 : f32 = x_1648.x_MainLightCookieTextureFormat;
    let x_1720 : f32 = x_1648.x_MainLightCookieTextureFormat;
    let x_1721 : vec4<f32> = vec4<f32>(x_1714, x_1716, x_1718, x_1720);
    let x_1729 : vec4<bool> = (vec4<f32>(x_1721.x, x_1721.y, x_1721.z, x_1721.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1729.x, x_1729.y);
    let x_1732 : bool = u_xlatb7.y;
    if (x_1732) {
      let x_1737 : f32 = u_xlat6.w;
      x_1733 = x_1737;
    } else {
      let x_1740 : f32 = u_xlat6.x;
      x_1733 = x_1740;
    }
    let x_1741 : f32 = x_1733;
    u_xlat65 = x_1741;
    let x_1743 : bool = u_xlatb7.x;
    if (x_1743) {
      let x_1747 : vec4<f32> = u_xlat6;
      x_1744 = vec3<f32>(x_1747.x, x_1747.y, x_1747.z);
    } else {
      let x_1750 : f32 = u_xlat65;
      x_1744 = vec3<f32>(x_1750, x_1750, x_1750);
    }
    let x_1752 : vec3<f32> = x_1744;
    let x_1753 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1759 : vec4<f32> = u_xlat6;
  let x_1762 : vec4<f32> = x_44.x_MainLightColor;
  let x_1764 : vec3<f32> = (vec3<f32>(x_1759.x, x_1759.y, x_1759.z) * vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
  let x_1765 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
  let x_1767 : f32 = u_xlat44;
  let x_1769 : vec4<f32> = u_xlat6;
  let x_1771 : vec3<f32> = (vec3<f32>(x_1767, x_1767, x_1767) * vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
  let x_1772 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
  let x_1774 : vec3<f32> = u_xlat3;
  let x_1776 : vec3<f32> = u_xlat21;
  u_xlat65 = dot(-(x_1774), x_1776);
  let x_1778 : f32 = u_xlat65;
  let x_1779 : f32 = u_xlat65;
  u_xlat65 = (x_1778 + x_1779);
  let x_1781 : vec3<f32> = u_xlat21;
  let x_1782 : f32 = u_xlat65;
  let x_1786 : vec3<f32> = u_xlat3;
  let x_1788 : vec3<f32> = ((x_1781 * -(vec3<f32>(x_1782, x_1782, x_1782))) + -(x_1786));
  let x_1789 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
  let x_1791 : vec3<f32> = u_xlat21;
  let x_1792 : vec3<f32> = u_xlat3;
  u_xlat65 = dot(x_1791, x_1792);
  let x_1794 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1794, 0.0f, 1.0f);
  let x_1796 : f32 = u_xlat65;
  u_xlat65 = (-(x_1796) + 1.0f);
  let x_1799 : f32 = u_xlat65;
  let x_1800 : f32 = u_xlat65;
  u_xlat65 = (x_1799 * x_1800);
  let x_1802 : f32 = u_xlat65;
  let x_1803 : f32 = u_xlat65;
  u_xlat65 = (x_1802 * x_1803);
  let x_1806 : f32 = u_xlat1;
  u_xlat66 = ((-(x_1806) * 0.699999988f) + 1.700000048f);
  let x_1812 : f32 = u_xlat1;
  let x_1813 : f32 = u_xlat66;
  u_xlat1 = (x_1812 * x_1813);
  let x_1815 : f32 = u_xlat1;
  u_xlat1 = (x_1815 * 6.0f);
  let x_1826 : vec4<f32> = u_xlat7;
  let x_1828 : f32 = u_xlat1;
  let x_1829 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1826.x, x_1826.y, x_1826.z), x_1828);
  u_xlat7 = x_1829;
  let x_1831 : f32 = u_xlat7.w;
  u_xlat1 = (x_1831 + -1.0f);
  let x_1838 : f32 = x_1836.unity_SpecCube0_HDR.w;
  let x_1839 : f32 = u_xlat1;
  u_xlat1 = ((x_1838 * x_1839) + 1.0f);
  let x_1842 : f32 = u_xlat1;
  u_xlat1 = max(x_1842, 0.0f);
  let x_1844 : f32 = u_xlat1;
  u_xlat1 = log2(x_1844);
  let x_1846 : f32 = u_xlat1;
  let x_1848 : f32 = x_1836.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1846 * x_1848);
  let x_1850 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1850);
  let x_1852 : f32 = u_xlat1;
  let x_1854 : f32 = x_1836.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1852 * x_1854);
  let x_1856 : vec4<f32> = u_xlat7;
  let x_1858 : f32 = u_xlat1;
  let x_1860 : vec3<f32> = (vec3<f32>(x_1856.x, x_1856.y, x_1856.z) * vec3<f32>(x_1858, x_1858, x_1858));
  let x_1861 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
  let x_1863 : f32 = u_xlat62;
  let x_1865 : f32 = u_xlat62;
  let x_1869 : vec2<f32> = ((vec2<f32>(x_1863, x_1863) * vec2<f32>(x_1865, x_1865)) + vec2<f32>(-1.0f, 1.0f));
  let x_1870 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1869.x, x_1869.y, x_1870.z, x_1870.w);
  let x_1873 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1873);
  let x_1875 : vec4<f32> = u_xlat0;
  let x_1878 : f32 = u_xlat60;
  u_xlat28 = (-(vec3<f32>(x_1875.x, x_1875.y, x_1875.z)) + vec3<f32>(x_1878, x_1878, x_1878));
  let x_1881 : f32 = u_xlat65;
  let x_1883 : vec3<f32> = u_xlat28;
  let x_1885 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1881, x_1881, x_1881) * x_1883) + vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
  let x_1888 : f32 = u_xlat1;
  let x_1890 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1888, x_1888, x_1888) * x_1890);
  let x_1892 : vec4<f32> = u_xlat7;
  let x_1894 : vec3<f32> = u_xlat28;
  let x_1895 : vec3<f32> = (vec3<f32>(x_1892.x, x_1892.y, x_1892.z) * x_1894);
  let x_1896 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
  let x_1898 : vec4<f32> = u_xlat2;
  let x_1900 : vec3<f32> = u_xlat5;
  let x_1902 : vec4<f32> = u_xlat7;
  let x_1904 : vec3<f32> = ((vec3<f32>(x_1898.x, x_1898.y, x_1898.z) * x_1900) + vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
  let x_1905 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
  let x_1907 : f32 = u_xlat64;
  let x_1910 : f32 = x_1836.unity_LightData.z;
  u_xlat60 = (x_1907 * x_1910);
  let x_1912 : vec3<f32> = u_xlat21;
  let x_1914 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_1912, vec3<f32>(x_1914.x, x_1914.y, x_1914.z));
  let x_1917 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1917, 0.0f, 1.0f);
  let x_1919 : f32 = u_xlat60;
  let x_1920 : f32 = u_xlat1;
  u_xlat60 = (x_1919 * x_1920);
  let x_1922 : f32 = u_xlat60;
  let x_1924 : vec4<f32> = u_xlat6;
  let x_1926 : vec3<f32> = (vec3<f32>(x_1922, x_1922, x_1922) * vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1927.w);
  let x_1929 : vec3<f32> = u_xlat3;
  let x_1931 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1933 : vec3<f32> = (x_1929 + vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
  let x_1934 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
  let x_1936 : vec4<f32> = u_xlat7;
  let x_1938 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1936.x, x_1936.y, x_1936.z), vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
  let x_1941 : f32 = u_xlat60;
  u_xlat60 = max(x_1941, 1.17549435e-37f);
  let x_1944 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1944);
  let x_1946 : f32 = u_xlat60;
  let x_1948 : vec4<f32> = u_xlat7;
  let x_1950 : vec3<f32> = (vec3<f32>(x_1946, x_1946, x_1946) * vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
  let x_1951 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
  let x_1953 : vec3<f32> = u_xlat21;
  let x_1954 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_1953, vec3<f32>(x_1954.x, x_1954.y, x_1954.z));
  let x_1957 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1957, 0.0f, 1.0f);
  let x_1960 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1962 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1960.x, x_1960.y, x_1960.z), vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
  let x_1965 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1965, 0.0f, 1.0f);
  let x_1967 : f32 = u_xlat60;
  let x_1968 : f32 = u_xlat60;
  u_xlat60 = (x_1967 * x_1968);
  let x_1970 : f32 = u_xlat60;
  let x_1972 : f32 = u_xlat8.x;
  u_xlat60 = ((x_1970 * x_1972) + 1.000010014f);
  let x_1976 : f32 = u_xlat1;
  let x_1977 : f32 = u_xlat1;
  u_xlat1 = (x_1976 * x_1977);
  let x_1979 : f32 = u_xlat60;
  let x_1980 : f32 = u_xlat60;
  u_xlat60 = (x_1979 * x_1980);
  let x_1982 : f32 = u_xlat1;
  u_xlat1 = max(x_1982, 0.100000001f);
  let x_1985 : f32 = u_xlat60;
  let x_1986 : f32 = u_xlat1;
  u_xlat60 = (x_1985 * x_1986);
  let x_1988 : f32 = u_xlat63;
  let x_1989 : f32 = u_xlat60;
  u_xlat60 = (x_1988 * x_1989);
  let x_1991 : f32 = u_xlat24;
  let x_1992 : f32 = u_xlat60;
  u_xlat60 = (x_1991 / x_1992);
  let x_1994 : vec4<f32> = u_xlat0;
  let x_1996 : f32 = u_xlat60;
  let x_1999 : vec3<f32> = u_xlat5;
  let x_2000 : vec3<f32> = ((vec3<f32>(x_1994.x, x_1994.y, x_1994.z) * vec3<f32>(x_1996, x_1996, x_1996)) + x_1999);
  let x_2001 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2000.x, x_2000.y, x_2000.z, x_2001.w);
  let x_2003 : vec4<f32> = u_xlat6;
  let x_2005 : vec4<f32> = u_xlat7;
  let x_2007 : vec3<f32> = (vec3<f32>(x_2003.x, x_2003.y, x_2003.z) * vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
  let x_2008 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2008.w);
  let x_2011 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2013 : f32 = x_1836.unity_LightData.y;
  u_xlat60 = min(x_2011, x_2013);
  let x_2017 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2017));
  let x_2021 : f32 = x_1648.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2023 : f32 = x_1648.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2025 : f32 = x_1648.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2027 : f32 = x_1648.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2028 : vec4<f32> = vec4<f32>(x_2021, x_2023, x_2025, x_2027);
  let x_2034 : vec4<bool> = (vec4<f32>(x_2028.x, x_2028.y, x_2028.z, x_2028.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2034.x, x_2034.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2045 : u32 = u_xlatu_loop_1;
    let x_2046 : u32 = u_xlatu60;
    if ((x_2045 < x_2046)) {
    } else {
      break;
    }
    let x_2049 : u32 = u_xlatu_loop_1;
    u_xlatu62 = (x_2049 >> 2u);
    let x_2053 : u32 = u_xlatu_loop_1;
    u_xlati64 = bitcast<i32>((x_2053 & 3u));
    let x_2056 : u32 = u_xlatu62;
    let x_2059 : vec4<f32> = x_1836.unity_LightIndices[bitcast<i32>(x_2056)];
    let x_2069 : i32 = u_xlati64;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2074 : vec4<u32> = indexable[x_2069];
    u_xlat62 = dot(x_2059, bitcast<vec4<f32>>(x_2074));
    let x_2077 : f32 = u_xlat62;
    u_xlatu62 = bitcast<u32>(i32(x_2077));
    let x_2080 : vec3<f32> = vs_TEXCOORD7;
    let x_2092 : u32 = u_xlatu62;
    let x_2095 : vec4<f32> = x_2091.x_AdditionalLightsPosition[bitcast<i32>(x_2092)];
    let x_2098 : u32 = u_xlatu62;
    let x_2101 : vec4<f32> = x_2091.x_AdditionalLightsPosition[bitcast<i32>(x_2098)];
    let x_2103 : vec3<f32> = ((-(x_2080) * vec3<f32>(x_2095.w, x_2095.w, x_2095.w)) + vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
    let x_2104 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
    let x_2106 : vec4<f32> = u_xlat9;
    let x_2108 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2106.x, x_2106.y, x_2106.z), vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
    let x_2111 : f32 = u_xlat64;
    u_xlat64 = max(x_2111, 6.10351562e-05f);
    let x_2114 : f32 = u_xlat64;
    u_xlat65 = inverseSqrt(x_2114);
    let x_2116 : f32 = u_xlat65;
    let x_2118 : vec4<f32> = u_xlat9;
    let x_2120 : vec3<f32> = (vec3<f32>(x_2116, x_2116, x_2116) * vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
    let x_2121 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
    let x_2123 : f32 = u_xlat64;
    u_xlat66 = (1.0f / x_2123);
    let x_2125 : f32 = u_xlat64;
    let x_2126 : u32 = u_xlatu62;
    let x_2129 : f32 = x_2091.x_AdditionalLightsAttenuation[bitcast<i32>(x_2126)].x;
    u_xlat64 = (x_2125 * x_2129);
    let x_2131 : f32 = u_xlat64;
    let x_2133 : f32 = u_xlat64;
    u_xlat64 = ((-(x_2131) * x_2133) + 1.0f);
    let x_2136 : f32 = u_xlat64;
    u_xlat64 = max(x_2136, 0.0f);
    let x_2138 : f32 = u_xlat64;
    let x_2139 : f32 = u_xlat64;
    u_xlat64 = (x_2138 * x_2139);
    let x_2141 : f32 = u_xlat64;
    let x_2142 : f32 = u_xlat66;
    u_xlat64 = (x_2141 * x_2142);
    let x_2144 : u32 = u_xlatu62;
    let x_2147 : vec4<f32> = x_2091.x_AdditionalLightsSpotDir[bitcast<i32>(x_2144)];
    let x_2149 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2147.x, x_2147.y, x_2147.z), vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
    let x_2152 : f32 = u_xlat66;
    let x_2153 : u32 = u_xlatu62;
    let x_2156 : f32 = x_2091.x_AdditionalLightsAttenuation[bitcast<i32>(x_2153)].z;
    let x_2158 : u32 = u_xlatu62;
    let x_2161 : f32 = x_2091.x_AdditionalLightsAttenuation[bitcast<i32>(x_2158)].w;
    u_xlat66 = ((x_2152 * x_2156) + x_2161);
    let x_2163 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2163, 0.0f, 1.0f);
    let x_2165 : f32 = u_xlat66;
    let x_2166 : f32 = u_xlat66;
    u_xlat66 = (x_2165 * x_2166);
    let x_2168 : f32 = u_xlat64;
    let x_2169 : f32 = u_xlat66;
    u_xlat64 = (x_2168 * x_2169);
    let x_2172 : u32 = u_xlatu62;
    u_xlatu66 = (x_2172 >> 5u);
    let x_2175 : u32 = u_xlatu62;
    u_xlati47 = (1i << bitcast<u32>((bitcast<i32>(x_2175) & 31i)));
    let x_2181 : i32 = u_xlati47;
    let x_2183 : u32 = u_xlatu66;
    let x_2186 : f32 = x_1648.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2183)].el;
    u_xlati66 = bitcast<i32>((bitcast<u32>(x_2181) & bitcast<u32>(x_2186)));
    let x_2190 : i32 = u_xlati66;
    if ((x_2190 != 0i)) {
      let x_2200 : u32 = u_xlatu62;
      let x_2203 : f32 = x_2199.x_AdditionalLightsLightTypes[bitcast<i32>(x_2200)].el;
      u_xlati66 = i32(x_2203);
      let x_2205 : i32 = u_xlati66;
      u_xlati47 = select(1i, 0i, (x_2205 != 0i));
      let x_2209 : u32 = u_xlatu62;
      u_xlati67 = (bitcast<i32>(x_2209) << bitcast<u32>(2i));
      let x_2212 : i32 = u_xlati47;
      if ((x_2212 != 0i)) {
        let x_2216 : vec3<f32> = vs_TEXCOORD7;
        let x_2218 : i32 = u_xlati67;
        let x_2221 : i32 = u_xlati67;
        let x_2225 : vec4<f32> = x_2199.x_AdditionalLightsWorldToLights[((x_2218 + 1i) / 4i)][((x_2221 + 1i) % 4i)];
        let x_2227 : vec3<f32> = (vec3<f32>(x_2216.y, x_2216.y, x_2216.y) * vec3<f32>(x_2225.x, x_2225.y, x_2225.w));
        let x_2228 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2227.x, x_2227.y, x_2227.z, x_2228.w);
        let x_2230 : i32 = u_xlati67;
        let x_2232 : i32 = u_xlati67;
        let x_2235 : vec4<f32> = x_2199.x_AdditionalLightsWorldToLights[(x_2230 / 4i)][(x_2232 % 4i)];
        let x_2237 : vec3<f32> = vs_TEXCOORD7;
        let x_2240 : vec4<f32> = u_xlat11;
        let x_2242 : vec3<f32> = ((vec3<f32>(x_2235.x, x_2235.y, x_2235.w) * vec3<f32>(x_2237.x, x_2237.x, x_2237.x)) + vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
        let x_2243 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2243.w);
        let x_2245 : i32 = u_xlati67;
        let x_2248 : i32 = u_xlati67;
        let x_2252 : vec4<f32> = x_2199.x_AdditionalLightsWorldToLights[((x_2245 + 2i) / 4i)][((x_2248 + 2i) % 4i)];
        let x_2254 : vec3<f32> = vs_TEXCOORD7;
        let x_2257 : vec4<f32> = u_xlat11;
        let x_2259 : vec3<f32> = ((vec3<f32>(x_2252.x, x_2252.y, x_2252.w) * vec3<f32>(x_2254.z, x_2254.z, x_2254.z)) + vec3<f32>(x_2257.x, x_2257.y, x_2257.z));
        let x_2260 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2259.x, x_2259.y, x_2259.z, x_2260.w);
        let x_2262 : vec4<f32> = u_xlat11;
        let x_2264 : i32 = u_xlati67;
        let x_2267 : i32 = u_xlati67;
        let x_2271 : vec4<f32> = x_2199.x_AdditionalLightsWorldToLights[((x_2264 + 3i) / 4i)][((x_2267 + 3i) % 4i)];
        let x_2273 : vec3<f32> = (vec3<f32>(x_2262.x, x_2262.y, x_2262.z) + vec3<f32>(x_2271.x, x_2271.y, x_2271.w));
        let x_2274 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2274.w);
        let x_2276 : vec4<f32> = u_xlat11;
        let x_2278 : vec4<f32> = u_xlat11;
        let x_2280 : vec2<f32> = (vec2<f32>(x_2276.x, x_2276.y) / vec2<f32>(x_2278.z, x_2278.z));
        let x_2281 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2280.x, x_2280.y, x_2281.z, x_2281.w);
        let x_2283 : vec4<f32> = u_xlat11;
        let x_2286 : vec2<f32> = ((vec2<f32>(x_2283.x, x_2283.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2287 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2286.x, x_2286.y, x_2287.z, x_2287.w);
        let x_2289 : vec4<f32> = u_xlat11;
        let x_2293 : vec2<f32> = clamp(vec2<f32>(x_2289.x, x_2289.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2294 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2293.x, x_2293.y, x_2294.z, x_2294.w);
        let x_2296 : u32 = u_xlatu62;
        let x_2299 : vec4<f32> = x_2199.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2296)];
        let x_2301 : vec4<f32> = u_xlat11;
        let x_2304 : u32 = u_xlatu62;
        let x_2307 : vec4<f32> = x_2199.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2304)];
        let x_2309 : vec2<f32> = ((vec2<f32>(x_2299.x, x_2299.y) * vec2<f32>(x_2301.x, x_2301.y)) + vec2<f32>(x_2307.z, x_2307.w));
        let x_2310 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2309.x, x_2309.y, x_2310.z, x_2310.w);
      } else {
        let x_2314 : i32 = u_xlati66;
        u_xlatb66 = (x_2314 == 1i);
        let x_2316 : bool = u_xlatb66;
        u_xlati66 = select(0i, 1i, x_2316);
        let x_2318 : i32 = u_xlati66;
        if ((x_2318 != 0i)) {
          let x_2323 : vec3<f32> = vs_TEXCOORD7;
          let x_2325 : i32 = u_xlati67;
          let x_2328 : i32 = u_xlati67;
          let x_2332 : vec4<f32> = x_2199.x_AdditionalLightsWorldToLights[((x_2325 + 1i) / 4i)][((x_2328 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2323.y, x_2323.y) * vec2<f32>(x_2332.x, x_2332.y));
          let x_2335 : i32 = u_xlati67;
          let x_2337 : i32 = u_xlati67;
          let x_2340 : vec4<f32> = x_2199.x_AdditionalLightsWorldToLights[(x_2335 / 4i)][(x_2337 % 4i)];
          let x_2342 : vec3<f32> = vs_TEXCOORD7;
          let x_2345 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2340.x, x_2340.y) * vec2<f32>(x_2342.x, x_2342.x)) + x_2345);
          let x_2347 : i32 = u_xlati67;
          let x_2350 : i32 = u_xlati67;
          let x_2354 : vec4<f32> = x_2199.x_AdditionalLightsWorldToLights[((x_2347 + 2i) / 4i)][((x_2350 + 2i) % 4i)];
          let x_2356 : vec3<f32> = vs_TEXCOORD7;
          let x_2359 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2354.x, x_2354.y) * vec2<f32>(x_2356.z, x_2356.z)) + x_2359);
          let x_2361 : vec2<f32> = u_xlat51;
          let x_2362 : i32 = u_xlati67;
          let x_2365 : i32 = u_xlati67;
          let x_2369 : vec4<f32> = x_2199.x_AdditionalLightsWorldToLights[((x_2362 + 3i) / 4i)][((x_2365 + 3i) % 4i)];
          u_xlat51 = (x_2361 + vec2<f32>(x_2369.x, x_2369.y));
          let x_2372 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2372 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2375 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2375);
          let x_2377 : u32 = u_xlatu62;
          let x_2380 : vec4<f32> = x_2199.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2377)];
          let x_2382 : vec2<f32> = u_xlat51;
          let x_2384 : u32 = u_xlatu62;
          let x_2387 : vec4<f32> = x_2199.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2384)];
          let x_2389 : vec2<f32> = ((vec2<f32>(x_2380.x, x_2380.y) * x_2382) + vec2<f32>(x_2387.z, x_2387.w));
          let x_2390 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2389.x, x_2389.y, x_2390.z, x_2390.w);
        } else {
          let x_2393 : vec3<f32> = vs_TEXCOORD7;
          let x_2395 : i32 = u_xlati67;
          let x_2398 : i32 = u_xlati67;
          let x_2402 : vec4<f32> = x_2199.x_AdditionalLightsWorldToLights[((x_2395 + 1i) / 4i)][((x_2398 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2393.y, x_2393.y, x_2393.y, x_2393.y) * x_2402);
          let x_2404 : i32 = u_xlati67;
          let x_2406 : i32 = u_xlati67;
          let x_2409 : vec4<f32> = x_2199.x_AdditionalLightsWorldToLights[(x_2404 / 4i)][(x_2406 % 4i)];
          let x_2410 : vec3<f32> = vs_TEXCOORD7;
          let x_2413 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2409 * vec4<f32>(x_2410.x, x_2410.x, x_2410.x, x_2410.x)) + x_2413);
          let x_2415 : i32 = u_xlati67;
          let x_2418 : i32 = u_xlati67;
          let x_2422 : vec4<f32> = x_2199.x_AdditionalLightsWorldToLights[((x_2415 + 2i) / 4i)][((x_2418 + 2i) % 4i)];
          let x_2423 : vec3<f32> = vs_TEXCOORD7;
          let x_2426 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2422 * vec4<f32>(x_2423.z, x_2423.z, x_2423.z, x_2423.z)) + x_2426);
          let x_2428 : vec4<f32> = u_xlat12;
          let x_2429 : i32 = u_xlati67;
          let x_2432 : i32 = u_xlati67;
          let x_2436 : vec4<f32> = x_2199.x_AdditionalLightsWorldToLights[((x_2429 + 3i) / 4i)][((x_2432 + 3i) % 4i)];
          u_xlat12 = (x_2428 + x_2436);
          let x_2438 : vec4<f32> = u_xlat12;
          let x_2440 : vec4<f32> = u_xlat12;
          let x_2442 : vec3<f32> = (vec3<f32>(x_2438.x, x_2438.y, x_2438.z) / vec3<f32>(x_2440.w, x_2440.w, x_2440.w));
          let x_2443 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
          let x_2445 : vec4<f32> = u_xlat12;
          let x_2447 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(vec3<f32>(x_2445.x, x_2445.y, x_2445.z), vec3<f32>(x_2447.x, x_2447.y, x_2447.z));
          let x_2450 : f32 = u_xlat66;
          u_xlat66 = inverseSqrt(x_2450);
          let x_2452 : f32 = u_xlat66;
          let x_2454 : vec4<f32> = u_xlat12;
          let x_2456 : vec3<f32> = (vec3<f32>(x_2452, x_2452, x_2452) * vec3<f32>(x_2454.x, x_2454.y, x_2454.z));
          let x_2457 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
          let x_2459 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(abs(vec3<f32>(x_2459.x, x_2459.y, x_2459.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2464 : f32 = u_xlat66;
          u_xlat66 = max(x_2464, 0.000001f);
          let x_2467 : f32 = u_xlat66;
          u_xlat66 = (1.0f / x_2467);
          let x_2469 : f32 = u_xlat66;
          let x_2471 : vec4<f32> = u_xlat12;
          let x_2473 : vec3<f32> = (vec3<f32>(x_2469, x_2469, x_2469) * vec3<f32>(x_2471.z, x_2471.x, x_2471.y));
          let x_2474 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2473.x, x_2473.y, x_2473.z, x_2474.w);
          let x_2477 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2477);
          let x_2481 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2481, 0.0f, 1.0f);
          let x_2485 : vec4<f32> = u_xlat13;
          let x_2488 : vec4<bool> = (vec4<f32>(x_2485.y, x_2485.z, x_2485.y, x_2485.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2488.x, x_2488.y);
          let x_2492 : bool = u_xlatb47.x;
          if (x_2492) {
            let x_2497 : f32 = u_xlat13.x;
            x_2493 = x_2497;
          } else {
            let x_2500 : f32 = u_xlat13.x;
            x_2493 = -(x_2500);
          }
          let x_2502 : f32 = x_2493;
          u_xlat47.x = x_2502;
          let x_2505 : bool = u_xlatb47.y;
          if (x_2505) {
            let x_2510 : f32 = u_xlat13.x;
            x_2506 = x_2510;
          } else {
            let x_2513 : f32 = u_xlat13.x;
            x_2506 = -(x_2513);
          }
          let x_2515 : f32 = x_2506;
          u_xlat47.y = x_2515;
          let x_2517 : vec4<f32> = u_xlat12;
          let x_2519 : f32 = u_xlat66;
          let x_2522 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2517.x, x_2517.y) * vec2<f32>(x_2519, x_2519)) + x_2522);
          let x_2524 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2524 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2527 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2527, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2531 : u32 = u_xlatu62;
          let x_2534 : vec4<f32> = x_2199.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2531)];
          let x_2536 : vec2<f32> = u_xlat47;
          let x_2538 : u32 = u_xlatu62;
          let x_2541 : vec4<f32> = x_2199.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2538)];
          let x_2543 : vec2<f32> = ((vec2<f32>(x_2534.x, x_2534.y) * x_2536) + vec2<f32>(x_2541.z, x_2541.w));
          let x_2544 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2543.x, x_2543.y, x_2544.z, x_2544.w);
        }
      }
      let x_2551 : vec4<f32> = u_xlat11;
      let x_2554 : f32 = x_44.x_GlobalMipBias.x;
      let x_2555 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2551.x, x_2551.y), x_2554);
      u_xlat11 = x_2555;
      let x_2557 : bool = u_xlatb7.y;
      if (x_2557) {
        let x_2562 : f32 = u_xlat11.w;
        x_2558 = x_2562;
      } else {
        let x_2565 : f32 = u_xlat11.x;
        x_2558 = x_2565;
      }
      let x_2566 : f32 = x_2558;
      u_xlat66 = x_2566;
      let x_2568 : bool = u_xlatb7.x;
      if (x_2568) {
        let x_2572 : vec4<f32> = u_xlat11;
        x_2569 = vec3<f32>(x_2572.x, x_2572.y, x_2572.z);
      } else {
        let x_2575 : f32 = u_xlat66;
        x_2569 = vec3<f32>(x_2575, x_2575, x_2575);
      }
      let x_2577 : vec3<f32> = x_2569;
      let x_2578 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2577.x, x_2577.y, x_2577.z, x_2578.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2584 : vec4<f32> = u_xlat11;
    let x_2586 : u32 = u_xlatu62;
    let x_2589 : vec4<f32> = x_2091.x_AdditionalLightsColor[bitcast<i32>(x_2586)];
    let x_2591 : vec3<f32> = (vec3<f32>(x_2584.x, x_2584.y, x_2584.z) * vec3<f32>(x_2589.x, x_2589.y, x_2589.z));
    let x_2592 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2591.x, x_2591.y, x_2591.z, x_2592.w);
    let x_2594 : f32 = u_xlat44;
    let x_2596 : vec4<f32> = u_xlat11;
    let x_2598 : vec3<f32> = (vec3<f32>(x_2594, x_2594, x_2594) * vec3<f32>(x_2596.x, x_2596.y, x_2596.z));
    let x_2599 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
    let x_2601 : vec3<f32> = u_xlat21;
    let x_2602 : vec4<f32> = u_xlat10;
    u_xlat62 = dot(x_2601, vec3<f32>(x_2602.x, x_2602.y, x_2602.z));
    let x_2605 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2605, 0.0f, 1.0f);
    let x_2607 : f32 = u_xlat62;
    let x_2608 : f32 = u_xlat64;
    u_xlat62 = (x_2607 * x_2608);
    let x_2610 : f32 = u_xlat62;
    let x_2612 : vec4<f32> = u_xlat11;
    let x_2614 : vec3<f32> = (vec3<f32>(x_2610, x_2610, x_2610) * vec3<f32>(x_2612.x, x_2612.y, x_2612.z));
    let x_2615 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
    let x_2617 : vec4<f32> = u_xlat9;
    let x_2619 : f32 = u_xlat65;
    let x_2622 : vec3<f32> = u_xlat3;
    let x_2623 : vec3<f32> = ((vec3<f32>(x_2617.x, x_2617.y, x_2617.z) * vec3<f32>(x_2619, x_2619, x_2619)) + x_2622);
    let x_2624 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2623.x, x_2623.y, x_2623.z, x_2624.w);
    let x_2626 : vec4<f32> = u_xlat9;
    let x_2628 : vec4<f32> = u_xlat9;
    u_xlat62 = dot(vec3<f32>(x_2626.x, x_2626.y, x_2626.z), vec3<f32>(x_2628.x, x_2628.y, x_2628.z));
    let x_2631 : f32 = u_xlat62;
    u_xlat62 = max(x_2631, 1.17549435e-37f);
    let x_2633 : f32 = u_xlat62;
    u_xlat62 = inverseSqrt(x_2633);
    let x_2635 : f32 = u_xlat62;
    let x_2637 : vec4<f32> = u_xlat9;
    let x_2639 : vec3<f32> = (vec3<f32>(x_2635, x_2635, x_2635) * vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
    let x_2640 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
    let x_2642 : vec3<f32> = u_xlat21;
    let x_2643 : vec4<f32> = u_xlat9;
    u_xlat62 = dot(x_2642, vec3<f32>(x_2643.x, x_2643.y, x_2643.z));
    let x_2646 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2646, 0.0f, 1.0f);
    let x_2648 : vec4<f32> = u_xlat10;
    let x_2650 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2648.x, x_2648.y, x_2648.z), vec3<f32>(x_2650.x, x_2650.y, x_2650.z));
    let x_2653 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2653, 0.0f, 1.0f);
    let x_2655 : f32 = u_xlat62;
    let x_2656 : f32 = u_xlat62;
    u_xlat62 = (x_2655 * x_2656);
    let x_2658 : f32 = u_xlat62;
    let x_2660 : f32 = u_xlat8.x;
    u_xlat62 = ((x_2658 * x_2660) + 1.000010014f);
    let x_2663 : f32 = u_xlat64;
    let x_2664 : f32 = u_xlat64;
    u_xlat64 = (x_2663 * x_2664);
    let x_2666 : f32 = u_xlat62;
    let x_2667 : f32 = u_xlat62;
    u_xlat62 = (x_2666 * x_2667);
    let x_2669 : f32 = u_xlat64;
    u_xlat64 = max(x_2669, 0.100000001f);
    let x_2671 : f32 = u_xlat62;
    let x_2672 : f32 = u_xlat64;
    u_xlat62 = (x_2671 * x_2672);
    let x_2674 : f32 = u_xlat63;
    let x_2675 : f32 = u_xlat62;
    u_xlat62 = (x_2674 * x_2675);
    let x_2677 : f32 = u_xlat24;
    let x_2678 : f32 = u_xlat62;
    u_xlat62 = (x_2677 / x_2678);
    let x_2680 : vec4<f32> = u_xlat0;
    let x_2682 : f32 = u_xlat62;
    let x_2685 : vec3<f32> = u_xlat5;
    let x_2686 : vec3<f32> = ((vec3<f32>(x_2680.x, x_2680.y, x_2680.z) * vec3<f32>(x_2682, x_2682, x_2682)) + x_2685);
    let x_2687 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2686.x, x_2686.y, x_2686.z, x_2687.w);
    let x_2689 : vec4<f32> = u_xlat9;
    let x_2691 : vec4<f32> = u_xlat11;
    let x_2694 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_2689.x, x_2689.y, x_2689.z) * vec3<f32>(x_2691.x, x_2691.y, x_2691.z)) + x_2694);

    continuing {
      let x_2696 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2696 + bitcast<u32>(1i));
    }
  }
  let x_2698 : vec4<f32> = u_xlat2;
  let x_2700 : vec3<f32> = u_xlat4;
  let x_2703 : vec4<f32> = u_xlat6;
  let x_2705 : vec3<f32> = ((vec3<f32>(x_2698.x, x_2698.y, x_2698.z) * vec3<f32>(x_2700.x, x_2700.x, x_2700.x)) + vec3<f32>(x_2703.x, x_2703.y, x_2703.z));
  let x_2706 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2705.x, x_2705.y, x_2705.z, x_2706.w);
  let x_2710 : vec3<f32> = u_xlat28;
  let x_2711 : vec4<f32> = u_xlat0;
  let x_2713 : vec3<f32> = (x_2710 + vec3<f32>(x_2711.x, x_2711.y, x_2711.z));
  let x_2714 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2713.x, x_2713.y, x_2713.z, x_2714.w);
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

