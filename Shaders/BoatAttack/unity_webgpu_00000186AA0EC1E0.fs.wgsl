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

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_135 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_347 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1675 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2168 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2297 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat41 : vec2<f32>;
  var u_xlat61 : f32;
  var u_xlat62 : f32;
  var u_xlat60 : f32;
  var u_xlat63 : f32;
  var u_xlatb24 : bool;
  var u_xlat6 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat24 : vec3<f32>;
  var u_xlatb44 : vec2<bool>;
  var u_xlat44 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat64 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlat16 : vec2<f32>;
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
  var u_xlatb64 : bool;
  var x_1624 : f32;
  var x_1743 : f32;
  var x_1754 : vec3<f32>;
  var u_xlatu60 : u32;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu65 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlatu67 : u32;
  var u_xlati68 : i32;
  var u_xlati67 : i32;
  var u_xlati69 : i32;
  var u_xlatb67 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlatb51 : vec2<bool>;
  var x_2590 : f32;
  var x_2603 : f32;
  var x_2655 : f32;
  var x_2666 : vec3<f32>;
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
  let x_69 : vec4<f32> = vs_TEXCOORD3;
  let x_71 : vec4<f32> = vs_TEXCOORD3;
  u_xlat21 = dot(vec3<f32>(x_69.x, x_69.y, x_69.z), vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_74 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_74);
  let x_77 : f32 = u_xlat21;
  let x_79 : vec4<f32> = vs_TEXCOORD3;
  let x_81 : vec3<f32> = (vec3<f32>(x_77, x_77, x_77) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_88 : f32 = vs_TEXCOORD7.y;
  let x_92 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat21 = (x_88 * x_92);
  let x_96 : f32 = x_44.unity_MatrixV[0i].z;
  let x_98 : f32 = vs_TEXCOORD7.x;
  let x_100 : f32 = u_xlat21;
  u_xlat21 = ((x_96 * x_98) + x_100);
  let x_104 : f32 = x_44.unity_MatrixV[2i].z;
  let x_106 : f32 = vs_TEXCOORD7.z;
  let x_108 : f32 = u_xlat21;
  u_xlat21 = ((x_104 * x_106) + x_108);
  let x_110 : f32 = u_xlat21;
  let x_113 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat21 = (x_110 + x_113);
  let x_115 : f32 = u_xlat21;
  let x_119 : f32 = x_44.x_ProjectionParams.y;
  u_xlat21 = (-(x_115) + -(x_119));
  let x_122 : f32 = u_xlat21;
  u_xlat21 = max(x_122, 0.0f);
  let x_125 : f32 = u_xlat21;
  let x_128 : f32 = x_44.unity_FogParams.x;
  u_xlat21 = (x_125 * x_128);
  u_xlat2.w = 1.0f;
  let x_139 : vec4<f32> = x_135.unity_SHAr;
  let x_140 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_139, x_140);
  let x_145 : vec4<f32> = x_135.unity_SHAg;
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_145, x_146);
  let x_151 : vec4<f32> = x_135.unity_SHAb;
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_151, x_152);
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_156.y, x_156.z, x_156.z, x_156.x) * vec4<f32>(x_158.x, x_158.y, x_158.z, x_158.z));
  let x_164 : vec4<f32> = x_135.unity_SHBr;
  let x_165 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_164, x_165);
  let x_170 : vec4<f32> = x_135.unity_SHBg;
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_170, x_171);
  let x_176 : vec4<f32> = x_135.unity_SHBb;
  let x_177 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_176, x_177);
  let x_183 : f32 = u_xlat2.y;
  let x_185 : f32 = u_xlat2.y;
  u_xlat41.x = (x_183 * x_185);
  let x_189 : f32 = u_xlat2.x;
  let x_191 : f32 = u_xlat2.x;
  let x_194 : f32 = u_xlat41.x;
  u_xlat41.x = ((x_189 * x_191) + -(x_194));
  let x_200 : vec4<f32> = x_135.unity_SHC;
  let x_202 : vec2<f32> = u_xlat41;
  let x_205 : vec3<f32> = u_xlat5;
  let x_206 : vec3<f32> = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_202.x, x_202.x, x_202.x)) + x_205);
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec3<f32> = u_xlat3;
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_209 + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_213, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_218 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_219 : vec2<f32> = vec2<f32>(x_218.x, x_218.y);
  u_xlat41 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_219.x, x_219.y));
  let x_224 : vec2<f32> = u_xlat41;
  let x_225 : vec4<f32> = hlslcc_FragCoord;
  let x_227 : vec2<f32> = (x_224 * vec2<f32>(x_225.x, x_225.y));
  let x_228 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_227.x, x_227.y, x_228.z, x_228.w);
  let x_231 : f32 = u_xlat4.y;
  let x_234 : f32 = x_44.x_ScaleBiasRt.x;
  let x_237 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat41.x = ((x_231 * x_234) + x_237);
  let x_241 : f32 = u_xlat41.x;
  u_xlat4.z = (-(x_241) + 1.0f);
  let x_246 : f32 = u_xlat1.x;
  u_xlat41.x = ((-(x_246) * 0.959999979f) + 0.959999979f);
  let x_254 : f32 = u_xlat41.x;
  u_xlat61 = (-(x_254) + 1.0f);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec2<f32> = u_xlat41;
  u_xlat5 = (vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x));
  let x_262 : vec4<f32> = u_xlat0;
  let x_266 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec3<f32> = u_xlat1;
  let x_271 : vec4<f32> = u_xlat0;
  let x_276 : vec3<f32> = ((vec3<f32>(x_269.x, x_269.x, x_269.x) * vec3<f32>(x_271.x, x_271.y, x_271.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_277 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_280) + 1.0f);
  let x_285 : f32 = u_xlat1.x;
  let x_287 : f32 = u_xlat1.x;
  u_xlat41.x = (x_285 * x_287);
  let x_291 : f32 = u_xlat41.x;
  u_xlat41.x = max(x_291, 0.0078125f);
  let x_297 : f32 = u_xlat41.x;
  let x_299 : f32 = u_xlat41.x;
  u_xlat62 = (x_297 * x_299);
  let x_303 : f32 = u_xlat0.w;
  let x_304 : f32 = u_xlat61;
  u_xlat60 = (x_303 + x_304);
  let x_306 : f32 = u_xlat60;
  u_xlat60 = clamp(x_306, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat41.x;
  u_xlat61 = ((x_309 * 4.0f) + 2.0f);
  let x_320 : vec4<f32> = u_xlat4;
  let x_323 : f32 = x_44.x_GlobalMipBias.x;
  let x_324 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_320.x, x_320.z), x_323);
  u_xlat63 = x_324.x;
  let x_326 : f32 = u_xlat63;
  u_xlat4.x = (x_326 + -1.0f);
  let x_332 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_334 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_332 * x_334) + 1.0f);
  let x_338 : f32 = u_xlat63;
  u_xlat63 = min(x_338, 1.0f);
  let x_349 : f32 = x_347.x_MainLightShadowParams.y;
  u_xlatb24 = (0.0f < x_349);
  let x_351 : bool = u_xlatb24;
  if (x_351) {
    let x_355 : f32 = x_347.x_MainLightShadowParams.y;
    u_xlatb24 = (x_355 == 1.0f);
    let x_357 : bool = u_xlatb24;
    if (x_357) {
      let x_362 : vec4<f32> = vs_TEXCOORD8;
      let x_366 : vec4<f32> = x_347.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_362.x, x_362.y, x_362.x, x_362.y) + x_366);
      let x_369 : vec4<f32> = u_xlat6;
      let x_370 : vec2<f32> = vec2<f32>(x_369.x, x_369.y);
      let x_372 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_385 : vec3<f32> = txVec0;
      let x_387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_385.xy, x_385.z);
      u_xlat7.x = x_387;
      let x_390 : vec4<f32> = u_xlat6;
      let x_391 : vec2<f32> = vec2<f32>(x_390.z, x_390.w);
      let x_393 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_391.x, x_391.y, x_393);
      let x_400 : vec3<f32> = txVec1;
      let x_402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_400.xy, x_400.z);
      u_xlat7.y = x_402;
      let x_404 : vec4<f32> = vs_TEXCOORD8;
      let x_407 : vec4<f32> = x_347.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_404.x, x_404.y, x_404.x, x_404.y) + x_407);
      let x_410 : vec4<f32> = u_xlat6;
      let x_411 : vec2<f32> = vec2<f32>(x_410.x, x_410.y);
      let x_413 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_411.x, x_411.y, x_413);
      let x_420 : vec3<f32> = txVec2;
      let x_422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_420.xy, x_420.z);
      u_xlat7.z = x_422;
      let x_425 : vec4<f32> = u_xlat6;
      let x_426 : vec2<f32> = vec2<f32>(x_425.z, x_425.w);
      let x_428 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_426.x, x_426.y, x_428);
      let x_435 : vec3<f32> = txVec3;
      let x_437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_435.xy, x_435.z);
      u_xlat7.w = x_437;
      let x_440 : vec4<f32> = u_xlat7;
      u_xlat24.x = dot(x_440, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_450 : f32 = x_347.x_MainLightShadowParams.y;
      u_xlatb44.x = (x_450 == 2.0f);
      let x_454 : bool = u_xlatb44.x;
      if (x_454) {
        let x_458 : vec4<f32> = vs_TEXCOORD8;
        let x_461 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        u_xlat44 = ((vec2<f32>(x_458.x, x_458.y) * vec2<f32>(x_461.z, x_461.w)) + vec2<f32>(0.5f, 0.5f));
        let x_467 : vec2<f32> = u_xlat44;
        u_xlat44 = floor(x_467);
        let x_469 : vec4<f32> = vs_TEXCOORD8;
        let x_472 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_475 : vec2<f32> = u_xlat44;
        let x_477 : vec2<f32> = ((vec2<f32>(x_469.x, x_469.y) * vec2<f32>(x_472.z, x_472.w)) + -(x_475));
        let x_478 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
        let x_480 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_480.x, x_480.x, x_480.y, x_480.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_485 : vec4<f32> = u_xlat7;
        let x_487 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_485.x, x_485.x, x_485.z, x_485.z) * vec4<f32>(x_487.x, x_487.x, x_487.z, x_487.z));
        let x_491 : vec4<f32> = u_xlat8;
        u_xlat46 = (vec2<f32>(x_491.y, x_491.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_496 : vec4<f32> = u_xlat8;
        let x_499 : vec4<f32> = u_xlat6;
        let x_502 : vec2<f32> = ((vec2<f32>(x_496.x, x_496.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_499.x, x_499.y)));
        let x_503 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_502.x, x_503.y, x_502.y, x_503.w);
        let x_505 : vec4<f32> = u_xlat6;
        let x_508 : vec2<f32> = (-(vec2<f32>(x_505.x, x_505.y)) + vec2<f32>(1.0f, 1.0f));
        let x_509 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
        let x_512 : vec4<f32> = u_xlat6;
        u_xlat48 = min(vec2<f32>(x_512.x, x_512.y), vec2<f32>(0.0f, 0.0f));
        let x_516 : vec2<f32> = u_xlat48;
        let x_518 : vec2<f32> = u_xlat48;
        let x_520 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_516) * x_518) + vec2<f32>(x_520.x, x_520.y));
        let x_523 : vec4<f32> = u_xlat6;
        let x_525 : vec2<f32> = max(vec2<f32>(x_523.x, x_523.y), vec2<f32>(0.0f, 0.0f));
        let x_526 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
        let x_528 : vec4<f32> = u_xlat6;
        let x_531 : vec4<f32> = u_xlat6;
        let x_534 : vec4<f32> = u_xlat7;
        let x_536 : vec2<f32> = ((-(vec2<f32>(x_528.x, x_528.y)) * vec2<f32>(x_531.x, x_531.y)) + vec2<f32>(x_534.y, x_534.w));
        let x_537 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
        let x_539 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_539 + vec2<f32>(1.0f, 1.0f));
        let x_541 : vec4<f32> = u_xlat6;
        let x_543 : vec2<f32> = (vec2<f32>(x_541.x, x_541.y) + vec2<f32>(1.0f, 1.0f));
        let x_544 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
        let x_547 : vec4<f32> = u_xlat7;
        let x_551 : vec2<f32> = (vec2<f32>(x_547.x, x_547.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_552 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
        let x_555 : vec4<f32> = u_xlat8;
        let x_557 : vec2<f32> = (vec2<f32>(x_555.x, x_555.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_558 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
        let x_560 : vec2<f32> = u_xlat48;
        let x_561 : vec2<f32> = (x_560 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_562 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
        let x_565 : vec4<f32> = u_xlat6;
        let x_567 : vec2<f32> = (vec2<f32>(x_565.x, x_565.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_568 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
        let x_570 : vec4<f32> = u_xlat7;
        let x_572 : vec2<f32> = (vec2<f32>(x_570.y, x_570.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_573 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
        let x_576 : f32 = u_xlat8.x;
        u_xlat9.z = x_576;
        let x_579 : f32 = u_xlat6.x;
        u_xlat9.w = x_579;
        let x_582 : f32 = u_xlat11.x;
        u_xlat10.z = x_582;
        let x_585 : f32 = u_xlat46.x;
        u_xlat10.w = x_585;
        let x_587 : vec4<f32> = u_xlat9;
        let x_589 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_587.z, x_587.w, x_587.x, x_587.z) + vec4<f32>(x_589.z, x_589.w, x_589.x, x_589.z));
        let x_593 : f32 = u_xlat9.y;
        u_xlat8.z = x_593;
        let x_596 : f32 = u_xlat6.y;
        u_xlat8.w = x_596;
        let x_599 : f32 = u_xlat10.y;
        u_xlat11.z = x_599;
        let x_602 : f32 = u_xlat46.y;
        u_xlat11.w = x_602;
        let x_604 : vec4<f32> = u_xlat8;
        let x_606 : vec4<f32> = u_xlat11;
        let x_608 : vec3<f32> = (vec3<f32>(x_604.z, x_604.y, x_604.w) + vec3<f32>(x_606.z, x_606.y, x_606.w));
        let x_609 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
        let x_611 : vec4<f32> = u_xlat10;
        let x_613 : vec4<f32> = u_xlat7;
        let x_615 : vec3<f32> = (vec3<f32>(x_611.x, x_611.z, x_611.w) / vec3<f32>(x_613.z, x_613.w, x_613.y));
        let x_616 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
        let x_618 : vec4<f32> = u_xlat8;
        let x_624 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_625 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
        let x_627 : vec4<f32> = u_xlat11;
        let x_629 : vec4<f32> = u_xlat6;
        let x_631 : vec3<f32> = (vec3<f32>(x_627.z, x_627.y, x_627.w) / vec3<f32>(x_629.x, x_629.y, x_629.z));
        let x_632 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
        let x_634 : vec4<f32> = u_xlat9;
        let x_636 : vec3<f32> = (vec3<f32>(x_634.x, x_634.y, x_634.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_637 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
        let x_639 : vec4<f32> = u_xlat8;
        let x_642 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_644 : vec3<f32> = (vec3<f32>(x_639.y, x_639.x, x_639.z) * vec3<f32>(x_642.x, x_642.x, x_642.x));
        let x_645 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
        let x_647 : vec4<f32> = u_xlat9;
        let x_650 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_652 : vec3<f32> = (vec3<f32>(x_647.x, x_647.y, x_647.z) * vec3<f32>(x_650.y, x_650.y, x_650.y));
        let x_653 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
        let x_656 : f32 = u_xlat9.x;
        u_xlat8.w = x_656;
        let x_658 : vec2<f32> = u_xlat44;
        let x_661 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_664 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_658.x, x_658.y, x_658.x, x_658.y) * vec4<f32>(x_661.x, x_661.y, x_661.x, x_661.y)) + vec4<f32>(x_664.y, x_664.w, x_664.x, x_664.w));
        let x_667 : vec2<f32> = u_xlat44;
        let x_669 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_672 : vec4<f32> = u_xlat8;
        let x_674 : vec2<f32> = ((x_667 * vec2<f32>(x_669.x, x_669.y)) + vec2<f32>(x_672.z, x_672.w));
        let x_675 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
        let x_678 : f32 = u_xlat8.y;
        u_xlat9.w = x_678;
        let x_680 : vec4<f32> = u_xlat9;
        let x_681 : vec2<f32> = vec2<f32>(x_680.y, x_680.z);
        let x_682 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_682.x, x_681.x, x_682.z, x_681.y);
        let x_685 : vec2<f32> = u_xlat44;
        let x_688 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_691 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_685.x, x_685.y, x_685.x, x_685.y) * vec4<f32>(x_688.x, x_688.y, x_688.x, x_688.y)) + vec4<f32>(x_691.x, x_691.y, x_691.z, x_691.y));
        let x_694 : vec2<f32> = u_xlat44;
        let x_697 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_700 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_694.x, x_694.y, x_694.x, x_694.y) * vec4<f32>(x_697.x, x_697.y, x_697.x, x_697.y)) + vec4<f32>(x_700.w, x_700.y, x_700.w, x_700.z));
        let x_703 : vec2<f32> = u_xlat44;
        let x_706 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_709 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_703.x, x_703.y, x_703.x, x_703.y) * vec4<f32>(x_706.x, x_706.y, x_706.x, x_706.y)) + vec4<f32>(x_709.x, x_709.w, x_709.z, x_709.w));
        let x_713 : vec4<f32> = u_xlat6;
        let x_715 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_713.x, x_713.x, x_713.x, x_713.y) * vec4<f32>(x_715.z, x_715.w, x_715.y, x_715.z));
        let x_719 : vec4<f32> = u_xlat6;
        let x_721 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_719.y, x_719.y, x_719.z, x_719.z) * x_721);
        let x_724 : f32 = u_xlat6.z;
        let x_726 : f32 = u_xlat7.y;
        u_xlat44.x = (x_724 * x_726);
        let x_730 : vec4<f32> = u_xlat10;
        let x_731 : vec2<f32> = vec2<f32>(x_730.x, x_730.y);
        let x_733 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_731.x, x_731.y, x_733);
        let x_741 : vec3<f32> = txVec4;
        let x_743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_741.xy, x_741.z);
        u_xlat64 = x_743;
        let x_745 : vec4<f32> = u_xlat10;
        let x_746 : vec2<f32> = vec2<f32>(x_745.z, x_745.w);
        let x_748 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_746.x, x_746.y, x_748);
        let x_756 : vec3<f32> = txVec5;
        let x_758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_756.xy, x_756.z);
        u_xlat65 = x_758;
        let x_759 : f32 = u_xlat65;
        let x_761 : f32 = u_xlat13.y;
        u_xlat65 = (x_759 * x_761);
        let x_764 : f32 = u_xlat13.x;
        let x_765 : f32 = u_xlat64;
        let x_767 : f32 = u_xlat65;
        u_xlat64 = ((x_764 * x_765) + x_767);
        let x_770 : vec4<f32> = u_xlat11;
        let x_771 : vec2<f32> = vec2<f32>(x_770.x, x_770.y);
        let x_773 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_771.x, x_771.y, x_773);
        let x_780 : vec3<f32> = txVec6;
        let x_782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_780.xy, x_780.z);
        u_xlat65 = x_782;
        let x_784 : f32 = u_xlat13.z;
        let x_785 : f32 = u_xlat65;
        let x_787 : f32 = u_xlat64;
        u_xlat64 = ((x_784 * x_785) + x_787);
        let x_790 : vec4<f32> = u_xlat9;
        let x_791 : vec2<f32> = vec2<f32>(x_790.x, x_790.y);
        let x_793 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_791.x, x_791.y, x_793);
        let x_800 : vec3<f32> = txVec7;
        let x_802 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_800.xy, x_800.z);
        u_xlat65 = x_802;
        let x_804 : f32 = u_xlat13.w;
        let x_805 : f32 = u_xlat65;
        let x_807 : f32 = u_xlat64;
        u_xlat64 = ((x_804 * x_805) + x_807);
        let x_810 : vec4<f32> = u_xlat12;
        let x_811 : vec2<f32> = vec2<f32>(x_810.x, x_810.y);
        let x_813 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_811.x, x_811.y, x_813);
        let x_820 : vec3<f32> = txVec8;
        let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_820.xy, x_820.z);
        u_xlat65 = x_822;
        let x_824 : f32 = u_xlat14.x;
        let x_825 : f32 = u_xlat65;
        let x_827 : f32 = u_xlat64;
        u_xlat64 = ((x_824 * x_825) + x_827);
        let x_830 : vec4<f32> = u_xlat12;
        let x_831 : vec2<f32> = vec2<f32>(x_830.z, x_830.w);
        let x_833 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_831.x, x_831.y, x_833);
        let x_840 : vec3<f32> = txVec9;
        let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_840.xy, x_840.z);
        u_xlat65 = x_842;
        let x_844 : f32 = u_xlat14.y;
        let x_845 : f32 = u_xlat65;
        let x_847 : f32 = u_xlat64;
        u_xlat64 = ((x_844 * x_845) + x_847);
        let x_850 : vec4<f32> = u_xlat9;
        let x_851 : vec2<f32> = vec2<f32>(x_850.z, x_850.w);
        let x_853 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_851.x, x_851.y, x_853);
        let x_860 : vec3<f32> = txVec10;
        let x_862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_860.xy, x_860.z);
        u_xlat65 = x_862;
        let x_864 : f32 = u_xlat14.z;
        let x_865 : f32 = u_xlat65;
        let x_867 : f32 = u_xlat64;
        u_xlat64 = ((x_864 * x_865) + x_867);
        let x_870 : vec4<f32> = u_xlat8;
        let x_871 : vec2<f32> = vec2<f32>(x_870.x, x_870.y);
        let x_873 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_871.x, x_871.y, x_873);
        let x_880 : vec3<f32> = txVec11;
        let x_882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_880.xy, x_880.z);
        u_xlat65 = x_882;
        let x_884 : f32 = u_xlat14.w;
        let x_885 : f32 = u_xlat65;
        let x_887 : f32 = u_xlat64;
        u_xlat64 = ((x_884 * x_885) + x_887);
        let x_890 : vec4<f32> = u_xlat8;
        let x_891 : vec2<f32> = vec2<f32>(x_890.z, x_890.w);
        let x_893 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_900 : vec3<f32> = txVec12;
        let x_902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_900.xy, x_900.z);
        u_xlat65 = x_902;
        let x_904 : f32 = u_xlat44.x;
        let x_905 : f32 = u_xlat65;
        let x_907 : f32 = u_xlat64;
        u_xlat24.x = ((x_904 * x_905) + x_907);
      } else {
        let x_911 : vec4<f32> = vs_TEXCOORD8;
        let x_914 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        u_xlat44 = ((vec2<f32>(x_911.x, x_911.y) * vec2<f32>(x_914.z, x_914.w)) + vec2<f32>(0.5f, 0.5f));
        let x_918 : vec2<f32> = u_xlat44;
        u_xlat44 = floor(x_918);
        let x_920 : vec4<f32> = vs_TEXCOORD8;
        let x_923 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_926 : vec2<f32> = u_xlat44;
        let x_928 : vec2<f32> = ((vec2<f32>(x_920.x, x_920.y) * vec2<f32>(x_923.z, x_923.w)) + -(x_926));
        let x_929 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_928.x, x_928.y, x_929.z, x_929.w);
        let x_931 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_931.x, x_931.x, x_931.y, x_931.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_934 : vec4<f32> = u_xlat7;
        let x_936 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_934.x, x_934.x, x_934.z, x_934.z) * vec4<f32>(x_936.x, x_936.x, x_936.z, x_936.z));
        let x_939 : vec4<f32> = u_xlat8;
        let x_943 : vec2<f32> = (vec2<f32>(x_939.y, x_939.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_944 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_944.x, x_943.x, x_944.z, x_943.y);
        let x_946 : vec4<f32> = u_xlat8;
        let x_949 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_946.x, x_946.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_949.x, x_949.y)));
        let x_953 : vec4<f32> = u_xlat6;
        let x_956 : vec2<f32> = (-(vec2<f32>(x_953.x, x_953.y)) + vec2<f32>(1.0f, 1.0f));
        let x_957 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_956.x, x_957.y, x_956.y, x_957.w);
        let x_959 : vec4<f32> = u_xlat6;
        let x_961 : vec2<f32> = min(vec2<f32>(x_959.x, x_959.y), vec2<f32>(0.0f, 0.0f));
        let x_962 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat8;
        let x_967 : vec4<f32> = u_xlat8;
        let x_970 : vec4<f32> = u_xlat7;
        let x_972 : vec2<f32> = ((-(vec2<f32>(x_964.x, x_964.y)) * vec2<f32>(x_967.x, x_967.y)) + vec2<f32>(x_970.x, x_970.z));
        let x_973 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_972.x, x_973.y, x_972.y, x_973.w);
        let x_975 : vec4<f32> = u_xlat6;
        let x_977 : vec2<f32> = max(vec2<f32>(x_975.x, x_975.y), vec2<f32>(0.0f, 0.0f));
        let x_978 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_977.x, x_977.y, x_978.z, x_978.w);
        let x_980 : vec4<f32> = u_xlat8;
        let x_983 : vec4<f32> = u_xlat8;
        let x_986 : vec4<f32> = u_xlat7;
        let x_988 : vec2<f32> = ((-(vec2<f32>(x_980.x, x_980.y)) * vec2<f32>(x_983.x, x_983.y)) + vec2<f32>(x_986.y, x_986.w));
        let x_989 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_989.x, x_988.x, x_989.z, x_988.y);
        let x_991 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_991 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_995 : f32 = u_xlat7.y;
        u_xlat8.z = (x_995 * 0.081632003f);
        let x_999 : vec2<f32> = u_xlat46;
        let x_1002 : vec2<f32> = (vec2<f32>(x_999.y, x_999.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1003 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1002.x, x_1002.y, x_1003.z, x_1003.w);
        let x_1005 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1005.x, x_1005.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1009 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1009 * 0.081632003f);
        let x_1013 : f32 = u_xlat10.y;
        u_xlat8.x = x_1013;
        let x_1015 : vec4<f32> = u_xlat6;
        let x_1022 : vec2<f32> = ((vec2<f32>(x_1015.x, x_1015.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1023 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1023.x, x_1022.x, x_1023.z, x_1022.y);
        let x_1025 : vec4<f32> = u_xlat6;
        let x_1029 : vec2<f32> = ((vec2<f32>(x_1025.x, x_1025.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1030 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1029.x, x_1030.y, x_1029.y, x_1030.w);
        let x_1033 : f32 = u_xlat46.x;
        u_xlat7.y = x_1033;
        let x_1036 : f32 = u_xlat9.y;
        u_xlat7.w = x_1036;
        let x_1038 : vec4<f32> = u_xlat7;
        let x_1039 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1038 + x_1039);
        let x_1041 : vec4<f32> = u_xlat6;
        let x_1044 : vec2<f32> = ((vec2<f32>(x_1041.y, x_1041.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1045 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1045.x, x_1044.x, x_1045.z, x_1044.y);
        let x_1047 : vec4<f32> = u_xlat6;
        let x_1050 : vec2<f32> = ((vec2<f32>(x_1047.y, x_1047.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1051 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1050.x, x_1051.y, x_1050.y, x_1051.w);
        let x_1054 : f32 = u_xlat46.y;
        u_xlat9.y = x_1054;
        let x_1056 : vec4<f32> = u_xlat9;
        let x_1057 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1056 + x_1057);
        let x_1059 : vec4<f32> = u_xlat7;
        let x_1060 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1059 / x_1060);
        let x_1062 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1062 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1068 : vec4<f32> = u_xlat9;
        let x_1069 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1068 / x_1069);
        let x_1071 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1071 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1073 : vec4<f32> = u_xlat7;
        let x_1076 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1073.w, x_1073.x, x_1073.y, x_1073.z) * vec4<f32>(x_1076.x, x_1076.x, x_1076.x, x_1076.x));
        let x_1079 : vec4<f32> = u_xlat9;
        let x_1082 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1079.x, x_1079.w, x_1079.y, x_1079.z) * vec4<f32>(x_1082.y, x_1082.y, x_1082.y, x_1082.y));
        let x_1085 : vec4<f32> = u_xlat7;
        let x_1086 : vec3<f32> = vec3<f32>(x_1085.y, x_1085.z, x_1085.w);
        let x_1087 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1086.x, x_1087.y, x_1086.y, x_1086.z);
        let x_1090 : f32 = u_xlat9.x;
        u_xlat10.y = x_1090;
        let x_1092 : vec2<f32> = u_xlat44;
        let x_1095 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1098 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y) * vec4<f32>(x_1095.x, x_1095.y, x_1095.x, x_1095.y)) + vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1098.y));
        let x_1101 : vec2<f32> = u_xlat44;
        let x_1103 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1106 : vec4<f32> = u_xlat10;
        let x_1108 : vec2<f32> = ((x_1101 * vec2<f32>(x_1103.x, x_1103.y)) + vec2<f32>(x_1106.w, x_1106.y));
        let x_1109 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1112 : f32 = u_xlat10.y;
        u_xlat7.y = x_1112;
        let x_1115 : f32 = u_xlat9.z;
        u_xlat10.y = x_1115;
        let x_1117 : vec2<f32> = u_xlat44;
        let x_1120 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y) * vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y)) + vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1123.y));
        let x_1127 : vec2<f32> = u_xlat44;
        let x_1129 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1127 * vec2<f32>(x_1129.x, x_1129.y)) + vec2<f32>(x_1132.w, x_1132.y));
        let x_1136 : f32 = u_xlat10.y;
        u_xlat7.z = x_1136;
        let x_1138 : vec2<f32> = u_xlat44;
        let x_1141 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.z));
        let x_1148 : f32 = u_xlat9.w;
        u_xlat10.y = x_1148;
        let x_1151 : vec2<f32> = u_xlat44;
        let x_1154 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1157 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1151.x, x_1151.y, x_1151.x, x_1151.y) * vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.y)) + vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1157.y));
        let x_1161 : vec2<f32> = u_xlat44;
        let x_1163 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat10;
        u_xlat27 = ((x_1161 * vec2<f32>(x_1163.x, x_1163.y)) + vec2<f32>(x_1166.w, x_1166.y));
        let x_1170 : f32 = u_xlat10.y;
        u_xlat7.w = x_1170;
        let x_1173 : vec2<f32> = u_xlat44;
        let x_1175 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1178 : vec4<f32> = u_xlat7;
        u_xlat16 = ((x_1173 * vec2<f32>(x_1175.x, x_1175.y)) + vec2<f32>(x_1178.x, x_1178.w));
        let x_1181 : vec4<f32> = u_xlat10;
        let x_1182 : vec3<f32> = vec3<f32>(x_1181.x, x_1181.z, x_1181.w);
        let x_1183 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1182.x, x_1183.y, x_1182.y, x_1182.z);
        let x_1185 : vec2<f32> = u_xlat44;
        let x_1188 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1191 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.y) * vec4<f32>(x_1188.x, x_1188.y, x_1188.x, x_1188.y)) + vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1191.y));
        let x_1195 : vec2<f32> = u_xlat44;
        let x_1197 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1195 * vec2<f32>(x_1197.x, x_1197.y)) + vec2<f32>(x_1200.w, x_1200.y));
        let x_1204 : f32 = u_xlat7.x;
        u_xlat9.x = x_1204;
        let x_1206 : vec2<f32> = u_xlat44;
        let x_1208 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1211 : vec4<f32> = u_xlat9;
        u_xlat44 = ((x_1206 * vec2<f32>(x_1208.x, x_1208.y)) + vec2<f32>(x_1211.x, x_1211.y));
        let x_1215 : vec4<f32> = u_xlat6;
        let x_1217 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1215.x, x_1215.x, x_1215.x, x_1215.x) * x_1217);
        let x_1220 : vec4<f32> = u_xlat6;
        let x_1222 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1220.y, x_1220.y, x_1220.y, x_1220.y) * x_1222);
        let x_1225 : vec4<f32> = u_xlat6;
        let x_1227 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1225.z, x_1225.z, x_1225.z, x_1225.z) * x_1227);
        let x_1229 : vec4<f32> = u_xlat6;
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1229.w, x_1229.w, x_1229.w, x_1229.w) * x_1231);
        let x_1234 : vec4<f32> = u_xlat11;
        let x_1235 : vec2<f32> = vec2<f32>(x_1234.x, x_1234.y);
        let x_1237 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1235.x, x_1235.y, x_1237);
        let x_1244 : vec3<f32> = txVec13;
        let x_1246 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1244.xy, x_1244.z);
        u_xlat65 = x_1246;
        let x_1248 : vec4<f32> = u_xlat11;
        let x_1249 : vec2<f32> = vec2<f32>(x_1248.z, x_1248.w);
        let x_1251 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1249.x, x_1249.y, x_1251);
        let x_1258 : vec3<f32> = txVec14;
        let x_1260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1258.xy, x_1258.z);
        u_xlat7.x = x_1260;
        let x_1263 : f32 = u_xlat7.x;
        let x_1265 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1263 * x_1265);
        let x_1269 : f32 = u_xlat17.x;
        let x_1270 : f32 = u_xlat65;
        let x_1273 : f32 = u_xlat7.x;
        u_xlat65 = ((x_1269 * x_1270) + x_1273);
        let x_1276 : vec4<f32> = u_xlat12;
        let x_1277 : vec2<f32> = vec2<f32>(x_1276.x, x_1276.y);
        let x_1279 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1277.x, x_1277.y, x_1279);
        let x_1286 : vec3<f32> = txVec15;
        let x_1288 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1286.xy, x_1286.z);
        u_xlat7.x = x_1288;
        let x_1291 : f32 = u_xlat17.z;
        let x_1293 : f32 = u_xlat7.x;
        let x_1295 : f32 = u_xlat65;
        u_xlat65 = ((x_1291 * x_1293) + x_1295);
        let x_1298 : vec4<f32> = u_xlat14;
        let x_1299 : vec2<f32> = vec2<f32>(x_1298.x, x_1298.y);
        let x_1301 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1299.x, x_1299.y, x_1301);
        let x_1308 : vec3<f32> = txVec16;
        let x_1310 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1308.xy, x_1308.z);
        u_xlat7.x = x_1310;
        let x_1313 : f32 = u_xlat17.w;
        let x_1315 : f32 = u_xlat7.x;
        let x_1317 : f32 = u_xlat65;
        u_xlat65 = ((x_1313 * x_1315) + x_1317);
        let x_1320 : vec4<f32> = u_xlat13;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.x, x_1320.y);
        let x_1323 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec17;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1330.xy, x_1330.z);
        u_xlat7.x = x_1332;
        let x_1335 : f32 = u_xlat18.x;
        let x_1337 : f32 = u_xlat7.x;
        let x_1339 : f32 = u_xlat65;
        u_xlat65 = ((x_1335 * x_1337) + x_1339);
        let x_1342 : vec4<f32> = u_xlat13;
        let x_1343 : vec2<f32> = vec2<f32>(x_1342.z, x_1342.w);
        let x_1345 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec18;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1352.xy, x_1352.z);
        u_xlat7.x = x_1354;
        let x_1357 : f32 = u_xlat18.y;
        let x_1359 : f32 = u_xlat7.x;
        let x_1361 : f32 = u_xlat65;
        u_xlat65 = ((x_1357 * x_1359) + x_1361);
        let x_1364 : vec2<f32> = u_xlat52;
        let x_1366 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec19;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1373.xy, x_1373.z);
        u_xlat7.x = x_1375;
        let x_1378 : f32 = u_xlat18.z;
        let x_1380 : f32 = u_xlat7.x;
        let x_1382 : f32 = u_xlat65;
        u_xlat65 = ((x_1378 * x_1380) + x_1382);
        let x_1385 : vec4<f32> = u_xlat14;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.z, x_1385.w);
        let x_1388 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec20;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1395.xy, x_1395.z);
        u_xlat7.x = x_1397;
        let x_1400 : f32 = u_xlat18.w;
        let x_1402 : f32 = u_xlat7.x;
        let x_1404 : f32 = u_xlat65;
        u_xlat65 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat15;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.x, x_1407.y);
        let x_1410 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec21;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1417.xy, x_1417.z);
        u_xlat7.x = x_1419;
        let x_1422 : f32 = u_xlat19.x;
        let x_1424 : f32 = u_xlat7.x;
        let x_1426 : f32 = u_xlat65;
        u_xlat65 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec4<f32> = u_xlat15;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.z, x_1429.w);
        let x_1432 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec22;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1439.xy, x_1439.z);
        u_xlat7.x = x_1441;
        let x_1444 : f32 = u_xlat19.y;
        let x_1446 : f32 = u_xlat7.x;
        let x_1448 : f32 = u_xlat65;
        u_xlat65 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec2<f32> = u_xlat27;
        let x_1453 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec23;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1460.xy, x_1460.z);
        u_xlat7.x = x_1462;
        let x_1465 : f32 = u_xlat19.z;
        let x_1467 : f32 = u_xlat7.x;
        let x_1469 : f32 = u_xlat65;
        u_xlat65 = ((x_1465 * x_1467) + x_1469);
        let x_1472 : vec2<f32> = u_xlat16;
        let x_1474 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec24;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1481.xy, x_1481.z);
        u_xlat7.x = x_1483;
        let x_1486 : f32 = u_xlat19.w;
        let x_1488 : f32 = u_xlat7.x;
        let x_1490 : f32 = u_xlat65;
        u_xlat65 = ((x_1486 * x_1488) + x_1490);
        let x_1493 : vec4<f32> = u_xlat10;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.x, x_1493.y);
        let x_1496 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec25;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1503.xy, x_1503.z);
        u_xlat7.x = x_1505;
        let x_1508 : f32 = u_xlat6.x;
        let x_1510 : f32 = u_xlat7.x;
        let x_1512 : f32 = u_xlat65;
        u_xlat65 = ((x_1508 * x_1510) + x_1512);
        let x_1515 : vec4<f32> = u_xlat10;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.z, x_1515.w);
        let x_1518 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec26;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1525.xy, x_1525.z);
        u_xlat6.x = x_1527;
        let x_1530 : f32 = u_xlat6.y;
        let x_1532 : f32 = u_xlat6.x;
        let x_1534 : f32 = u_xlat65;
        u_xlat65 = ((x_1530 * x_1532) + x_1534);
        let x_1537 : vec2<f32> = u_xlat49;
        let x_1539 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec27;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1546.xy, x_1546.z);
        u_xlat6.x = x_1548;
        let x_1551 : f32 = u_xlat6.z;
        let x_1553 : f32 = u_xlat6.x;
        let x_1555 : f32 = u_xlat65;
        u_xlat65 = ((x_1551 * x_1553) + x_1555);
        let x_1558 : vec2<f32> = u_xlat44;
        let x_1560 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec28;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1567.xy, x_1567.z);
        u_xlat44.x = x_1569;
        let x_1572 : f32 = u_xlat6.w;
        let x_1574 : f32 = u_xlat44.x;
        let x_1576 : f32 = u_xlat65;
        u_xlat24.x = ((x_1572 * x_1574) + x_1576);
      }
    }
  } else {
    let x_1581 : vec4<f32> = vs_TEXCOORD8;
    let x_1582 : vec2<f32> = vec2<f32>(x_1581.x, x_1581.y);
    let x_1584 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1582.x, x_1582.y, x_1584);
    let x_1591 : vec3<f32> = txVec29;
    let x_1593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1591.xy, x_1591.z);
    u_xlat24.x = x_1593;
  }
  let x_1596 : f32 = x_347.x_MainLightShadowParams.x;
  u_xlat44.x = (-(x_1596) + 1.0f);
  let x_1601 : f32 = u_xlat24.x;
  let x_1603 : f32 = x_347.x_MainLightShadowParams.x;
  let x_1606 : f32 = u_xlat44.x;
  u_xlat24.x = ((x_1601 * x_1603) + x_1606);
  let x_1610 : f32 = vs_TEXCOORD8.z;
  u_xlatb44.x = (0.0f >= x_1610);
  let x_1615 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (x_1615 >= 1.0f);
  let x_1617 : bool = u_xlatb64;
  let x_1619 : bool = u_xlatb44.x;
  u_xlatb44.x = (x_1617 | x_1619);
  let x_1623 : bool = u_xlatb44.x;
  if (x_1623) {
    x_1624 = 1.0f;
  } else {
    let x_1629 : f32 = u_xlat24.x;
    x_1624 = x_1629;
  }
  let x_1630 : f32 = x_1624;
  u_xlat24.x = x_1630;
  let x_1632 : vec3<f32> = vs_TEXCOORD7;
  let x_1635 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1637 : vec3<f32> = (x_1632 + -(x_1635));
  let x_1638 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);
  let x_1640 : vec4<f32> = u_xlat6;
  let x_1642 : vec4<f32> = u_xlat6;
  u_xlat44.x = dot(vec3<f32>(x_1640.x, x_1640.y, x_1640.z), vec3<f32>(x_1642.x, x_1642.y, x_1642.z));
  let x_1647 : f32 = u_xlat44.x;
  let x_1649 : f32 = x_347.x_MainLightShadowParams.z;
  let x_1652 : f32 = x_347.x_MainLightShadowParams.w;
  u_xlat44.x = ((x_1647 * x_1649) + x_1652);
  let x_1656 : f32 = u_xlat44.x;
  u_xlat44.x = clamp(x_1656, 0.0f, 1.0f);
  let x_1660 : f32 = u_xlat24.x;
  u_xlat64 = (-(x_1660) + 1.0f);
  let x_1664 : f32 = u_xlat44.x;
  let x_1665 : f32 = u_xlat64;
  let x_1668 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_1664 * x_1665) + x_1668);
  let x_1677 : f32 = x_1675.x_MainLightCookieTextureFormat;
  u_xlatb44.x = !((x_1677 == -1.0f));
  let x_1681 : bool = u_xlatb44.x;
  if (x_1681) {
    let x_1684 : vec3<f32> = vs_TEXCOORD7;
    let x_1687 : vec4<f32> = x_1675.x_MainLightWorldToLight[1i];
    u_xlat44 = (vec2<f32>(x_1684.y, x_1684.y) * vec2<f32>(x_1687.x, x_1687.y));
    let x_1691 : vec4<f32> = x_1675.x_MainLightWorldToLight[0i];
    let x_1693 : vec3<f32> = vs_TEXCOORD7;
    let x_1696 : vec2<f32> = u_xlat44;
    u_xlat44 = ((vec2<f32>(x_1691.x, x_1691.y) * vec2<f32>(x_1693.x, x_1693.x)) + x_1696);
    let x_1699 : vec4<f32> = x_1675.x_MainLightWorldToLight[2i];
    let x_1701 : vec3<f32> = vs_TEXCOORD7;
    let x_1704 : vec2<f32> = u_xlat44;
    u_xlat44 = ((vec2<f32>(x_1699.x, x_1699.y) * vec2<f32>(x_1701.z, x_1701.z)) + x_1704);
    let x_1706 : vec2<f32> = u_xlat44;
    let x_1708 : vec4<f32> = x_1675.x_MainLightWorldToLight[3i];
    u_xlat44 = (x_1706 + vec2<f32>(x_1708.x, x_1708.y));
    let x_1711 : vec2<f32> = u_xlat44;
    u_xlat44 = ((x_1711 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1719 : vec2<f32> = u_xlat44;
    let x_1721 : f32 = x_44.x_GlobalMipBias.x;
    let x_1722 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1719, x_1721);
    u_xlat6 = x_1722;
    let x_1724 : f32 = x_1675.x_MainLightCookieTextureFormat;
    let x_1726 : f32 = x_1675.x_MainLightCookieTextureFormat;
    let x_1728 : f32 = x_1675.x_MainLightCookieTextureFormat;
    let x_1730 : f32 = x_1675.x_MainLightCookieTextureFormat;
    let x_1731 : vec4<f32> = vec4<f32>(x_1724, x_1726, x_1728, x_1730);
    let x_1739 : vec4<bool> = (vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1731.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb44 = vec2<bool>(x_1739.x, x_1739.y);
    let x_1742 : bool = u_xlatb44.y;
    if (x_1742) {
      let x_1747 : f32 = u_xlat6.w;
      x_1743 = x_1747;
    } else {
      let x_1750 : f32 = u_xlat6.x;
      x_1743 = x_1750;
    }
    let x_1751 : f32 = x_1743;
    u_xlat64 = x_1751;
    let x_1753 : bool = u_xlatb44.x;
    if (x_1753) {
      let x_1757 : vec4<f32> = u_xlat6;
      x_1754 = vec3<f32>(x_1757.x, x_1757.y, x_1757.z);
    } else {
      let x_1760 : f32 = u_xlat64;
      x_1754 = vec3<f32>(x_1760, x_1760, x_1760);
    }
    let x_1762 : vec3<f32> = x_1754;
    let x_1763 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1762.x, x_1762.y, x_1762.z, x_1763.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1769 : vec4<f32> = u_xlat6;
  let x_1772 : vec4<f32> = x_44.x_MainLightColor;
  let x_1774 : vec3<f32> = (vec3<f32>(x_1769.x, x_1769.y, x_1769.z) * vec3<f32>(x_1772.x, x_1772.y, x_1772.z));
  let x_1775 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1774.x, x_1774.y, x_1774.z, x_1775.w);
  let x_1777 : vec4<f32> = u_xlat4;
  let x_1779 : vec4<f32> = u_xlat6;
  let x_1781 : vec3<f32> = (vec3<f32>(x_1777.x, x_1777.x, x_1777.x) * vec3<f32>(x_1779.x, x_1779.y, x_1779.z));
  let x_1782 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
  let x_1785 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1785;
  let x_1789 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1789;
  let x_1793 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1793;
  let x_1795 : vec4<f32> = u_xlat7;
  let x_1798 : vec4<f32> = u_xlat2;
  u_xlat44.x = dot(-(vec3<f32>(x_1795.x, x_1795.y, x_1795.z)), vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
  let x_1803 : f32 = u_xlat44.x;
  let x_1805 : f32 = u_xlat44.x;
  u_xlat44.x = (x_1803 + x_1805);
  let x_1808 : vec4<f32> = u_xlat2;
  let x_1810 : vec2<f32> = u_xlat44;
  let x_1814 : vec4<f32> = u_xlat7;
  let x_1817 : vec3<f32> = ((vec3<f32>(x_1808.x, x_1808.y, x_1808.z) * -(vec3<f32>(x_1810.x, x_1810.x, x_1810.x))) + -(vec3<f32>(x_1814.x, x_1814.y, x_1814.z)));
  let x_1818 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
  let x_1820 : vec4<f32> = u_xlat2;
  let x_1822 : vec4<f32> = u_xlat7;
  u_xlat44.x = dot(vec3<f32>(x_1820.x, x_1820.y, x_1820.z), vec3<f32>(x_1822.x, x_1822.y, x_1822.z));
  let x_1827 : f32 = u_xlat44.x;
  u_xlat44.x = clamp(x_1827, 0.0f, 1.0f);
  let x_1831 : f32 = u_xlat44.x;
  u_xlat44.x = (-(x_1831) + 1.0f);
  let x_1836 : f32 = u_xlat44.x;
  let x_1838 : f32 = u_xlat44.x;
  u_xlat44.x = (x_1836 * x_1838);
  let x_1842 : f32 = u_xlat44.x;
  let x_1844 : f32 = u_xlat44.x;
  u_xlat44.x = (x_1842 * x_1844);
  let x_1848 : f32 = u_xlat1.x;
  u_xlat64 = ((-(x_1848) * 0.699999988f) + 1.700000048f);
  let x_1855 : f32 = u_xlat1.x;
  let x_1856 : f32 = u_xlat64;
  u_xlat1.x = (x_1855 * x_1856);
  let x_1860 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1860 * 6.0f);
  let x_1872 : vec4<f32> = u_xlat8;
  let x_1875 : f32 = u_xlat1.x;
  let x_1876 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1872.x, x_1872.y, x_1872.z), x_1875);
  u_xlat8 = x_1876;
  let x_1878 : f32 = u_xlat8.w;
  u_xlat1.x = (x_1878 + -1.0f);
  let x_1882 : f32 = x_135.unity_SpecCube0_HDR.w;
  let x_1884 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1882 * x_1884) + 1.0f);
  let x_1889 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1889, 0.0f);
  let x_1893 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1893);
  let x_1897 : f32 = u_xlat1.x;
  let x_1899 : f32 = x_135.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1897 * x_1899);
  let x_1903 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1903);
  let x_1907 : f32 = u_xlat1.x;
  let x_1909 : f32 = x_135.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1907 * x_1909);
  let x_1912 : vec4<f32> = u_xlat8;
  let x_1914 : vec3<f32> = u_xlat1;
  let x_1916 : vec3<f32> = (vec3<f32>(x_1912.x, x_1912.y, x_1912.z) * vec3<f32>(x_1914.x, x_1914.x, x_1914.x));
  let x_1917 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1916.x, x_1916.y, x_1916.z, x_1917.w);
  let x_1919 : vec2<f32> = u_xlat41;
  let x_1921 : vec2<f32> = u_xlat41;
  let x_1925 : vec2<f32> = ((vec2<f32>(x_1919.x, x_1919.x) * vec2<f32>(x_1921.x, x_1921.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1926 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1925.x, x_1926.y, x_1925.y);
  let x_1929 : f32 = u_xlat1.z;
  u_xlat41.x = (1.0f / x_1929);
  let x_1932 : vec4<f32> = u_xlat0;
  let x_1935 : f32 = u_xlat60;
  let x_1937 : vec3<f32> = (-(vec3<f32>(x_1932.x, x_1932.y, x_1932.z)) + vec3<f32>(x_1935, x_1935, x_1935));
  let x_1938 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1937.x, x_1937.y, x_1937.z, x_1938.w);
  let x_1940 : vec2<f32> = u_xlat44;
  let x_1942 : vec4<f32> = u_xlat9;
  let x_1945 : vec4<f32> = u_xlat0;
  let x_1947 : vec3<f32> = ((vec3<f32>(x_1940.x, x_1940.x, x_1940.x) * vec3<f32>(x_1942.x, x_1942.y, x_1942.z)) + vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
  let x_1948 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
  let x_1950 : vec2<f32> = u_xlat41;
  let x_1952 : vec4<f32> = u_xlat9;
  let x_1954 : vec3<f32> = (vec3<f32>(x_1950.x, x_1950.x, x_1950.x) * vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
  let x_1955 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
  let x_1957 : vec4<f32> = u_xlat8;
  let x_1959 : vec4<f32> = u_xlat9;
  let x_1961 : vec3<f32> = (vec3<f32>(x_1957.x, x_1957.y, x_1957.z) * vec3<f32>(x_1959.x, x_1959.y, x_1959.z));
  let x_1962 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1961.x, x_1961.y, x_1961.z, x_1962.w);
  let x_1964 : vec3<f32> = u_xlat3;
  let x_1965 : vec3<f32> = u_xlat5;
  let x_1967 : vec4<f32> = u_xlat8;
  u_xlat3 = ((x_1964 * x_1965) + vec3<f32>(x_1967.x, x_1967.y, x_1967.z));
  let x_1971 : f32 = u_xlat24.x;
  let x_1974 : f32 = x_135.unity_LightData.z;
  u_xlat60 = (x_1971 * x_1974);
  let x_1976 : vec4<f32> = u_xlat2;
  let x_1979 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat41.x = dot(vec3<f32>(x_1976.x, x_1976.y, x_1976.z), vec3<f32>(x_1979.x, x_1979.y, x_1979.z));
  let x_1984 : f32 = u_xlat41.x;
  u_xlat41.x = clamp(x_1984, 0.0f, 1.0f);
  let x_1987 : f32 = u_xlat60;
  let x_1989 : f32 = u_xlat41.x;
  u_xlat60 = (x_1987 * x_1989);
  let x_1991 : f32 = u_xlat60;
  let x_1993 : vec4<f32> = u_xlat6;
  u_xlat24 = (vec3<f32>(x_1991, x_1991, x_1991) * vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
  let x_1996 : vec4<f32> = u_xlat7;
  let x_1999 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2001 : vec3<f32> = (vec3<f32>(x_1996.x, x_1996.y, x_1996.z) + vec3<f32>(x_1999.x, x_1999.y, x_1999.z));
  let x_2002 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2001.x, x_2001.y, x_2001.z, x_2002.w);
  let x_2004 : vec4<f32> = u_xlat6;
  let x_2006 : vec4<f32> = u_xlat6;
  u_xlat60 = dot(vec3<f32>(x_2004.x, x_2004.y, x_2004.z), vec3<f32>(x_2006.x, x_2006.y, x_2006.z));
  let x_2009 : f32 = u_xlat60;
  u_xlat60 = max(x_2009, 1.17549435e-37f);
  let x_2012 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2012);
  let x_2014 : f32 = u_xlat60;
  let x_2016 : vec4<f32> = u_xlat6;
  let x_2018 : vec3<f32> = (vec3<f32>(x_2014, x_2014, x_2014) * vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
  let x_2019 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2019.w);
  let x_2021 : vec4<f32> = u_xlat2;
  let x_2023 : vec4<f32> = u_xlat6;
  u_xlat60 = dot(vec3<f32>(x_2021.x, x_2021.y, x_2021.z), vec3<f32>(x_2023.x, x_2023.y, x_2023.z));
  let x_2026 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2026, 0.0f, 1.0f);
  let x_2029 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2031 : vec4<f32> = u_xlat6;
  u_xlat41.x = dot(vec3<f32>(x_2029.x, x_2029.y, x_2029.z), vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
  let x_2036 : f32 = u_xlat41.x;
  u_xlat41.x = clamp(x_2036, 0.0f, 1.0f);
  let x_2039 : f32 = u_xlat60;
  let x_2040 : f32 = u_xlat60;
  u_xlat60 = (x_2039 * x_2040);
  let x_2042 : f32 = u_xlat60;
  let x_2044 : f32 = u_xlat1.x;
  u_xlat60 = ((x_2042 * x_2044) + 1.000010014f);
  let x_2049 : f32 = u_xlat41.x;
  let x_2051 : f32 = u_xlat41.x;
  u_xlat41.x = (x_2049 * x_2051);
  let x_2054 : f32 = u_xlat60;
  let x_2055 : f32 = u_xlat60;
  u_xlat60 = (x_2054 * x_2055);
  let x_2058 : f32 = u_xlat41.x;
  u_xlat41.x = max(x_2058, 0.100000001f);
  let x_2062 : f32 = u_xlat60;
  let x_2064 : f32 = u_xlat41.x;
  u_xlat60 = (x_2062 * x_2064);
  let x_2066 : f32 = u_xlat61;
  let x_2067 : f32 = u_xlat60;
  u_xlat60 = (x_2066 * x_2067);
  let x_2069 : f32 = u_xlat62;
  let x_2070 : f32 = u_xlat60;
  u_xlat60 = (x_2069 / x_2070);
  let x_2072 : vec4<f32> = u_xlat0;
  let x_2074 : f32 = u_xlat60;
  let x_2077 : vec3<f32> = u_xlat5;
  let x_2078 : vec3<f32> = ((vec3<f32>(x_2072.x, x_2072.y, x_2072.z) * vec3<f32>(x_2074, x_2074, x_2074)) + x_2077);
  let x_2079 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
  let x_2081 : vec3<f32> = u_xlat24;
  let x_2082 : vec4<f32> = u_xlat6;
  u_xlat24 = (x_2081 * vec3<f32>(x_2082.x, x_2082.y, x_2082.z));
  let x_2086 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2088 : f32 = x_135.unity_LightData.y;
  u_xlat60 = min(x_2086, x_2088);
  let x_2092 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2092));
  let x_2097 : f32 = x_1675.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2099 : f32 = x_1675.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2101 : f32 = x_1675.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2103 : f32 = x_1675.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2104 : vec4<f32> = vec4<f32>(x_2097, x_2099, x_2101, x_2103);
  let x_2111 : vec4<bool> = (vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2104.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2111.x, x_2111.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2122 : u32 = u_xlatu_loop_1;
    let x_2123 : u32 = u_xlatu60;
    if ((x_2122 < x_2123)) {
    } else {
      break;
    }
    let x_2126 : u32 = u_xlatu_loop_1;
    u_xlatu65 = (x_2126 >> 2u);
    let x_2130 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_2130 & 3u));
    let x_2133 : u32 = u_xlatu65;
    let x_2136 : vec4<f32> = x_135.unity_LightIndices[bitcast<i32>(x_2133)];
    let x_2146 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2151 : vec4<u32> = indexable[x_2146];
    u_xlat65 = dot(x_2136, bitcast<vec4<f32>>(x_2151));
    let x_2154 : f32 = u_xlat65;
    u_xlatu65 = bitcast<u32>(i32(x_2154));
    let x_2157 : vec3<f32> = vs_TEXCOORD7;
    let x_2169 : u32 = u_xlatu65;
    let x_2172 : vec4<f32> = x_2168.x_AdditionalLightsPosition[bitcast<i32>(x_2169)];
    let x_2175 : u32 = u_xlatu65;
    let x_2178 : vec4<f32> = x_2168.x_AdditionalLightsPosition[bitcast<i32>(x_2175)];
    let x_2180 : vec3<f32> = ((-(x_2157) * vec3<f32>(x_2172.w, x_2172.w, x_2172.w)) + vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
    let x_2181 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
    let x_2183 : vec4<f32> = u_xlat9;
    let x_2185 : vec4<f32> = u_xlat9;
    u_xlat46.x = dot(vec3<f32>(x_2183.x, x_2183.y, x_2183.z), vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
    let x_2190 : f32 = u_xlat46.x;
    u_xlat46.x = max(x_2190, 6.10351562e-05f);
    let x_2196 : f32 = u_xlat46.x;
    u_xlat66 = inverseSqrt(x_2196);
    let x_2198 : f32 = u_xlat66;
    let x_2200 : vec4<f32> = u_xlat9;
    let x_2202 : vec3<f32> = (vec3<f32>(x_2198, x_2198, x_2198) * vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
    let x_2203 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
    let x_2207 : f32 = u_xlat46.x;
    u_xlat67 = (1.0f / x_2207);
    let x_2210 : f32 = u_xlat46.x;
    let x_2211 : u32 = u_xlatu65;
    let x_2214 : f32 = x_2168.x_AdditionalLightsAttenuation[bitcast<i32>(x_2211)].x;
    u_xlat46.x = (x_2210 * x_2214);
    let x_2218 : f32 = u_xlat46.x;
    let x_2221 : f32 = u_xlat46.x;
    u_xlat46.x = ((-(x_2218) * x_2221) + 1.0f);
    let x_2226 : f32 = u_xlat46.x;
    u_xlat46.x = max(x_2226, 0.0f);
    let x_2230 : f32 = u_xlat46.x;
    let x_2232 : f32 = u_xlat46.x;
    u_xlat46.x = (x_2230 * x_2232);
    let x_2236 : f32 = u_xlat46.x;
    let x_2237 : f32 = u_xlat67;
    u_xlat46.x = (x_2236 * x_2237);
    let x_2240 : u32 = u_xlatu65;
    let x_2243 : vec4<f32> = x_2168.x_AdditionalLightsSpotDir[bitcast<i32>(x_2240)];
    let x_2245 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2243.x, x_2243.y, x_2243.z), vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
    let x_2248 : f32 = u_xlat67;
    let x_2249 : u32 = u_xlatu65;
    let x_2252 : f32 = x_2168.x_AdditionalLightsAttenuation[bitcast<i32>(x_2249)].z;
    let x_2254 : u32 = u_xlatu65;
    let x_2257 : f32 = x_2168.x_AdditionalLightsAttenuation[bitcast<i32>(x_2254)].w;
    u_xlat67 = ((x_2248 * x_2252) + x_2257);
    let x_2259 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2259, 0.0f, 1.0f);
    let x_2261 : f32 = u_xlat67;
    let x_2262 : f32 = u_xlat67;
    u_xlat67 = (x_2261 * x_2262);
    let x_2265 : f32 = u_xlat46.x;
    let x_2266 : f32 = u_xlat67;
    u_xlat46.x = (x_2265 * x_2266);
    let x_2270 : u32 = u_xlatu65;
    u_xlatu67 = (x_2270 >> 5u);
    let x_2273 : u32 = u_xlatu65;
    u_xlati68 = (1i << bitcast<u32>((bitcast<i32>(x_2273) & 31i)));
    let x_2279 : i32 = u_xlati68;
    let x_2281 : u32 = u_xlatu67;
    let x_2284 : f32 = x_1675.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2281)].el;
    u_xlati67 = bitcast<i32>((bitcast<u32>(x_2279) & bitcast<u32>(x_2284)));
    let x_2288 : i32 = u_xlati67;
    if ((x_2288 != 0i)) {
      let x_2298 : u32 = u_xlatu65;
      let x_2301 : f32 = x_2297.x_AdditionalLightsLightTypes[bitcast<i32>(x_2298)].el;
      u_xlati67 = i32(x_2301);
      let x_2303 : i32 = u_xlati67;
      u_xlati68 = select(1i, 0i, (x_2303 != 0i));
      let x_2307 : u32 = u_xlatu65;
      u_xlati69 = (bitcast<i32>(x_2307) << bitcast<u32>(2i));
      let x_2310 : i32 = u_xlati68;
      if ((x_2310 != 0i)) {
        let x_2314 : vec3<f32> = vs_TEXCOORD7;
        let x_2316 : i32 = u_xlati69;
        let x_2319 : i32 = u_xlati69;
        let x_2323 : vec4<f32> = x_2297.x_AdditionalLightsWorldToLights[((x_2316 + 1i) / 4i)][((x_2319 + 1i) % 4i)];
        let x_2325 : vec3<f32> = (vec3<f32>(x_2314.y, x_2314.y, x_2314.y) * vec3<f32>(x_2323.x, x_2323.y, x_2323.w));
        let x_2326 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2325.x, x_2325.y, x_2325.z, x_2326.w);
        let x_2328 : i32 = u_xlati69;
        let x_2330 : i32 = u_xlati69;
        let x_2333 : vec4<f32> = x_2297.x_AdditionalLightsWorldToLights[(x_2328 / 4i)][(x_2330 % 4i)];
        let x_2335 : vec3<f32> = vs_TEXCOORD7;
        let x_2338 : vec4<f32> = u_xlat11;
        let x_2340 : vec3<f32> = ((vec3<f32>(x_2333.x, x_2333.y, x_2333.w) * vec3<f32>(x_2335.x, x_2335.x, x_2335.x)) + vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
        let x_2341 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);
        let x_2343 : i32 = u_xlati69;
        let x_2346 : i32 = u_xlati69;
        let x_2350 : vec4<f32> = x_2297.x_AdditionalLightsWorldToLights[((x_2343 + 2i) / 4i)][((x_2346 + 2i) % 4i)];
        let x_2352 : vec3<f32> = vs_TEXCOORD7;
        let x_2355 : vec4<f32> = u_xlat11;
        let x_2357 : vec3<f32> = ((vec3<f32>(x_2350.x, x_2350.y, x_2350.w) * vec3<f32>(x_2352.z, x_2352.z, x_2352.z)) + vec3<f32>(x_2355.x, x_2355.y, x_2355.z));
        let x_2358 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2357.x, x_2357.y, x_2357.z, x_2358.w);
        let x_2360 : vec4<f32> = u_xlat11;
        let x_2362 : i32 = u_xlati69;
        let x_2365 : i32 = u_xlati69;
        let x_2369 : vec4<f32> = x_2297.x_AdditionalLightsWorldToLights[((x_2362 + 3i) / 4i)][((x_2365 + 3i) % 4i)];
        let x_2371 : vec3<f32> = (vec3<f32>(x_2360.x, x_2360.y, x_2360.z) + vec3<f32>(x_2369.x, x_2369.y, x_2369.w));
        let x_2372 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2371.x, x_2371.y, x_2371.z, x_2372.w);
        let x_2374 : vec4<f32> = u_xlat11;
        let x_2376 : vec4<f32> = u_xlat11;
        let x_2378 : vec2<f32> = (vec2<f32>(x_2374.x, x_2374.y) / vec2<f32>(x_2376.z, x_2376.z));
        let x_2379 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2378.x, x_2378.y, x_2379.z, x_2379.w);
        let x_2381 : vec4<f32> = u_xlat11;
        let x_2384 : vec2<f32> = ((vec2<f32>(x_2381.x, x_2381.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2385 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2384.x, x_2384.y, x_2385.z, x_2385.w);
        let x_2387 : vec4<f32> = u_xlat11;
        let x_2391 : vec2<f32> = clamp(vec2<f32>(x_2387.x, x_2387.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2392 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2391.x, x_2391.y, x_2392.z, x_2392.w);
        let x_2394 : u32 = u_xlatu65;
        let x_2397 : vec4<f32> = x_2297.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2394)];
        let x_2399 : vec4<f32> = u_xlat11;
        let x_2402 : u32 = u_xlatu65;
        let x_2405 : vec4<f32> = x_2297.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2402)];
        let x_2407 : vec2<f32> = ((vec2<f32>(x_2397.x, x_2397.y) * vec2<f32>(x_2399.x, x_2399.y)) + vec2<f32>(x_2405.z, x_2405.w));
        let x_2408 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2407.x, x_2407.y, x_2408.z, x_2408.w);
      } else {
        let x_2412 : i32 = u_xlati67;
        u_xlatb67 = (x_2412 == 1i);
        let x_2414 : bool = u_xlatb67;
        u_xlati67 = select(0i, 1i, x_2414);
        let x_2416 : i32 = u_xlati67;
        if ((x_2416 != 0i)) {
          let x_2421 : vec3<f32> = vs_TEXCOORD7;
          let x_2423 : i32 = u_xlati69;
          let x_2426 : i32 = u_xlati69;
          let x_2430 : vec4<f32> = x_2297.x_AdditionalLightsWorldToLights[((x_2423 + 1i) / 4i)][((x_2426 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2421.y, x_2421.y) * vec2<f32>(x_2430.x, x_2430.y));
          let x_2433 : i32 = u_xlati69;
          let x_2435 : i32 = u_xlati69;
          let x_2438 : vec4<f32> = x_2297.x_AdditionalLightsWorldToLights[(x_2433 / 4i)][(x_2435 % 4i)];
          let x_2440 : vec3<f32> = vs_TEXCOORD7;
          let x_2443 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2438.x, x_2438.y) * vec2<f32>(x_2440.x, x_2440.x)) + x_2443);
          let x_2445 : i32 = u_xlati69;
          let x_2448 : i32 = u_xlati69;
          let x_2452 : vec4<f32> = x_2297.x_AdditionalLightsWorldToLights[((x_2445 + 2i) / 4i)][((x_2448 + 2i) % 4i)];
          let x_2454 : vec3<f32> = vs_TEXCOORD7;
          let x_2457 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2452.x, x_2452.y) * vec2<f32>(x_2454.z, x_2454.z)) + x_2457);
          let x_2459 : vec2<f32> = u_xlat51;
          let x_2460 : i32 = u_xlati69;
          let x_2463 : i32 = u_xlati69;
          let x_2467 : vec4<f32> = x_2297.x_AdditionalLightsWorldToLights[((x_2460 + 3i) / 4i)][((x_2463 + 3i) % 4i)];
          u_xlat51 = (x_2459 + vec2<f32>(x_2467.x, x_2467.y));
          let x_2470 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2470 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2473 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2473);
          let x_2475 : u32 = u_xlatu65;
          let x_2478 : vec4<f32> = x_2297.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2475)];
          let x_2480 : vec2<f32> = u_xlat51;
          let x_2482 : u32 = u_xlatu65;
          let x_2485 : vec4<f32> = x_2297.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2482)];
          let x_2487 : vec2<f32> = ((vec2<f32>(x_2478.x, x_2478.y) * x_2480) + vec2<f32>(x_2485.z, x_2485.w));
          let x_2488 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2487.x, x_2487.y, x_2488.z, x_2488.w);
        } else {
          let x_2491 : vec3<f32> = vs_TEXCOORD7;
          let x_2493 : i32 = u_xlati69;
          let x_2496 : i32 = u_xlati69;
          let x_2500 : vec4<f32> = x_2297.x_AdditionalLightsWorldToLights[((x_2493 + 1i) / 4i)][((x_2496 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2491.y, x_2491.y, x_2491.y, x_2491.y) * x_2500);
          let x_2502 : i32 = u_xlati69;
          let x_2504 : i32 = u_xlati69;
          let x_2507 : vec4<f32> = x_2297.x_AdditionalLightsWorldToLights[(x_2502 / 4i)][(x_2504 % 4i)];
          let x_2508 : vec3<f32> = vs_TEXCOORD7;
          let x_2511 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2507 * vec4<f32>(x_2508.x, x_2508.x, x_2508.x, x_2508.x)) + x_2511);
          let x_2513 : i32 = u_xlati69;
          let x_2516 : i32 = u_xlati69;
          let x_2520 : vec4<f32> = x_2297.x_AdditionalLightsWorldToLights[((x_2513 + 2i) / 4i)][((x_2516 + 2i) % 4i)];
          let x_2521 : vec3<f32> = vs_TEXCOORD7;
          let x_2524 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2520 * vec4<f32>(x_2521.z, x_2521.z, x_2521.z, x_2521.z)) + x_2524);
          let x_2526 : vec4<f32> = u_xlat12;
          let x_2527 : i32 = u_xlati69;
          let x_2530 : i32 = u_xlati69;
          let x_2534 : vec4<f32> = x_2297.x_AdditionalLightsWorldToLights[((x_2527 + 3i) / 4i)][((x_2530 + 3i) % 4i)];
          u_xlat12 = (x_2526 + x_2534);
          let x_2536 : vec4<f32> = u_xlat12;
          let x_2538 : vec4<f32> = u_xlat12;
          let x_2540 : vec3<f32> = (vec3<f32>(x_2536.x, x_2536.y, x_2536.z) / vec3<f32>(x_2538.w, x_2538.w, x_2538.w));
          let x_2541 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
          let x_2543 : vec4<f32> = u_xlat12;
          let x_2545 : vec4<f32> = u_xlat12;
          u_xlat67 = dot(vec3<f32>(x_2543.x, x_2543.y, x_2543.z), vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
          let x_2548 : f32 = u_xlat67;
          u_xlat67 = inverseSqrt(x_2548);
          let x_2550 : f32 = u_xlat67;
          let x_2552 : vec4<f32> = u_xlat12;
          let x_2554 : vec3<f32> = (vec3<f32>(x_2550, x_2550, x_2550) * vec3<f32>(x_2552.x, x_2552.y, x_2552.z));
          let x_2555 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2554.x, x_2554.y, x_2554.z, x_2555.w);
          let x_2557 : vec4<f32> = u_xlat12;
          u_xlat67 = dot(abs(vec3<f32>(x_2557.x, x_2557.y, x_2557.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2562 : f32 = u_xlat67;
          u_xlat67 = max(x_2562, 0.000001f);
          let x_2565 : f32 = u_xlat67;
          u_xlat67 = (1.0f / x_2565);
          let x_2567 : f32 = u_xlat67;
          let x_2569 : vec4<f32> = u_xlat12;
          let x_2571 : vec3<f32> = (vec3<f32>(x_2567, x_2567, x_2567) * vec3<f32>(x_2569.z, x_2569.x, x_2569.y));
          let x_2572 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2571.x, x_2571.y, x_2571.z, x_2572.w);
          let x_2575 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2575);
          let x_2579 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2579, 0.0f, 1.0f);
          let x_2583 : vec4<f32> = u_xlat13;
          let x_2586 : vec4<bool> = (vec4<f32>(x_2583.y, x_2583.z, x_2583.y, x_2583.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2586.x, x_2586.y);
          let x_2589 : bool = u_xlatb51.x;
          if (x_2589) {
            let x_2594 : f32 = u_xlat13.x;
            x_2590 = x_2594;
          } else {
            let x_2597 : f32 = u_xlat13.x;
            x_2590 = -(x_2597);
          }
          let x_2599 : f32 = x_2590;
          u_xlat51.x = x_2599;
          let x_2602 : bool = u_xlatb51.y;
          if (x_2602) {
            let x_2607 : f32 = u_xlat13.x;
            x_2603 = x_2607;
          } else {
            let x_2610 : f32 = u_xlat13.x;
            x_2603 = -(x_2610);
          }
          let x_2612 : f32 = x_2603;
          u_xlat51.y = x_2612;
          let x_2614 : vec4<f32> = u_xlat12;
          let x_2616 : f32 = u_xlat67;
          let x_2619 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2614.x, x_2614.y) * vec2<f32>(x_2616, x_2616)) + x_2619);
          let x_2621 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2621 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2624 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_2624, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2628 : u32 = u_xlatu65;
          let x_2631 : vec4<f32> = x_2297.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2628)];
          let x_2633 : vec2<f32> = u_xlat51;
          let x_2635 : u32 = u_xlatu65;
          let x_2638 : vec4<f32> = x_2297.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2635)];
          let x_2640 : vec2<f32> = ((vec2<f32>(x_2631.x, x_2631.y) * x_2633) + vec2<f32>(x_2638.z, x_2638.w));
          let x_2641 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2640.x, x_2640.y, x_2641.z, x_2641.w);
        }
      }
      let x_2648 : vec4<f32> = u_xlat11;
      let x_2651 : f32 = x_44.x_GlobalMipBias.x;
      let x_2652 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2648.x, x_2648.y), x_2651);
      u_xlat11 = x_2652;
      let x_2654 : bool = u_xlatb6.y;
      if (x_2654) {
        let x_2659 : f32 = u_xlat11.w;
        x_2655 = x_2659;
      } else {
        let x_2662 : f32 = u_xlat11.x;
        x_2655 = x_2662;
      }
      let x_2663 : f32 = x_2655;
      u_xlat67 = x_2663;
      let x_2665 : bool = u_xlatb6.x;
      if (x_2665) {
        let x_2669 : vec4<f32> = u_xlat11;
        x_2666 = vec3<f32>(x_2669.x, x_2669.y, x_2669.z);
      } else {
        let x_2672 : f32 = u_xlat67;
        x_2666 = vec3<f32>(x_2672, x_2672, x_2672);
      }
      let x_2674 : vec3<f32> = x_2666;
      let x_2675 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2674.x, x_2674.y, x_2674.z, x_2675.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2681 : vec4<f32> = u_xlat11;
    let x_2683 : u32 = u_xlatu65;
    let x_2686 : vec4<f32> = x_2168.x_AdditionalLightsColor[bitcast<i32>(x_2683)];
    let x_2688 : vec3<f32> = (vec3<f32>(x_2681.x, x_2681.y, x_2681.z) * vec3<f32>(x_2686.x, x_2686.y, x_2686.z));
    let x_2689 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2688.x, x_2688.y, x_2688.z, x_2689.w);
    let x_2691 : vec4<f32> = u_xlat4;
    let x_2693 : vec4<f32> = u_xlat11;
    let x_2695 : vec3<f32> = (vec3<f32>(x_2691.x, x_2691.x, x_2691.x) * vec3<f32>(x_2693.x, x_2693.y, x_2693.z));
    let x_2696 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2695.x, x_2695.y, x_2695.z, x_2696.w);
    let x_2698 : vec4<f32> = u_xlat2;
    let x_2700 : vec4<f32> = u_xlat10;
    u_xlat65 = dot(vec3<f32>(x_2698.x, x_2698.y, x_2698.z), vec3<f32>(x_2700.x, x_2700.y, x_2700.z));
    let x_2703 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2703, 0.0f, 1.0f);
    let x_2705 : f32 = u_xlat65;
    let x_2707 : f32 = u_xlat46.x;
    u_xlat65 = (x_2705 * x_2707);
    let x_2709 : f32 = u_xlat65;
    let x_2711 : vec4<f32> = u_xlat11;
    let x_2713 : vec3<f32> = (vec3<f32>(x_2709, x_2709, x_2709) * vec3<f32>(x_2711.x, x_2711.y, x_2711.z));
    let x_2714 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2713.x, x_2713.y, x_2713.z, x_2714.w);
    let x_2716 : vec4<f32> = u_xlat9;
    let x_2718 : f32 = u_xlat66;
    let x_2721 : vec4<f32> = u_xlat7;
    let x_2723 : vec3<f32> = ((vec3<f32>(x_2716.x, x_2716.y, x_2716.z) * vec3<f32>(x_2718, x_2718, x_2718)) + vec3<f32>(x_2721.x, x_2721.y, x_2721.z));
    let x_2724 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2723.x, x_2723.y, x_2723.z, x_2724.w);
    let x_2726 : vec4<f32> = u_xlat9;
    let x_2728 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2726.x, x_2726.y, x_2726.z), vec3<f32>(x_2728.x, x_2728.y, x_2728.z));
    let x_2731 : f32 = u_xlat65;
    u_xlat65 = max(x_2731, 1.17549435e-37f);
    let x_2733 : f32 = u_xlat65;
    u_xlat65 = inverseSqrt(x_2733);
    let x_2735 : f32 = u_xlat65;
    let x_2737 : vec4<f32> = u_xlat9;
    let x_2739 : vec3<f32> = (vec3<f32>(x_2735, x_2735, x_2735) * vec3<f32>(x_2737.x, x_2737.y, x_2737.z));
    let x_2740 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2739.x, x_2739.y, x_2739.z, x_2740.w);
    let x_2742 : vec4<f32> = u_xlat2;
    let x_2744 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2742.x, x_2742.y, x_2742.z), vec3<f32>(x_2744.x, x_2744.y, x_2744.z));
    let x_2747 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2747, 0.0f, 1.0f);
    let x_2749 : vec4<f32> = u_xlat10;
    let x_2751 : vec4<f32> = u_xlat9;
    u_xlat46.x = dot(vec3<f32>(x_2749.x, x_2749.y, x_2749.z), vec3<f32>(x_2751.x, x_2751.y, x_2751.z));
    let x_2756 : f32 = u_xlat46.x;
    u_xlat46.x = clamp(x_2756, 0.0f, 1.0f);
    let x_2759 : f32 = u_xlat65;
    let x_2760 : f32 = u_xlat65;
    u_xlat65 = (x_2759 * x_2760);
    let x_2762 : f32 = u_xlat65;
    let x_2764 : f32 = u_xlat1.x;
    u_xlat65 = ((x_2762 * x_2764) + 1.000010014f);
    let x_2768 : f32 = u_xlat46.x;
    let x_2770 : f32 = u_xlat46.x;
    u_xlat46.x = (x_2768 * x_2770);
    let x_2773 : f32 = u_xlat65;
    let x_2774 : f32 = u_xlat65;
    u_xlat65 = (x_2773 * x_2774);
    let x_2777 : f32 = u_xlat46.x;
    u_xlat46.x = max(x_2777, 0.100000001f);
    let x_2780 : f32 = u_xlat65;
    let x_2782 : f32 = u_xlat46.x;
    u_xlat65 = (x_2780 * x_2782);
    let x_2784 : f32 = u_xlat61;
    let x_2785 : f32 = u_xlat65;
    u_xlat65 = (x_2784 * x_2785);
    let x_2787 : f32 = u_xlat62;
    let x_2788 : f32 = u_xlat65;
    u_xlat65 = (x_2787 / x_2788);
    let x_2790 : vec4<f32> = u_xlat0;
    let x_2792 : f32 = u_xlat65;
    let x_2795 : vec3<f32> = u_xlat5;
    let x_2796 : vec3<f32> = ((vec3<f32>(x_2790.x, x_2790.y, x_2790.z) * vec3<f32>(x_2792, x_2792, x_2792)) + x_2795);
    let x_2797 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2797.w);
    let x_2799 : vec4<f32> = u_xlat9;
    let x_2801 : vec4<f32> = u_xlat11;
    let x_2804 : vec4<f32> = u_xlat8;
    let x_2806 : vec3<f32> = ((vec3<f32>(x_2799.x, x_2799.y, x_2799.z) * vec3<f32>(x_2801.x, x_2801.y, x_2801.z)) + vec3<f32>(x_2804.x, x_2804.y, x_2804.z));
    let x_2807 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2806.x, x_2806.y, x_2806.z, x_2807.w);

    continuing {
      let x_2809 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2809 + bitcast<u32>(1i));
    }
  }
  let x_2811 : vec3<f32> = u_xlat3;
  let x_2812 : f32 = u_xlat63;
  let x_2815 : vec3<f32> = u_xlat24;
  let x_2816 : vec3<f32> = ((x_2811 * vec3<f32>(x_2812, x_2812, x_2812)) + x_2815);
  let x_2817 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2816.x, x_2816.y, x_2816.z, x_2817.w);
  let x_2819 : vec4<f32> = u_xlat8;
  let x_2821 : vec4<f32> = u_xlat0;
  let x_2823 : vec3<f32> = (vec3<f32>(x_2819.x, x_2819.y, x_2819.z) + vec3<f32>(x_2821.x, x_2821.y, x_2821.z));
  let x_2824 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2823.x, x_2823.y, x_2823.z, x_2824.w);
  let x_2826 : f32 = u_xlat21;
  let x_2827 : f32 = u_xlat21;
  u_xlat60 = (x_2826 * -(x_2827));
  let x_2830 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2830);
  let x_2832 : vec4<f32> = u_xlat0;
  let x_2836 : vec4<f32> = x_44.unity_FogColor;
  let x_2839 : vec3<f32> = (vec3<f32>(x_2832.x, x_2832.y, x_2832.z) + -(vec3<f32>(x_2836.x, x_2836.y, x_2836.z)));
  let x_2840 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2839.x, x_2839.y, x_2839.z, x_2840.w);
  let x_2844 : f32 = u_xlat60;
  let x_2846 : vec4<f32> = u_xlat0;
  let x_2850 : vec4<f32> = x_44.unity_FogColor;
  let x_2852 : vec3<f32> = ((vec3<f32>(x_2844, x_2844, x_2844) * vec3<f32>(x_2846.x, x_2846.y, x_2846.z)) + vec3<f32>(x_2850.x, x_2850.y, x_2850.z));
  let x_2853 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2852.x, x_2852.y, x_2852.z, x_2853.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

