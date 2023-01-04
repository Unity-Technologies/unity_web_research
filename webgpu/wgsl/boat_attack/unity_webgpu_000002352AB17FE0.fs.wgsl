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

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(5) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_414 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1809 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2060 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat41 : vec2<f32>;
  var u_xlat60 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat5 : vec3<f32>;
  var x_188 : f32;
  var x_201 : f32;
  var x_212 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat61 : f32;
  var u_xlat64 : f32;
  var u_xlat65 : f32;
  var u_xlatb64 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
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
  var u_xlat67 : f32;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu41 : u32;
  var u_xlati64 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati41 : i32;
  var u_xlatb0 : bool;
  var x_2276 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_59, x_61);
  u_xlat1 = vec2<f32>(x_62.x, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = x_69.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_65.w, x_65.x, x_65.y, x_65.z) * vec4<f32>(x_73.w, x_73.x, x_73.y, x_73.z));
  let x_83 : vec2<f32> = vs_TEXCOORD0;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_83, x_85);
  u_xlat3 = vec3<f32>(x_86.x, x_86.y, x_86.w);
  let x_90 : f32 = u_xlat3.x;
  let x_93 : f32 = u_xlat3.z;
  u_xlat3.x = (x_90 * x_93);
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat41 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat41;
  let x_107 : vec2<f32> = u_xlat41;
  u_xlat60 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat60;
  u_xlat60 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat60;
  u_xlat60 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat60;
  u_xlat60 = sqrt(x_114);
  let x_116 : f32 = u_xlat60;
  u_xlat60 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat41;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat41 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat23.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat23.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_163 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb23 = (x_163 == 0.0f);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_174 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_169) + x_174);
  let x_177 : vec3<f32> = u_xlat4;
  let x_178 : vec3<f32> = u_xlat4;
  u_xlat43 = dot(x_177, x_178);
  let x_180 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_180);
  let x_182 : f32 = u_xlat43;
  let x_184 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_182, x_182, x_182) * x_184);
  let x_187 : bool = u_xlatb23;
  if (x_187) {
    let x_192 : f32 = u_xlat4.x;
    x_188 = x_192;
  } else {
    let x_197 : f32 = x_44.unity_MatrixV[0i].z;
    x_188 = x_197;
  }
  let x_198 : f32 = x_188;
  u_xlat5.x = x_198;
  let x_200 : bool = u_xlatb23;
  if (x_200) {
    let x_205 : f32 = u_xlat4.y;
    x_201 = x_205;
  } else {
    let x_208 : f32 = x_44.unity_MatrixV[1i].z;
    x_201 = x_208;
  }
  let x_209 : f32 = x_201;
  u_xlat5.y = x_209;
  let x_211 : bool = u_xlatb23;
  if (x_211) {
    let x_216 : f32 = u_xlat4.z;
    x_212 = x_216;
  } else {
    let x_219 : f32 = x_44.unity_MatrixV[2i].z;
    x_212 = x_219;
  }
  let x_220 : f32 = x_212;
  u_xlat5.z = x_220;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  let x_226 : vec4<f32> = vs_TEXCOORD3;
  u_xlat23 = (vec3<f32>(x_223.z, x_223.x, x_223.y) * vec3<f32>(x_226.y, x_226.z, x_226.x));
  let x_229 : vec3<f32> = vs_TEXCOORD2;
  let x_231 : vec4<f32> = vs_TEXCOORD3;
  let x_234 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_229.y, x_229.z, x_229.x) * vec3<f32>(x_231.z, x_231.x, x_231.y)) + -(x_234));
  let x_237 : vec3<f32> = u_xlat23;
  let x_238 : vec4<f32> = vs_TEXCOORD3;
  u_xlat23 = (x_237 * vec3<f32>(x_238.w, x_238.w, x_238.w));
  let x_241 : vec2<f32> = u_xlat41;
  let x_243 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_241.y, x_241.y, x_241.y) * x_243);
  let x_245 : vec2<f32> = u_xlat41;
  let x_247 : vec4<f32> = vs_TEXCOORD3;
  let x_250 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_245.x, x_245.x, x_245.x) * vec3<f32>(x_247.x, x_247.y, x_247.z)) + x_250);
  let x_252 : f32 = u_xlat60;
  let x_254 : vec3<f32> = vs_TEXCOORD2;
  let x_256 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_252, x_252, x_252) * x_254) + x_256);
  let x_258 : vec3<f32> = u_xlat23;
  let x_259 : vec3<f32> = u_xlat23;
  u_xlat60 = dot(x_258, x_259);
  let x_261 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_261);
  let x_263 : f32 = u_xlat60;
  let x_265 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_263, x_263, x_263) * x_265);
  let x_273 : vec2<f32> = vs_TEXCOORD8;
  let x_275 : f32 = x_44.x_GlobalMipBias.x;
  let x_276 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_273, x_275);
  u_xlat4 = vec3<f32>(x_276.x, x_276.y, x_276.z);
  let x_280 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_281 : vec2<f32> = vec2<f32>(x_280.x, x_280.y);
  u_xlat41 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_281.x, x_281.y));
  let x_287 : vec2<f32> = u_xlat41;
  let x_288 : vec4<f32> = hlslcc_FragCoord;
  let x_290 : vec2<f32> = (x_287 * vec2<f32>(x_288.x, x_288.y));
  let x_291 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_290.x, x_290.y, x_291.z, x_291.w);
  let x_294 : f32 = u_xlat6.y;
  let x_296 : f32 = x_44.x_ScaleBiasRt.x;
  let x_299 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_294 * x_296) + x_299);
  let x_301 : f32 = u_xlat60;
  u_xlat6.z = (-(x_301) + 1.0f);
  let x_306 : f32 = u_xlat1.x;
  u_xlat60 = ((-(x_306) * 0.959999979f) + 0.959999979f);
  let x_312 : f32 = u_xlat1.y;
  let x_314 : f32 = x_69.x_Smoothness;
  let x_316 : f32 = u_xlat60;
  u_xlat41.x = ((x_312 * x_314) + -(x_316));
  let x_321 : f32 = u_xlat60;
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat22 = (vec3<f32>(x_321, x_321, x_321) * vec3<f32>(x_323.y, x_323.z, x_323.w));
  let x_326 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = x_69.x_BaseColor;
  let x_334 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_329.x, x_329.y, x_329.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_335 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec2<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat0;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.x, x_337.x) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_345 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_348 : f32 = u_xlat1.y;
  let x_351 : f32 = x_69.x_Smoothness;
  u_xlat60 = ((-(x_348) * x_351) + 1.0f);
  let x_354 : f32 = u_xlat60;
  let x_355 : f32 = u_xlat60;
  u_xlat1.x = (x_354 * x_355);
  let x_359 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_359, 0.0078125f);
  let x_365 : f32 = u_xlat1.x;
  let x_367 : f32 = u_xlat1.x;
  u_xlat21 = (x_365 * x_367);
  let x_370 : f32 = u_xlat41.x;
  u_xlat41.x = (x_370 + 1.0f);
  let x_374 : f32 = u_xlat41.x;
  u_xlat41.x = clamp(x_374, 0.0f, 1.0f);
  let x_379 : f32 = u_xlat1.x;
  u_xlat61 = ((x_379 * 4.0f) + 2.0f);
  let x_389 : vec4<f32> = u_xlat6;
  let x_392 : f32 = x_44.x_GlobalMipBias.x;
  let x_393 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_389.x, x_389.z), x_392);
  u_xlat64 = x_393.x;
  let x_396 : f32 = u_xlat64;
  u_xlat65 = (x_396 + -1.0f);
  let x_400 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_401 : f32 = u_xlat65;
  u_xlat65 = ((x_400 * x_401) + 1.0f);
  let x_405 : f32 = u_xlat3.x;
  let x_406 : f32 = u_xlat64;
  u_xlat3.x = min(x_405, x_406);
  let x_416 : f32 = x_414.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_416);
  let x_418 : bool = u_xlatb64;
  if (x_418) {
    let x_422 : f32 = x_414.x_MainLightShadowParams.y;
    u_xlatb64 = (x_422 == 1.0f);
    let x_424 : bool = u_xlatb64;
    if (x_424) {
      let x_428 : vec4<f32> = vs_TEXCOORD6;
      let x_431 : vec4<f32> = x_414.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_428.x, x_428.y, x_428.x, x_428.y) + x_431);
      let x_434 : vec4<f32> = u_xlat6;
      let x_435 : vec2<f32> = vec2<f32>(x_434.x, x_434.y);
      let x_437 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_435.x, x_435.y, x_437);
      let x_450 : vec3<f32> = txVec0;
      let x_452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_450.xy, x_450.z);
      u_xlat7.x = x_452;
      let x_455 : vec4<f32> = u_xlat6;
      let x_456 : vec2<f32> = vec2<f32>(x_455.z, x_455.w);
      let x_458 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_456.x, x_456.y, x_458);
      let x_465 : vec3<f32> = txVec1;
      let x_467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_465.xy, x_465.z);
      u_xlat7.y = x_467;
      let x_469 : vec4<f32> = vs_TEXCOORD6;
      let x_472 : vec4<f32> = x_414.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_469.x, x_469.y, x_469.x, x_469.y) + x_472);
      let x_475 : vec4<f32> = u_xlat6;
      let x_476 : vec2<f32> = vec2<f32>(x_475.x, x_475.y);
      let x_478 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_476.x, x_476.y, x_478);
      let x_485 : vec3<f32> = txVec2;
      let x_487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_485.xy, x_485.z);
      u_xlat7.z = x_487;
      let x_490 : vec4<f32> = u_xlat6;
      let x_491 : vec2<f32> = vec2<f32>(x_490.z, x_490.w);
      let x_493 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_491.x, x_491.y, x_493);
      let x_500 : vec3<f32> = txVec3;
      let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_500.xy, x_500.z);
      u_xlat7.w = x_502;
      let x_504 : vec4<f32> = u_xlat7;
      u_xlat64 = dot(x_504, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_511 : f32 = x_414.x_MainLightShadowParams.y;
      u_xlatb6 = (x_511 == 2.0f);
      let x_513 : bool = u_xlatb6;
      if (x_513) {
        let x_516 : vec4<f32> = vs_TEXCOORD6;
        let x_519 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_524 : vec2<f32> = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_519.z, x_519.w)) + vec2<f32>(0.5f, 0.5f));
        let x_525 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
        let x_527 : vec4<f32> = u_xlat6;
        let x_529 : vec2<f32> = floor(vec2<f32>(x_527.x, x_527.y));
        let x_530 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_533 : vec4<f32> = vs_TEXCOORD6;
        let x_536 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_539 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_533.x, x_533.y) * vec2<f32>(x_536.z, x_536.w)) + -(vec2<f32>(x_539.x, x_539.y)));
        let x_543 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_543.x, x_543.x, x_543.y, x_543.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_548 : vec4<f32> = u_xlat7;
        let x_550 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_548.x, x_548.x, x_548.z, x_548.z) * vec4<f32>(x_550.x, x_550.x, x_550.z, x_550.z));
        let x_553 : vec4<f32> = u_xlat8;
        let x_557 : vec2<f32> = (vec2<f32>(x_553.y, x_553.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_558 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_557.x, x_558.y, x_557.y, x_558.w);
        let x_560 : vec4<f32> = u_xlat8;
        let x_563 : vec2<f32> = u_xlat46;
        let x_565 : vec2<f32> = ((vec2<f32>(x_560.x, x_560.z) * vec2<f32>(0.5f, 0.5f)) + -(x_563));
        let x_566 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
        let x_569 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_569) + vec2<f32>(1.0f, 1.0f));
        let x_573 : vec2<f32> = u_xlat46;
        let x_575 : vec2<f32> = min(x_573, vec2<f32>(0.0f, 0.0f));
        let x_576 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
        let x_578 : vec4<f32> = u_xlat9;
        let x_581 : vec4<f32> = u_xlat9;
        let x_584 : vec2<f32> = u_xlat48;
        let x_585 : vec2<f32> = ((-(vec2<f32>(x_578.x, x_578.y)) * vec2<f32>(x_581.x, x_581.y)) + x_584);
        let x_586 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
        let x_588 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_588, vec2<f32>(0.0f, 0.0f));
        let x_590 : vec2<f32> = u_xlat46;
        let x_592 : vec2<f32> = u_xlat46;
        let x_594 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_590) * x_592) + vec2<f32>(x_594.y, x_594.w));
        let x_597 : vec4<f32> = u_xlat9;
        let x_599 : vec2<f32> = (vec2<f32>(x_597.x, x_597.y) + vec2<f32>(1.0f, 1.0f));
        let x_600 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_602 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_602 + vec2<f32>(1.0f, 1.0f));
        let x_605 : vec4<f32> = u_xlat8;
        let x_609 : vec2<f32> = (vec2<f32>(x_605.x, x_605.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_610 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
        let x_612 : vec2<f32> = u_xlat48;
        let x_613 : vec2<f32> = (x_612 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_614 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
        let x_616 : vec4<f32> = u_xlat9;
        let x_618 : vec2<f32> = (vec2<f32>(x_616.x, x_616.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_619 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
        let x_622 : vec2<f32> = u_xlat46;
        let x_623 : vec2<f32> = (x_622 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_624 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_626 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_626.y, x_626.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_630 : f32 = u_xlat9.x;
        u_xlat10.z = x_630;
        let x_633 : f32 = u_xlat46.x;
        u_xlat10.w = x_633;
        let x_636 : f32 = u_xlat11.x;
        u_xlat8.z = x_636;
        let x_639 : f32 = u_xlat7.x;
        u_xlat8.w = x_639;
        let x_642 : vec4<f32> = u_xlat8;
        let x_644 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_642.z, x_642.w, x_642.x, x_642.z) + vec4<f32>(x_644.z, x_644.w, x_644.x, x_644.z));
        let x_648 : f32 = u_xlat10.y;
        u_xlat9.z = x_648;
        let x_651 : f32 = u_xlat46.y;
        u_xlat9.w = x_651;
        let x_654 : f32 = u_xlat8.y;
        u_xlat11.z = x_654;
        let x_657 : f32 = u_xlat7.z;
        u_xlat11.w = x_657;
        let x_659 : vec4<f32> = u_xlat9;
        let x_661 : vec4<f32> = u_xlat11;
        let x_663 : vec3<f32> = (vec3<f32>(x_659.z, x_659.y, x_659.w) + vec3<f32>(x_661.z, x_661.y, x_661.w));
        let x_664 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
        let x_666 : vec4<f32> = u_xlat8;
        let x_668 : vec4<f32> = u_xlat12;
        let x_670 : vec3<f32> = (vec3<f32>(x_666.x, x_666.z, x_666.w) / vec3<f32>(x_668.z, x_668.w, x_668.y));
        let x_671 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
        let x_673 : vec4<f32> = u_xlat8;
        let x_679 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_680 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
        let x_682 : vec4<f32> = u_xlat11;
        let x_684 : vec4<f32> = u_xlat7;
        let x_686 : vec3<f32> = (vec3<f32>(x_682.z, x_682.y, x_682.w) / vec3<f32>(x_684.x, x_684.y, x_684.z));
        let x_687 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
        let x_689 : vec4<f32> = u_xlat9;
        let x_691 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_692 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
        let x_694 : vec4<f32> = u_xlat8;
        let x_697 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_699 : vec3<f32> = (vec3<f32>(x_694.y, x_694.x, x_694.z) * vec3<f32>(x_697.x, x_697.x, x_697.x));
        let x_700 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
        let x_702 : vec4<f32> = u_xlat9;
        let x_705 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_707 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(x_705.y, x_705.y, x_705.y));
        let x_708 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
        let x_711 : f32 = u_xlat9.x;
        u_xlat8.w = x_711;
        let x_713 : vec4<f32> = u_xlat6;
        let x_716 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_719 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.y) * vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.y)) + vec4<f32>(x_719.y, x_719.w, x_719.x, x_719.w));
        let x_722 : vec4<f32> = u_xlat6;
        let x_725 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_728 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_722.x, x_722.y) * vec2<f32>(x_725.x, x_725.y)) + vec2<f32>(x_728.z, x_728.w));
        let x_732 : f32 = u_xlat8.y;
        u_xlat9.w = x_732;
        let x_734 : vec4<f32> = u_xlat9;
        let x_735 : vec2<f32> = vec2<f32>(x_734.y, x_734.z);
        let x_736 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_736.x, x_735.x, x_736.z, x_735.y);
        let x_738 : vec4<f32> = u_xlat6;
        let x_741 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_738.x, x_738.y, x_738.x, x_738.y) * vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y)) + vec4<f32>(x_744.x, x_744.y, x_744.z, x_744.y));
        let x_747 : vec4<f32> = u_xlat6;
        let x_750 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_753 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y) * vec4<f32>(x_750.x, x_750.y, x_750.x, x_750.y)) + vec4<f32>(x_753.w, x_753.y, x_753.w, x_753.z));
        let x_756 : vec4<f32> = u_xlat6;
        let x_759 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_762 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_756.x, x_756.y, x_756.x, x_756.y) * vec4<f32>(x_759.x, x_759.y, x_759.x, x_759.y)) + vec4<f32>(x_762.x, x_762.w, x_762.z, x_762.w));
        let x_766 : vec4<f32> = u_xlat7;
        let x_768 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_766.x, x_766.x, x_766.x, x_766.y) * vec4<f32>(x_768.z, x_768.w, x_768.y, x_768.z));
        let x_772 : vec4<f32> = u_xlat7;
        let x_774 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_772.y, x_772.y, x_772.z, x_772.z) * x_774);
        let x_777 : f32 = u_xlat7.z;
        let x_779 : f32 = u_xlat12.y;
        u_xlat6.x = (x_777 * x_779);
        let x_783 : vec4<f32> = u_xlat10;
        let x_784 : vec2<f32> = vec2<f32>(x_783.x, x_783.y);
        let x_786 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_784.x, x_784.y, x_786);
        let x_794 : vec3<f32> = txVec4;
        let x_796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_794.xy, x_794.z);
        u_xlat26 = x_796;
        let x_798 : vec4<f32> = u_xlat10;
        let x_799 : vec2<f32> = vec2<f32>(x_798.z, x_798.w);
        let x_801 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_799.x, x_799.y, x_801);
        let x_808 : vec3<f32> = txVec5;
        let x_810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_808.xy, x_808.z);
        u_xlat7.x = x_810;
        let x_813 : f32 = u_xlat7.x;
        let x_815 : f32 = u_xlat13.y;
        u_xlat7.x = (x_813 * x_815);
        let x_819 : f32 = u_xlat13.x;
        let x_820 : f32 = u_xlat26;
        let x_823 : f32 = u_xlat7.x;
        u_xlat26 = ((x_819 * x_820) + x_823);
        let x_826 : vec2<f32> = u_xlat46;
        let x_828 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_826.x, x_826.y, x_828);
        let x_835 : vec3<f32> = txVec6;
        let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_835.xy, x_835.z);
        u_xlat46.x = x_837;
        let x_840 : f32 = u_xlat13.z;
        let x_842 : f32 = u_xlat46.x;
        let x_844 : f32 = u_xlat26;
        u_xlat26 = ((x_840 * x_842) + x_844);
        let x_847 : vec4<f32> = u_xlat9;
        let x_848 : vec2<f32> = vec2<f32>(x_847.x, x_847.y);
        let x_850 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_848.x, x_848.y, x_850);
        let x_857 : vec3<f32> = txVec7;
        let x_859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_857.xy, x_857.z);
        u_xlat46.x = x_859;
        let x_862 : f32 = u_xlat13.w;
        let x_864 : f32 = u_xlat46.x;
        let x_866 : f32 = u_xlat26;
        u_xlat26 = ((x_862 * x_864) + x_866);
        let x_869 : vec4<f32> = u_xlat11;
        let x_870 : vec2<f32> = vec2<f32>(x_869.x, x_869.y);
        let x_872 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_870.x, x_870.y, x_872);
        let x_879 : vec3<f32> = txVec8;
        let x_881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_879.xy, x_879.z);
        u_xlat46.x = x_881;
        let x_884 : f32 = u_xlat14.x;
        let x_886 : f32 = u_xlat46.x;
        let x_888 : f32 = u_xlat26;
        u_xlat26 = ((x_884 * x_886) + x_888);
        let x_891 : vec4<f32> = u_xlat11;
        let x_892 : vec2<f32> = vec2<f32>(x_891.z, x_891.w);
        let x_894 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_892.x, x_892.y, x_894);
        let x_901 : vec3<f32> = txVec9;
        let x_903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_901.xy, x_901.z);
        u_xlat46.x = x_903;
        let x_906 : f32 = u_xlat14.y;
        let x_908 : f32 = u_xlat46.x;
        let x_910 : f32 = u_xlat26;
        u_xlat26 = ((x_906 * x_908) + x_910);
        let x_913 : vec4<f32> = u_xlat9;
        let x_914 : vec2<f32> = vec2<f32>(x_913.z, x_913.w);
        let x_916 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_914.x, x_914.y, x_916);
        let x_923 : vec3<f32> = txVec10;
        let x_925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_923.xy, x_923.z);
        u_xlat46.x = x_925;
        let x_928 : f32 = u_xlat14.z;
        let x_930 : f32 = u_xlat46.x;
        let x_932 : f32 = u_xlat26;
        u_xlat26 = ((x_928 * x_930) + x_932);
        let x_935 : vec4<f32> = u_xlat8;
        let x_936 : vec2<f32> = vec2<f32>(x_935.x, x_935.y);
        let x_938 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_936.x, x_936.y, x_938);
        let x_945 : vec3<f32> = txVec11;
        let x_947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_945.xy, x_945.z);
        u_xlat46.x = x_947;
        let x_950 : f32 = u_xlat14.w;
        let x_952 : f32 = u_xlat46.x;
        let x_954 : f32 = u_xlat26;
        u_xlat26 = ((x_950 * x_952) + x_954);
        let x_957 : vec4<f32> = u_xlat8;
        let x_958 : vec2<f32> = vec2<f32>(x_957.z, x_957.w);
        let x_960 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_958.x, x_958.y, x_960);
        let x_967 : vec3<f32> = txVec12;
        let x_969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_967.xy, x_967.z);
        u_xlat46.x = x_969;
        let x_972 : f32 = u_xlat6.x;
        let x_974 : f32 = u_xlat46.x;
        let x_976 : f32 = u_xlat26;
        u_xlat64 = ((x_972 * x_974) + x_976);
      } else {
        let x_979 : vec4<f32> = vs_TEXCOORD6;
        let x_982 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_985 : vec2<f32> = ((vec2<f32>(x_979.x, x_979.y) * vec2<f32>(x_982.z, x_982.w)) + vec2<f32>(0.5f, 0.5f));
        let x_986 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_985.x, x_985.y, x_986.z, x_986.w);
        let x_988 : vec4<f32> = u_xlat6;
        let x_990 : vec2<f32> = floor(vec2<f32>(x_988.x, x_988.y));
        let x_991 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_990.x, x_990.y, x_991.z, x_991.w);
        let x_993 : vec4<f32> = vs_TEXCOORD6;
        let x_996 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_999 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_993.x, x_993.y) * vec2<f32>(x_996.z, x_996.w)) + -(vec2<f32>(x_999.x, x_999.y)));
        let x_1003 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1003.x, x_1003.x, x_1003.y, x_1003.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1006 : vec4<f32> = u_xlat7;
        let x_1008 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1006.x, x_1006.x, x_1006.z, x_1006.z) * vec4<f32>(x_1008.x, x_1008.x, x_1008.z, x_1008.z));
        let x_1011 : vec4<f32> = u_xlat8;
        let x_1015 : vec2<f32> = (vec2<f32>(x_1011.y, x_1011.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1016 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1016.x, x_1015.x, x_1016.z, x_1015.y);
        let x_1018 : vec4<f32> = u_xlat8;
        let x_1021 : vec2<f32> = u_xlat46;
        let x_1023 : vec2<f32> = ((vec2<f32>(x_1018.x, x_1018.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1021));
        let x_1024 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1023.x, x_1024.y, x_1023.y, x_1024.w);
        let x_1026 : vec2<f32> = u_xlat46;
        let x_1028 : vec2<f32> = (-(x_1026) + vec2<f32>(1.0f, 1.0f));
        let x_1029 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1031 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1031, vec2<f32>(0.0f, 0.0f));
        let x_1033 : vec2<f32> = u_xlat48;
        let x_1035 : vec2<f32> = u_xlat48;
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1039 : vec2<f32> = ((-(x_1033) * x_1035) + vec2<f32>(x_1037.x, x_1037.y));
        let x_1040 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1039.x, x_1039.y, x_1040.z, x_1040.w);
        let x_1042 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1042, vec2<f32>(0.0f, 0.0f));
        let x_1045 : vec2<f32> = u_xlat48;
        let x_1047 : vec2<f32> = u_xlat48;
        let x_1049 : vec4<f32> = u_xlat7;
        let x_1051 : vec2<f32> = ((-(x_1045) * x_1047) + vec2<f32>(x_1049.y, x_1049.w));
        let x_1052 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1051.x, x_1052.y, x_1051.y);
        let x_1054 : vec4<f32> = u_xlat8;
        let x_1056 : vec2<f32> = (vec2<f32>(x_1054.x, x_1054.y) + vec2<f32>(2.0f, 2.0f));
        let x_1057 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1059 : vec3<f32> = u_xlat27;
        let x_1061 : vec2<f32> = (vec2<f32>(x_1059.x, x_1059.z) + vec2<f32>(2.0f, 2.0f));
        let x_1062 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1062.x, x_1061.x, x_1062.z, x_1061.y);
        let x_1065 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1065 * 0.081632003f);
        let x_1069 : vec4<f32> = u_xlat7;
        let x_1072 : vec3<f32> = (vec3<f32>(x_1069.z, x_1069.x, x_1069.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1073 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
        let x_1075 : vec4<f32> = u_xlat8;
        let x_1078 : vec2<f32> = (vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1079 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1078.x, x_1078.y, x_1079.z, x_1079.w);
        let x_1082 : f32 = u_xlat11.y;
        u_xlat10.x = x_1082;
        let x_1084 : vec2<f32> = u_xlat46;
        let x_1091 : vec2<f32> = ((vec2<f32>(x_1084.x, x_1084.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1092 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1092.x, x_1091.x, x_1092.z, x_1091.y);
        let x_1094 : vec2<f32> = u_xlat46;
        let x_1098 : vec2<f32> = ((vec2<f32>(x_1094.x, x_1094.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1099 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1098.x, x_1099.y, x_1098.y, x_1099.w);
        let x_1102 : f32 = u_xlat7.x;
        u_xlat8.y = x_1102;
        let x_1105 : f32 = u_xlat9.y;
        u_xlat8.w = x_1105;
        let x_1107 : vec4<f32> = u_xlat8;
        let x_1108 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1107 + x_1108);
        let x_1110 : vec2<f32> = u_xlat46;
        let x_1113 : vec2<f32> = ((vec2<f32>(x_1110.y, x_1110.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1114 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1114.x, x_1113.x, x_1114.z, x_1113.y);
        let x_1116 : vec2<f32> = u_xlat46;
        let x_1119 : vec2<f32> = ((vec2<f32>(x_1116.y, x_1116.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1120 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1119.x, x_1120.y, x_1119.y, x_1120.w);
        let x_1123 : f32 = u_xlat7.y;
        u_xlat9.y = x_1123;
        let x_1125 : vec4<f32> = u_xlat9;
        let x_1126 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1125 + x_1126);
        let x_1128 : vec4<f32> = u_xlat8;
        let x_1129 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1128 / x_1129);
        let x_1131 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1131 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1137 : vec4<f32> = u_xlat9;
        let x_1138 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1137 / x_1138);
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1140 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1142 : vec4<f32> = u_xlat8;
        let x_1145 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1142.w, x_1142.x, x_1142.y, x_1142.z) * vec4<f32>(x_1145.x, x_1145.x, x_1145.x, x_1145.x));
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1151 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1148.x, x_1148.w, x_1148.y, x_1148.z) * vec4<f32>(x_1151.y, x_1151.y, x_1151.y, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat8;
        let x_1155 : vec3<f32> = vec3<f32>(x_1154.y, x_1154.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1155.x, x_1156.y, x_1155.y, x_1155.z);
        let x_1159 : f32 = u_xlat9.x;
        u_xlat11.y = x_1159;
        let x_1161 : vec4<f32> = u_xlat6;
        let x_1164 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1161.x, x_1161.y, x_1161.x, x_1161.y) * vec4<f32>(x_1164.x, x_1164.y, x_1164.x, x_1164.y)) + vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1167.y));
        let x_1170 : vec4<f32> = u_xlat6;
        let x_1173 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1176 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1170.x, x_1170.y) * vec2<f32>(x_1173.x, x_1173.y)) + vec2<f32>(x_1176.w, x_1176.y));
        let x_1180 : f32 = u_xlat11.y;
        u_xlat8.y = x_1180;
        let x_1183 : f32 = u_xlat9.z;
        u_xlat11.y = x_1183;
        let x_1185 : vec4<f32> = u_xlat6;
        let x_1188 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1191 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.y) * vec4<f32>(x_1188.x, x_1188.y, x_1188.x, x_1188.y)) + vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1191.y));
        let x_1194 : vec4<f32> = u_xlat6;
        let x_1197 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1200 : vec4<f32> = u_xlat11;
        let x_1202 : vec2<f32> = ((vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(x_1197.x, x_1197.y)) + vec2<f32>(x_1200.w, x_1200.y));
        let x_1203 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1202.x, x_1202.y, x_1203.z, x_1203.w);
        let x_1206 : f32 = u_xlat11.y;
        u_xlat8.z = x_1206;
        let x_1209 : vec4<f32> = u_xlat6;
        let x_1212 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1215 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.y) * vec4<f32>(x_1212.x, x_1212.y, x_1212.x, x_1212.y)) + vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.z));
        let x_1219 : f32 = u_xlat9.w;
        u_xlat11.y = x_1219;
        let x_1222 : vec4<f32> = u_xlat6;
        let x_1225 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1228 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1222.x, x_1222.y, x_1222.x, x_1222.y) * vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.y)) + vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1228.y));
        let x_1232 : vec4<f32> = u_xlat6;
        let x_1235 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1238 : vec4<f32> = u_xlat11;
        let x_1240 : vec2<f32> = ((vec2<f32>(x_1232.x, x_1232.y) * vec2<f32>(x_1235.x, x_1235.y)) + vec2<f32>(x_1238.w, x_1238.y));
        let x_1241 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1240.x, x_1240.y, x_1241.z);
        let x_1244 : f32 = u_xlat11.y;
        u_xlat8.w = x_1244;
        let x_1247 : vec4<f32> = u_xlat6;
        let x_1250 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1253 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1247.x, x_1247.y) * vec2<f32>(x_1250.x, x_1250.y)) + vec2<f32>(x_1253.x, x_1253.w));
        let x_1256 : vec4<f32> = u_xlat11;
        let x_1257 : vec3<f32> = vec3<f32>(x_1256.x, x_1256.z, x_1256.w);
        let x_1258 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1257.x, x_1258.y, x_1257.y, x_1257.z);
        let x_1260 : vec4<f32> = u_xlat6;
        let x_1263 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1266 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1260.x, x_1260.y, x_1260.x, x_1260.y) * vec4<f32>(x_1263.x, x_1263.y, x_1263.x, x_1263.y)) + vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1266.y));
        let x_1270 : vec4<f32> = u_xlat6;
        let x_1273 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1276 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1270.x, x_1270.y) * vec2<f32>(x_1273.x, x_1273.y)) + vec2<f32>(x_1276.w, x_1276.y));
        let x_1280 : f32 = u_xlat8.x;
        u_xlat9.x = x_1280;
        let x_1282 : vec4<f32> = u_xlat6;
        let x_1285 : vec4<f32> = x_414.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat9;
        let x_1290 : vec2<f32> = ((vec2<f32>(x_1282.x, x_1282.y) * vec2<f32>(x_1285.x, x_1285.y)) + vec2<f32>(x_1288.x, x_1288.y));
        let x_1291 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1290.x, x_1290.y, x_1291.z, x_1291.w);
        let x_1294 : vec4<f32> = u_xlat7;
        let x_1296 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1294.x, x_1294.x, x_1294.x, x_1294.x) * x_1296);
        let x_1299 : vec4<f32> = u_xlat7;
        let x_1301 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1299.y, x_1299.y, x_1299.y, x_1299.y) * x_1301);
        let x_1304 : vec4<f32> = u_xlat7;
        let x_1306 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1304.z, x_1304.z, x_1304.z, x_1304.z) * x_1306);
        let x_1308 : vec4<f32> = u_xlat7;
        let x_1310 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1308.w, x_1308.w, x_1308.w, x_1308.w) * x_1310);
        let x_1313 : vec4<f32> = u_xlat12;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.x, x_1313.y);
        let x_1316 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec13;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1323.xy, x_1323.z);
        u_xlat8.x = x_1325;
        let x_1328 : vec4<f32> = u_xlat12;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.z, x_1328.w);
        let x_1331 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1339 : vec3<f32> = txVec14;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1339.xy, x_1339.z);
        u_xlat68 = x_1341;
        let x_1342 : f32 = u_xlat68;
        let x_1344 : f32 = u_xlat17.y;
        u_xlat68 = (x_1342 * x_1344);
        let x_1347 : f32 = u_xlat17.x;
        let x_1349 : f32 = u_xlat8.x;
        let x_1351 : f32 = u_xlat68;
        u_xlat8.x = ((x_1347 * x_1349) + x_1351);
        let x_1355 : vec2<f32> = u_xlat46;
        let x_1357 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec15;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1364.xy, x_1364.z);
        u_xlat46.x = x_1366;
        let x_1369 : f32 = u_xlat17.z;
        let x_1371 : f32 = u_xlat46.x;
        let x_1374 : f32 = u_xlat8.x;
        u_xlat46.x = ((x_1369 * x_1371) + x_1374);
        let x_1378 : vec4<f32> = u_xlat15;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.x, x_1378.y);
        let x_1381 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1389 : vec3<f32> = txVec16;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1389.xy, x_1389.z);
        u_xlat66 = x_1391;
        let x_1393 : f32 = u_xlat17.w;
        let x_1394 : f32 = u_xlat66;
        let x_1397 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1393 * x_1394) + x_1397);
        let x_1401 : vec4<f32> = u_xlat13;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.x, x_1401.y);
        let x_1404 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec17;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1411.xy, x_1411.z);
        u_xlat66 = x_1413;
        let x_1415 : f32 = u_xlat18.x;
        let x_1416 : f32 = u_xlat66;
        let x_1419 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1415 * x_1416) + x_1419);
        let x_1423 : vec4<f32> = u_xlat13;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.z, x_1423.w);
        let x_1426 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec18;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1433.xy, x_1433.z);
        u_xlat66 = x_1435;
        let x_1437 : f32 = u_xlat18.y;
        let x_1438 : f32 = u_xlat66;
        let x_1441 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1437 * x_1438) + x_1441);
        let x_1445 : vec4<f32> = u_xlat14;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.x, x_1445.y);
        let x_1448 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec19;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1455.xy, x_1455.z);
        u_xlat66 = x_1457;
        let x_1459 : f32 = u_xlat18.z;
        let x_1460 : f32 = u_xlat66;
        let x_1463 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1459 * x_1460) + x_1463);
        let x_1467 : vec4<f32> = u_xlat15;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.z, x_1467.w);
        let x_1470 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec20;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1477.xy, x_1477.z);
        u_xlat66 = x_1479;
        let x_1481 : f32 = u_xlat18.w;
        let x_1482 : f32 = u_xlat66;
        let x_1485 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1481 * x_1482) + x_1485);
        let x_1489 : vec4<f32> = u_xlat16;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
        let x_1492 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec21;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1499.xy, x_1499.z);
        u_xlat66 = x_1501;
        let x_1503 : f32 = u_xlat19.x;
        let x_1504 : f32 = u_xlat66;
        let x_1507 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1503 * x_1504) + x_1507);
        let x_1511 : vec4<f32> = u_xlat16;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.z, x_1511.w);
        let x_1514 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec22;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1521.xy, x_1521.z);
        u_xlat66 = x_1523;
        let x_1525 : f32 = u_xlat19.y;
        let x_1526 : f32 = u_xlat66;
        let x_1529 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1525 * x_1526) + x_1529);
        let x_1533 : vec3<f32> = u_xlat28;
        let x_1534 : vec2<f32> = vec2<f32>(x_1533.x, x_1533.y);
        let x_1536 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1534.x, x_1534.y, x_1536);
        let x_1543 : vec3<f32> = txVec23;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1543.xy, x_1543.z);
        u_xlat66 = x_1545;
        let x_1547 : f32 = u_xlat19.z;
        let x_1548 : f32 = u_xlat66;
        let x_1551 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1547 * x_1548) + x_1551);
        let x_1555 : vec2<f32> = u_xlat54;
        let x_1557 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec24;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1564.xy, x_1564.z);
        u_xlat66 = x_1566;
        let x_1568 : f32 = u_xlat19.w;
        let x_1569 : f32 = u_xlat66;
        let x_1572 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1568 * x_1569) + x_1572);
        let x_1576 : vec4<f32> = u_xlat11;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.x, x_1576.y);
        let x_1579 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec25;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1586.xy, x_1586.z);
        u_xlat66 = x_1588;
        let x_1590 : f32 = u_xlat7.x;
        let x_1591 : f32 = u_xlat66;
        let x_1594 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1590 * x_1591) + x_1594);
        let x_1598 : vec4<f32> = u_xlat11;
        let x_1599 : vec2<f32> = vec2<f32>(x_1598.z, x_1598.w);
        let x_1601 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
        let x_1608 : vec3<f32> = txVec26;
        let x_1610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1608.xy, x_1608.z);
        u_xlat66 = x_1610;
        let x_1612 : f32 = u_xlat7.y;
        let x_1613 : f32 = u_xlat66;
        let x_1616 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1612 * x_1613) + x_1616);
        let x_1620 : vec2<f32> = u_xlat49;
        let x_1622 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec27;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1629.xy, x_1629.z);
        u_xlat66 = x_1631;
        let x_1633 : f32 = u_xlat7.z;
        let x_1634 : f32 = u_xlat66;
        let x_1637 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1633 * x_1634) + x_1637);
        let x_1641 : vec4<f32> = u_xlat6;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.x, x_1641.y);
        let x_1644 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec28;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1651.xy, x_1651.z);
        u_xlat6.x = x_1653;
        let x_1656 : f32 = u_xlat7.w;
        let x_1658 : f32 = u_xlat6.x;
        let x_1661 : f32 = u_xlat46.x;
        u_xlat64 = ((x_1656 * x_1658) + x_1661);
      }
    }
  } else {
    let x_1665 : vec4<f32> = vs_TEXCOORD6;
    let x_1666 : vec2<f32> = vec2<f32>(x_1665.x, x_1665.y);
    let x_1668 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
    let x_1675 : vec3<f32> = txVec29;
    let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1675.xy, x_1675.z);
    u_xlat64 = x_1677;
  }
  let x_1679 : f32 = x_414.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1679) + 1.0f);
  let x_1683 : f32 = u_xlat64;
  let x_1685 : f32 = x_414.x_MainLightShadowParams.x;
  let x_1688 : f32 = u_xlat6.x;
  u_xlat64 = ((x_1683 * x_1685) + x_1688);
  let x_1691 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_1691);
  let x_1695 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_1695 >= 1.0f);
  let x_1697 : bool = u_xlatb26;
  let x_1698 : bool = u_xlatb6;
  u_xlatb6 = (x_1697 | x_1698);
  let x_1700 : bool = u_xlatb6;
  let x_1701 : f32 = u_xlat64;
  u_xlat64 = select(x_1701, 1.0f, x_1700);
  let x_1703 : vec3<f32> = vs_TEXCOORD1;
  let x_1705 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1707 : vec3<f32> = (x_1703 + -(x_1705));
  let x_1708 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1707.x, x_1707.y, x_1707.z, x_1708.w);
  let x_1710 : vec4<f32> = u_xlat6;
  let x_1712 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1710.x, x_1710.y, x_1710.z), vec3<f32>(x_1712.x, x_1712.y, x_1712.z));
  let x_1717 : f32 = u_xlat6.x;
  let x_1719 : f32 = x_414.x_MainLightShadowParams.z;
  let x_1722 : f32 = x_414.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1717 * x_1719) + x_1722);
  let x_1726 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1726, 0.0f, 1.0f);
  let x_1729 : f32 = u_xlat64;
  u_xlat26 = (-(x_1729) + 1.0f);
  let x_1733 : f32 = u_xlat6.x;
  let x_1734 : f32 = u_xlat26;
  let x_1736 : f32 = u_xlat64;
  u_xlat64 = ((x_1733 * x_1734) + x_1736);
  let x_1738 : f32 = u_xlat65;
  let x_1742 : vec4<f32> = x_44.x_MainLightColor;
  let x_1744 : vec3<f32> = (vec3<f32>(x_1738, x_1738, x_1738) * vec3<f32>(x_1742.x, x_1742.y, x_1742.z));
  let x_1745 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1744.x, x_1744.y, x_1744.z, x_1745.w);
  let x_1747 : vec3<f32> = u_xlat5;
  let x_1749 : vec3<f32> = u_xlat23;
  u_xlat66 = dot(-(x_1747), x_1749);
  let x_1751 : f32 = u_xlat66;
  let x_1752 : f32 = u_xlat66;
  u_xlat66 = (x_1751 + x_1752);
  let x_1754 : vec3<f32> = u_xlat23;
  let x_1755 : f32 = u_xlat66;
  let x_1759 : vec3<f32> = u_xlat5;
  let x_1761 : vec3<f32> = ((x_1754 * -(vec3<f32>(x_1755, x_1755, x_1755))) + -(x_1759));
  let x_1762 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1761.x, x_1761.y, x_1761.z, x_1762.w);
  let x_1764 : vec3<f32> = u_xlat23;
  let x_1765 : vec3<f32> = u_xlat5;
  u_xlat66 = dot(x_1764, x_1765);
  let x_1767 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1767, 0.0f, 1.0f);
  let x_1769 : f32 = u_xlat66;
  u_xlat66 = (-(x_1769) + 1.0f);
  let x_1772 : f32 = u_xlat66;
  let x_1773 : f32 = u_xlat66;
  u_xlat66 = (x_1772 * x_1773);
  let x_1775 : f32 = u_xlat66;
  let x_1776 : f32 = u_xlat66;
  u_xlat66 = (x_1775 * x_1776);
  let x_1779 : f32 = u_xlat60;
  u_xlat67 = ((-(x_1779) * 0.699999988f) + 1.700000048f);
  let x_1785 : f32 = u_xlat60;
  let x_1786 : f32 = u_xlat67;
  u_xlat60 = (x_1785 * x_1786);
  let x_1788 : f32 = u_xlat60;
  u_xlat60 = (x_1788 * 6.0f);
  let x_1799 : vec4<f32> = u_xlat7;
  let x_1801 : f32 = u_xlat60;
  let x_1802 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1799.x, x_1799.y, x_1799.z), x_1801);
  u_xlat7 = x_1802;
  let x_1804 : f32 = u_xlat7.w;
  u_xlat60 = (x_1804 + -1.0f);
  let x_1811 : f32 = x_1809.unity_SpecCube0_HDR.w;
  let x_1812 : f32 = u_xlat60;
  u_xlat60 = ((x_1811 * x_1812) + 1.0f);
  let x_1815 : f32 = u_xlat60;
  u_xlat60 = max(x_1815, 0.0f);
  let x_1817 : f32 = u_xlat60;
  u_xlat60 = log2(x_1817);
  let x_1819 : f32 = u_xlat60;
  let x_1821 : f32 = x_1809.unity_SpecCube0_HDR.y;
  u_xlat60 = (x_1819 * x_1821);
  let x_1823 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1823);
  let x_1825 : f32 = u_xlat60;
  let x_1827 : f32 = x_1809.unity_SpecCube0_HDR.x;
  u_xlat60 = (x_1825 * x_1827);
  let x_1829 : vec4<f32> = u_xlat7;
  let x_1831 : f32 = u_xlat60;
  let x_1833 : vec3<f32> = (vec3<f32>(x_1829.x, x_1829.y, x_1829.z) * vec3<f32>(x_1831, x_1831, x_1831));
  let x_1834 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1833.x, x_1833.y, x_1833.z, x_1834.w);
  let x_1836 : vec2<f32> = u_xlat1;
  let x_1838 : vec2<f32> = u_xlat1;
  let x_1842 : vec2<f32> = ((vec2<f32>(x_1836.x, x_1836.x) * vec2<f32>(x_1838.x, x_1838.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1843 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1842.x, x_1842.y, x_1843.z, x_1843.w);
  let x_1846 : f32 = u_xlat8.y;
  u_xlat60 = (1.0f / x_1846);
  let x_1848 : vec4<f32> = u_xlat0;
  let x_1851 : vec2<f32> = u_xlat41;
  u_xlat28 = (-(vec3<f32>(x_1848.x, x_1848.y, x_1848.z)) + vec3<f32>(x_1851.x, x_1851.x, x_1851.x));
  let x_1854 : f32 = u_xlat66;
  let x_1856 : vec3<f32> = u_xlat28;
  let x_1858 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1854, x_1854, x_1854) * x_1856) + vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
  let x_1861 : f32 = u_xlat60;
  let x_1863 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1861, x_1861, x_1861) * x_1863);
  let x_1865 : vec4<f32> = u_xlat7;
  let x_1867 : vec3<f32> = u_xlat28;
  let x_1868 : vec3<f32> = (vec3<f32>(x_1865.x, x_1865.y, x_1865.z) * x_1867);
  let x_1869 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1868.x, x_1868.y, x_1868.z, x_1869.w);
  let x_1871 : vec3<f32> = u_xlat4;
  let x_1872 : vec3<f32> = u_xlat22;
  let x_1874 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_1871 * x_1872) + vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
  let x_1877 : f32 = u_xlat64;
  let x_1880 : f32 = x_1809.unity_LightData.z;
  u_xlat60 = (x_1877 * x_1880);
  let x_1882 : vec3<f32> = u_xlat23;
  let x_1884 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_1882, vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
  let x_1889 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1889, 0.0f, 1.0f);
  let x_1892 : f32 = u_xlat60;
  let x_1894 : f32 = u_xlat1.x;
  u_xlat60 = (x_1892 * x_1894);
  let x_1896 : f32 = u_xlat60;
  let x_1898 : vec4<f32> = u_xlat6;
  let x_1900 : vec3<f32> = (vec3<f32>(x_1896, x_1896, x_1896) * vec3<f32>(x_1898.x, x_1898.y, x_1898.z));
  let x_1901 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1900.x, x_1900.y, x_1900.z, x_1901.w);
  let x_1903 : vec3<f32> = u_xlat5;
  let x_1905 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1907 : vec3<f32> = (x_1903 + vec3<f32>(x_1905.x, x_1905.y, x_1905.z));
  let x_1908 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
  let x_1910 : vec4<f32> = u_xlat7;
  let x_1912 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1910.x, x_1910.y, x_1910.z), vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
  let x_1915 : f32 = u_xlat60;
  u_xlat60 = max(x_1915, 1.17549435e-37f);
  let x_1918 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1918);
  let x_1920 : f32 = u_xlat60;
  let x_1922 : vec4<f32> = u_xlat7;
  let x_1924 : vec3<f32> = (vec3<f32>(x_1920, x_1920, x_1920) * vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
  let x_1925 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
  let x_1927 : vec3<f32> = u_xlat23;
  let x_1928 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_1927, vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
  let x_1931 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1931, 0.0f, 1.0f);
  let x_1934 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1936 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_1934.x, x_1934.y, x_1934.z), vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
  let x_1941 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1941, 0.0f, 1.0f);
  let x_1944 : f32 = u_xlat60;
  let x_1945 : f32 = u_xlat60;
  u_xlat60 = (x_1944 * x_1945);
  let x_1947 : f32 = u_xlat60;
  let x_1949 : f32 = u_xlat8.x;
  u_xlat60 = ((x_1947 * x_1949) + 1.000010014f);
  let x_1954 : f32 = u_xlat1.x;
  let x_1956 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1954 * x_1956);
  let x_1959 : f32 = u_xlat60;
  let x_1960 : f32 = u_xlat60;
  u_xlat60 = (x_1959 * x_1960);
  let x_1963 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1963, 0.100000001f);
  let x_1967 : f32 = u_xlat60;
  let x_1969 : f32 = u_xlat1.x;
  u_xlat60 = (x_1967 * x_1969);
  let x_1971 : f32 = u_xlat61;
  let x_1972 : f32 = u_xlat60;
  u_xlat60 = (x_1971 * x_1972);
  let x_1974 : f32 = u_xlat21;
  let x_1975 : f32 = u_xlat60;
  u_xlat60 = (x_1974 / x_1975);
  let x_1977 : vec4<f32> = u_xlat0;
  let x_1979 : f32 = u_xlat60;
  let x_1982 : vec3<f32> = u_xlat22;
  let x_1983 : vec3<f32> = ((vec3<f32>(x_1977.x, x_1977.y, x_1977.z) * vec3<f32>(x_1979, x_1979, x_1979)) + x_1982);
  let x_1984 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1984.w);
  let x_1986 : vec4<f32> = u_xlat6;
  let x_1988 : vec4<f32> = u_xlat7;
  let x_1990 : vec3<f32> = (vec3<f32>(x_1986.x, x_1986.y, x_1986.z) * vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
  let x_1991 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
  let x_1994 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1996 : f32 = x_1809.unity_LightData.y;
  u_xlat60 = min(x_1994, x_1996);
  let x_2000 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2000));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2012 : u32 = u_xlatu_loop_1;
    let x_2013 : u32 = u_xlatu60;
    if ((x_2012 < x_2013)) {
    } else {
      break;
    }
    let x_2016 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_2016 >> 2u);
    let x_2020 : u32 = u_xlatu_loop_1;
    u_xlati64 = bitcast<i32>((x_2020 & 3u));
    let x_2023 : u32 = u_xlatu41;
    let x_2026 : vec4<f32> = x_1809.unity_LightIndices[bitcast<i32>(x_2023)];
    let x_2036 : i32 = u_xlati64;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2041 : vec4<u32> = indexable[x_2036];
    u_xlat41.x = dot(x_2026, bitcast<vec4<f32>>(x_2041));
    let x_2047 : f32 = u_xlat41.x;
    u_xlati41 = i32(x_2047);
    let x_2049 : vec3<f32> = vs_TEXCOORD1;
    let x_2061 : i32 = u_xlati41;
    let x_2063 : vec4<f32> = x_2060.x_AdditionalLightsPosition[x_2061];
    let x_2066 : i32 = u_xlati41;
    let x_2068 : vec4<f32> = x_2060.x_AdditionalLightsPosition[x_2066];
    u_xlat28 = ((-(x_2049) * vec3<f32>(x_2063.w, x_2063.w, x_2063.w)) + vec3<f32>(x_2068.x, x_2068.y, x_2068.z));
    let x_2071 : vec3<f32> = u_xlat28;
    let x_2072 : vec3<f32> = u_xlat28;
    u_xlat64 = dot(x_2071, x_2072);
    let x_2074 : f32 = u_xlat64;
    u_xlat64 = max(x_2074, 6.10351562e-05f);
    let x_2077 : f32 = u_xlat64;
    u_xlat66 = inverseSqrt(x_2077);
    let x_2079 : f32 = u_xlat66;
    let x_2081 : vec3<f32> = u_xlat28;
    let x_2082 : vec3<f32> = (vec3<f32>(x_2079, x_2079, x_2079) * x_2081);
    let x_2083 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2082.x, x_2082.y, x_2082.z, x_2083.w);
    let x_2085 : f32 = u_xlat64;
    u_xlat67 = (1.0f / x_2085);
    let x_2087 : f32 = u_xlat64;
    let x_2088 : i32 = u_xlati41;
    let x_2090 : f32 = x_2060.x_AdditionalLightsAttenuation[x_2088].x;
    u_xlat64 = (x_2087 * x_2090);
    let x_2092 : f32 = u_xlat64;
    let x_2094 : f32 = u_xlat64;
    u_xlat64 = ((-(x_2092) * x_2094) + 1.0f);
    let x_2097 : f32 = u_xlat64;
    u_xlat64 = max(x_2097, 0.0f);
    let x_2099 : f32 = u_xlat64;
    let x_2100 : f32 = u_xlat64;
    u_xlat64 = (x_2099 * x_2100);
    let x_2102 : f32 = u_xlat64;
    let x_2103 : f32 = u_xlat67;
    u_xlat64 = (x_2102 * x_2103);
    let x_2105 : i32 = u_xlati41;
    let x_2107 : vec4<f32> = x_2060.x_AdditionalLightsSpotDir[x_2105];
    let x_2109 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2107.x, x_2107.y, x_2107.z), vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
    let x_2112 : f32 = u_xlat67;
    let x_2113 : i32 = u_xlati41;
    let x_2115 : f32 = x_2060.x_AdditionalLightsAttenuation[x_2113].z;
    let x_2117 : i32 = u_xlati41;
    let x_2119 : f32 = x_2060.x_AdditionalLightsAttenuation[x_2117].w;
    u_xlat67 = ((x_2112 * x_2115) + x_2119);
    let x_2121 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2121, 0.0f, 1.0f);
    let x_2123 : f32 = u_xlat67;
    let x_2124 : f32 = u_xlat67;
    u_xlat67 = (x_2123 * x_2124);
    let x_2126 : f32 = u_xlat64;
    let x_2127 : f32 = u_xlat67;
    u_xlat64 = (x_2126 * x_2127);
    let x_2129 : f32 = u_xlat65;
    let x_2131 : i32 = u_xlati41;
    let x_2133 : vec4<f32> = x_2060.x_AdditionalLightsColor[x_2131];
    let x_2135 : vec3<f32> = (vec3<f32>(x_2129, x_2129, x_2129) * vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
    let x_2136 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
    let x_2138 : vec3<f32> = u_xlat23;
    let x_2139 : vec4<f32> = u_xlat9;
    u_xlat41.x = dot(x_2138, vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
    let x_2144 : f32 = u_xlat41.x;
    u_xlat41.x = clamp(x_2144, 0.0f, 1.0f);
    let x_2148 : f32 = u_xlat41.x;
    let x_2149 : f32 = u_xlat64;
    u_xlat41.x = (x_2148 * x_2149);
    let x_2152 : vec2<f32> = u_xlat41;
    let x_2154 : vec4<f32> = u_xlat10;
    let x_2156 : vec3<f32> = (vec3<f32>(x_2152.x, x_2152.x, x_2152.x) * vec3<f32>(x_2154.x, x_2154.y, x_2154.z));
    let x_2157 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2156.x, x_2156.y, x_2156.z, x_2157.w);
    let x_2159 : vec3<f32> = u_xlat28;
    let x_2160 : f32 = u_xlat66;
    let x_2163 : vec3<f32> = u_xlat5;
    u_xlat28 = ((x_2159 * vec3<f32>(x_2160, x_2160, x_2160)) + x_2163);
    let x_2165 : vec3<f32> = u_xlat28;
    let x_2166 : vec3<f32> = u_xlat28;
    u_xlat41.x = dot(x_2165, x_2166);
    let x_2170 : f32 = u_xlat41.x;
    u_xlat41.x = max(x_2170, 1.17549435e-37f);
    let x_2174 : f32 = u_xlat41.x;
    u_xlat41.x = inverseSqrt(x_2174);
    let x_2177 : vec2<f32> = u_xlat41;
    let x_2179 : vec3<f32> = u_xlat28;
    u_xlat28 = (vec3<f32>(x_2177.x, x_2177.x, x_2177.x) * x_2179);
    let x_2181 : vec3<f32> = u_xlat23;
    let x_2182 : vec3<f32> = u_xlat28;
    u_xlat41.x = dot(x_2181, x_2182);
    let x_2186 : f32 = u_xlat41.x;
    u_xlat41.x = clamp(x_2186, 0.0f, 1.0f);
    let x_2189 : vec4<f32> = u_xlat9;
    let x_2191 : vec3<f32> = u_xlat28;
    u_xlat64 = dot(vec3<f32>(x_2189.x, x_2189.y, x_2189.z), x_2191);
    let x_2193 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2193, 0.0f, 1.0f);
    let x_2196 : f32 = u_xlat41.x;
    let x_2198 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2196 * x_2198);
    let x_2202 : f32 = u_xlat41.x;
    let x_2204 : f32 = u_xlat8.x;
    u_xlat41.x = ((x_2202 * x_2204) + 1.000010014f);
    let x_2208 : f32 = u_xlat64;
    let x_2209 : f32 = u_xlat64;
    u_xlat64 = (x_2208 * x_2209);
    let x_2212 : f32 = u_xlat41.x;
    let x_2214 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2212 * x_2214);
    let x_2217 : f32 = u_xlat64;
    u_xlat64 = max(x_2217, 0.100000001f);
    let x_2220 : f32 = u_xlat41.x;
    let x_2221 : f32 = u_xlat64;
    u_xlat41.x = (x_2220 * x_2221);
    let x_2224 : f32 = u_xlat61;
    let x_2226 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2224 * x_2226);
    let x_2229 : f32 = u_xlat21;
    let x_2231 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2229 / x_2231);
    let x_2234 : vec4<f32> = u_xlat0;
    let x_2236 : vec2<f32> = u_xlat41;
    let x_2239 : vec3<f32> = u_xlat22;
    u_xlat28 = ((vec3<f32>(x_2234.x, x_2234.y, x_2234.z) * vec3<f32>(x_2236.x, x_2236.x, x_2236.x)) + x_2239);
    let x_2241 : vec3<f32> = u_xlat28;
    let x_2242 : vec4<f32> = u_xlat10;
    let x_2245 : vec4<f32> = u_xlat7;
    let x_2247 : vec3<f32> = ((x_2241 * vec3<f32>(x_2242.x, x_2242.y, x_2242.z)) + vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
    let x_2248 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2247.x, x_2247.y, x_2247.z, x_2248.w);

    continuing {
      let x_2250 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2250 + bitcast<u32>(1i));
    }
  }
  let x_2252 : vec3<f32> = u_xlat4;
  let x_2253 : vec3<f32> = u_xlat3;
  let x_2256 : vec4<f32> = u_xlat6;
  let x_2258 : vec3<f32> = ((x_2252 * vec3<f32>(x_2253.x, x_2253.x, x_2253.x)) + vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
  let x_2259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
  let x_2263 : vec4<f32> = u_xlat7;
  let x_2265 : vec4<f32> = u_xlat0;
  let x_2267 : vec3<f32> = (vec3<f32>(x_2263.x, x_2263.y, x_2263.z) + vec3<f32>(x_2265.x, x_2265.y, x_2265.z));
  let x_2268 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
  let x_2273 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_2273 == 1.0f);
  let x_2275 : bool = u_xlatb0;
  if (x_2275) {
    let x_2280 : f32 = u_xlat2.x;
    x_2276 = x_2280;
  } else {
    x_2276 = 1.0f;
  }
  let x_2282 : f32 = x_2276;
  SV_Target0.w = x_2282;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

