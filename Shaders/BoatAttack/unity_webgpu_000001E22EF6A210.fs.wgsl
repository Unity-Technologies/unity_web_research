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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_197 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_394 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1725 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2167 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2287 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb21 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat41 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat21 : vec3<f32>;
  var x_118 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat62 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat64 : f32;
  var u_xlat60 : f32;
  var u_xlat44 : f32;
  var u_xlatb65 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlatb6 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat26 : f32;
  var txVec5 : vec3<f32>;
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
  var u_xlat68 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat66 : f32;
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
  var u_xlatb26 : bool;
  var u_xlatb7 : vec2<bool>;
  var x_1809 : f32;
  var x_1820 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu62 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : vec2<f32>;
  var u_xlatu47 : u32;
  var u_xlati67 : i32;
  var u_xlati47 : i32;
  var u_xlati69 : i32;
  var u_xlatb47 : bool;
  var u_xlatb51 : vec2<bool>;
  var u_xlat51 : vec2<f32>;
  var x_2588 : f32;
  var x_2601 : f32;
  var x_2653 : f32;
  var x_2665 : vec3<f32>;
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
  let x_106 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_106;
  let x_109 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_109;
  let x_114 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_114;
  let x_117 : bool = u_xlatb21;
  if (x_117) {
    let x_121 : vec4<f32> = u_xlat2;
    x_118 = vec3<f32>(x_121.x, x_121.y, x_121.z);
  } else {
    let x_124 : vec3<f32> = u_xlat3;
    x_118 = x_124;
  }
  let x_125 : vec3<f32> = x_118;
  u_xlat21 = x_125;
  let x_127 : vec3<f32> = vs_TEXCOORD3;
  let x_128 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_127, x_128);
  let x_132 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_132);
  let x_135 : vec4<f32> = u_xlat2;
  let x_137 : vec3<f32> = vs_TEXCOORD3;
  let x_138 : vec3<f32> = (vec3<f32>(x_135.x, x_135.x, x_135.x) * x_137);
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : f32 = vs_TEXCOORD7.y;
  let x_144 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.x = (x_142 * x_144);
  let x_148 : f32 = x_44.unity_MatrixV[0i].z;
  let x_150 : f32 = vs_TEXCOORD7.x;
  let x_153 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_148 * x_150) + x_153);
  let x_157 : f32 = x_44.unity_MatrixV[2i].z;
  let x_159 : f32 = vs_TEXCOORD7.z;
  let x_162 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_157 * x_159) + x_162);
  let x_166 : f32 = u_xlat3.x;
  let x_169 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat3.x = (x_166 + x_169);
  let x_173 : f32 = u_xlat3.x;
  let x_177 : f32 = x_44.x_ProjectionParams.y;
  u_xlat3.x = (-(x_173) + -(x_177));
  let x_182 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_182, 0.0f);
  let x_186 : f32 = u_xlat3.x;
  let x_189 : f32 = x_44.unity_FogParams.x;
  u_xlat3.x = (x_186 * x_189);
  u_xlat2.w = 1.0f;
  let x_201 : vec4<f32> = x_197.unity_SHAr;
  let x_202 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_201, x_202);
  let x_207 : vec4<f32> = x_197.unity_SHAg;
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_207, x_208);
  let x_213 : vec4<f32> = x_197.unity_SHAb;
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_213, x_214);
  let x_218 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_218.y, x_218.z, x_218.z, x_218.x) * vec4<f32>(x_220.x, x_220.y, x_220.z, x_220.z));
  let x_226 : vec4<f32> = x_197.unity_SHBr;
  let x_227 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_226, x_227);
  let x_232 : vec4<f32> = x_197.unity_SHBg;
  let x_233 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_232, x_233);
  let x_238 : vec4<f32> = x_197.unity_SHBb;
  let x_239 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_238, x_239);
  let x_244 : f32 = u_xlat2.y;
  let x_246 : f32 = u_xlat2.y;
  u_xlat62 = (x_244 * x_246);
  let x_249 : f32 = u_xlat2.x;
  let x_251 : f32 = u_xlat2.x;
  let x_253 : f32 = u_xlat62;
  u_xlat62 = ((x_249 * x_251) + -(x_253));
  let x_259 : vec4<f32> = x_197.unity_SHC;
  let x_261 : f32 = u_xlat62;
  let x_264 : vec4<f32> = u_xlat6;
  u_xlat23 = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261, x_261, x_261)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec3<f32> = u_xlat23;
  let x_268 : vec3<f32> = u_xlat4;
  u_xlat23 = (x_267 + x_268);
  let x_270 : vec3<f32> = u_xlat23;
  u_xlat23 = max(x_270, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_275 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_276 : vec2<f32> = vec2<f32>(x_275.x, x_275.y);
  let x_280 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_276.x, x_276.y));
  let x_281 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_280.x, x_280.y, x_281.z);
  let x_283 : vec3<f32> = u_xlat4;
  let x_285 : vec4<f32> = hlslcc_FragCoord;
  let x_287 : vec2<f32> = (vec2<f32>(x_283.x, x_283.y) * vec2<f32>(x_285.x, x_285.y));
  let x_288 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_287.x, x_287.y, x_288.z);
  let x_291 : f32 = u_xlat4.y;
  let x_294 : f32 = x_44.x_ScaleBiasRt.x;
  let x_297 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat62 = ((x_291 * x_294) + x_297);
  let x_299 : f32 = u_xlat62;
  u_xlat4.z = (-(x_299) + 1.0f);
  let x_303 : f32 = u_xlat1;
  u_xlat62 = ((-(x_303) * 0.959999979f) + 0.959999979f);
  let x_309 : f32 = u_xlat62;
  u_xlat24 = (-(x_309) + 1.0f);
  let x_312 : vec4<f32> = u_xlat0;
  let x_314 : f32 = u_xlat62;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314, x_314, x_314));
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat0;
  let x_323 : vec3<f32> = (vec3<f32>(x_319.x, x_319.y, x_319.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : f32 = u_xlat1;
  let x_328 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326, x_326, x_326) * vec3<f32>(x_328.x, x_328.y, x_328.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_334 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_337 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_337) + 1.0f);
  let x_340 : f32 = u_xlat1;
  let x_341 : f32 = u_xlat1;
  u_xlat62 = (x_340 * x_341);
  let x_343 : f32 = u_xlat62;
  u_xlat62 = max(x_343, 0.0078125f);
  let x_347 : f32 = u_xlat62;
  let x_348 : f32 = u_xlat62;
  u_xlat64 = (x_347 * x_348);
  let x_352 : f32 = u_xlat0.w;
  let x_353 : f32 = u_xlat24;
  u_xlat60 = (x_352 + x_353);
  let x_355 : f32 = u_xlat60;
  u_xlat60 = clamp(x_355, 0.0f, 1.0f);
  let x_357 : f32 = u_xlat62;
  u_xlat24 = ((x_357 * 4.0f) + 2.0f);
  let x_367 : vec3<f32> = u_xlat4;
  let x_370 : f32 = x_44.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_367.x, x_367.z), x_370);
  u_xlat4.x = x_371.x;
  let x_376 : f32 = u_xlat4.x;
  u_xlat44 = (x_376 + -1.0f);
  let x_381 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_382 : f32 = u_xlat44;
  u_xlat44 = ((x_381 * x_382) + 1.0f);
  let x_386 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_386, 1.0f);
  let x_396 : f32 = x_394.x_MainLightShadowParams.y;
  u_xlatb65 = (0.0f < x_396);
  let x_398 : bool = u_xlatb65;
  if (x_398) {
    let x_402 : f32 = x_394.x_MainLightShadowParams.y;
    u_xlatb65 = (x_402 == 1.0f);
    let x_404 : bool = u_xlatb65;
    if (x_404) {
      let x_408 : vec4<f32> = vs_TEXCOORD8;
      let x_411 : vec4<f32> = x_394.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_408.x, x_408.y, x_408.x, x_408.y) + x_411);
      let x_414 : vec4<f32> = u_xlat6;
      let x_415 : vec2<f32> = vec2<f32>(x_414.x, x_414.y);
      let x_417 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_415.x, x_415.y, x_417);
      let x_430 : vec3<f32> = txVec0;
      let x_432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_430.xy, x_430.z);
      u_xlat7.x = x_432;
      let x_435 : vec4<f32> = u_xlat6;
      let x_436 : vec2<f32> = vec2<f32>(x_435.z, x_435.w);
      let x_438 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_436.x, x_436.y, x_438);
      let x_445 : vec3<f32> = txVec1;
      let x_447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_445.xy, x_445.z);
      u_xlat7.y = x_447;
      let x_449 : vec4<f32> = vs_TEXCOORD8;
      let x_452 : vec4<f32> = x_394.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_449.x, x_449.y, x_449.x, x_449.y) + x_452);
      let x_455 : vec4<f32> = u_xlat6;
      let x_456 : vec2<f32> = vec2<f32>(x_455.x, x_455.y);
      let x_458 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_456.x, x_456.y, x_458);
      let x_465 : vec3<f32> = txVec2;
      let x_467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_465.xy, x_465.z);
      u_xlat7.z = x_467;
      let x_470 : vec4<f32> = u_xlat6;
      let x_471 : vec2<f32> = vec2<f32>(x_470.z, x_470.w);
      let x_473 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_471.x, x_471.y, x_473);
      let x_480 : vec3<f32> = txVec3;
      let x_482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_480.xy, x_480.z);
      u_xlat7.w = x_482;
      let x_485 : vec4<f32> = u_xlat7;
      u_xlat65 = dot(x_485, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_492 : f32 = x_394.x_MainLightShadowParams.y;
      u_xlatb6 = (x_492 == 2.0f);
      let x_494 : bool = u_xlatb6;
      if (x_494) {
        let x_497 : vec4<f32> = vs_TEXCOORD8;
        let x_500 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_505 : vec2<f32> = ((vec2<f32>(x_497.x, x_497.y) * vec2<f32>(x_500.z, x_500.w)) + vec2<f32>(0.5f, 0.5f));
        let x_506 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
        let x_508 : vec4<f32> = u_xlat6;
        let x_510 : vec2<f32> = floor(vec2<f32>(x_508.x, x_508.y));
        let x_511 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
        let x_515 : vec4<f32> = vs_TEXCOORD8;
        let x_518 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_521 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_515.x, x_515.y) * vec2<f32>(x_518.z, x_518.w)) + -(vec2<f32>(x_521.x, x_521.y)));
        let x_525 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_525.x, x_525.x, x_525.y, x_525.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_530 : vec4<f32> = u_xlat7;
        let x_532 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_530.x, x_530.x, x_530.z, x_530.z) * vec4<f32>(x_532.x, x_532.x, x_532.z, x_532.z));
        let x_535 : vec4<f32> = u_xlat8;
        let x_539 : vec2<f32> = (vec2<f32>(x_535.y, x_535.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_540 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_539.x, x_540.y, x_539.y, x_540.w);
        let x_542 : vec4<f32> = u_xlat8;
        let x_545 : vec2<f32> = u_xlat46;
        let x_547 : vec2<f32> = ((vec2<f32>(x_542.x, x_542.z) * vec2<f32>(0.5f, 0.5f)) + -(x_545));
        let x_548 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_547.x, x_547.y, x_548.z, x_548.w);
        let x_551 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_551) + vec2<f32>(1.0f, 1.0f));
        let x_555 : vec2<f32> = u_xlat46;
        let x_557 : vec2<f32> = min(x_555, vec2<f32>(0.0f, 0.0f));
        let x_558 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
        let x_560 : vec4<f32> = u_xlat9;
        let x_563 : vec4<f32> = u_xlat9;
        let x_566 : vec2<f32> = u_xlat48;
        let x_567 : vec2<f32> = ((-(vec2<f32>(x_560.x, x_560.y)) * vec2<f32>(x_563.x, x_563.y)) + x_566);
        let x_568 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
        let x_570 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_570, vec2<f32>(0.0f, 0.0f));
        let x_572 : vec2<f32> = u_xlat46;
        let x_574 : vec2<f32> = u_xlat46;
        let x_576 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_572) * x_574) + vec2<f32>(x_576.y, x_576.w));
        let x_579 : vec4<f32> = u_xlat9;
        let x_581 : vec2<f32> = (vec2<f32>(x_579.x, x_579.y) + vec2<f32>(1.0f, 1.0f));
        let x_582 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
        let x_584 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_584 + vec2<f32>(1.0f, 1.0f));
        let x_587 : vec4<f32> = u_xlat8;
        let x_591 : vec2<f32> = (vec2<f32>(x_587.x, x_587.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_592 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
        let x_594 : vec2<f32> = u_xlat48;
        let x_595 : vec2<f32> = (x_594 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_596 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat9;
        let x_600 : vec2<f32> = (vec2<f32>(x_598.x, x_598.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_601 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
        let x_604 : vec2<f32> = u_xlat46;
        let x_605 : vec2<f32> = (x_604 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_606 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
        let x_608 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_608.y, x_608.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_612 : f32 = u_xlat9.x;
        u_xlat10.z = x_612;
        let x_615 : f32 = u_xlat46.x;
        u_xlat10.w = x_615;
        let x_618 : f32 = u_xlat11.x;
        u_xlat8.z = x_618;
        let x_621 : f32 = u_xlat7.x;
        u_xlat8.w = x_621;
        let x_624 : vec4<f32> = u_xlat8;
        let x_626 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_624.z, x_624.w, x_624.x, x_624.z) + vec4<f32>(x_626.z, x_626.w, x_626.x, x_626.z));
        let x_630 : f32 = u_xlat10.y;
        u_xlat9.z = x_630;
        let x_633 : f32 = u_xlat46.y;
        u_xlat9.w = x_633;
        let x_636 : f32 = u_xlat8.y;
        u_xlat11.z = x_636;
        let x_639 : f32 = u_xlat7.z;
        u_xlat11.w = x_639;
        let x_641 : vec4<f32> = u_xlat9;
        let x_643 : vec4<f32> = u_xlat11;
        let x_645 : vec3<f32> = (vec3<f32>(x_641.z, x_641.y, x_641.w) + vec3<f32>(x_643.z, x_643.y, x_643.w));
        let x_646 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
        let x_648 : vec4<f32> = u_xlat8;
        let x_650 : vec4<f32> = u_xlat12;
        let x_652 : vec3<f32> = (vec3<f32>(x_648.x, x_648.z, x_648.w) / vec3<f32>(x_650.z, x_650.w, x_650.y));
        let x_653 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
        let x_655 : vec4<f32> = u_xlat8;
        let x_661 : vec3<f32> = (vec3<f32>(x_655.x, x_655.y, x_655.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_662 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat11;
        let x_666 : vec4<f32> = u_xlat7;
        let x_668 : vec3<f32> = (vec3<f32>(x_664.z, x_664.y, x_664.w) / vec3<f32>(x_666.x, x_666.y, x_666.z));
        let x_669 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat9;
        let x_673 : vec3<f32> = (vec3<f32>(x_671.x, x_671.y, x_671.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_674 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
        let x_676 : vec4<f32> = u_xlat8;
        let x_679 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_681 : vec3<f32> = (vec3<f32>(x_676.y, x_676.x, x_676.z) * vec3<f32>(x_679.x, x_679.x, x_679.x));
        let x_682 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
        let x_684 : vec4<f32> = u_xlat9;
        let x_687 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_689 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) * vec3<f32>(x_687.y, x_687.y, x_687.y));
        let x_690 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
        let x_693 : f32 = u_xlat9.x;
        u_xlat8.w = x_693;
        let x_695 : vec4<f32> = u_xlat6;
        let x_698 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_695.x, x_695.y, x_695.x, x_695.y) * vec4<f32>(x_698.x, x_698.y, x_698.x, x_698.y)) + vec4<f32>(x_701.y, x_701.w, x_701.x, x_701.w));
        let x_704 : vec4<f32> = u_xlat6;
        let x_707 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_710 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_704.x, x_704.y) * vec2<f32>(x_707.x, x_707.y)) + vec2<f32>(x_710.z, x_710.w));
        let x_714 : f32 = u_xlat8.y;
        u_xlat9.w = x_714;
        let x_716 : vec4<f32> = u_xlat9;
        let x_717 : vec2<f32> = vec2<f32>(x_716.y, x_716.z);
        let x_718 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_718.x, x_717.x, x_718.z, x_717.y);
        let x_720 : vec4<f32> = u_xlat6;
        let x_723 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_726 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_720.x, x_720.y, x_720.x, x_720.y) * vec4<f32>(x_723.x, x_723.y, x_723.x, x_723.y)) + vec4<f32>(x_726.x, x_726.y, x_726.z, x_726.y));
        let x_729 : vec4<f32> = u_xlat6;
        let x_732 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_735 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_729.x, x_729.y, x_729.x, x_729.y) * vec4<f32>(x_732.x, x_732.y, x_732.x, x_732.y)) + vec4<f32>(x_735.w, x_735.y, x_735.w, x_735.z));
        let x_738 : vec4<f32> = u_xlat6;
        let x_741 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_738.x, x_738.y, x_738.x, x_738.y) * vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y)) + vec4<f32>(x_744.x, x_744.w, x_744.z, x_744.w));
        let x_748 : vec4<f32> = u_xlat7;
        let x_750 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_748.x, x_748.x, x_748.x, x_748.y) * vec4<f32>(x_750.z, x_750.w, x_750.y, x_750.z));
        let x_754 : vec4<f32> = u_xlat7;
        let x_756 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_754.y, x_754.y, x_754.z, x_754.z) * x_756);
        let x_759 : f32 = u_xlat7.z;
        let x_761 : f32 = u_xlat12.y;
        u_xlat6.x = (x_759 * x_761);
        let x_765 : vec4<f32> = u_xlat10;
        let x_766 : vec2<f32> = vec2<f32>(x_765.x, x_765.y);
        let x_768 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_766.x, x_766.y, x_768);
        let x_776 : vec3<f32> = txVec4;
        let x_778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_776.xy, x_776.z);
        u_xlat26 = x_778;
        let x_780 : vec4<f32> = u_xlat10;
        let x_781 : vec2<f32> = vec2<f32>(x_780.z, x_780.w);
        let x_783 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_781.x, x_781.y, x_783);
        let x_790 : vec3<f32> = txVec5;
        let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_790.xy, x_790.z);
        u_xlat7.x = x_792;
        let x_795 : f32 = u_xlat7.x;
        let x_797 : f32 = u_xlat13.y;
        u_xlat7.x = (x_795 * x_797);
        let x_801 : f32 = u_xlat13.x;
        let x_802 : f32 = u_xlat26;
        let x_805 : f32 = u_xlat7.x;
        u_xlat26 = ((x_801 * x_802) + x_805);
        let x_808 : vec2<f32> = u_xlat46;
        let x_810 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_808.x, x_808.y, x_810);
        let x_817 : vec3<f32> = txVec6;
        let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_817.xy, x_817.z);
        u_xlat46.x = x_819;
        let x_822 : f32 = u_xlat13.z;
        let x_824 : f32 = u_xlat46.x;
        let x_826 : f32 = u_xlat26;
        u_xlat26 = ((x_822 * x_824) + x_826);
        let x_829 : vec4<f32> = u_xlat9;
        let x_830 : vec2<f32> = vec2<f32>(x_829.x, x_829.y);
        let x_832 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_830.x, x_830.y, x_832);
        let x_839 : vec3<f32> = txVec7;
        let x_841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_839.xy, x_839.z);
        u_xlat46.x = x_841;
        let x_844 : f32 = u_xlat13.w;
        let x_846 : f32 = u_xlat46.x;
        let x_848 : f32 = u_xlat26;
        u_xlat26 = ((x_844 * x_846) + x_848);
        let x_851 : vec4<f32> = u_xlat11;
        let x_852 : vec2<f32> = vec2<f32>(x_851.x, x_851.y);
        let x_854 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_852.x, x_852.y, x_854);
        let x_861 : vec3<f32> = txVec8;
        let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_861.xy, x_861.z);
        u_xlat46.x = x_863;
        let x_866 : f32 = u_xlat14.x;
        let x_868 : f32 = u_xlat46.x;
        let x_870 : f32 = u_xlat26;
        u_xlat26 = ((x_866 * x_868) + x_870);
        let x_873 : vec4<f32> = u_xlat11;
        let x_874 : vec2<f32> = vec2<f32>(x_873.z, x_873.w);
        let x_876 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_874.x, x_874.y, x_876);
        let x_883 : vec3<f32> = txVec9;
        let x_885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_883.xy, x_883.z);
        u_xlat46.x = x_885;
        let x_888 : f32 = u_xlat14.y;
        let x_890 : f32 = u_xlat46.x;
        let x_892 : f32 = u_xlat26;
        u_xlat26 = ((x_888 * x_890) + x_892);
        let x_895 : vec4<f32> = u_xlat9;
        let x_896 : vec2<f32> = vec2<f32>(x_895.z, x_895.w);
        let x_898 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_896.x, x_896.y, x_898);
        let x_905 : vec3<f32> = txVec10;
        let x_907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_905.xy, x_905.z);
        u_xlat46.x = x_907;
        let x_910 : f32 = u_xlat14.z;
        let x_912 : f32 = u_xlat46.x;
        let x_914 : f32 = u_xlat26;
        u_xlat26 = ((x_910 * x_912) + x_914);
        let x_917 : vec4<f32> = u_xlat8;
        let x_918 : vec2<f32> = vec2<f32>(x_917.x, x_917.y);
        let x_920 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_918.x, x_918.y, x_920);
        let x_927 : vec3<f32> = txVec11;
        let x_929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_927.xy, x_927.z);
        u_xlat46.x = x_929;
        let x_932 : f32 = u_xlat14.w;
        let x_934 : f32 = u_xlat46.x;
        let x_936 : f32 = u_xlat26;
        u_xlat26 = ((x_932 * x_934) + x_936);
        let x_939 : vec4<f32> = u_xlat8;
        let x_940 : vec2<f32> = vec2<f32>(x_939.z, x_939.w);
        let x_942 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_940.x, x_940.y, x_942);
        let x_949 : vec3<f32> = txVec12;
        let x_951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_949.xy, x_949.z);
        u_xlat46.x = x_951;
        let x_954 : f32 = u_xlat6.x;
        let x_956 : f32 = u_xlat46.x;
        let x_958 : f32 = u_xlat26;
        u_xlat65 = ((x_954 * x_956) + x_958);
      } else {
        let x_961 : vec4<f32> = vs_TEXCOORD8;
        let x_964 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_967 : vec2<f32> = ((vec2<f32>(x_961.x, x_961.y) * vec2<f32>(x_964.z, x_964.w)) + vec2<f32>(0.5f, 0.5f));
        let x_968 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
        let x_970 : vec4<f32> = u_xlat6;
        let x_972 : vec2<f32> = floor(vec2<f32>(x_970.x, x_970.y));
        let x_973 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_975 : vec4<f32> = vs_TEXCOORD8;
        let x_978 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_981 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_975.x, x_975.y) * vec2<f32>(x_978.z, x_978.w)) + -(vec2<f32>(x_981.x, x_981.y)));
        let x_985 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_985.x, x_985.x, x_985.y, x_985.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_988 : vec4<f32> = u_xlat7;
        let x_990 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_988.x, x_988.x, x_988.z, x_988.z) * vec4<f32>(x_990.x, x_990.x, x_990.z, x_990.z));
        let x_993 : vec4<f32> = u_xlat8;
        let x_997 : vec2<f32> = (vec2<f32>(x_993.y, x_993.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_998 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_998.x, x_997.x, x_998.z, x_997.y);
        let x_1000 : vec4<f32> = u_xlat8;
        let x_1003 : vec2<f32> = u_xlat46;
        let x_1005 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1003));
        let x_1006 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1005.x, x_1006.y, x_1005.y, x_1006.w);
        let x_1008 : vec2<f32> = u_xlat46;
        let x_1010 : vec2<f32> = (-(x_1008) + vec2<f32>(1.0f, 1.0f));
        let x_1011 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1013 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1013, vec2<f32>(0.0f, 0.0f));
        let x_1015 : vec2<f32> = u_xlat48;
        let x_1017 : vec2<f32> = u_xlat48;
        let x_1019 : vec4<f32> = u_xlat8;
        let x_1021 : vec2<f32> = ((-(x_1015) * x_1017) + vec2<f32>(x_1019.x, x_1019.y));
        let x_1022 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1021.x, x_1021.y, x_1022.z, x_1022.w);
        let x_1024 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1024, vec2<f32>(0.0f, 0.0f));
        let x_1027 : vec2<f32> = u_xlat48;
        let x_1029 : vec2<f32> = u_xlat48;
        let x_1031 : vec4<f32> = u_xlat7;
        let x_1033 : vec2<f32> = ((-(x_1027) * x_1029) + vec2<f32>(x_1031.y, x_1031.w));
        let x_1034 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1033.x, x_1034.y, x_1033.y);
        let x_1036 : vec4<f32> = u_xlat8;
        let x_1039 : vec2<f32> = (vec2<f32>(x_1036.x, x_1036.y) + vec2<f32>(2.0f, 2.0f));
        let x_1040 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1039.x, x_1039.y, x_1040.z, x_1040.w);
        let x_1042 : vec3<f32> = u_xlat27;
        let x_1044 : vec2<f32> = (vec2<f32>(x_1042.x, x_1042.z) + vec2<f32>(2.0f, 2.0f));
        let x_1045 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1045.x, x_1044.x, x_1045.z, x_1044.y);
        let x_1048 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1048 * 0.081632003f);
        let x_1052 : vec4<f32> = u_xlat7;
        let x_1055 : vec3<f32> = (vec3<f32>(x_1052.z, x_1052.x, x_1052.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1056 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat8;
        let x_1061 : vec2<f32> = (vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1062 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
        let x_1065 : f32 = u_xlat11.y;
        u_xlat10.x = x_1065;
        let x_1067 : vec2<f32> = u_xlat46;
        let x_1074 : vec2<f32> = ((vec2<f32>(x_1067.x, x_1067.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1075 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1075.x, x_1074.x, x_1075.z, x_1074.y);
        let x_1077 : vec2<f32> = u_xlat46;
        let x_1081 : vec2<f32> = ((vec2<f32>(x_1077.x, x_1077.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1082 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1081.x, x_1082.y, x_1081.y, x_1082.w);
        let x_1085 : f32 = u_xlat7.x;
        u_xlat8.y = x_1085;
        let x_1088 : f32 = u_xlat9.y;
        u_xlat8.w = x_1088;
        let x_1090 : vec4<f32> = u_xlat8;
        let x_1091 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1090 + x_1091);
        let x_1093 : vec2<f32> = u_xlat46;
        let x_1096 : vec2<f32> = ((vec2<f32>(x_1093.y, x_1093.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1097 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1097.x, x_1096.x, x_1097.z, x_1096.y);
        let x_1099 : vec2<f32> = u_xlat46;
        let x_1102 : vec2<f32> = ((vec2<f32>(x_1099.y, x_1099.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1102.x, x_1103.y, x_1102.y, x_1103.w);
        let x_1106 : f32 = u_xlat7.y;
        u_xlat9.y = x_1106;
        let x_1108 : vec4<f32> = u_xlat9;
        let x_1109 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1108 + x_1109);
        let x_1111 : vec4<f32> = u_xlat8;
        let x_1112 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1111 / x_1112);
        let x_1114 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1114 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1120 : vec4<f32> = u_xlat9;
        let x_1121 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1120 / x_1121);
        let x_1123 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1123 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1125 : vec4<f32> = u_xlat8;
        let x_1128 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1125.w, x_1125.x, x_1125.y, x_1125.z) * vec4<f32>(x_1128.x, x_1128.x, x_1128.x, x_1128.x));
        let x_1131 : vec4<f32> = u_xlat9;
        let x_1134 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1131.x, x_1131.w, x_1131.y, x_1131.z) * vec4<f32>(x_1134.y, x_1134.y, x_1134.y, x_1134.y));
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1138 : vec3<f32> = vec3<f32>(x_1137.y, x_1137.z, x_1137.w);
        let x_1139 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1138.x, x_1139.y, x_1138.y, x_1138.z);
        let x_1142 : f32 = u_xlat9.x;
        u_xlat11.y = x_1142;
        let x_1144 : vec4<f32> = u_xlat6;
        let x_1147 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y) * vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y)) + vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1150.y));
        let x_1153 : vec4<f32> = u_xlat6;
        let x_1156 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1159 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1153.x, x_1153.y) * vec2<f32>(x_1156.x, x_1156.y)) + vec2<f32>(x_1159.w, x_1159.y));
        let x_1163 : f32 = u_xlat11.y;
        u_xlat8.y = x_1163;
        let x_1166 : f32 = u_xlat9.z;
        u_xlat11.y = x_1166;
        let x_1168 : vec4<f32> = u_xlat6;
        let x_1171 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1174 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1168.x, x_1168.y, x_1168.x, x_1168.y) * vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y)) + vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1174.y));
        let x_1177 : vec4<f32> = u_xlat6;
        let x_1180 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1183 : vec4<f32> = u_xlat11;
        let x_1185 : vec2<f32> = ((vec2<f32>(x_1177.x, x_1177.y) * vec2<f32>(x_1180.x, x_1180.y)) + vec2<f32>(x_1183.w, x_1183.y));
        let x_1186 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1185.x, x_1185.y, x_1186.z, x_1186.w);
        let x_1189 : f32 = u_xlat11.y;
        u_xlat8.z = x_1189;
        let x_1192 : vec4<f32> = u_xlat6;
        let x_1195 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1192.x, x_1192.y, x_1192.x, x_1192.y) * vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y)) + vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.z));
        let x_1202 : f32 = u_xlat9.w;
        u_xlat11.y = x_1202;
        let x_1205 : vec4<f32> = u_xlat6;
        let x_1208 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1211 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1205.x, x_1205.y, x_1205.x, x_1205.y) * vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y)) + vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1211.y));
        let x_1215 : vec4<f32> = u_xlat6;
        let x_1218 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat11;
        let x_1223 : vec2<f32> = ((vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(x_1218.x, x_1218.y)) + vec2<f32>(x_1221.w, x_1221.y));
        let x_1224 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1223.x, x_1223.y, x_1224.z);
        let x_1227 : f32 = u_xlat11.y;
        u_xlat8.w = x_1227;
        let x_1230 : vec4<f32> = u_xlat6;
        let x_1233 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1230.x, x_1230.y) * vec2<f32>(x_1233.x, x_1233.y)) + vec2<f32>(x_1236.x, x_1236.w));
        let x_1239 : vec4<f32> = u_xlat11;
        let x_1240 : vec3<f32> = vec3<f32>(x_1239.x, x_1239.z, x_1239.w);
        let x_1241 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1240.x, x_1241.y, x_1240.y, x_1240.z);
        let x_1243 : vec4<f32> = u_xlat6;
        let x_1246 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y) * vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y)) + vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1249.y));
        let x_1253 : vec4<f32> = u_xlat6;
        let x_1256 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.w, x_1259.y));
        let x_1263 : f32 = u_xlat8.x;
        u_xlat9.x = x_1263;
        let x_1265 : vec4<f32> = u_xlat6;
        let x_1268 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat9;
        let x_1273 : vec2<f32> = ((vec2<f32>(x_1265.x, x_1265.y) * vec2<f32>(x_1268.x, x_1268.y)) + vec2<f32>(x_1271.x, x_1271.y));
        let x_1274 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1273.x, x_1273.y, x_1274.z, x_1274.w);
        let x_1277 : vec4<f32> = u_xlat7;
        let x_1279 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1277.x, x_1277.x, x_1277.x, x_1277.x) * x_1279);
        let x_1282 : vec4<f32> = u_xlat7;
        let x_1284 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1282.y, x_1282.y, x_1282.y, x_1282.y) * x_1284);
        let x_1287 : vec4<f32> = u_xlat7;
        let x_1289 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1287.z, x_1287.z, x_1287.z, x_1287.z) * x_1289);
        let x_1291 : vec4<f32> = u_xlat7;
        let x_1293 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1291.w, x_1291.w, x_1291.w, x_1291.w) * x_1293);
        let x_1296 : vec4<f32> = u_xlat12;
        let x_1297 : vec2<f32> = vec2<f32>(x_1296.x, x_1296.y);
        let x_1299 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1297.x, x_1297.y, x_1299);
        let x_1306 : vec3<f32> = txVec13;
        let x_1308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1306.xy, x_1306.z);
        u_xlat8.x = x_1308;
        let x_1311 : vec4<f32> = u_xlat12;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.z, x_1311.w);
        let x_1314 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1322 : vec3<f32> = txVec14;
        let x_1324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1322.xy, x_1322.z);
        u_xlat68 = x_1324;
        let x_1325 : f32 = u_xlat68;
        let x_1327 : f32 = u_xlat17.y;
        u_xlat68 = (x_1325 * x_1327);
        let x_1330 : f32 = u_xlat17.x;
        let x_1332 : f32 = u_xlat8.x;
        let x_1334 : f32 = u_xlat68;
        u_xlat8.x = ((x_1330 * x_1332) + x_1334);
        let x_1338 : vec2<f32> = u_xlat46;
        let x_1340 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1338.x, x_1338.y, x_1340);
        let x_1347 : vec3<f32> = txVec15;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1347.xy, x_1347.z);
        u_xlat46.x = x_1349;
        let x_1352 : f32 = u_xlat17.z;
        let x_1354 : f32 = u_xlat46.x;
        let x_1357 : f32 = u_xlat8.x;
        u_xlat46.x = ((x_1352 * x_1354) + x_1357);
        let x_1361 : vec4<f32> = u_xlat15;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.x, x_1361.y);
        let x_1364 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1372 : vec3<f32> = txVec16;
        let x_1374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1372.xy, x_1372.z);
        u_xlat66 = x_1374;
        let x_1376 : f32 = u_xlat17.w;
        let x_1377 : f32 = u_xlat66;
        let x_1380 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1376 * x_1377) + x_1380);
        let x_1384 : vec4<f32> = u_xlat13;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.x, x_1384.y);
        let x_1387 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec17;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1394.xy, x_1394.z);
        u_xlat66 = x_1396;
        let x_1398 : f32 = u_xlat18.x;
        let x_1399 : f32 = u_xlat66;
        let x_1402 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1398 * x_1399) + x_1402);
        let x_1406 : vec4<f32> = u_xlat13;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.z, x_1406.w);
        let x_1409 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec18;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1416.xy, x_1416.z);
        u_xlat66 = x_1418;
        let x_1420 : f32 = u_xlat18.y;
        let x_1421 : f32 = u_xlat66;
        let x_1424 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1420 * x_1421) + x_1424);
        let x_1428 : vec4<f32> = u_xlat14;
        let x_1429 : vec2<f32> = vec2<f32>(x_1428.x, x_1428.y);
        let x_1431 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec19;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1438.xy, x_1438.z);
        u_xlat66 = x_1440;
        let x_1442 : f32 = u_xlat18.z;
        let x_1443 : f32 = u_xlat66;
        let x_1446 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1442 * x_1443) + x_1446);
        let x_1450 : vec4<f32> = u_xlat15;
        let x_1451 : vec2<f32> = vec2<f32>(x_1450.z, x_1450.w);
        let x_1453 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec20;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1460.xy, x_1460.z);
        u_xlat66 = x_1462;
        let x_1464 : f32 = u_xlat18.w;
        let x_1465 : f32 = u_xlat66;
        let x_1468 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1464 * x_1465) + x_1468);
        let x_1472 : vec4<f32> = u_xlat16;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.x, x_1472.y);
        let x_1475 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec21;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat66 = x_1484;
        let x_1486 : f32 = u_xlat19.x;
        let x_1487 : f32 = u_xlat66;
        let x_1490 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1486 * x_1487) + x_1490);
        let x_1494 : vec4<f32> = u_xlat16;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.z, x_1494.w);
        let x_1497 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec22;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1504.xy, x_1504.z);
        u_xlat66 = x_1506;
        let x_1508 : f32 = u_xlat19.y;
        let x_1509 : f32 = u_xlat66;
        let x_1512 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1508 * x_1509) + x_1512);
        let x_1516 : vec3<f32> = u_xlat28;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.x, x_1516.y);
        let x_1519 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec23;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1526.xy, x_1526.z);
        u_xlat66 = x_1528;
        let x_1530 : f32 = u_xlat19.z;
        let x_1531 : f32 = u_xlat66;
        let x_1534 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1530 * x_1531) + x_1534);
        let x_1538 : vec2<f32> = u_xlat54;
        let x_1540 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1538.x, x_1538.y, x_1540);
        let x_1547 : vec3<f32> = txVec24;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1547.xy, x_1547.z);
        u_xlat66 = x_1549;
        let x_1551 : f32 = u_xlat19.w;
        let x_1552 : f32 = u_xlat66;
        let x_1555 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1551 * x_1552) + x_1555);
        let x_1559 : vec4<f32> = u_xlat11;
        let x_1560 : vec2<f32> = vec2<f32>(x_1559.x, x_1559.y);
        let x_1562 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1560.x, x_1560.y, x_1562);
        let x_1569 : vec3<f32> = txVec25;
        let x_1571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1569.xy, x_1569.z);
        u_xlat66 = x_1571;
        let x_1573 : f32 = u_xlat7.x;
        let x_1574 : f32 = u_xlat66;
        let x_1577 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1573 * x_1574) + x_1577);
        let x_1581 : vec4<f32> = u_xlat11;
        let x_1582 : vec2<f32> = vec2<f32>(x_1581.z, x_1581.w);
        let x_1584 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1582.x, x_1582.y, x_1584);
        let x_1591 : vec3<f32> = txVec26;
        let x_1593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1591.xy, x_1591.z);
        u_xlat66 = x_1593;
        let x_1595 : f32 = u_xlat7.y;
        let x_1596 : f32 = u_xlat66;
        let x_1599 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1595 * x_1596) + x_1599);
        let x_1603 : vec2<f32> = u_xlat49;
        let x_1605 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1603.x, x_1603.y, x_1605);
        let x_1612 : vec3<f32> = txVec27;
        let x_1614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1612.xy, x_1612.z);
        u_xlat66 = x_1614;
        let x_1616 : f32 = u_xlat7.z;
        let x_1617 : f32 = u_xlat66;
        let x_1620 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1616 * x_1617) + x_1620);
        let x_1624 : vec4<f32> = u_xlat6;
        let x_1625 : vec2<f32> = vec2<f32>(x_1624.x, x_1624.y);
        let x_1627 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1625.x, x_1625.y, x_1627);
        let x_1634 : vec3<f32> = txVec28;
        let x_1636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1634.xy, x_1634.z);
        u_xlat6.x = x_1636;
        let x_1639 : f32 = u_xlat7.w;
        let x_1641 : f32 = u_xlat6.x;
        let x_1644 : f32 = u_xlat46.x;
        u_xlat65 = ((x_1639 * x_1641) + x_1644);
      }
    }
  } else {
    let x_1648 : vec4<f32> = vs_TEXCOORD8;
    let x_1649 : vec2<f32> = vec2<f32>(x_1648.x, x_1648.y);
    let x_1651 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1649.x, x_1649.y, x_1651);
    let x_1658 : vec3<f32> = txVec29;
    let x_1660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1658.xy, x_1658.z);
    u_xlat65 = x_1660;
  }
  let x_1662 : f32 = x_394.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1662) + 1.0f);
  let x_1666 : f32 = u_xlat65;
  let x_1668 : f32 = x_394.x_MainLightShadowParams.x;
  let x_1671 : f32 = u_xlat6.x;
  u_xlat65 = ((x_1666 * x_1668) + x_1671);
  let x_1674 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_1674);
  let x_1678 : f32 = vs_TEXCOORD8.z;
  u_xlatb26 = (x_1678 >= 1.0f);
  let x_1680 : bool = u_xlatb26;
  let x_1681 : bool = u_xlatb6;
  u_xlatb6 = (x_1680 | x_1681);
  let x_1683 : bool = u_xlatb6;
  let x_1684 : f32 = u_xlat65;
  u_xlat65 = select(x_1684, 1.0f, x_1683);
  let x_1686 : vec3<f32> = vs_TEXCOORD7;
  let x_1688 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1690 : vec3<f32> = (x_1686 + -(x_1688));
  let x_1691 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1691.w);
  let x_1693 : vec4<f32> = u_xlat6;
  let x_1695 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1693.x, x_1693.y, x_1693.z), vec3<f32>(x_1695.x, x_1695.y, x_1695.z));
  let x_1700 : f32 = u_xlat6.x;
  let x_1702 : f32 = x_394.x_MainLightShadowParams.z;
  let x_1705 : f32 = x_394.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1700 * x_1702) + x_1705);
  let x_1709 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1709, 0.0f, 1.0f);
  let x_1712 : f32 = u_xlat65;
  u_xlat26 = (-(x_1712) + 1.0f);
  let x_1716 : f32 = u_xlat6.x;
  let x_1717 : f32 = u_xlat26;
  let x_1719 : f32 = u_xlat65;
  u_xlat65 = ((x_1716 * x_1717) + x_1719);
  let x_1727 : f32 = x_1725.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1727 == -1.0f));
  let x_1729 : bool = u_xlatb6;
  if (x_1729) {
    let x_1732 : vec3<f32> = vs_TEXCOORD7;
    let x_1735 : vec4<f32> = x_1725.x_MainLightWorldToLight[1i];
    let x_1737 : vec2<f32> = (vec2<f32>(x_1732.y, x_1732.y) * vec2<f32>(x_1735.x, x_1735.y));
    let x_1738 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1737.x, x_1737.y, x_1738.z, x_1738.w);
    let x_1741 : vec4<f32> = x_1725.x_MainLightWorldToLight[0i];
    let x_1743 : vec3<f32> = vs_TEXCOORD7;
    let x_1746 : vec4<f32> = u_xlat6;
    let x_1748 : vec2<f32> = ((vec2<f32>(x_1741.x, x_1741.y) * vec2<f32>(x_1743.x, x_1743.x)) + vec2<f32>(x_1746.x, x_1746.y));
    let x_1749 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1748.x, x_1748.y, x_1749.z, x_1749.w);
    let x_1752 : vec4<f32> = x_1725.x_MainLightWorldToLight[2i];
    let x_1754 : vec3<f32> = vs_TEXCOORD7;
    let x_1757 : vec4<f32> = u_xlat6;
    let x_1759 : vec2<f32> = ((vec2<f32>(x_1752.x, x_1752.y) * vec2<f32>(x_1754.z, x_1754.z)) + vec2<f32>(x_1757.x, x_1757.y));
    let x_1760 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1759.x, x_1759.y, x_1760.z, x_1760.w);
    let x_1762 : vec4<f32> = u_xlat6;
    let x_1765 : vec4<f32> = x_1725.x_MainLightWorldToLight[3i];
    let x_1767 : vec2<f32> = (vec2<f32>(x_1762.x, x_1762.y) + vec2<f32>(x_1765.x, x_1765.y));
    let x_1768 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1767.x, x_1767.y, x_1768.z, x_1768.w);
    let x_1770 : vec4<f32> = u_xlat6;
    let x_1773 : vec2<f32> = ((vec2<f32>(x_1770.x, x_1770.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1774 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1773.x, x_1773.y, x_1774.z, x_1774.w);
    let x_1781 : vec4<f32> = u_xlat6;
    let x_1784 : f32 = x_44.x_GlobalMipBias.x;
    let x_1785 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1781.x, x_1781.y), x_1784);
    u_xlat6 = x_1785;
    let x_1790 : f32 = x_1725.x_MainLightCookieTextureFormat;
    let x_1792 : f32 = x_1725.x_MainLightCookieTextureFormat;
    let x_1794 : f32 = x_1725.x_MainLightCookieTextureFormat;
    let x_1796 : f32 = x_1725.x_MainLightCookieTextureFormat;
    let x_1797 : vec4<f32> = vec4<f32>(x_1790, x_1792, x_1794, x_1796);
    let x_1805 : vec4<bool> = (vec4<f32>(x_1797.x, x_1797.y, x_1797.z, x_1797.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1805.x, x_1805.y);
    let x_1808 : bool = u_xlatb7.y;
    if (x_1808) {
      let x_1813 : f32 = u_xlat6.w;
      x_1809 = x_1813;
    } else {
      let x_1816 : f32 = u_xlat6.x;
      x_1809 = x_1816;
    }
    let x_1817 : f32 = x_1809;
    u_xlat66 = x_1817;
    let x_1819 : bool = u_xlatb7.x;
    if (x_1819) {
      let x_1823 : vec4<f32> = u_xlat6;
      x_1820 = vec3<f32>(x_1823.x, x_1823.y, x_1823.z);
    } else {
      let x_1826 : f32 = u_xlat66;
      x_1820 = vec3<f32>(x_1826, x_1826, x_1826);
    }
    let x_1828 : vec3<f32> = x_1820;
    let x_1829 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1828.x, x_1828.y, x_1828.z, x_1829.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1835 : vec4<f32> = u_xlat6;
  let x_1838 : vec4<f32> = x_44.x_MainLightColor;
  let x_1840 : vec3<f32> = (vec3<f32>(x_1835.x, x_1835.y, x_1835.z) * vec3<f32>(x_1838.x, x_1838.y, x_1838.z));
  let x_1841 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
  let x_1843 : f32 = u_xlat44;
  let x_1845 : vec4<f32> = u_xlat6;
  let x_1847 : vec3<f32> = (vec3<f32>(x_1843, x_1843, x_1843) * vec3<f32>(x_1845.x, x_1845.y, x_1845.z));
  let x_1848 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
  let x_1850 : vec3<f32> = u_xlat21;
  let x_1852 : vec4<f32> = u_xlat2;
  u_xlat66 = dot(-(x_1850), vec3<f32>(x_1852.x, x_1852.y, x_1852.z));
  let x_1855 : f32 = u_xlat66;
  let x_1856 : f32 = u_xlat66;
  u_xlat66 = (x_1855 + x_1856);
  let x_1858 : vec4<f32> = u_xlat2;
  let x_1860 : f32 = u_xlat66;
  let x_1864 : vec3<f32> = u_xlat21;
  let x_1866 : vec3<f32> = ((vec3<f32>(x_1858.x, x_1858.y, x_1858.z) * -(vec3<f32>(x_1860, x_1860, x_1860))) + -(x_1864));
  let x_1867 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1866.x, x_1866.y, x_1866.z, x_1867.w);
  let x_1869 : vec4<f32> = u_xlat2;
  let x_1871 : vec3<f32> = u_xlat21;
  u_xlat66 = dot(vec3<f32>(x_1869.x, x_1869.y, x_1869.z), x_1871);
  let x_1873 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1873, 0.0f, 1.0f);
  let x_1875 : f32 = u_xlat66;
  u_xlat66 = (-(x_1875) + 1.0f);
  let x_1878 : f32 = u_xlat66;
  let x_1879 : f32 = u_xlat66;
  u_xlat66 = (x_1878 * x_1879);
  let x_1881 : f32 = u_xlat66;
  let x_1882 : f32 = u_xlat66;
  u_xlat66 = (x_1881 * x_1882);
  let x_1885 : f32 = u_xlat1;
  u_xlat67 = ((-(x_1885) * 0.699999988f) + 1.700000048f);
  let x_1891 : f32 = u_xlat1;
  let x_1892 : f32 = u_xlat67;
  u_xlat1 = (x_1891 * x_1892);
  let x_1894 : f32 = u_xlat1;
  u_xlat1 = (x_1894 * 6.0f);
  let x_1905 : vec4<f32> = u_xlat7;
  let x_1907 : f32 = u_xlat1;
  let x_1908 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1905.x, x_1905.y, x_1905.z), x_1907);
  u_xlat7 = x_1908;
  let x_1910 : f32 = u_xlat7.w;
  u_xlat1 = (x_1910 + -1.0f);
  let x_1913 : f32 = x_197.unity_SpecCube0_HDR.w;
  let x_1914 : f32 = u_xlat1;
  u_xlat1 = ((x_1913 * x_1914) + 1.0f);
  let x_1917 : f32 = u_xlat1;
  u_xlat1 = max(x_1917, 0.0f);
  let x_1919 : f32 = u_xlat1;
  u_xlat1 = log2(x_1919);
  let x_1921 : f32 = u_xlat1;
  let x_1923 : f32 = x_197.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1921 * x_1923);
  let x_1925 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1925);
  let x_1927 : f32 = u_xlat1;
  let x_1929 : f32 = x_197.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1927 * x_1929);
  let x_1931 : vec4<f32> = u_xlat7;
  let x_1933 : f32 = u_xlat1;
  let x_1935 : vec3<f32> = (vec3<f32>(x_1931.x, x_1931.y, x_1931.z) * vec3<f32>(x_1933, x_1933, x_1933));
  let x_1936 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);
  let x_1938 : f32 = u_xlat62;
  let x_1940 : f32 = u_xlat62;
  let x_1944 : vec2<f32> = ((vec2<f32>(x_1938, x_1938) * vec2<f32>(x_1940, x_1940)) + vec2<f32>(-1.0f, 1.0f));
  let x_1945 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1944.x, x_1944.y, x_1945.z, x_1945.w);
  let x_1948 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1948);
  let x_1950 : vec4<f32> = u_xlat0;
  let x_1953 : f32 = u_xlat60;
  u_xlat28 = (-(vec3<f32>(x_1950.x, x_1950.y, x_1950.z)) + vec3<f32>(x_1953, x_1953, x_1953));
  let x_1956 : f32 = u_xlat66;
  let x_1958 : vec3<f32> = u_xlat28;
  let x_1960 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1956, x_1956, x_1956) * x_1958) + vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
  let x_1963 : f32 = u_xlat1;
  let x_1965 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1963, x_1963, x_1963) * x_1965);
  let x_1967 : vec4<f32> = u_xlat7;
  let x_1969 : vec3<f32> = u_xlat28;
  let x_1970 : vec3<f32> = (vec3<f32>(x_1967.x, x_1967.y, x_1967.z) * x_1969);
  let x_1971 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
  let x_1973 : vec3<f32> = u_xlat23;
  let x_1974 : vec4<f32> = u_xlat5;
  let x_1977 : vec4<f32> = u_xlat7;
  u_xlat23 = ((x_1973 * vec3<f32>(x_1974.x, x_1974.y, x_1974.z)) + vec3<f32>(x_1977.x, x_1977.y, x_1977.z));
  let x_1980 : f32 = u_xlat65;
  let x_1983 : f32 = x_197.unity_LightData.z;
  u_xlat60 = (x_1980 * x_1983);
  let x_1985 : vec4<f32> = u_xlat2;
  let x_1988 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_1985.x, x_1985.y, x_1985.z), vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
  let x_1991 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1991, 0.0f, 1.0f);
  let x_1993 : f32 = u_xlat60;
  let x_1994 : f32 = u_xlat1;
  u_xlat60 = (x_1993 * x_1994);
  let x_1996 : f32 = u_xlat60;
  let x_1998 : vec4<f32> = u_xlat6;
  let x_2000 : vec3<f32> = (vec3<f32>(x_1996, x_1996, x_1996) * vec3<f32>(x_1998.x, x_1998.y, x_1998.z));
  let x_2001 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2000.x, x_2000.y, x_2000.z, x_2001.w);
  let x_2003 : vec3<f32> = u_xlat21;
  let x_2005 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2007 : vec3<f32> = (x_2003 + vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
  let x_2008 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2008.w);
  let x_2010 : vec4<f32> = u_xlat7;
  let x_2012 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2010.x, x_2010.y, x_2010.z), vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
  let x_2015 : f32 = u_xlat60;
  u_xlat60 = max(x_2015, 1.17549435e-37f);
  let x_2018 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2018);
  let x_2020 : f32 = u_xlat60;
  let x_2022 : vec4<f32> = u_xlat7;
  let x_2024 : vec3<f32> = (vec3<f32>(x_2020, x_2020, x_2020) * vec3<f32>(x_2022.x, x_2022.y, x_2022.z));
  let x_2025 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2024.x, x_2024.y, x_2024.z, x_2025.w);
  let x_2027 : vec4<f32> = u_xlat2;
  let x_2029 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2027.x, x_2027.y, x_2027.z), vec3<f32>(x_2029.x, x_2029.y, x_2029.z));
  let x_2032 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2032, 0.0f, 1.0f);
  let x_2035 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2037 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_2035.x, x_2035.y, x_2035.z), vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
  let x_2040 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2040, 0.0f, 1.0f);
  let x_2042 : f32 = u_xlat60;
  let x_2043 : f32 = u_xlat60;
  u_xlat60 = (x_2042 * x_2043);
  let x_2045 : f32 = u_xlat60;
  let x_2047 : f32 = u_xlat8.x;
  u_xlat60 = ((x_2045 * x_2047) + 1.000010014f);
  let x_2051 : f32 = u_xlat1;
  let x_2052 : f32 = u_xlat1;
  u_xlat1 = (x_2051 * x_2052);
  let x_2054 : f32 = u_xlat60;
  let x_2055 : f32 = u_xlat60;
  u_xlat60 = (x_2054 * x_2055);
  let x_2057 : f32 = u_xlat1;
  u_xlat1 = max(x_2057, 0.100000001f);
  let x_2060 : f32 = u_xlat60;
  let x_2061 : f32 = u_xlat1;
  u_xlat60 = (x_2060 * x_2061);
  let x_2063 : f32 = u_xlat24;
  let x_2064 : f32 = u_xlat60;
  u_xlat60 = (x_2063 * x_2064);
  let x_2066 : f32 = u_xlat64;
  let x_2067 : f32 = u_xlat60;
  u_xlat60 = (x_2066 / x_2067);
  let x_2069 : vec4<f32> = u_xlat0;
  let x_2071 : f32 = u_xlat60;
  let x_2074 : vec4<f32> = u_xlat5;
  let x_2076 : vec3<f32> = ((vec3<f32>(x_2069.x, x_2069.y, x_2069.z) * vec3<f32>(x_2071, x_2071, x_2071)) + vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
  let x_2077 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2077.w);
  let x_2079 : vec4<f32> = u_xlat6;
  let x_2081 : vec4<f32> = u_xlat7;
  let x_2083 : vec3<f32> = (vec3<f32>(x_2079.x, x_2079.y, x_2079.z) * vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
  let x_2084 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);
  let x_2087 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2089 : f32 = x_197.unity_LightData.y;
  u_xlat60 = min(x_2087, x_2089);
  let x_2093 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2093));
  let x_2097 : f32 = x_1725.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2099 : f32 = x_1725.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2101 : f32 = x_1725.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2103 : f32 = x_1725.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2104 : vec4<f32> = vec4<f32>(x_2097, x_2099, x_2101, x_2103);
  let x_2110 : vec4<bool> = (vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2104.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2110.x, x_2110.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2121 : u32 = u_xlatu_loop_1;
    let x_2122 : u32 = u_xlatu60;
    if ((x_2121 < x_2122)) {
    } else {
      break;
    }
    let x_2125 : u32 = u_xlatu_loop_1;
    u_xlatu62 = (x_2125 >> 2u);
    let x_2129 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2129 & 3u));
    let x_2132 : u32 = u_xlatu62;
    let x_2135 : vec4<f32> = x_197.unity_LightIndices[bitcast<i32>(x_2132)];
    let x_2145 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2150 : vec4<u32> = indexable[x_2145];
    u_xlat62 = dot(x_2135, bitcast<vec4<f32>>(x_2150));
    let x_2153 : f32 = u_xlat62;
    u_xlatu62 = bitcast<u32>(i32(x_2153));
    let x_2156 : vec3<f32> = vs_TEXCOORD7;
    let x_2168 : u32 = u_xlatu62;
    let x_2171 : vec4<f32> = x_2167.x_AdditionalLightsPosition[bitcast<i32>(x_2168)];
    let x_2174 : u32 = u_xlatu62;
    let x_2177 : vec4<f32> = x_2167.x_AdditionalLightsPosition[bitcast<i32>(x_2174)];
    let x_2179 : vec3<f32> = ((-(x_2156) * vec3<f32>(x_2171.w, x_2171.w, x_2171.w)) + vec3<f32>(x_2177.x, x_2177.y, x_2177.z));
    let x_2180 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2179.x, x_2179.y, x_2179.z, x_2180.w);
    let x_2182 : vec4<f32> = u_xlat9;
    let x_2184 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2182.x, x_2182.y, x_2182.z), vec3<f32>(x_2184.x, x_2184.y, x_2184.z));
    let x_2187 : f32 = u_xlat65;
    u_xlat65 = max(x_2187, 6.10351562e-05f);
    let x_2190 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2190);
    let x_2192 : f32 = u_xlat66;
    let x_2194 : vec4<f32> = u_xlat9;
    let x_2196 : vec3<f32> = (vec3<f32>(x_2192, x_2192, x_2192) * vec3<f32>(x_2194.x, x_2194.y, x_2194.z));
    let x_2197 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2196.x, x_2196.y, x_2196.z, x_2197.w);
    let x_2200 : f32 = u_xlat65;
    u_xlat47.x = (1.0f / x_2200);
    let x_2203 : f32 = u_xlat65;
    let x_2204 : u32 = u_xlatu62;
    let x_2207 : f32 = x_2167.x_AdditionalLightsAttenuation[bitcast<i32>(x_2204)].x;
    u_xlat65 = (x_2203 * x_2207);
    let x_2209 : f32 = u_xlat65;
    let x_2211 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2209) * x_2211) + 1.0f);
    let x_2214 : f32 = u_xlat65;
    u_xlat65 = max(x_2214, 0.0f);
    let x_2216 : f32 = u_xlat65;
    let x_2217 : f32 = u_xlat65;
    u_xlat65 = (x_2216 * x_2217);
    let x_2219 : f32 = u_xlat65;
    let x_2221 : f32 = u_xlat47.x;
    u_xlat65 = (x_2219 * x_2221);
    let x_2223 : u32 = u_xlatu62;
    let x_2226 : vec4<f32> = x_2167.x_AdditionalLightsSpotDir[bitcast<i32>(x_2223)];
    let x_2228 : vec4<f32> = u_xlat10;
    u_xlat47.x = dot(vec3<f32>(x_2226.x, x_2226.y, x_2226.z), vec3<f32>(x_2228.x, x_2228.y, x_2228.z));
    let x_2233 : f32 = u_xlat47.x;
    let x_2234 : u32 = u_xlatu62;
    let x_2237 : f32 = x_2167.x_AdditionalLightsAttenuation[bitcast<i32>(x_2234)].z;
    let x_2239 : u32 = u_xlatu62;
    let x_2242 : f32 = x_2167.x_AdditionalLightsAttenuation[bitcast<i32>(x_2239)].w;
    u_xlat47.x = ((x_2233 * x_2237) + x_2242);
    let x_2246 : f32 = u_xlat47.x;
    u_xlat47.x = clamp(x_2246, 0.0f, 1.0f);
    let x_2250 : f32 = u_xlat47.x;
    let x_2252 : f32 = u_xlat47.x;
    u_xlat47.x = (x_2250 * x_2252);
    let x_2255 : f32 = u_xlat65;
    let x_2257 : f32 = u_xlat47.x;
    u_xlat65 = (x_2255 * x_2257);
    let x_2260 : u32 = u_xlatu62;
    u_xlatu47 = (x_2260 >> 5u);
    let x_2263 : u32 = u_xlatu62;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2263) & 31i)));
    let x_2269 : i32 = u_xlati67;
    let x_2271 : u32 = u_xlatu47;
    let x_2274 : f32 = x_1725.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2271)].el;
    u_xlati47 = bitcast<i32>((bitcast<u32>(x_2269) & bitcast<u32>(x_2274)));
    let x_2278 : i32 = u_xlati47;
    if ((x_2278 != 0i)) {
      let x_2288 : u32 = u_xlatu62;
      let x_2291 : f32 = x_2287.x_AdditionalLightsLightTypes[bitcast<i32>(x_2288)].el;
      u_xlati47 = i32(x_2291);
      let x_2293 : i32 = u_xlati47;
      u_xlati67 = select(1i, 0i, (x_2293 != 0i));
      let x_2297 : u32 = u_xlatu62;
      u_xlati69 = (bitcast<i32>(x_2297) << bitcast<u32>(2i));
      let x_2300 : i32 = u_xlati67;
      if ((x_2300 != 0i)) {
        let x_2304 : vec3<f32> = vs_TEXCOORD7;
        let x_2306 : i32 = u_xlati69;
        let x_2309 : i32 = u_xlati69;
        let x_2313 : vec4<f32> = x_2287.x_AdditionalLightsWorldToLights[((x_2306 + 1i) / 4i)][((x_2309 + 1i) % 4i)];
        let x_2315 : vec3<f32> = (vec3<f32>(x_2304.y, x_2304.y, x_2304.y) * vec3<f32>(x_2313.x, x_2313.y, x_2313.w));
        let x_2316 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
        let x_2318 : i32 = u_xlati69;
        let x_2320 : i32 = u_xlati69;
        let x_2323 : vec4<f32> = x_2287.x_AdditionalLightsWorldToLights[(x_2318 / 4i)][(x_2320 % 4i)];
        let x_2325 : vec3<f32> = vs_TEXCOORD7;
        let x_2328 : vec4<f32> = u_xlat11;
        let x_2330 : vec3<f32> = ((vec3<f32>(x_2323.x, x_2323.y, x_2323.w) * vec3<f32>(x_2325.x, x_2325.x, x_2325.x)) + vec3<f32>(x_2328.x, x_2328.y, x_2328.z));
        let x_2331 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2330.x, x_2330.y, x_2330.z, x_2331.w);
        let x_2333 : i32 = u_xlati69;
        let x_2336 : i32 = u_xlati69;
        let x_2340 : vec4<f32> = x_2287.x_AdditionalLightsWorldToLights[((x_2333 + 2i) / 4i)][((x_2336 + 2i) % 4i)];
        let x_2342 : vec3<f32> = vs_TEXCOORD7;
        let x_2345 : vec4<f32> = u_xlat11;
        let x_2347 : vec3<f32> = ((vec3<f32>(x_2340.x, x_2340.y, x_2340.w) * vec3<f32>(x_2342.z, x_2342.z, x_2342.z)) + vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
        let x_2348 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2347.x, x_2347.y, x_2347.z, x_2348.w);
        let x_2350 : vec4<f32> = u_xlat11;
        let x_2352 : i32 = u_xlati69;
        let x_2355 : i32 = u_xlati69;
        let x_2359 : vec4<f32> = x_2287.x_AdditionalLightsWorldToLights[((x_2352 + 3i) / 4i)][((x_2355 + 3i) % 4i)];
        let x_2361 : vec3<f32> = (vec3<f32>(x_2350.x, x_2350.y, x_2350.z) + vec3<f32>(x_2359.x, x_2359.y, x_2359.w));
        let x_2362 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
        let x_2364 : vec4<f32> = u_xlat11;
        let x_2366 : vec4<f32> = u_xlat11;
        let x_2368 : vec2<f32> = (vec2<f32>(x_2364.x, x_2364.y) / vec2<f32>(x_2366.z, x_2366.z));
        let x_2369 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2368.x, x_2368.y, x_2369.z, x_2369.w);
        let x_2371 : vec4<f32> = u_xlat11;
        let x_2374 : vec2<f32> = ((vec2<f32>(x_2371.x, x_2371.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2375 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2374.x, x_2374.y, x_2375.z, x_2375.w);
        let x_2377 : vec4<f32> = u_xlat11;
        let x_2381 : vec2<f32> = clamp(vec2<f32>(x_2377.x, x_2377.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2382 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2381.x, x_2381.y, x_2382.z, x_2382.w);
        let x_2384 : u32 = u_xlatu62;
        let x_2387 : vec4<f32> = x_2287.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2384)];
        let x_2389 : vec4<f32> = u_xlat11;
        let x_2392 : u32 = u_xlatu62;
        let x_2395 : vec4<f32> = x_2287.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2392)];
        let x_2397 : vec2<f32> = ((vec2<f32>(x_2387.x, x_2387.y) * vec2<f32>(x_2389.x, x_2389.y)) + vec2<f32>(x_2395.z, x_2395.w));
        let x_2398 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2397.x, x_2397.y, x_2398.z, x_2398.w);
      } else {
        let x_2402 : i32 = u_xlati47;
        u_xlatb47 = (x_2402 == 1i);
        let x_2404 : bool = u_xlatb47;
        u_xlati47 = select(0i, 1i, x_2404);
        let x_2406 : i32 = u_xlati47;
        if ((x_2406 != 0i)) {
          let x_2410 : vec3<f32> = vs_TEXCOORD7;
          let x_2412 : i32 = u_xlati69;
          let x_2415 : i32 = u_xlati69;
          let x_2419 : vec4<f32> = x_2287.x_AdditionalLightsWorldToLights[((x_2412 + 1i) / 4i)][((x_2415 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2410.y, x_2410.y) * vec2<f32>(x_2419.x, x_2419.y));
          let x_2422 : i32 = u_xlati69;
          let x_2424 : i32 = u_xlati69;
          let x_2427 : vec4<f32> = x_2287.x_AdditionalLightsWorldToLights[(x_2422 / 4i)][(x_2424 % 4i)];
          let x_2429 : vec3<f32> = vs_TEXCOORD7;
          let x_2432 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2427.x, x_2427.y) * vec2<f32>(x_2429.x, x_2429.x)) + x_2432);
          let x_2434 : i32 = u_xlati69;
          let x_2437 : i32 = u_xlati69;
          let x_2441 : vec4<f32> = x_2287.x_AdditionalLightsWorldToLights[((x_2434 + 2i) / 4i)][((x_2437 + 2i) % 4i)];
          let x_2443 : vec3<f32> = vs_TEXCOORD7;
          let x_2446 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2441.x, x_2441.y) * vec2<f32>(x_2443.z, x_2443.z)) + x_2446);
          let x_2448 : vec2<f32> = u_xlat47;
          let x_2449 : i32 = u_xlati69;
          let x_2452 : i32 = u_xlati69;
          let x_2456 : vec4<f32> = x_2287.x_AdditionalLightsWorldToLights[((x_2449 + 3i) / 4i)][((x_2452 + 3i) % 4i)];
          u_xlat47 = (x_2448 + vec2<f32>(x_2456.x, x_2456.y));
          let x_2459 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2459 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2462 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2462);
          let x_2464 : u32 = u_xlatu62;
          let x_2467 : vec4<f32> = x_2287.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2464)];
          let x_2469 : vec2<f32> = u_xlat47;
          let x_2471 : u32 = u_xlatu62;
          let x_2474 : vec4<f32> = x_2287.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2471)];
          let x_2476 : vec2<f32> = ((vec2<f32>(x_2467.x, x_2467.y) * x_2469) + vec2<f32>(x_2474.z, x_2474.w));
          let x_2477 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2476.x, x_2476.y, x_2477.z, x_2477.w);
        } else {
          let x_2480 : vec3<f32> = vs_TEXCOORD7;
          let x_2482 : i32 = u_xlati69;
          let x_2485 : i32 = u_xlati69;
          let x_2489 : vec4<f32> = x_2287.x_AdditionalLightsWorldToLights[((x_2482 + 1i) / 4i)][((x_2485 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2480.y, x_2480.y, x_2480.y, x_2480.y) * x_2489);
          let x_2491 : i32 = u_xlati69;
          let x_2493 : i32 = u_xlati69;
          let x_2496 : vec4<f32> = x_2287.x_AdditionalLightsWorldToLights[(x_2491 / 4i)][(x_2493 % 4i)];
          let x_2497 : vec3<f32> = vs_TEXCOORD7;
          let x_2500 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2496 * vec4<f32>(x_2497.x, x_2497.x, x_2497.x, x_2497.x)) + x_2500);
          let x_2502 : i32 = u_xlati69;
          let x_2505 : i32 = u_xlati69;
          let x_2509 : vec4<f32> = x_2287.x_AdditionalLightsWorldToLights[((x_2502 + 2i) / 4i)][((x_2505 + 2i) % 4i)];
          let x_2510 : vec3<f32> = vs_TEXCOORD7;
          let x_2513 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2509 * vec4<f32>(x_2510.z, x_2510.z, x_2510.z, x_2510.z)) + x_2513);
          let x_2515 : vec4<f32> = u_xlat12;
          let x_2516 : i32 = u_xlati69;
          let x_2519 : i32 = u_xlati69;
          let x_2523 : vec4<f32> = x_2287.x_AdditionalLightsWorldToLights[((x_2516 + 3i) / 4i)][((x_2519 + 3i) % 4i)];
          u_xlat12 = (x_2515 + x_2523);
          let x_2525 : vec4<f32> = u_xlat12;
          let x_2527 : vec4<f32> = u_xlat12;
          let x_2529 : vec3<f32> = (vec3<f32>(x_2525.x, x_2525.y, x_2525.z) / vec3<f32>(x_2527.w, x_2527.w, x_2527.w));
          let x_2530 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2529.x, x_2529.y, x_2529.z, x_2530.w);
          let x_2532 : vec4<f32> = u_xlat12;
          let x_2534 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(vec3<f32>(x_2532.x, x_2532.y, x_2532.z), vec3<f32>(x_2534.x, x_2534.y, x_2534.z));
          let x_2539 : f32 = u_xlat47.x;
          u_xlat47.x = inverseSqrt(x_2539);
          let x_2542 : vec2<f32> = u_xlat47;
          let x_2544 : vec4<f32> = u_xlat12;
          let x_2546 : vec3<f32> = (vec3<f32>(x_2542.x, x_2542.x, x_2542.x) * vec3<f32>(x_2544.x, x_2544.y, x_2544.z));
          let x_2547 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2546.x, x_2546.y, x_2546.z, x_2547.w);
          let x_2549 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(abs(vec3<f32>(x_2549.x, x_2549.y, x_2549.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2556 : f32 = u_xlat47.x;
          u_xlat47.x = max(x_2556, 0.000001f);
          let x_2561 : f32 = u_xlat47.x;
          u_xlat47.x = (1.0f / x_2561);
          let x_2564 : vec2<f32> = u_xlat47;
          let x_2566 : vec4<f32> = u_xlat12;
          let x_2568 : vec3<f32> = (vec3<f32>(x_2564.x, x_2564.x, x_2564.x) * vec3<f32>(x_2566.z, x_2566.x, x_2566.y));
          let x_2569 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
          let x_2572 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2572);
          let x_2576 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2576, 0.0f, 1.0f);
          let x_2580 : vec4<f32> = u_xlat13;
          let x_2583 : vec4<bool> = (vec4<f32>(x_2580.y, x_2580.z, x_2580.y, x_2580.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2583.x, x_2583.y);
          let x_2587 : bool = u_xlatb51.x;
          if (x_2587) {
            let x_2592 : f32 = u_xlat13.x;
            x_2588 = x_2592;
          } else {
            let x_2595 : f32 = u_xlat13.x;
            x_2588 = -(x_2595);
          }
          let x_2597 : f32 = x_2588;
          u_xlat51.x = x_2597;
          let x_2600 : bool = u_xlatb51.y;
          if (x_2600) {
            let x_2605 : f32 = u_xlat13.x;
            x_2601 = x_2605;
          } else {
            let x_2608 : f32 = u_xlat13.x;
            x_2601 = -(x_2608);
          }
          let x_2610 : f32 = x_2601;
          u_xlat51.y = x_2610;
          let x_2612 : vec4<f32> = u_xlat12;
          let x_2614 : vec2<f32> = u_xlat47;
          let x_2617 : vec2<f32> = u_xlat51;
          u_xlat47 = ((vec2<f32>(x_2612.x, x_2612.y) * vec2<f32>(x_2614.x, x_2614.x)) + x_2617);
          let x_2619 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2619 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2622 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2622, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2626 : u32 = u_xlatu62;
          let x_2629 : vec4<f32> = x_2287.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2626)];
          let x_2631 : vec2<f32> = u_xlat47;
          let x_2633 : u32 = u_xlatu62;
          let x_2636 : vec4<f32> = x_2287.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2633)];
          let x_2638 : vec2<f32> = ((vec2<f32>(x_2629.x, x_2629.y) * x_2631) + vec2<f32>(x_2636.z, x_2636.w));
          let x_2639 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2638.x, x_2638.y, x_2639.z, x_2639.w);
        }
      }
      let x_2646 : vec4<f32> = u_xlat11;
      let x_2649 : f32 = x_44.x_GlobalMipBias.x;
      let x_2650 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2646.x, x_2646.y), x_2649);
      u_xlat11 = x_2650;
      let x_2652 : bool = u_xlatb7.y;
      if (x_2652) {
        let x_2657 : f32 = u_xlat11.w;
        x_2653 = x_2657;
      } else {
        let x_2660 : f32 = u_xlat11.x;
        x_2653 = x_2660;
      }
      let x_2661 : f32 = x_2653;
      u_xlat47.x = x_2661;
      let x_2664 : bool = u_xlatb7.x;
      if (x_2664) {
        let x_2668 : vec4<f32> = u_xlat11;
        x_2665 = vec3<f32>(x_2668.x, x_2668.y, x_2668.z);
      } else {
        let x_2671 : vec2<f32> = u_xlat47;
        x_2665 = vec3<f32>(x_2671.x, x_2671.x, x_2671.x);
      }
      let x_2673 : vec3<f32> = x_2665;
      let x_2674 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2673.x, x_2673.y, x_2673.z, x_2674.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2680 : vec4<f32> = u_xlat11;
    let x_2682 : u32 = u_xlatu62;
    let x_2685 : vec4<f32> = x_2167.x_AdditionalLightsColor[bitcast<i32>(x_2682)];
    let x_2687 : vec3<f32> = (vec3<f32>(x_2680.x, x_2680.y, x_2680.z) * vec3<f32>(x_2685.x, x_2685.y, x_2685.z));
    let x_2688 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2687.x, x_2687.y, x_2687.z, x_2688.w);
    let x_2690 : f32 = u_xlat44;
    let x_2692 : vec4<f32> = u_xlat11;
    let x_2694 : vec3<f32> = (vec3<f32>(x_2690, x_2690, x_2690) * vec3<f32>(x_2692.x, x_2692.y, x_2692.z));
    let x_2695 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2694.x, x_2694.y, x_2694.z, x_2695.w);
    let x_2697 : vec4<f32> = u_xlat2;
    let x_2699 : vec4<f32> = u_xlat10;
    u_xlat62 = dot(vec3<f32>(x_2697.x, x_2697.y, x_2697.z), vec3<f32>(x_2699.x, x_2699.y, x_2699.z));
    let x_2702 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2702, 0.0f, 1.0f);
    let x_2704 : f32 = u_xlat62;
    let x_2705 : f32 = u_xlat65;
    u_xlat62 = (x_2704 * x_2705);
    let x_2707 : f32 = u_xlat62;
    let x_2709 : vec4<f32> = u_xlat11;
    let x_2711 : vec3<f32> = (vec3<f32>(x_2707, x_2707, x_2707) * vec3<f32>(x_2709.x, x_2709.y, x_2709.z));
    let x_2712 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2711.x, x_2711.y, x_2711.z, x_2712.w);
    let x_2714 : vec4<f32> = u_xlat9;
    let x_2716 : f32 = u_xlat66;
    let x_2719 : vec3<f32> = u_xlat21;
    let x_2720 : vec3<f32> = ((vec3<f32>(x_2714.x, x_2714.y, x_2714.z) * vec3<f32>(x_2716, x_2716, x_2716)) + x_2719);
    let x_2721 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2720.x, x_2720.y, x_2720.z, x_2721.w);
    let x_2723 : vec4<f32> = u_xlat9;
    let x_2725 : vec4<f32> = u_xlat9;
    u_xlat62 = dot(vec3<f32>(x_2723.x, x_2723.y, x_2723.z), vec3<f32>(x_2725.x, x_2725.y, x_2725.z));
    let x_2728 : f32 = u_xlat62;
    u_xlat62 = max(x_2728, 1.17549435e-37f);
    let x_2730 : f32 = u_xlat62;
    u_xlat62 = inverseSqrt(x_2730);
    let x_2732 : f32 = u_xlat62;
    let x_2734 : vec4<f32> = u_xlat9;
    let x_2736 : vec3<f32> = (vec3<f32>(x_2732, x_2732, x_2732) * vec3<f32>(x_2734.x, x_2734.y, x_2734.z));
    let x_2737 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2736.x, x_2736.y, x_2736.z, x_2737.w);
    let x_2739 : vec4<f32> = u_xlat2;
    let x_2741 : vec4<f32> = u_xlat9;
    u_xlat62 = dot(vec3<f32>(x_2739.x, x_2739.y, x_2739.z), vec3<f32>(x_2741.x, x_2741.y, x_2741.z));
    let x_2744 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2744, 0.0f, 1.0f);
    let x_2746 : vec4<f32> = u_xlat10;
    let x_2748 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2746.x, x_2746.y, x_2746.z), vec3<f32>(x_2748.x, x_2748.y, x_2748.z));
    let x_2751 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2751, 0.0f, 1.0f);
    let x_2753 : f32 = u_xlat62;
    let x_2754 : f32 = u_xlat62;
    u_xlat62 = (x_2753 * x_2754);
    let x_2756 : f32 = u_xlat62;
    let x_2758 : f32 = u_xlat8.x;
    u_xlat62 = ((x_2756 * x_2758) + 1.000010014f);
    let x_2761 : f32 = u_xlat65;
    let x_2762 : f32 = u_xlat65;
    u_xlat65 = (x_2761 * x_2762);
    let x_2764 : f32 = u_xlat62;
    let x_2765 : f32 = u_xlat62;
    u_xlat62 = (x_2764 * x_2765);
    let x_2767 : f32 = u_xlat65;
    u_xlat65 = max(x_2767, 0.100000001f);
    let x_2769 : f32 = u_xlat62;
    let x_2770 : f32 = u_xlat65;
    u_xlat62 = (x_2769 * x_2770);
    let x_2772 : f32 = u_xlat24;
    let x_2773 : f32 = u_xlat62;
    u_xlat62 = (x_2772 * x_2773);
    let x_2775 : f32 = u_xlat64;
    let x_2776 : f32 = u_xlat62;
    u_xlat62 = (x_2775 / x_2776);
    let x_2778 : vec4<f32> = u_xlat0;
    let x_2780 : f32 = u_xlat62;
    let x_2783 : vec4<f32> = u_xlat5;
    let x_2785 : vec3<f32> = ((vec3<f32>(x_2778.x, x_2778.y, x_2778.z) * vec3<f32>(x_2780, x_2780, x_2780)) + vec3<f32>(x_2783.x, x_2783.y, x_2783.z));
    let x_2786 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2785.x, x_2785.y, x_2785.z, x_2786.w);
    let x_2788 : vec4<f32> = u_xlat9;
    let x_2790 : vec4<f32> = u_xlat11;
    let x_2793 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_2788.x, x_2788.y, x_2788.z) * vec3<f32>(x_2790.x, x_2790.y, x_2790.z)) + x_2793);

    continuing {
      let x_2795 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2795 + bitcast<u32>(1i));
    }
  }
  let x_2797 : vec3<f32> = u_xlat23;
  let x_2798 : vec3<f32> = u_xlat4;
  let x_2801 : vec4<f32> = u_xlat6;
  let x_2803 : vec3<f32> = ((x_2797 * vec3<f32>(x_2798.x, x_2798.x, x_2798.x)) + vec3<f32>(x_2801.x, x_2801.y, x_2801.z));
  let x_2804 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2804.w);
  let x_2806 : vec3<f32> = u_xlat28;
  let x_2807 : vec4<f32> = u_xlat0;
  let x_2809 : vec3<f32> = (x_2806 + vec3<f32>(x_2807.x, x_2807.y, x_2807.z));
  let x_2810 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2809.x, x_2809.y, x_2809.z, x_2810.w);
  let x_2813 : f32 = u_xlat3.x;
  let x_2815 : f32 = u_xlat3.x;
  u_xlat60 = (x_2813 * -(x_2815));
  let x_2818 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2818);
  let x_2820 : vec4<f32> = u_xlat0;
  let x_2824 : vec4<f32> = x_44.unity_FogColor;
  let x_2827 : vec3<f32> = (vec3<f32>(x_2820.x, x_2820.y, x_2820.z) + -(vec3<f32>(x_2824.x, x_2824.y, x_2824.z)));
  let x_2828 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2827.x, x_2827.y, x_2827.z, x_2828.w);
  let x_2832 : f32 = u_xlat60;
  let x_2834 : vec4<f32> = u_xlat0;
  let x_2838 : vec4<f32> = x_44.unity_FogColor;
  let x_2840 : vec3<f32> = ((vec3<f32>(x_2832, x_2832, x_2832) * vec3<f32>(x_2834.x, x_2834.y, x_2834.z)) + vec3<f32>(x_2838.x, x_2838.y, x_2838.z));
  let x_2841 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2841.w);
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

