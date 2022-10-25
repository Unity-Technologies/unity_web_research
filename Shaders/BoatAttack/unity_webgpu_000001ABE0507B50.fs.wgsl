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

@group(1) @binding(4) var<uniform> x_441 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1838 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2118 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat63 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlatb24 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat5 : vec3<f32>;
  var x_198 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat64 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlatb68 : bool;
  var u_xlat7 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb27 : bool;
  var u_xlat27 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat48 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
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
  var u_xlatb48 : bool;
  var u_xlat70 : f32;
  var u_xlatu22 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati70 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati68 : i32;
  var u_xlat71 : f32;
  var u_xlat72 : f32;
  var u_xlatb0 : bool;
  var x_2354 : f32;
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
  u_xlat43 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat43;
  let x_107 : vec2<f32> = u_xlat43;
  u_xlat63 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat63;
  u_xlat63 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat63;
  u_xlat63 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat63;
  u_xlat63 = sqrt(x_114);
  let x_116 : f32 = u_xlat63;
  u_xlat63 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat43;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat43 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat24.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat24.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_162 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb24 = (x_162 == 0.0f);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_173 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_168) + x_173);
  let x_176 : vec3<f32> = u_xlat4;
  let x_177 : vec3<f32> = u_xlat4;
  u_xlat45 = dot(x_176, x_177);
  let x_179 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_179);
  let x_181 : f32 = u_xlat45;
  let x_183 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_181, x_181, x_181) * x_183);
  let x_189 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat5.x = x_189;
  let x_192 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat5.y = x_192;
  let x_195 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat5.z = x_195;
  let x_197 : bool = u_xlatb24;
  if (x_197) {
    let x_201 : vec3<f32> = u_xlat4;
    x_198 = x_201;
  } else {
    let x_203 : vec3<f32> = u_xlat5;
    x_198 = x_203;
  }
  let x_204 : vec3<f32> = x_198;
  u_xlat24 = x_204;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  let x_209 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (vec3<f32>(x_206.z, x_206.x, x_206.y) * vec3<f32>(x_209.y, x_209.z, x_209.x));
  let x_212 : vec3<f32> = vs_TEXCOORD2;
  let x_214 : vec4<f32> = vs_TEXCOORD3;
  let x_217 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_212.y, x_212.z, x_212.x) * vec3<f32>(x_214.z, x_214.x, x_214.y)) + -(x_217));
  let x_220 : vec3<f32> = u_xlat4;
  let x_221 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (x_220 * vec3<f32>(x_221.w, x_221.w, x_221.w));
  let x_224 : vec2<f32> = u_xlat43;
  let x_226 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_224.y, x_224.y, x_224.y) * x_226);
  let x_228 : vec2<f32> = u_xlat43;
  let x_230 : vec4<f32> = vs_TEXCOORD3;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_228.x, x_228.x, x_228.x) * vec3<f32>(x_230.x, x_230.y, x_230.z)) + x_233);
  let x_235 : f32 = u_xlat63;
  let x_237 : vec3<f32> = vs_TEXCOORD2;
  let x_239 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_235, x_235, x_235) * x_237) + x_239);
  let x_241 : vec3<f32> = u_xlat4;
  let x_242 : vec3<f32> = u_xlat4;
  u_xlat63 = dot(x_241, x_242);
  let x_244 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_244);
  let x_246 : f32 = u_xlat63;
  let x_248 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_246, x_246, x_246) * x_248);
  let x_251 : f32 = vs_TEXCOORD1.y;
  let x_253 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_251 * x_253);
  let x_256 : f32 = x_44.unity_MatrixV[0i].z;
  let x_258 : f32 = vs_TEXCOORD1.x;
  let x_260 : f32 = u_xlat63;
  u_xlat63 = ((x_256 * x_258) + x_260);
  let x_263 : f32 = x_44.unity_MatrixV[2i].z;
  let x_265 : f32 = vs_TEXCOORD1.z;
  let x_267 : f32 = u_xlat63;
  u_xlat63 = ((x_263 * x_265) + x_267);
  let x_269 : f32 = u_xlat63;
  let x_272 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_269 + x_272);
  let x_274 : f32 = u_xlat63;
  let x_278 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_274) + -(x_278));
  let x_281 : f32 = u_xlat63;
  u_xlat63 = max(x_281, 0.0f);
  let x_283 : f32 = u_xlat63;
  let x_285 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_283 * x_285);
  let x_293 : vec2<f32> = vs_TEXCOORD8;
  let x_295 : f32 = x_44.x_GlobalMipBias.x;
  let x_296 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_293, x_295);
  u_xlat5 = vec3<f32>(x_296.x, x_296.y, x_296.z);
  let x_300 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_301 : vec2<f32> = vec2<f32>(x_300.x, x_300.y);
  u_xlat43 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_301.x, x_301.y));
  let x_307 : vec2<f32> = u_xlat43;
  let x_308 : vec4<f32> = hlslcc_FragCoord;
  let x_310 : vec2<f32> = (x_307 * vec2<f32>(x_308.x, x_308.y));
  let x_311 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_310.x, x_310.y, x_311.z);
  let x_314 : f32 = u_xlat6.y;
  let x_317 : f32 = x_44.x_ScaleBiasRt.x;
  let x_320 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat43.x = ((x_314 * x_317) + x_320);
  let x_324 : f32 = u_xlat43.x;
  u_xlat6.z = (-(x_324) + 1.0f);
  let x_329 : f32 = u_xlat1.x;
  u_xlat43.x = ((-(x_329) * 0.959999979f) + 0.959999979f);
  let x_337 : f32 = u_xlat1.y;
  let x_339 : f32 = x_69.x_Smoothness;
  let x_342 : f32 = u_xlat43.x;
  u_xlat64 = ((x_337 * x_339) + -(x_342));
  let x_346 : vec2<f32> = u_xlat43;
  let x_348 : vec4<f32> = u_xlat2;
  u_xlat23 = (vec3<f32>(x_346.x, x_346.x, x_346.x) * vec3<f32>(x_348.y, x_348.z, x_348.w));
  let x_351 : vec4<f32> = u_xlat0;
  let x_354 : vec4<f32> = x_69.x_BaseColor;
  let x_359 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_354.x, x_354.y, x_354.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec2<f32> = u_xlat1;
  let x_364 : vec4<f32> = u_xlat0;
  let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.x, x_362.x) * vec3<f32>(x_364.x, x_364.y, x_364.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : f32 = u_xlat1.y;
  let x_376 : f32 = x_69.x_Smoothness;
  u_xlat1.x = ((-(x_373) * x_376) + 1.0f);
  let x_382 : f32 = u_xlat1.x;
  let x_384 : f32 = u_xlat1.x;
  u_xlat22.x = (x_382 * x_384);
  let x_388 : f32 = u_xlat22.x;
  u_xlat22.x = max(x_388, 0.0078125f);
  let x_393 : f32 = u_xlat22.x;
  let x_395 : f32 = u_xlat22.x;
  u_xlat43.x = (x_393 * x_395);
  let x_398 : f32 = u_xlat64;
  u_xlat64 = (x_398 + 1.0f);
  let x_400 : f32 = u_xlat64;
  u_xlat64 = clamp(x_400, 0.0f, 1.0f);
  let x_404 : f32 = u_xlat22.x;
  u_xlat67 = ((x_404 * 4.0f) + 2.0f);
  let x_414 : vec3<f32> = u_xlat6;
  let x_417 : f32 = x_44.x_GlobalMipBias.x;
  let x_418 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_414.x, x_414.z), x_417);
  u_xlat68 = x_418.x;
  let x_420 : f32 = u_xlat68;
  u_xlat6.x = (x_420 + -1.0f);
  let x_425 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_427 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_425 * x_427) + 1.0f);
  let x_432 : f32 = u_xlat3.x;
  let x_433 : f32 = u_xlat68;
  u_xlat3.x = min(x_432, x_433);
  let x_443 : f32 = x_441.x_MainLightShadowParams.y;
  u_xlatb68 = (0.0f < x_443);
  let x_445 : bool = u_xlatb68;
  if (x_445) {
    let x_449 : f32 = x_441.x_MainLightShadowParams.y;
    u_xlatb68 = (x_449 == 1.0f);
    let x_451 : bool = u_xlatb68;
    if (x_451) {
      let x_456 : vec4<f32> = vs_TEXCOORD6;
      let x_459 : vec4<f32> = x_441.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_456.x, x_456.y, x_456.x, x_456.y) + x_459);
      let x_462 : vec4<f32> = u_xlat7;
      let x_463 : vec2<f32> = vec2<f32>(x_462.x, x_462.y);
      let x_465 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_463.x, x_463.y, x_465);
      let x_478 : vec3<f32> = txVec0;
      let x_480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_478.xy, x_478.z);
      u_xlat8.x = x_480;
      let x_483 : vec4<f32> = u_xlat7;
      let x_484 : vec2<f32> = vec2<f32>(x_483.z, x_483.w);
      let x_486 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_484.x, x_484.y, x_486);
      let x_493 : vec3<f32> = txVec1;
      let x_495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_493.xy, x_493.z);
      u_xlat8.y = x_495;
      let x_497 : vec4<f32> = vs_TEXCOORD6;
      let x_500 : vec4<f32> = x_441.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_497.x, x_497.y, x_497.x, x_497.y) + x_500);
      let x_503 : vec4<f32> = u_xlat7;
      let x_504 : vec2<f32> = vec2<f32>(x_503.x, x_503.y);
      let x_506 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_504.x, x_504.y, x_506);
      let x_513 : vec3<f32> = txVec2;
      let x_515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_513.xy, x_513.z);
      u_xlat8.z = x_515;
      let x_518 : vec4<f32> = u_xlat7;
      let x_519 : vec2<f32> = vec2<f32>(x_518.z, x_518.w);
      let x_521 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_519.x, x_519.y, x_521);
      let x_528 : vec3<f32> = txVec3;
      let x_530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_528.xy, x_528.z);
      u_xlat8.w = x_530;
      let x_532 : vec4<f32> = u_xlat8;
      u_xlat68 = dot(x_532, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_539 : f32 = x_441.x_MainLightShadowParams.y;
      u_xlatb27 = (x_539 == 2.0f);
      let x_541 : bool = u_xlatb27;
      if (x_541) {
        let x_545 : vec4<f32> = vs_TEXCOORD6;
        let x_548 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_553 : vec2<f32> = ((vec2<f32>(x_545.x, x_545.y) * vec2<f32>(x_548.z, x_548.w)) + vec2<f32>(0.5f, 0.5f));
        let x_554 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_553.x, x_553.y, x_554.z);
        let x_556 : vec3<f32> = u_xlat27;
        let x_558 : vec2<f32> = floor(vec2<f32>(x_556.x, x_556.y));
        let x_559 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_558.x, x_558.y, x_559.z);
        let x_561 : vec4<f32> = vs_TEXCOORD6;
        let x_564 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_567 : vec3<f32> = u_xlat27;
        let x_570 : vec2<f32> = ((vec2<f32>(x_561.x, x_561.y) * vec2<f32>(x_564.z, x_564.w)) + -(vec2<f32>(x_567.x, x_567.y)));
        let x_571 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
        let x_573 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_573.x, x_573.x, x_573.y, x_573.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_578 : vec4<f32> = u_xlat8;
        let x_580 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_578.x, x_578.x, x_578.z, x_578.z) * vec4<f32>(x_580.x, x_580.x, x_580.z, x_580.z));
        let x_584 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_584.y, x_584.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_589 : vec4<f32> = u_xlat9;
        let x_592 : vec4<f32> = u_xlat7;
        let x_595 : vec2<f32> = ((vec2<f32>(x_589.x, x_589.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_592.x, x_592.y)));
        let x_596 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_595.x, x_596.y, x_595.y, x_596.w);
        let x_598 : vec4<f32> = u_xlat7;
        let x_601 : vec2<f32> = (-(vec2<f32>(x_598.x, x_598.y)) + vec2<f32>(1.0f, 1.0f));
        let x_602 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
        let x_605 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_605.x, x_605.y), vec2<f32>(0.0f, 0.0f));
        let x_609 : vec2<f32> = u_xlat51;
        let x_611 : vec2<f32> = u_xlat51;
        let x_613 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_609) * x_611) + vec2<f32>(x_613.x, x_613.y));
        let x_616 : vec4<f32> = u_xlat7;
        let x_618 : vec2<f32> = max(vec2<f32>(x_616.x, x_616.y), vec2<f32>(0.0f, 0.0f));
        let x_619 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
        let x_621 : vec4<f32> = u_xlat7;
        let x_624 : vec4<f32> = u_xlat7;
        let x_627 : vec4<f32> = u_xlat8;
        let x_629 : vec2<f32> = ((-(vec2<f32>(x_621.x, x_621.y)) * vec2<f32>(x_624.x, x_624.y)) + vec2<f32>(x_627.y, x_627.w));
        let x_630 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
        let x_632 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_632 + vec2<f32>(1.0f, 1.0f));
        let x_634 : vec4<f32> = u_xlat7;
        let x_636 : vec2<f32> = (vec2<f32>(x_634.x, x_634.y) + vec2<f32>(1.0f, 1.0f));
        let x_637 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
        let x_640 : vec4<f32> = u_xlat8;
        let x_644 : vec2<f32> = (vec2<f32>(x_640.x, x_640.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_645 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_644.x, x_644.y, x_645.z, x_645.w);
        let x_648 : vec4<f32> = u_xlat9;
        let x_650 : vec2<f32> = (vec2<f32>(x_648.x, x_648.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_651 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
        let x_653 : vec2<f32> = u_xlat51;
        let x_654 : vec2<f32> = (x_653 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_655 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_658 : vec4<f32> = u_xlat7;
        let x_660 : vec2<f32> = (vec2<f32>(x_658.x, x_658.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_661 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_660.x, x_660.y, x_661.z, x_661.w);
        let x_663 : vec4<f32> = u_xlat8;
        let x_665 : vec2<f32> = (vec2<f32>(x_663.y, x_663.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_666 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
        let x_669 : f32 = u_xlat9.x;
        u_xlat10.z = x_669;
        let x_672 : f32 = u_xlat7.x;
        u_xlat10.w = x_672;
        let x_675 : f32 = u_xlat12.x;
        u_xlat11.z = x_675;
        let x_678 : f32 = u_xlat49.x;
        u_xlat11.w = x_678;
        let x_680 : vec4<f32> = u_xlat10;
        let x_682 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_680.z, x_680.w, x_680.x, x_680.z) + vec4<f32>(x_682.z, x_682.w, x_682.x, x_682.z));
        let x_686 : f32 = u_xlat10.y;
        u_xlat9.z = x_686;
        let x_689 : f32 = u_xlat7.y;
        u_xlat9.w = x_689;
        let x_692 : f32 = u_xlat11.y;
        u_xlat12.z = x_692;
        let x_695 : f32 = u_xlat49.y;
        u_xlat12.w = x_695;
        let x_697 : vec4<f32> = u_xlat9;
        let x_699 : vec4<f32> = u_xlat12;
        let x_701 : vec3<f32> = (vec3<f32>(x_697.z, x_697.y, x_697.w) + vec3<f32>(x_699.z, x_699.y, x_699.w));
        let x_702 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
        let x_704 : vec4<f32> = u_xlat11;
        let x_706 : vec4<f32> = u_xlat8;
        let x_708 : vec3<f32> = (vec3<f32>(x_704.x, x_704.z, x_704.w) / vec3<f32>(x_706.z, x_706.w, x_706.y));
        let x_709 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
        let x_711 : vec4<f32> = u_xlat9;
        let x_717 : vec3<f32> = (vec3<f32>(x_711.x, x_711.y, x_711.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_718 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
        let x_720 : vec4<f32> = u_xlat12;
        let x_722 : vec4<f32> = u_xlat7;
        let x_724 : vec3<f32> = (vec3<f32>(x_720.z, x_720.y, x_720.w) / vec3<f32>(x_722.x, x_722.y, x_722.z));
        let x_725 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
        let x_727 : vec4<f32> = u_xlat10;
        let x_729 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_730 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
        let x_732 : vec4<f32> = u_xlat9;
        let x_735 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_737 : vec3<f32> = (vec3<f32>(x_732.y, x_732.x, x_732.z) * vec3<f32>(x_735.x, x_735.x, x_735.x));
        let x_738 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
        let x_740 : vec4<f32> = u_xlat10;
        let x_743 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_745 : vec3<f32> = (vec3<f32>(x_740.x, x_740.y, x_740.z) * vec3<f32>(x_743.y, x_743.y, x_743.y));
        let x_746 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
        let x_749 : f32 = u_xlat10.x;
        u_xlat9.w = x_749;
        let x_751 : vec3<f32> = u_xlat27;
        let x_754 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_757 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_751.x, x_751.y, x_751.x, x_751.y) * vec4<f32>(x_754.x, x_754.y, x_754.x, x_754.y)) + vec4<f32>(x_757.y, x_757.w, x_757.x, x_757.w));
        let x_760 : vec3<f32> = u_xlat27;
        let x_763 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_766 : vec4<f32> = u_xlat9;
        let x_768 : vec2<f32> = ((vec2<f32>(x_760.x, x_760.y) * vec2<f32>(x_763.x, x_763.y)) + vec2<f32>(x_766.z, x_766.w));
        let x_769 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_768.x, x_768.y, x_769.z, x_769.w);
        let x_772 : f32 = u_xlat9.y;
        u_xlat10.w = x_772;
        let x_774 : vec4<f32> = u_xlat10;
        let x_775 : vec2<f32> = vec2<f32>(x_774.y, x_774.z);
        let x_776 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_776.x, x_775.x, x_776.z, x_775.y);
        let x_779 : vec3<f32> = u_xlat27;
        let x_782 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_785 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_779.x, x_779.y, x_779.x, x_779.y) * vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y)) + vec4<f32>(x_785.x, x_785.y, x_785.z, x_785.y));
        let x_788 : vec3<f32> = u_xlat27;
        let x_791 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_794 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_788.x, x_788.y, x_788.x, x_788.y) * vec4<f32>(x_791.x, x_791.y, x_791.x, x_791.y)) + vec4<f32>(x_794.w, x_794.y, x_794.w, x_794.z));
        let x_797 : vec3<f32> = u_xlat27;
        let x_800 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_803 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_797.x, x_797.y, x_797.x, x_797.y) * vec4<f32>(x_800.x, x_800.y, x_800.x, x_800.y)) + vec4<f32>(x_803.x, x_803.w, x_803.z, x_803.w));
        let x_807 : vec4<f32> = u_xlat7;
        let x_809 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_807.x, x_807.x, x_807.x, x_807.y) * vec4<f32>(x_809.z, x_809.w, x_809.y, x_809.z));
        let x_813 : vec4<f32> = u_xlat7;
        let x_815 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_813.y, x_813.y, x_813.z, x_813.z) * x_815);
        let x_818 : f32 = u_xlat7.z;
        let x_820 : f32 = u_xlat8.y;
        u_xlat27.x = (x_818 * x_820);
        let x_824 : vec4<f32> = u_xlat11;
        let x_825 : vec2<f32> = vec2<f32>(x_824.x, x_824.y);
        let x_827 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_825.x, x_825.y, x_827);
        let x_835 : vec3<f32> = txVec4;
        let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_835.xy, x_835.z);
        u_xlat48 = x_837;
        let x_839 : vec4<f32> = u_xlat11;
        let x_840 : vec2<f32> = vec2<f32>(x_839.z, x_839.w);
        let x_842 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_840.x, x_840.y, x_842);
        let x_850 : vec3<f32> = txVec5;
        let x_852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_850.xy, x_850.z);
        u_xlat69 = x_852;
        let x_853 : f32 = u_xlat69;
        let x_855 : f32 = u_xlat14.y;
        u_xlat69 = (x_853 * x_855);
        let x_858 : f32 = u_xlat14.x;
        let x_859 : f32 = u_xlat48;
        let x_861 : f32 = u_xlat69;
        u_xlat48 = ((x_858 * x_859) + x_861);
        let x_864 : vec4<f32> = u_xlat12;
        let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
        let x_867 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec6;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_874.xy, x_874.z);
        u_xlat69 = x_876;
        let x_878 : f32 = u_xlat14.z;
        let x_879 : f32 = u_xlat69;
        let x_881 : f32 = u_xlat48;
        u_xlat48 = ((x_878 * x_879) + x_881);
        let x_884 : vec4<f32> = u_xlat10;
        let x_885 : vec2<f32> = vec2<f32>(x_884.x, x_884.y);
        let x_887 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_885.x, x_885.y, x_887);
        let x_894 : vec3<f32> = txVec7;
        let x_896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_894.xy, x_894.z);
        u_xlat69 = x_896;
        let x_898 : f32 = u_xlat14.w;
        let x_899 : f32 = u_xlat69;
        let x_901 : f32 = u_xlat48;
        u_xlat48 = ((x_898 * x_899) + x_901);
        let x_904 : vec4<f32> = u_xlat13;
        let x_905 : vec2<f32> = vec2<f32>(x_904.x, x_904.y);
        let x_907 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_914 : vec3<f32> = txVec8;
        let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_914.xy, x_914.z);
        u_xlat69 = x_916;
        let x_918 : f32 = u_xlat15.x;
        let x_919 : f32 = u_xlat69;
        let x_921 : f32 = u_xlat48;
        u_xlat48 = ((x_918 * x_919) + x_921);
        let x_924 : vec4<f32> = u_xlat13;
        let x_925 : vec2<f32> = vec2<f32>(x_924.z, x_924.w);
        let x_927 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_925.x, x_925.y, x_927);
        let x_934 : vec3<f32> = txVec9;
        let x_936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_934.xy, x_934.z);
        u_xlat69 = x_936;
        let x_938 : f32 = u_xlat15.y;
        let x_939 : f32 = u_xlat69;
        let x_941 : f32 = u_xlat48;
        u_xlat48 = ((x_938 * x_939) + x_941);
        let x_944 : vec4<f32> = u_xlat10;
        let x_945 : vec2<f32> = vec2<f32>(x_944.z, x_944.w);
        let x_947 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_945.x, x_945.y, x_947);
        let x_954 : vec3<f32> = txVec10;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_954.xy, x_954.z);
        u_xlat69 = x_956;
        let x_958 : f32 = u_xlat15.z;
        let x_959 : f32 = u_xlat69;
        let x_961 : f32 = u_xlat48;
        u_xlat48 = ((x_958 * x_959) + x_961);
        let x_964 : vec4<f32> = u_xlat9;
        let x_965 : vec2<f32> = vec2<f32>(x_964.x, x_964.y);
        let x_967 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_965.x, x_965.y, x_967);
        let x_974 : vec3<f32> = txVec11;
        let x_976 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_974.xy, x_974.z);
        u_xlat69 = x_976;
        let x_978 : f32 = u_xlat15.w;
        let x_979 : f32 = u_xlat69;
        let x_981 : f32 = u_xlat48;
        u_xlat48 = ((x_978 * x_979) + x_981);
        let x_984 : vec4<f32> = u_xlat9;
        let x_985 : vec2<f32> = vec2<f32>(x_984.z, x_984.w);
        let x_987 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_985.x, x_985.y, x_987);
        let x_994 : vec3<f32> = txVec12;
        let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_994.xy, x_994.z);
        u_xlat69 = x_996;
        let x_998 : f32 = u_xlat27.x;
        let x_999 : f32 = u_xlat69;
        let x_1001 : f32 = u_xlat48;
        u_xlat68 = ((x_998 * x_999) + x_1001);
      } else {
        let x_1004 : vec4<f32> = vs_TEXCOORD6;
        let x_1007 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1010 : vec2<f32> = ((vec2<f32>(x_1004.x, x_1004.y) * vec2<f32>(x_1007.z, x_1007.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1011 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1010.x, x_1010.y, x_1011.z);
        let x_1013 : vec3<f32> = u_xlat27;
        let x_1015 : vec2<f32> = floor(vec2<f32>(x_1013.x, x_1013.y));
        let x_1016 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1015.x, x_1015.y, x_1016.z);
        let x_1018 : vec4<f32> = vs_TEXCOORD6;
        let x_1021 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1024 : vec3<f32> = u_xlat27;
        let x_1027 : vec2<f32> = ((vec2<f32>(x_1018.x, x_1018.y) * vec2<f32>(x_1021.z, x_1021.w)) + -(vec2<f32>(x_1024.x, x_1024.y)));
        let x_1028 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1027.x, x_1027.y, x_1028.z, x_1028.w);
        let x_1030 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1030.x, x_1030.x, x_1030.y, x_1030.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1033 : vec4<f32> = u_xlat8;
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1033.x, x_1033.x, x_1033.z, x_1033.z) * vec4<f32>(x_1035.x, x_1035.x, x_1035.z, x_1035.z));
        let x_1038 : vec4<f32> = u_xlat9;
        let x_1042 : vec2<f32> = (vec2<f32>(x_1038.y, x_1038.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1043 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1043.x, x_1042.x, x_1043.z, x_1042.y);
        let x_1045 : vec4<f32> = u_xlat9;
        let x_1048 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1045.x, x_1045.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1048.x, x_1048.y)));
        let x_1052 : vec4<f32> = u_xlat7;
        let x_1055 : vec2<f32> = (-(vec2<f32>(x_1052.x, x_1052.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1056 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1055.x, x_1056.y, x_1055.y, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1060 : vec2<f32> = min(vec2<f32>(x_1058.x, x_1058.y), vec2<f32>(0.0f, 0.0f));
        let x_1061 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1063 : vec4<f32> = u_xlat9;
        let x_1066 : vec4<f32> = u_xlat9;
        let x_1069 : vec4<f32> = u_xlat8;
        let x_1071 : vec2<f32> = ((-(vec2<f32>(x_1063.x, x_1063.y)) * vec2<f32>(x_1066.x, x_1066.y)) + vec2<f32>(x_1069.x, x_1069.z));
        let x_1072 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1072.w);
        let x_1074 : vec4<f32> = u_xlat7;
        let x_1076 : vec2<f32> = max(vec2<f32>(x_1074.x, x_1074.y), vec2<f32>(0.0f, 0.0f));
        let x_1077 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        let x_1079 : vec4<f32> = u_xlat9;
        let x_1082 : vec4<f32> = u_xlat9;
        let x_1085 : vec4<f32> = u_xlat8;
        let x_1087 : vec2<f32> = ((-(vec2<f32>(x_1079.x, x_1079.y)) * vec2<f32>(x_1082.x, x_1082.y)) + vec2<f32>(x_1085.y, x_1085.w));
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1088.x, x_1087.x, x_1088.z, x_1087.y);
        let x_1090 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1090 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1094 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1094 * 0.081632003f);
        let x_1098 : vec2<f32> = u_xlat49;
        let x_1101 : vec2<f32> = (vec2<f32>(x_1098.y, x_1098.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1102 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1104.x, x_1104.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1108 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1108 * 0.081632003f);
        let x_1112 : f32 = u_xlat11.y;
        u_xlat9.x = x_1112;
        let x_1114 : vec4<f32> = u_xlat7;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1114.x, x_1114.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1122.x, x_1121.x, x_1122.z, x_1121.y);
        let x_1124 : vec4<f32> = u_xlat7;
        let x_1128 : vec2<f32> = ((vec2<f32>(x_1124.x, x_1124.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1128.x, x_1129.y, x_1128.y, x_1129.w);
        let x_1132 : f32 = u_xlat49.x;
        u_xlat8.y = x_1132;
        let x_1135 : f32 = u_xlat10.y;
        u_xlat8.w = x_1135;
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1137 + x_1138);
        let x_1140 : vec4<f32> = u_xlat7;
        let x_1143 : vec2<f32> = ((vec2<f32>(x_1140.y, x_1140.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1144 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1144.x, x_1143.x, x_1144.z, x_1143.y);
        let x_1146 : vec4<f32> = u_xlat7;
        let x_1149 : vec2<f32> = ((vec2<f32>(x_1146.y, x_1146.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1150 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1149.x, x_1150.y, x_1149.y, x_1150.w);
        let x_1153 : f32 = u_xlat49.y;
        u_xlat10.y = x_1153;
        let x_1155 : vec4<f32> = u_xlat10;
        let x_1156 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1155 + x_1156);
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1159 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1158 / x_1159);
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1161 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1167 : vec4<f32> = u_xlat10;
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1167 / x_1168);
        let x_1170 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1170 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1172 : vec4<f32> = u_xlat8;
        let x_1175 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1172.w, x_1172.x, x_1172.y, x_1172.z) * vec4<f32>(x_1175.x, x_1175.x, x_1175.x, x_1175.x));
        let x_1178 : vec4<f32> = u_xlat10;
        let x_1181 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1178.x, x_1178.w, x_1178.y, x_1178.z) * vec4<f32>(x_1181.y, x_1181.y, x_1181.y, x_1181.y));
        let x_1184 : vec4<f32> = u_xlat8;
        let x_1185 : vec3<f32> = vec3<f32>(x_1184.y, x_1184.z, x_1184.w);
        let x_1186 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1185.x, x_1186.y, x_1185.y, x_1185.z);
        let x_1189 : f32 = u_xlat10.x;
        u_xlat11.y = x_1189;
        let x_1191 : vec3<f32> = u_xlat27;
        let x_1194 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y) * vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y)) + vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1197.y));
        let x_1200 : vec3<f32> = u_xlat27;
        let x_1203 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat11;
        let x_1208 : vec2<f32> = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1206.w, x_1206.y));
        let x_1209 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1212 : f32 = u_xlat11.y;
        u_xlat8.y = x_1212;
        let x_1215 : f32 = u_xlat10.z;
        u_xlat11.y = x_1215;
        let x_1217 : vec3<f32> = u_xlat27;
        let x_1220 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1223 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1217.x, x_1217.y, x_1217.x, x_1217.y) * vec4<f32>(x_1220.x, x_1220.y, x_1220.x, x_1220.y)) + vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1223.y));
        let x_1227 : vec3<f32> = u_xlat27;
        let x_1230 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1233 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1227.x, x_1227.y) * vec2<f32>(x_1230.x, x_1230.y)) + vec2<f32>(x_1233.w, x_1233.y));
        let x_1237 : f32 = u_xlat11.y;
        u_xlat8.z = x_1237;
        let x_1239 : vec3<f32> = u_xlat27;
        let x_1242 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1239.x, x_1239.y, x_1239.x, x_1239.y) * vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y)) + vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.z));
        let x_1249 : f32 = u_xlat10.w;
        u_xlat11.y = x_1249;
        let x_1252 : vec3<f32> = u_xlat27;
        let x_1255 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.y) * vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y)) + vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1258.y));
        let x_1262 : vec3<f32> = u_xlat27;
        let x_1265 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1268 : vec4<f32> = u_xlat11;
        u_xlat29 = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(x_1265.x, x_1265.y)) + vec2<f32>(x_1268.w, x_1268.y));
        let x_1272 : f32 = u_xlat11.y;
        u_xlat8.w = x_1272;
        let x_1275 : vec3<f32> = u_xlat27;
        let x_1278 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1281.x, x_1281.w));
        let x_1284 : vec4<f32> = u_xlat11;
        let x_1285 : vec3<f32> = vec3<f32>(x_1284.x, x_1284.z, x_1284.w);
        let x_1286 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1285.x, x_1286.y, x_1285.y, x_1285.z);
        let x_1288 : vec3<f32> = u_xlat27;
        let x_1291 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y) * vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y)) + vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1294.y));
        let x_1298 : vec3<f32> = u_xlat27;
        let x_1301 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1298.x, x_1298.y) * vec2<f32>(x_1301.x, x_1301.y)) + vec2<f32>(x_1304.w, x_1304.y));
        let x_1308 : f32 = u_xlat8.x;
        u_xlat10.x = x_1308;
        let x_1310 : vec3<f32> = u_xlat27;
        let x_1313 : vec4<f32> = x_441.x_MainLightShadowmapSize;
        let x_1316 : vec4<f32> = u_xlat10;
        let x_1318 : vec2<f32> = ((vec2<f32>(x_1310.x, x_1310.y) * vec2<f32>(x_1313.x, x_1313.y)) + vec2<f32>(x_1316.x, x_1316.y));
        let x_1319 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1318.x, x_1318.y, x_1319.z);
        let x_1322 : vec4<f32> = u_xlat7;
        let x_1324 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1322.x, x_1322.x, x_1322.x, x_1322.x) * x_1324);
        let x_1327 : vec4<f32> = u_xlat7;
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1327.y, x_1327.y, x_1327.y, x_1327.y) * x_1329);
        let x_1332 : vec4<f32> = u_xlat7;
        let x_1334 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1332.z, x_1332.z, x_1332.z, x_1332.z) * x_1334);
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1336.w, x_1336.w, x_1336.w, x_1336.w) * x_1338);
        let x_1341 : vec4<f32> = u_xlat12;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.x, x_1341.y);
        let x_1344 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec13;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1351.xy, x_1351.z);
        u_xlat69 = x_1353;
        let x_1355 : vec4<f32> = u_xlat12;
        let x_1356 : vec2<f32> = vec2<f32>(x_1355.z, x_1355.w);
        let x_1358 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1356.x, x_1356.y, x_1358);
        let x_1365 : vec3<f32> = txVec14;
        let x_1367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1365.xy, x_1365.z);
        u_xlat8.x = x_1367;
        let x_1370 : f32 = u_xlat8.x;
        let x_1372 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1370 * x_1372);
        let x_1376 : f32 = u_xlat18.x;
        let x_1377 : f32 = u_xlat69;
        let x_1380 : f32 = u_xlat8.x;
        u_xlat69 = ((x_1376 * x_1377) + x_1380);
        let x_1383 : vec4<f32> = u_xlat13;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.x, x_1383.y);
        let x_1386 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec15;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1393.xy, x_1393.z);
        u_xlat8.x = x_1395;
        let x_1398 : f32 = u_xlat18.z;
        let x_1400 : f32 = u_xlat8.x;
        let x_1402 : f32 = u_xlat69;
        u_xlat69 = ((x_1398 * x_1400) + x_1402);
        let x_1405 : vec4<f32> = u_xlat15;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.x, x_1405.y);
        let x_1408 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec16;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1415.xy, x_1415.z);
        u_xlat8.x = x_1417;
        let x_1420 : f32 = u_xlat18.w;
        let x_1422 : f32 = u_xlat8.x;
        let x_1424 : f32 = u_xlat69;
        u_xlat69 = ((x_1420 * x_1422) + x_1424);
        let x_1427 : vec4<f32> = u_xlat14;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.x, x_1427.y);
        let x_1430 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec17;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1437.xy, x_1437.z);
        u_xlat8.x = x_1439;
        let x_1442 : f32 = u_xlat19.x;
        let x_1444 : f32 = u_xlat8.x;
        let x_1446 : f32 = u_xlat69;
        u_xlat69 = ((x_1442 * x_1444) + x_1446);
        let x_1449 : vec4<f32> = u_xlat14;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.z, x_1449.w);
        let x_1452 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec18;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1459.xy, x_1459.z);
        u_xlat8.x = x_1461;
        let x_1464 : f32 = u_xlat19.y;
        let x_1466 : f32 = u_xlat8.x;
        let x_1468 : f32 = u_xlat69;
        u_xlat69 = ((x_1464 * x_1466) + x_1468);
        let x_1471 : vec2<f32> = u_xlat55;
        let x_1473 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
        let x_1480 : vec3<f32> = txVec19;
        let x_1482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1480.xy, x_1480.z);
        u_xlat8.x = x_1482;
        let x_1485 : f32 = u_xlat19.z;
        let x_1487 : f32 = u_xlat8.x;
        let x_1489 : f32 = u_xlat69;
        u_xlat69 = ((x_1485 * x_1487) + x_1489);
        let x_1492 : vec4<f32> = u_xlat15;
        let x_1493 : vec2<f32> = vec2<f32>(x_1492.z, x_1492.w);
        let x_1495 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec20;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1502.xy, x_1502.z);
        u_xlat8.x = x_1504;
        let x_1507 : f32 = u_xlat19.w;
        let x_1509 : f32 = u_xlat8.x;
        let x_1511 : f32 = u_xlat69;
        u_xlat69 = ((x_1507 * x_1509) + x_1511);
        let x_1514 : vec4<f32> = u_xlat16;
        let x_1515 : vec2<f32> = vec2<f32>(x_1514.x, x_1514.y);
        let x_1517 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
        let x_1524 : vec3<f32> = txVec21;
        let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1524.xy, x_1524.z);
        u_xlat8.x = x_1526;
        let x_1529 : f32 = u_xlat20.x;
        let x_1531 : f32 = u_xlat8.x;
        let x_1533 : f32 = u_xlat69;
        u_xlat69 = ((x_1529 * x_1531) + x_1533);
        let x_1536 : vec4<f32> = u_xlat16;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.z, x_1536.w);
        let x_1539 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec22;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1546.xy, x_1546.z);
        u_xlat8.x = x_1548;
        let x_1551 : f32 = u_xlat20.y;
        let x_1553 : f32 = u_xlat8.x;
        let x_1555 : f32 = u_xlat69;
        u_xlat69 = ((x_1551 * x_1553) + x_1555);
        let x_1558 : vec2<f32> = u_xlat29;
        let x_1560 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec23;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1567.xy, x_1567.z);
        u_xlat8.x = x_1569;
        let x_1572 : f32 = u_xlat20.z;
        let x_1574 : f32 = u_xlat8.x;
        let x_1576 : f32 = u_xlat69;
        u_xlat69 = ((x_1572 * x_1574) + x_1576);
        let x_1579 : vec2<f32> = u_xlat17;
        let x_1581 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1588 : vec3<f32> = txVec24;
        let x_1590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1588.xy, x_1588.z);
        u_xlat8.x = x_1590;
        let x_1593 : f32 = u_xlat20.w;
        let x_1595 : f32 = u_xlat8.x;
        let x_1597 : f32 = u_xlat69;
        u_xlat69 = ((x_1593 * x_1595) + x_1597);
        let x_1600 : vec4<f32> = u_xlat11;
        let x_1601 : vec2<f32> = vec2<f32>(x_1600.x, x_1600.y);
        let x_1603 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec25;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1610.xy, x_1610.z);
        u_xlat8.x = x_1612;
        let x_1615 : f32 = u_xlat7.x;
        let x_1617 : f32 = u_xlat8.x;
        let x_1619 : f32 = u_xlat69;
        u_xlat69 = ((x_1615 * x_1617) + x_1619);
        let x_1622 : vec4<f32> = u_xlat11;
        let x_1623 : vec2<f32> = vec2<f32>(x_1622.z, x_1622.w);
        let x_1625 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1623.x, x_1623.y, x_1625);
        let x_1632 : vec3<f32> = txVec26;
        let x_1634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1632.xy, x_1632.z);
        u_xlat7.x = x_1634;
        let x_1637 : f32 = u_xlat7.y;
        let x_1639 : f32 = u_xlat7.x;
        let x_1641 : f32 = u_xlat69;
        u_xlat69 = ((x_1637 * x_1639) + x_1641);
        let x_1644 : vec2<f32> = u_xlat52;
        let x_1646 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1644.x, x_1644.y, x_1646);
        let x_1653 : vec3<f32> = txVec27;
        let x_1655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1653.xy, x_1653.z);
        u_xlat7.x = x_1655;
        let x_1658 : f32 = u_xlat7.z;
        let x_1660 : f32 = u_xlat7.x;
        let x_1662 : f32 = u_xlat69;
        u_xlat69 = ((x_1658 * x_1660) + x_1662);
        let x_1665 : vec3<f32> = u_xlat27;
        let x_1666 : vec2<f32> = vec2<f32>(x_1665.x, x_1665.y);
        let x_1668 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec28;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1675.xy, x_1675.z);
        u_xlat27.x = x_1677;
        let x_1680 : f32 = u_xlat7.w;
        let x_1682 : f32 = u_xlat27.x;
        let x_1684 : f32 = u_xlat69;
        u_xlat68 = ((x_1680 * x_1682) + x_1684);
      }
    }
  } else {
    let x_1688 : vec4<f32> = vs_TEXCOORD6;
    let x_1689 : vec2<f32> = vec2<f32>(x_1688.x, x_1688.y);
    let x_1691 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1689.x, x_1689.y, x_1691);
    let x_1698 : vec3<f32> = txVec29;
    let x_1700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1698.xy, x_1698.z);
    u_xlat68 = x_1700;
  }
  let x_1702 : f32 = x_441.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_1702) + 1.0f);
  let x_1706 : f32 = u_xlat68;
  let x_1708 : f32 = x_441.x_MainLightShadowParams.x;
  let x_1711 : f32 = u_xlat27.x;
  u_xlat68 = ((x_1706 * x_1708) + x_1711);
  let x_1714 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (0.0f >= x_1714);
  let x_1718 : f32 = vs_TEXCOORD6.z;
  u_xlatb48 = (x_1718 >= 1.0f);
  let x_1720 : bool = u_xlatb48;
  let x_1721 : bool = u_xlatb27;
  u_xlatb27 = (x_1720 | x_1721);
  let x_1723 : bool = u_xlatb27;
  let x_1724 : f32 = u_xlat68;
  u_xlat68 = select(x_1724, 1.0f, x_1723);
  let x_1726 : vec3<f32> = vs_TEXCOORD1;
  let x_1728 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat27 = (x_1726 + -(x_1728));
  let x_1731 : vec3<f32> = u_xlat27;
  let x_1732 : vec3<f32> = u_xlat27;
  u_xlat27.x = dot(x_1731, x_1732);
  let x_1736 : f32 = u_xlat27.x;
  let x_1738 : f32 = x_441.x_MainLightShadowParams.z;
  let x_1741 : f32 = x_441.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1736 * x_1738) + x_1741);
  let x_1745 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1745, 0.0f, 1.0f);
  let x_1748 : f32 = u_xlat68;
  u_xlat48 = (-(x_1748) + 1.0f);
  let x_1752 : f32 = u_xlat27.x;
  let x_1753 : f32 = u_xlat48;
  let x_1755 : f32 = u_xlat68;
  u_xlat68 = ((x_1752 * x_1753) + x_1755);
  let x_1757 : vec3<f32> = u_xlat6;
  let x_1760 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1757.x, x_1757.x, x_1757.x) * vec3<f32>(x_1760.x, x_1760.y, x_1760.z));
  let x_1763 : vec3<f32> = u_xlat24;
  let x_1765 : vec3<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_1763), x_1765);
  let x_1769 : f32 = u_xlat7.x;
  let x_1771 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1769 + x_1771);
  let x_1774 : vec3<f32> = u_xlat4;
  let x_1775 : vec4<f32> = u_xlat7;
  let x_1779 : vec3<f32> = u_xlat24;
  let x_1781 : vec3<f32> = ((x_1774 * -(vec3<f32>(x_1775.x, x_1775.x, x_1775.x))) + -(x_1779));
  let x_1782 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
  let x_1785 : vec3<f32> = u_xlat4;
  let x_1786 : vec3<f32> = u_xlat24;
  u_xlat70 = dot(x_1785, x_1786);
  let x_1788 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1788, 0.0f, 1.0f);
  let x_1790 : f32 = u_xlat70;
  u_xlat70 = (-(x_1790) + 1.0f);
  let x_1793 : f32 = u_xlat70;
  let x_1794 : f32 = u_xlat70;
  u_xlat70 = (x_1793 * x_1794);
  let x_1796 : f32 = u_xlat70;
  let x_1797 : f32 = u_xlat70;
  u_xlat70 = (x_1796 * x_1797);
  let x_1800 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_1800) * 0.699999988f) + 1.700000048f);
  let x_1808 : f32 = u_xlat1.x;
  let x_1810 : f32 = u_xlat8.x;
  u_xlat1.x = (x_1808 * x_1810);
  let x_1814 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1814 * 6.0f);
  let x_1826 : vec4<f32> = u_xlat7;
  let x_1829 : f32 = u_xlat1.x;
  let x_1830 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1826.x, x_1826.y, x_1826.z), x_1829);
  u_xlat8 = x_1830;
  let x_1832 : f32 = u_xlat8.w;
  u_xlat1.x = (x_1832 + -1.0f);
  let x_1840 : f32 = x_1838.unity_SpecCube0_HDR.w;
  let x_1842 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1840 * x_1842) + 1.0f);
  let x_1847 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1847, 0.0f);
  let x_1851 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1851);
  let x_1855 : f32 = u_xlat1.x;
  let x_1857 : f32 = x_1838.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1855 * x_1857);
  let x_1861 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1861);
  let x_1865 : f32 = u_xlat1.x;
  let x_1867 : f32 = x_1838.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1865 * x_1867);
  let x_1870 : vec4<f32> = u_xlat8;
  let x_1872 : vec2<f32> = u_xlat1;
  let x_1874 : vec3<f32> = (vec3<f32>(x_1870.x, x_1870.y, x_1870.z) * vec3<f32>(x_1872.x, x_1872.x, x_1872.x));
  let x_1875 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1874.x, x_1874.y, x_1874.z, x_1875.w);
  let x_1877 : vec3<f32> = u_xlat22;
  let x_1879 : vec3<f32> = u_xlat22;
  u_xlat1 = ((vec2<f32>(x_1877.x, x_1877.x) * vec2<f32>(x_1879.x, x_1879.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1885 : f32 = u_xlat1.y;
  u_xlat22.x = (1.0f / x_1885);
  let x_1888 : vec4<f32> = u_xlat0;
  let x_1891 : f32 = u_xlat64;
  let x_1893 : vec3<f32> = (-(vec3<f32>(x_1888.x, x_1888.y, x_1888.z)) + vec3<f32>(x_1891, x_1891, x_1891));
  let x_1894 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
  let x_1896 : f32 = u_xlat70;
  let x_1898 : vec4<f32> = u_xlat8;
  let x_1901 : vec4<f32> = u_xlat0;
  let x_1903 : vec3<f32> = ((vec3<f32>(x_1896, x_1896, x_1896) * vec3<f32>(x_1898.x, x_1898.y, x_1898.z)) + vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1904 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  let x_1906 : vec3<f32> = u_xlat22;
  let x_1908 : vec4<f32> = u_xlat8;
  let x_1910 : vec3<f32> = (vec3<f32>(x_1906.x, x_1906.x, x_1906.x) * vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
  let x_1911 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
  let x_1913 : vec4<f32> = u_xlat7;
  let x_1915 : vec4<f32> = u_xlat8;
  let x_1917 : vec3<f32> = (vec3<f32>(x_1913.x, x_1913.y, x_1913.z) * vec3<f32>(x_1915.x, x_1915.y, x_1915.z));
  let x_1918 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
  let x_1920 : vec3<f32> = u_xlat5;
  let x_1921 : vec3<f32> = u_xlat23;
  let x_1923 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_1920 * x_1921) + vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
  let x_1926 : f32 = u_xlat68;
  let x_1929 : f32 = x_1838.unity_LightData.z;
  u_xlat22.x = (x_1926 * x_1929);
  let x_1932 : vec3<f32> = u_xlat4;
  let x_1934 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat64 = dot(x_1932, vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1937 : f32 = u_xlat64;
  u_xlat64 = clamp(x_1937, 0.0f, 1.0f);
  let x_1939 : f32 = u_xlat64;
  let x_1941 : f32 = u_xlat22.x;
  u_xlat22.x = (x_1939 * x_1941);
  let x_1944 : vec3<f32> = u_xlat22;
  let x_1946 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_1944.x, x_1944.x, x_1944.x) * x_1946);
  let x_1948 : vec3<f32> = u_xlat24;
  let x_1950 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1952 : vec3<f32> = (x_1948 + vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
  let x_1953 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
  let x_1955 : vec4<f32> = u_xlat7;
  let x_1957 : vec4<f32> = u_xlat7;
  u_xlat22.x = dot(vec3<f32>(x_1955.x, x_1955.y, x_1955.z), vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
  let x_1962 : f32 = u_xlat22.x;
  u_xlat22.x = max(x_1962, 1.17549435e-37f);
  let x_1967 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_1967);
  let x_1970 : vec3<f32> = u_xlat22;
  let x_1972 : vec4<f32> = u_xlat7;
  let x_1974 : vec3<f32> = (vec3<f32>(x_1970.x, x_1970.x, x_1970.x) * vec3<f32>(x_1972.x, x_1972.y, x_1972.z));
  let x_1975 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1974.x, x_1974.y, x_1974.z, x_1975.w);
  let x_1977 : vec3<f32> = u_xlat4;
  let x_1978 : vec4<f32> = u_xlat7;
  u_xlat22.x = dot(x_1977, vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1983 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_1983, 0.0f, 1.0f);
  let x_1987 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1989 : vec4<f32> = u_xlat7;
  u_xlat22.z = dot(vec3<f32>(x_1987.x, x_1987.y, x_1987.z), vec3<f32>(x_1989.x, x_1989.y, x_1989.z));
  let x_1994 : f32 = u_xlat22.z;
  u_xlat22.z = clamp(x_1994, 0.0f, 1.0f);
  let x_1997 : vec3<f32> = u_xlat22;
  let x_1999 : vec3<f32> = u_xlat22;
  let x_2001 : vec2<f32> = (vec2<f32>(x_1997.x, x_1997.z) * vec2<f32>(x_1999.x, x_1999.z));
  let x_2002 : vec3<f32> = u_xlat22;
  u_xlat22 = vec3<f32>(x_2001.x, x_2002.y, x_2001.y);
  let x_2005 : f32 = u_xlat22.x;
  let x_2007 : f32 = u_xlat1.x;
  u_xlat22.x = ((x_2005 * x_2007) + 1.000010014f);
  let x_2013 : f32 = u_xlat22.x;
  let x_2015 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2013 * x_2015);
  let x_2019 : f32 = u_xlat22.z;
  u_xlat64 = max(x_2019, 0.100000001f);
  let x_2022 : f32 = u_xlat64;
  let x_2024 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2022 * x_2024);
  let x_2027 : f32 = u_xlat67;
  let x_2029 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2027 * x_2029);
  let x_2033 : f32 = u_xlat43.x;
  let x_2035 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2033 / x_2035);
  let x_2038 : vec4<f32> = u_xlat0;
  let x_2040 : vec3<f32> = u_xlat22;
  let x_2043 : vec3<f32> = u_xlat23;
  let x_2044 : vec3<f32> = ((vec3<f32>(x_2038.x, x_2038.y, x_2038.z) * vec3<f32>(x_2040.x, x_2040.x, x_2040.x)) + x_2043);
  let x_2045 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2044.x, x_2044.y, x_2044.z, x_2045.w);
  let x_2047 : vec3<f32> = u_xlat27;
  let x_2048 : vec4<f32> = u_xlat7;
  u_xlat27 = (x_2047 * vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
  let x_2052 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2054 : f32 = x_1838.unity_LightData.y;
  u_xlat22.x = min(x_2052, x_2054);
  let x_2060 : f32 = u_xlat22.x;
  u_xlatu22 = bitcast<u32>(i32(x_2060));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2072 : u32 = u_xlatu_loop_1;
    let x_2073 : u32 = u_xlatu22;
    if ((x_2072 < x_2073)) {
    } else {
      break;
    }
    let x_2076 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2076 >> 2u);
    let x_2080 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2080 & 3u));
    let x_2083 : u32 = u_xlatu68;
    let x_2086 : vec4<f32> = x_1838.unity_LightIndices[bitcast<i32>(x_2083)];
    let x_2096 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2101 : vec4<u32> = indexable[x_2096];
    u_xlat68 = dot(x_2086, bitcast<vec4<f32>>(x_2101));
    let x_2105 : f32 = u_xlat68;
    u_xlati68 = i32(x_2105);
    let x_2107 : vec3<f32> = vs_TEXCOORD1;
    let x_2119 : i32 = u_xlati68;
    let x_2121 : vec4<f32> = x_2118.x_AdditionalLightsPosition[x_2119];
    let x_2124 : i32 = u_xlati68;
    let x_2126 : vec4<f32> = x_2118.x_AdditionalLightsPosition[x_2124];
    let x_2128 : vec3<f32> = ((-(x_2107) * vec3<f32>(x_2121.w, x_2121.w, x_2121.w)) + vec3<f32>(x_2126.x, x_2126.y, x_2126.z));
    let x_2129 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2129.w);
    let x_2131 : vec4<f32> = u_xlat8;
    let x_2133 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2131.x, x_2131.y, x_2131.z), vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
    let x_2136 : f32 = u_xlat70;
    u_xlat70 = max(x_2136, 6.10351562e-05f);
    let x_2140 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_2140);
    let x_2142 : f32 = u_xlat71;
    let x_2144 : vec4<f32> = u_xlat8;
    let x_2146 : vec3<f32> = (vec3<f32>(x_2142, x_2142, x_2142) * vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
    let x_2147 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2147.w);
    let x_2150 : f32 = u_xlat70;
    u_xlat72 = (1.0f / x_2150);
    let x_2152 : f32 = u_xlat70;
    let x_2153 : i32 = u_xlati68;
    let x_2155 : f32 = x_2118.x_AdditionalLightsAttenuation[x_2153].x;
    u_xlat70 = (x_2152 * x_2155);
    let x_2157 : f32 = u_xlat70;
    let x_2159 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2157) * x_2159) + 1.0f);
    let x_2162 : f32 = u_xlat70;
    u_xlat70 = max(x_2162, 0.0f);
    let x_2164 : f32 = u_xlat70;
    let x_2165 : f32 = u_xlat70;
    u_xlat70 = (x_2164 * x_2165);
    let x_2167 : f32 = u_xlat70;
    let x_2168 : f32 = u_xlat72;
    u_xlat70 = (x_2167 * x_2168);
    let x_2170 : i32 = u_xlati68;
    let x_2172 : vec4<f32> = x_2118.x_AdditionalLightsSpotDir[x_2170];
    let x_2174 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2172.x, x_2172.y, x_2172.z), vec3<f32>(x_2174.x, x_2174.y, x_2174.z));
    let x_2177 : f32 = u_xlat72;
    let x_2178 : i32 = u_xlati68;
    let x_2180 : f32 = x_2118.x_AdditionalLightsAttenuation[x_2178].z;
    let x_2182 : i32 = u_xlati68;
    let x_2184 : f32 = x_2118.x_AdditionalLightsAttenuation[x_2182].w;
    u_xlat72 = ((x_2177 * x_2180) + x_2184);
    let x_2186 : f32 = u_xlat72;
    u_xlat72 = clamp(x_2186, 0.0f, 1.0f);
    let x_2188 : f32 = u_xlat72;
    let x_2189 : f32 = u_xlat72;
    u_xlat72 = (x_2188 * x_2189);
    let x_2191 : f32 = u_xlat70;
    let x_2192 : f32 = u_xlat72;
    u_xlat70 = (x_2191 * x_2192);
    let x_2194 : vec3<f32> = u_xlat6;
    let x_2196 : i32 = u_xlati68;
    let x_2198 : vec4<f32> = x_2118.x_AdditionalLightsColor[x_2196];
    let x_2200 : vec3<f32> = (vec3<f32>(x_2194.x, x_2194.x, x_2194.x) * vec3<f32>(x_2198.x, x_2198.y, x_2198.z));
    let x_2201 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2200.x, x_2200.y, x_2200.z, x_2201.w);
    let x_2203 : vec3<f32> = u_xlat4;
    let x_2204 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(x_2203, vec3<f32>(x_2204.x, x_2204.y, x_2204.z));
    let x_2207 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2207, 0.0f, 1.0f);
    let x_2209 : f32 = u_xlat68;
    let x_2210 : f32 = u_xlat70;
    u_xlat68 = (x_2209 * x_2210);
    let x_2212 : f32 = u_xlat68;
    let x_2214 : vec4<f32> = u_xlat10;
    let x_2216 : vec3<f32> = (vec3<f32>(x_2212, x_2212, x_2212) * vec3<f32>(x_2214.x, x_2214.y, x_2214.z));
    let x_2217 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2216.x, x_2216.y, x_2216.z, x_2217.w);
    let x_2219 : vec4<f32> = u_xlat8;
    let x_2221 : f32 = u_xlat71;
    let x_2224 : vec3<f32> = u_xlat24;
    let x_2225 : vec3<f32> = ((vec3<f32>(x_2219.x, x_2219.y, x_2219.z) * vec3<f32>(x_2221, x_2221, x_2221)) + x_2224);
    let x_2226 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
    let x_2228 : vec4<f32> = u_xlat8;
    let x_2230 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2228.x, x_2228.y, x_2228.z), vec3<f32>(x_2230.x, x_2230.y, x_2230.z));
    let x_2233 : f32 = u_xlat68;
    u_xlat68 = max(x_2233, 1.17549435e-37f);
    let x_2235 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_2235);
    let x_2237 : f32 = u_xlat68;
    let x_2239 : vec4<f32> = u_xlat8;
    let x_2241 : vec3<f32> = (vec3<f32>(x_2237, x_2237, x_2237) * vec3<f32>(x_2239.x, x_2239.y, x_2239.z));
    let x_2242 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
    let x_2244 : vec3<f32> = u_xlat4;
    let x_2245 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(x_2244, vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
    let x_2248 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2248, 0.0f, 1.0f);
    let x_2250 : vec4<f32> = u_xlat9;
    let x_2252 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2250.x, x_2250.y, x_2250.z), vec3<f32>(x_2252.x, x_2252.y, x_2252.z));
    let x_2255 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2255, 0.0f, 1.0f);
    let x_2257 : f32 = u_xlat68;
    let x_2258 : f32 = u_xlat68;
    u_xlat68 = (x_2257 * x_2258);
    let x_2260 : f32 = u_xlat68;
    let x_2262 : f32 = u_xlat1.x;
    u_xlat68 = ((x_2260 * x_2262) + 1.000010014f);
    let x_2265 : f32 = u_xlat70;
    let x_2266 : f32 = u_xlat70;
    u_xlat70 = (x_2265 * x_2266);
    let x_2268 : f32 = u_xlat68;
    let x_2269 : f32 = u_xlat68;
    u_xlat68 = (x_2268 * x_2269);
    let x_2271 : f32 = u_xlat70;
    u_xlat70 = max(x_2271, 0.100000001f);
    let x_2273 : f32 = u_xlat68;
    let x_2274 : f32 = u_xlat70;
    u_xlat68 = (x_2273 * x_2274);
    let x_2276 : f32 = u_xlat67;
    let x_2277 : f32 = u_xlat68;
    u_xlat68 = (x_2276 * x_2277);
    let x_2280 : f32 = u_xlat43.x;
    let x_2281 : f32 = u_xlat68;
    u_xlat68 = (x_2280 / x_2281);
    let x_2283 : vec4<f32> = u_xlat0;
    let x_2285 : f32 = u_xlat68;
    let x_2288 : vec3<f32> = u_xlat23;
    let x_2289 : vec3<f32> = ((vec3<f32>(x_2283.x, x_2283.y, x_2283.z) * vec3<f32>(x_2285, x_2285, x_2285)) + x_2288);
    let x_2290 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
    let x_2292 : vec4<f32> = u_xlat8;
    let x_2294 : vec4<f32> = u_xlat10;
    let x_2297 : vec4<f32> = u_xlat7;
    let x_2299 : vec3<f32> = ((vec3<f32>(x_2292.x, x_2292.y, x_2292.z) * vec3<f32>(x_2294.x, x_2294.y, x_2294.z)) + vec3<f32>(x_2297.x, x_2297.y, x_2297.z));
    let x_2300 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2299.x, x_2299.y, x_2299.z, x_2300.w);

    continuing {
      let x_2302 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2302 + bitcast<u32>(1i));
    }
  }
  let x_2304 : vec3<f32> = u_xlat5;
  let x_2305 : vec3<f32> = u_xlat3;
  let x_2308 : vec3<f32> = u_xlat27;
  let x_2309 : vec3<f32> = ((x_2304 * vec3<f32>(x_2305.x, x_2305.x, x_2305.x)) + x_2308);
  let x_2310 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2309.x, x_2309.y, x_2309.z, x_2310.w);
  let x_2312 : vec4<f32> = u_xlat7;
  let x_2314 : vec4<f32> = u_xlat0;
  let x_2316 : vec3<f32> = (vec3<f32>(x_2312.x, x_2312.y, x_2312.z) + vec3<f32>(x_2314.x, x_2314.y, x_2314.z));
  let x_2317 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2316.x, x_2316.y, x_2316.z, x_2317.w);
  let x_2319 : f32 = u_xlat63;
  let x_2320 : f32 = u_xlat63;
  u_xlat63 = (x_2319 * -(x_2320));
  let x_2323 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2323);
  let x_2325 : vec4<f32> = u_xlat0;
  let x_2329 : vec4<f32> = x_44.unity_FogColor;
  let x_2332 : vec3<f32> = (vec3<f32>(x_2325.x, x_2325.y, x_2325.z) + -(vec3<f32>(x_2329.x, x_2329.y, x_2329.z)));
  let x_2333 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2332.x, x_2332.y, x_2332.z, x_2333.w);
  let x_2337 : f32 = u_xlat63;
  let x_2339 : vec4<f32> = u_xlat0;
  let x_2343 : vec4<f32> = x_44.unity_FogColor;
  let x_2345 : vec3<f32> = ((vec3<f32>(x_2337, x_2337, x_2337) * vec3<f32>(x_2339.x, x_2339.y, x_2339.z)) + vec3<f32>(x_2343.x, x_2343.y, x_2343.z));
  let x_2346 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
  let x_2351 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_2351 == 1.0f);
  let x_2353 : bool = u_xlatb0;
  if (x_2353) {
    let x_2358 : f32 = u_xlat2.x;
    x_2354 = x_2358;
  } else {
    x_2354 = 1.0f;
  }
  let x_2360 : f32 = x_2354;
  SV_Target0.w = x_2360;
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

