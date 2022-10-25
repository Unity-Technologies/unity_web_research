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
  x_DitheringTextureInvSize : f32,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_341 : MainLightShadows;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2337 : AdditionalLights;

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
  var u_xlatb45 : bool;
  var x_190 : f32;
  var u_xlatb24 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat45 : f32;
  var u_xlat5 : vec3<f32>;
  var x_256 : f32;
  var x_268 : f32;
  var x_279 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlat23 : vec3<f32>;
  var u_xlat64 : f32;
  var u_xlat22 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlatb67 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb69 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat69 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat28 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec3<f32>;
  var u_xlat57 : vec2<f32>;
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
  var u_xlatb66 : bool;
  var x_1984 : f32;
  var u_xlat66 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu22 : u32;
  var u_xlati67 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati22 : i32;
  var u_xlat70 : f32;
  var u_xlatb0 : bool;
  var x_2542 : f32;
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
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_44.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat24;
  u_xlat24 = vec3<f32>(x_163.x, x_163.y, x_164.z);
  let x_171 : vec3<f32> = u_xlat24;
  let x_174 : f32 = x_44.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.y), x_174);
  u_xlat24.x = x_175.w;
  let x_186 : f32 = x_184.unity_LODFade.x;
  u_xlatb45 = (x_186 >= 0.0f);
  let x_189 : bool = u_xlatb45;
  if (x_189) {
    let x_194 : f32 = u_xlat24.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat24.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat24.x = x_201;
  let x_204 : f32 = u_xlat24.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat24.x = (-(x_204) + x_207);
  let x_212 : f32 = u_xlat24.x;
  u_xlatb24 = (x_212 < 0.0f);
  let x_214 : bool = u_xlatb24;
  if (((select(0i, 1i, x_214) * -1i) != 0i)) {
    discard;
  }
  let x_225 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb24 = (x_225 == 0.0f);
  let x_230 : vec3<f32> = vs_TEXCOORD1;
  let x_235 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_236 : vec3<f32> = (-(x_230) + x_235);
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat45 = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_245);
  let x_247 : f32 = u_xlat45;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : bool = u_xlatb24;
  if (x_255) {
    let x_260 : f32 = u_xlat4.x;
    x_256 = x_260;
  } else {
    let x_264 : f32 = x_44.unity_MatrixV[0i].z;
    x_256 = x_264;
  }
  let x_265 : f32 = x_256;
  u_xlat5.x = x_265;
  let x_267 : bool = u_xlatb24;
  if (x_267) {
    let x_272 : f32 = u_xlat4.y;
    x_268 = x_272;
  } else {
    let x_275 : f32 = x_44.unity_MatrixV[1i].z;
    x_268 = x_275;
  }
  let x_276 : f32 = x_268;
  u_xlat5.y = x_276;
  let x_278 : bool = u_xlatb24;
  if (x_278) {
    let x_283 : f32 = u_xlat4.z;
    x_279 = x_283;
  } else {
    let x_286 : f32 = x_44.unity_MatrixV[2i].z;
    x_279 = x_286;
  }
  let x_287 : f32 = x_279;
  u_xlat5.z = x_287;
  let x_290 : vec3<f32> = vs_TEXCOORD2;
  let x_293 : vec4<f32> = vs_TEXCOORD3;
  u_xlat24 = (vec3<f32>(x_290.z, x_290.x, x_290.y) * vec3<f32>(x_293.y, x_293.z, x_293.x));
  let x_296 : vec3<f32> = vs_TEXCOORD2;
  let x_298 : vec4<f32> = vs_TEXCOORD3;
  let x_301 : vec3<f32> = u_xlat24;
  u_xlat24 = ((vec3<f32>(x_296.y, x_296.z, x_296.x) * vec3<f32>(x_298.z, x_298.x, x_298.y)) + -(x_301));
  let x_304 : vec3<f32> = u_xlat24;
  let x_305 : vec4<f32> = vs_TEXCOORD3;
  u_xlat24 = (x_304 * vec3<f32>(x_305.w, x_305.w, x_305.w));
  let x_308 : vec2<f32> = u_xlat43;
  let x_310 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_308.y, x_308.y, x_308.y) * x_310);
  let x_312 : vec2<f32> = u_xlat43;
  let x_314 : vec4<f32> = vs_TEXCOORD3;
  let x_317 : vec3<f32> = u_xlat24;
  u_xlat24 = ((vec3<f32>(x_312.x, x_312.x, x_312.x) * vec3<f32>(x_314.x, x_314.y, x_314.z)) + x_317);
  let x_319 : f32 = u_xlat63;
  let x_321 : vec3<f32> = vs_TEXCOORD2;
  let x_323 : vec3<f32> = u_xlat24;
  u_xlat24 = ((vec3<f32>(x_319, x_319, x_319) * x_321) + x_323);
  let x_325 : vec3<f32> = u_xlat24;
  let x_326 : vec3<f32> = u_xlat24;
  u_xlat63 = dot(x_325, x_326);
  let x_328 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_328);
  let x_330 : f32 = u_xlat63;
  let x_332 : vec3<f32> = u_xlat24;
  let x_333 : vec3<f32> = (vec3<f32>(x_330, x_330, x_330) * x_332);
  let x_334 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec3<f32> = vs_TEXCOORD1;
  let x_343 : vec4<f32> = x_341.x_CascadeShadowSplitSpheres0;
  u_xlat24 = (x_336 + -(vec3<f32>(x_343.x, x_343.y, x_343.z)));
  let x_348 : vec3<f32> = vs_TEXCOORD1;
  let x_350 : vec4<f32> = x_341.x_CascadeShadowSplitSpheres1;
  u_xlat6 = (x_348 + -(vec3<f32>(x_350.x, x_350.y, x_350.z)));
  let x_355 : vec3<f32> = vs_TEXCOORD1;
  let x_358 : vec4<f32> = x_341.x_CascadeShadowSplitSpheres2;
  let x_361 : vec3<f32> = (x_355 + -(vec3<f32>(x_358.x, x_358.y, x_358.z)));
  let x_362 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_365 : vec3<f32> = vs_TEXCOORD1;
  let x_368 : vec4<f32> = x_341.x_CascadeShadowSplitSpheres3;
  let x_371 : vec3<f32> = (x_365 + -(vec3<f32>(x_368.x, x_368.y, x_368.z)));
  let x_372 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : vec3<f32> = u_xlat24;
  let x_376 : vec3<f32> = u_xlat24;
  u_xlat9.x = dot(x_375, x_376);
  let x_379 : vec3<f32> = u_xlat6;
  let x_380 : vec3<f32> = u_xlat6;
  u_xlat9.y = dot(x_379, x_380);
  let x_383 : vec4<f32> = u_xlat7;
  let x_385 : vec4<f32> = u_xlat7;
  u_xlat9.z = dot(vec3<f32>(x_383.x, x_383.y, x_383.z), vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_389 : vec4<f32> = u_xlat8;
  let x_391 : vec4<f32> = u_xlat8;
  u_xlat9.w = dot(vec3<f32>(x_389.x, x_389.y, x_389.z), vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_398 : vec4<f32> = u_xlat9;
  let x_401 : vec4<f32> = x_341.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_398 < x_401);
  let x_404 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_404);
  let x_408 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_408);
  let x_412 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_412);
  let x_416 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_416);
  let x_420 : bool = u_xlatb6.x;
  u_xlat24.x = select(-0.0f, -1.0f, x_420);
  let x_425 : bool = u_xlatb6.y;
  u_xlat24.y = select(-0.0f, -1.0f, x_425);
  let x_429 : bool = u_xlatb6.z;
  u_xlat24.z = select(-0.0f, -1.0f, x_429);
  let x_432 : vec3<f32> = u_xlat24;
  let x_433 : vec4<f32> = u_xlat7;
  u_xlat24 = (x_432 + vec3<f32>(x_433.y, x_433.z, x_433.w));
  let x_436 : vec3<f32> = u_xlat24;
  let x_438 : vec3<f32> = max(x_436, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_439 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_439.x, x_438.x, x_438.y, x_438.z);
  let x_441 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(x_441, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_446 : f32 = u_xlat63;
  u_xlat63 = (-(x_446) + 4.0f);
  let x_451 : f32 = u_xlat63;
  u_xlatu63 = u32(x_451);
  let x_455 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_455) << bitcast<u32>(2i));
  let x_458 : vec3<f32> = vs_TEXCOORD1;
  let x_460 : i32 = u_xlati63;
  let x_463 : i32 = u_xlati63;
  let x_467 : vec4<f32> = x_341.x_MainLightWorldToShadow[((x_460 + 1i) / 4i)][((x_463 + 1i) % 4i)];
  u_xlat24 = (vec3<f32>(x_458.y, x_458.y, x_458.y) * vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : i32 = u_xlati63;
  let x_472 : i32 = u_xlati63;
  let x_475 : vec4<f32> = x_341.x_MainLightWorldToShadow[(x_470 / 4i)][(x_472 % 4i)];
  let x_477 : vec3<f32> = vs_TEXCOORD1;
  let x_480 : vec3<f32> = u_xlat24;
  u_xlat24 = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(x_477.x, x_477.x, x_477.x)) + x_480);
  let x_482 : i32 = u_xlati63;
  let x_485 : i32 = u_xlati63;
  let x_489 : vec4<f32> = x_341.x_MainLightWorldToShadow[((x_482 + 2i) / 4i)][((x_485 + 2i) % 4i)];
  let x_491 : vec3<f32> = vs_TEXCOORD1;
  let x_494 : vec3<f32> = u_xlat24;
  u_xlat24 = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(x_491.z, x_491.z, x_491.z)) + x_494);
  let x_496 : vec3<f32> = u_xlat24;
  let x_497 : i32 = u_xlati63;
  let x_500 : i32 = u_xlati63;
  let x_504 : vec4<f32> = x_341.x_MainLightWorldToShadow[((x_497 + 3i) / 4i)][((x_500 + 3i) % 4i)];
  u_xlat24 = (x_496 + vec3<f32>(x_504.x, x_504.y, x_504.z));
  u_xlat4.w = 1.0f;
  let x_510 : vec4<f32> = x_184.unity_SHAr;
  let x_511 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_510, x_511);
  let x_516 : vec4<f32> = x_184.unity_SHAg;
  let x_517 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_516, x_517);
  let x_522 : vec4<f32> = x_184.unity_SHAb;
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_522, x_523);
  let x_526 : vec4<f32> = u_xlat4;
  let x_528 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_526.y, x_526.z, x_526.z, x_526.x) * vec4<f32>(x_528.x, x_528.y, x_528.z, x_528.z));
  let x_533 : vec4<f32> = x_184.unity_SHBr;
  let x_534 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_533, x_534);
  let x_539 : vec4<f32> = x_184.unity_SHBg;
  let x_540 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_539, x_540);
  let x_545 : vec4<f32> = x_184.unity_SHBb;
  let x_546 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_545, x_546);
  let x_550 : f32 = u_xlat4.y;
  let x_552 : f32 = u_xlat4.y;
  u_xlat63 = (x_550 * x_552);
  let x_555 : f32 = u_xlat4.x;
  let x_557 : f32 = u_xlat4.x;
  let x_559 : f32 = u_xlat63;
  u_xlat63 = ((x_555 * x_557) + -(x_559));
  let x_564 : vec4<f32> = x_184.unity_SHC;
  let x_566 : f32 = u_xlat63;
  let x_569 : vec4<f32> = u_xlat8;
  let x_571 : vec3<f32> = ((vec3<f32>(x_564.x, x_564.y, x_564.z) * vec3<f32>(x_566, x_566, x_566)) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : vec3<f32> = u_xlat6;
  let x_575 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_574 + vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_578, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_582 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_583 : vec2<f32> = vec2<f32>(x_582.x, x_582.y);
  u_xlat43 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_583.x, x_583.y));
  let x_588 : vec2<f32> = u_xlat43;
  let x_589 : vec4<f32> = hlslcc_FragCoord;
  let x_591 : vec2<f32> = (x_588 * vec2<f32>(x_589.x, x_589.y));
  let x_592 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
  let x_595 : f32 = u_xlat7.y;
  let x_597 : f32 = x_44.x_ScaleBiasRt.x;
  let x_600 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_595 * x_597) + x_600);
  let x_602 : f32 = u_xlat63;
  u_xlat7.z = (-(x_602) + 1.0f);
  let x_607 : f32 = u_xlat1.x;
  u_xlat63 = ((-(x_607) * 0.959999979f) + 0.959999979f);
  let x_612 : f32 = u_xlat63;
  u_xlat43.x = (-(x_612) + 1.0f);
  let x_617 : f32 = u_xlat63;
  let x_619 : vec4<f32> = u_xlat2;
  u_xlat23 = (vec3<f32>(x_617, x_617, x_617) * vec3<f32>(x_619.y, x_619.z, x_619.w));
  let x_622 : vec4<f32> = u_xlat0;
  let x_625 : vec4<f32> = x_69.x_BaseColor;
  let x_630 : vec3<f32> = ((vec3<f32>(x_622.x, x_622.y, x_622.z) * vec3<f32>(x_625.x, x_625.y, x_625.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_631 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_633 : vec2<f32> = u_xlat1;
  let x_635 : vec4<f32> = u_xlat0;
  let x_640 : vec3<f32> = ((vec3<f32>(x_633.x, x_633.x, x_633.x) * vec3<f32>(x_635.x, x_635.y, x_635.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_641 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_644 : f32 = u_xlat1.y;
  let x_647 : f32 = x_69.x_Smoothness;
  u_xlat63 = ((-(x_644) * x_647) + 1.0f);
  let x_650 : f32 = u_xlat63;
  let x_651 : f32 = u_xlat63;
  u_xlat1.x = (x_650 * x_651);
  let x_655 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_655, 0.0078125f);
  let x_661 : f32 = u_xlat1.x;
  let x_663 : f32 = u_xlat1.x;
  u_xlat64 = (x_661 * x_663);
  let x_667 : f32 = u_xlat1.y;
  let x_669 : f32 = x_69.x_Smoothness;
  let x_672 : f32 = u_xlat43.x;
  u_xlat22 = ((x_667 * x_669) + x_672);
  let x_674 : f32 = u_xlat22;
  u_xlat22 = clamp(x_674, 0.0f, 1.0f);
  let x_677 : f32 = u_xlat1.x;
  u_xlat43.x = ((x_677 * 4.0f) + 2.0f);
  let x_687 : vec4<f32> = u_xlat7;
  let x_690 : f32 = x_44.x_GlobalMipBias.x;
  let x_691 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_687.x, x_687.z), x_690);
  u_xlat67 = x_691.x;
  let x_694 : f32 = u_xlat67;
  u_xlat68 = (x_694 + -1.0f);
  let x_697 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_698 : f32 = u_xlat68;
  u_xlat68 = ((x_697 * x_698) + 1.0f);
  let x_702 : f32 = u_xlat3.x;
  let x_703 : f32 = u_xlat67;
  u_xlat3.x = min(x_702, x_703);
  let x_708 : f32 = x_341.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_708);
  let x_710 : bool = u_xlatb67;
  if (x_710) {
    let x_714 : f32 = x_341.x_MainLightShadowParams.y;
    u_xlatb67 = (x_714 == 1.0f);
    let x_716 : bool = u_xlatb67;
    if (x_716) {
      let x_719 : vec3<f32> = u_xlat24;
      let x_722 : vec4<f32> = x_341.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_719.x, x_719.y, x_719.x, x_719.y) + x_722);
      let x_725 : vec4<f32> = u_xlat7;
      let x_726 : vec2<f32> = vec2<f32>(x_725.x, x_725.y);
      let x_728 : f32 = u_xlat24.z;
      txVec0 = vec3<f32>(x_726.x, x_726.y, x_728);
      let x_740 : vec3<f32> = txVec0;
      let x_742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_740.xy, x_740.z);
      u_xlat8.x = x_742;
      let x_745 : vec4<f32> = u_xlat7;
      let x_746 : vec2<f32> = vec2<f32>(x_745.z, x_745.w);
      let x_748 : f32 = u_xlat24.z;
      txVec1 = vec3<f32>(x_746.x, x_746.y, x_748);
      let x_755 : vec3<f32> = txVec1;
      let x_757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_755.xy, x_755.z);
      u_xlat8.y = x_757;
      let x_759 : vec3<f32> = u_xlat24;
      let x_762 : vec4<f32> = x_341.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_759.x, x_759.y, x_759.x, x_759.y) + x_762);
      let x_765 : vec4<f32> = u_xlat7;
      let x_766 : vec2<f32> = vec2<f32>(x_765.x, x_765.y);
      let x_768 : f32 = u_xlat24.z;
      txVec2 = vec3<f32>(x_766.x, x_766.y, x_768);
      let x_775 : vec3<f32> = txVec2;
      let x_777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_775.xy, x_775.z);
      u_xlat8.z = x_777;
      let x_780 : vec4<f32> = u_xlat7;
      let x_781 : vec2<f32> = vec2<f32>(x_780.z, x_780.w);
      let x_783 : f32 = u_xlat24.z;
      txVec3 = vec3<f32>(x_781.x, x_781.y, x_783);
      let x_790 : vec3<f32> = txVec3;
      let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_790.xy, x_790.z);
      u_xlat8.w = x_792;
      let x_794 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_794, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_801 : f32 = x_341.x_MainLightShadowParams.y;
      u_xlatb69 = (x_801 == 2.0f);
      let x_803 : bool = u_xlatb69;
      if (x_803) {
        let x_806 : vec3<f32> = u_xlat24;
        let x_809 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_814 : vec2<f32> = ((vec2<f32>(x_806.x, x_806.y) * vec2<f32>(x_809.z, x_809.w)) + vec2<f32>(0.5f, 0.5f));
        let x_815 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_814.x, x_814.y, x_815.z, x_815.w);
        let x_817 : vec4<f32> = u_xlat7;
        let x_819 : vec2<f32> = floor(vec2<f32>(x_817.x, x_817.y));
        let x_820 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
        let x_823 : vec3<f32> = u_xlat24;
        let x_826 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_829 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_823.x, x_823.y) * vec2<f32>(x_826.z, x_826.w)) + -(vec2<f32>(x_829.x, x_829.y)));
        let x_833 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_833.x, x_833.x, x_833.y, x_833.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_837 : vec4<f32> = u_xlat8;
        let x_839 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_837.x, x_837.x, x_837.z, x_837.z) * vec4<f32>(x_839.x, x_839.x, x_839.z, x_839.z));
        let x_842 : vec4<f32> = u_xlat9;
        let x_846 : vec2<f32> = (vec2<f32>(x_842.y, x_842.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_847 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_846.x, x_847.y, x_846.y, x_847.w);
        let x_849 : vec4<f32> = u_xlat9;
        let x_852 : vec2<f32> = u_xlat49;
        let x_854 : vec2<f32> = ((vec2<f32>(x_849.x, x_849.z) * vec2<f32>(0.5f, 0.5f)) + -(x_852));
        let x_855 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_858 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_858) + vec2<f32>(1.0f, 1.0f));
        let x_862 : vec2<f32> = u_xlat49;
        let x_864 : vec2<f32> = min(x_862, vec2<f32>(0.0f, 0.0f));
        let x_865 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
        let x_867 : vec4<f32> = u_xlat10;
        let x_870 : vec4<f32> = u_xlat10;
        let x_873 : vec2<f32> = u_xlat51;
        let x_874 : vec2<f32> = ((-(vec2<f32>(x_867.x, x_867.y)) * vec2<f32>(x_870.x, x_870.y)) + x_873);
        let x_875 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_874.x, x_874.y, x_875.z, x_875.w);
        let x_877 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_877, vec2<f32>(0.0f, 0.0f));
        let x_879 : vec2<f32> = u_xlat49;
        let x_881 : vec2<f32> = u_xlat49;
        let x_883 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_879) * x_881) + vec2<f32>(x_883.y, x_883.w));
        let x_886 : vec4<f32> = u_xlat10;
        let x_888 : vec2<f32> = (vec2<f32>(x_886.x, x_886.y) + vec2<f32>(1.0f, 1.0f));
        let x_889 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
        let x_891 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_891 + vec2<f32>(1.0f, 1.0f));
        let x_894 : vec4<f32> = u_xlat9;
        let x_898 : vec2<f32> = (vec2<f32>(x_894.x, x_894.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_899 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_898.x, x_898.y, x_899.z, x_899.w);
        let x_901 : vec2<f32> = u_xlat51;
        let x_902 : vec2<f32> = (x_901 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_903 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
        let x_905 : vec4<f32> = u_xlat10;
        let x_907 : vec2<f32> = (vec2<f32>(x_905.x, x_905.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_908 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
        let x_911 : vec2<f32> = u_xlat49;
        let x_912 : vec2<f32> = (x_911 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_913 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
        let x_915 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_915.y, x_915.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_919 : f32 = u_xlat10.x;
        u_xlat11.z = x_919;
        let x_922 : f32 = u_xlat49.x;
        u_xlat11.w = x_922;
        let x_925 : f32 = u_xlat12.x;
        u_xlat9.z = x_925;
        let x_928 : f32 = u_xlat8.x;
        u_xlat9.w = x_928;
        let x_931 : vec4<f32> = u_xlat9;
        let x_933 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_931.z, x_931.w, x_931.x, x_931.z) + vec4<f32>(x_933.z, x_933.w, x_933.x, x_933.z));
        let x_937 : f32 = u_xlat11.y;
        u_xlat10.z = x_937;
        let x_940 : f32 = u_xlat49.y;
        u_xlat10.w = x_940;
        let x_943 : f32 = u_xlat9.y;
        u_xlat12.z = x_943;
        let x_946 : f32 = u_xlat8.z;
        u_xlat12.w = x_946;
        let x_948 : vec4<f32> = u_xlat10;
        let x_950 : vec4<f32> = u_xlat12;
        let x_952 : vec3<f32> = (vec3<f32>(x_948.z, x_948.y, x_948.w) + vec3<f32>(x_950.z, x_950.y, x_950.w));
        let x_953 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
        let x_955 : vec4<f32> = u_xlat9;
        let x_957 : vec4<f32> = u_xlat13;
        let x_959 : vec3<f32> = (vec3<f32>(x_955.x, x_955.z, x_955.w) / vec3<f32>(x_957.z, x_957.w, x_957.y));
        let x_960 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
        let x_962 : vec4<f32> = u_xlat9;
        let x_968 : vec3<f32> = (vec3<f32>(x_962.x, x_962.y, x_962.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_969 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
        let x_971 : vec4<f32> = u_xlat12;
        let x_973 : vec4<f32> = u_xlat8;
        let x_975 : vec3<f32> = (vec3<f32>(x_971.z, x_971.y, x_971.w) / vec3<f32>(x_973.x, x_973.y, x_973.z));
        let x_976 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat10;
        let x_980 : vec3<f32> = (vec3<f32>(x_978.x, x_978.y, x_978.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_981 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
        let x_983 : vec4<f32> = u_xlat9;
        let x_986 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_988 : vec3<f32> = (vec3<f32>(x_983.y, x_983.x, x_983.z) * vec3<f32>(x_986.x, x_986.x, x_986.x));
        let x_989 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat10;
        let x_994 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_996 : vec3<f32> = (vec3<f32>(x_991.x, x_991.y, x_991.z) * vec3<f32>(x_994.y, x_994.y, x_994.y));
        let x_997 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
        let x_1000 : f32 = u_xlat10.x;
        u_xlat9.w = x_1000;
        let x_1002 : vec4<f32> = u_xlat7;
        let x_1005 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y) * vec4<f32>(x_1005.x, x_1005.y, x_1005.x, x_1005.y)) + vec4<f32>(x_1008.y, x_1008.w, x_1008.x, x_1008.w));
        let x_1011 : vec4<f32> = u_xlat7;
        let x_1014 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1017 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1011.x, x_1011.y) * vec2<f32>(x_1014.x, x_1014.y)) + vec2<f32>(x_1017.z, x_1017.w));
        let x_1021 : f32 = u_xlat9.y;
        u_xlat10.w = x_1021;
        let x_1023 : vec4<f32> = u_xlat10;
        let x_1024 : vec2<f32> = vec2<f32>(x_1023.y, x_1023.z);
        let x_1025 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1025.x, x_1024.x, x_1025.z, x_1024.y);
        let x_1027 : vec4<f32> = u_xlat7;
        let x_1030 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1033 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1027.x, x_1027.y, x_1027.x, x_1027.y) * vec4<f32>(x_1030.x, x_1030.y, x_1030.x, x_1030.y)) + vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1033.y));
        let x_1036 : vec4<f32> = u_xlat7;
        let x_1039 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1036.x, x_1036.y, x_1036.x, x_1036.y) * vec4<f32>(x_1039.x, x_1039.y, x_1039.x, x_1039.y)) + vec4<f32>(x_1042.w, x_1042.y, x_1042.w, x_1042.z));
        let x_1045 : vec4<f32> = u_xlat7;
        let x_1048 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1051 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y) * vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y)) + vec4<f32>(x_1051.x, x_1051.w, x_1051.z, x_1051.w));
        let x_1055 : vec4<f32> = u_xlat8;
        let x_1057 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1055.x, x_1055.x, x_1055.x, x_1055.y) * vec4<f32>(x_1057.z, x_1057.w, x_1057.y, x_1057.z));
        let x_1061 : vec4<f32> = u_xlat8;
        let x_1063 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1061.y, x_1061.y, x_1061.z, x_1061.z) * x_1063);
        let x_1067 : f32 = u_xlat8.z;
        let x_1069 : f32 = u_xlat13.y;
        u_xlat69 = (x_1067 * x_1069);
        let x_1072 : vec4<f32> = u_xlat11;
        let x_1073 : vec2<f32> = vec2<f32>(x_1072.x, x_1072.y);
        let x_1075 : f32 = u_xlat24.z;
        txVec4 = vec3<f32>(x_1073.x, x_1073.y, x_1075);
        let x_1082 : vec3<f32> = txVec4;
        let x_1084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1082.xy, x_1082.z);
        u_xlat7.x = x_1084;
        let x_1087 : vec4<f32> = u_xlat11;
        let x_1088 : vec2<f32> = vec2<f32>(x_1087.z, x_1087.w);
        let x_1090 : f32 = u_xlat24.z;
        txVec5 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
        let x_1098 : vec3<f32> = txVec5;
        let x_1100 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1098.xy, x_1098.z);
        u_xlat28 = x_1100;
        let x_1101 : f32 = u_xlat28;
        let x_1103 : f32 = u_xlat14.y;
        u_xlat28 = (x_1101 * x_1103);
        let x_1106 : f32 = u_xlat14.x;
        let x_1108 : f32 = u_xlat7.x;
        let x_1110 : f32 = u_xlat28;
        u_xlat7.x = ((x_1106 * x_1108) + x_1110);
        let x_1114 : vec2<f32> = u_xlat49;
        let x_1116 : f32 = u_xlat24.z;
        txVec6 = vec3<f32>(x_1114.x, x_1114.y, x_1116);
        let x_1123 : vec3<f32> = txVec6;
        let x_1125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1123.xy, x_1123.z);
        u_xlat28 = x_1125;
        let x_1127 : f32 = u_xlat14.z;
        let x_1128 : f32 = u_xlat28;
        let x_1131 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1127 * x_1128) + x_1131);
        let x_1135 : vec4<f32> = u_xlat10;
        let x_1136 : vec2<f32> = vec2<f32>(x_1135.x, x_1135.y);
        let x_1138 : f32 = u_xlat24.z;
        txVec7 = vec3<f32>(x_1136.x, x_1136.y, x_1138);
        let x_1145 : vec3<f32> = txVec7;
        let x_1147 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1145.xy, x_1145.z);
        u_xlat28 = x_1147;
        let x_1149 : f32 = u_xlat14.w;
        let x_1150 : f32 = u_xlat28;
        let x_1153 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1149 * x_1150) + x_1153);
        let x_1157 : vec4<f32> = u_xlat12;
        let x_1158 : vec2<f32> = vec2<f32>(x_1157.x, x_1157.y);
        let x_1160 : f32 = u_xlat24.z;
        txVec8 = vec3<f32>(x_1158.x, x_1158.y, x_1160);
        let x_1167 : vec3<f32> = txVec8;
        let x_1169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1167.xy, x_1167.z);
        u_xlat28 = x_1169;
        let x_1171 : f32 = u_xlat15.x;
        let x_1172 : f32 = u_xlat28;
        let x_1175 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1171 * x_1172) + x_1175);
        let x_1179 : vec4<f32> = u_xlat12;
        let x_1180 : vec2<f32> = vec2<f32>(x_1179.z, x_1179.w);
        let x_1182 : f32 = u_xlat24.z;
        txVec9 = vec3<f32>(x_1180.x, x_1180.y, x_1182);
        let x_1189 : vec3<f32> = txVec9;
        let x_1191 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1189.xy, x_1189.z);
        u_xlat28 = x_1191;
        let x_1193 : f32 = u_xlat15.y;
        let x_1194 : f32 = u_xlat28;
        let x_1197 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1193 * x_1194) + x_1197);
        let x_1201 : vec4<f32> = u_xlat10;
        let x_1202 : vec2<f32> = vec2<f32>(x_1201.z, x_1201.w);
        let x_1204 : f32 = u_xlat24.z;
        txVec10 = vec3<f32>(x_1202.x, x_1202.y, x_1204);
        let x_1211 : vec3<f32> = txVec10;
        let x_1213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1211.xy, x_1211.z);
        u_xlat28 = x_1213;
        let x_1215 : f32 = u_xlat15.z;
        let x_1216 : f32 = u_xlat28;
        let x_1219 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1215 * x_1216) + x_1219);
        let x_1223 : vec4<f32> = u_xlat9;
        let x_1224 : vec2<f32> = vec2<f32>(x_1223.x, x_1223.y);
        let x_1226 : f32 = u_xlat24.z;
        txVec11 = vec3<f32>(x_1224.x, x_1224.y, x_1226);
        let x_1233 : vec3<f32> = txVec11;
        let x_1235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1233.xy, x_1233.z);
        u_xlat28 = x_1235;
        let x_1237 : f32 = u_xlat15.w;
        let x_1238 : f32 = u_xlat28;
        let x_1241 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1237 * x_1238) + x_1241);
        let x_1245 : vec4<f32> = u_xlat9;
        let x_1246 : vec2<f32> = vec2<f32>(x_1245.z, x_1245.w);
        let x_1248 : f32 = u_xlat24.z;
        txVec12 = vec3<f32>(x_1246.x, x_1246.y, x_1248);
        let x_1255 : vec3<f32> = txVec12;
        let x_1257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1255.xy, x_1255.z);
        u_xlat28 = x_1257;
        let x_1258 : f32 = u_xlat69;
        let x_1259 : f32 = u_xlat28;
        let x_1262 : f32 = u_xlat7.x;
        u_xlat67 = ((x_1258 * x_1259) + x_1262);
      } else {
        let x_1265 : vec3<f32> = u_xlat24;
        let x_1268 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1271 : vec2<f32> = ((vec2<f32>(x_1265.x, x_1265.y) * vec2<f32>(x_1268.z, x_1268.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1272 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1271.x, x_1271.y, x_1272.z, x_1272.w);
        let x_1274 : vec4<f32> = u_xlat7;
        let x_1276 : vec2<f32> = floor(vec2<f32>(x_1274.x, x_1274.y));
        let x_1277 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1276.x, x_1276.y, x_1277.z, x_1277.w);
        let x_1279 : vec3<f32> = u_xlat24;
        let x_1282 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1279.x, x_1279.y) * vec2<f32>(x_1282.z, x_1282.w)) + -(vec2<f32>(x_1285.x, x_1285.y)));
        let x_1289 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1289.x, x_1289.x, x_1289.y, x_1289.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1292 : vec4<f32> = u_xlat8;
        let x_1294 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1292.x, x_1292.x, x_1292.z, x_1292.z) * vec4<f32>(x_1294.x, x_1294.x, x_1294.z, x_1294.z));
        let x_1297 : vec4<f32> = u_xlat9;
        let x_1301 : vec2<f32> = (vec2<f32>(x_1297.y, x_1297.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1302 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1302.x, x_1301.x, x_1302.z, x_1301.y);
        let x_1304 : vec4<f32> = u_xlat9;
        let x_1307 : vec2<f32> = u_xlat49;
        let x_1309 : vec2<f32> = ((vec2<f32>(x_1304.x, x_1304.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1307));
        let x_1310 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1309.x, x_1310.y, x_1309.y, x_1310.w);
        let x_1312 : vec2<f32> = u_xlat49;
        let x_1314 : vec2<f32> = (-(x_1312) + vec2<f32>(1.0f, 1.0f));
        let x_1315 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1314.x, x_1314.y, x_1315.z, x_1315.w);
        let x_1317 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1317, vec2<f32>(0.0f, 0.0f));
        let x_1319 : vec2<f32> = u_xlat51;
        let x_1321 : vec2<f32> = u_xlat51;
        let x_1323 : vec4<f32> = u_xlat9;
        let x_1325 : vec2<f32> = ((-(x_1319) * x_1321) + vec2<f32>(x_1323.x, x_1323.y));
        let x_1326 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1325.x, x_1325.y, x_1326.z, x_1326.w);
        let x_1328 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1328, vec2<f32>(0.0f, 0.0f));
        let x_1331 : vec2<f32> = u_xlat51;
        let x_1333 : vec2<f32> = u_xlat51;
        let x_1335 : vec4<f32> = u_xlat8;
        let x_1337 : vec2<f32> = ((-(x_1331) * x_1333) + vec2<f32>(x_1335.y, x_1335.w));
        let x_1338 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1337.x, x_1338.y, x_1337.y);
        let x_1340 : vec4<f32> = u_xlat9;
        let x_1342 : vec2<f32> = (vec2<f32>(x_1340.x, x_1340.y) + vec2<f32>(2.0f, 2.0f));
        let x_1343 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
        let x_1345 : vec3<f32> = u_xlat29;
        let x_1347 : vec2<f32> = (vec2<f32>(x_1345.x, x_1345.z) + vec2<f32>(2.0f, 2.0f));
        let x_1348 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1348.x, x_1347.x, x_1348.z, x_1347.y);
        let x_1351 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1351 * 0.081632003f);
        let x_1355 : vec4<f32> = u_xlat8;
        let x_1358 : vec3<f32> = (vec3<f32>(x_1355.z, x_1355.x, x_1355.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1359 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
        let x_1361 : vec4<f32> = u_xlat9;
        let x_1364 : vec2<f32> = (vec2<f32>(x_1361.x, x_1361.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1365 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
        let x_1368 : f32 = u_xlat12.y;
        u_xlat11.x = x_1368;
        let x_1370 : vec2<f32> = u_xlat49;
        let x_1377 : vec2<f32> = ((vec2<f32>(x_1370.x, x_1370.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1378 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1378.x, x_1377.x, x_1378.z, x_1377.y);
        let x_1380 : vec2<f32> = u_xlat49;
        let x_1384 : vec2<f32> = ((vec2<f32>(x_1380.x, x_1380.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1385 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1384.x, x_1385.y, x_1384.y, x_1385.w);
        let x_1388 : f32 = u_xlat8.x;
        u_xlat9.y = x_1388;
        let x_1391 : f32 = u_xlat10.y;
        u_xlat9.w = x_1391;
        let x_1393 : vec4<f32> = u_xlat9;
        let x_1394 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1393 + x_1394);
        let x_1396 : vec2<f32> = u_xlat49;
        let x_1399 : vec2<f32> = ((vec2<f32>(x_1396.y, x_1396.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1400 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1400.x, x_1399.x, x_1400.z, x_1399.y);
        let x_1402 : vec2<f32> = u_xlat49;
        let x_1405 : vec2<f32> = ((vec2<f32>(x_1402.y, x_1402.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1406 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1405.x, x_1406.y, x_1405.y, x_1406.w);
        let x_1409 : f32 = u_xlat8.y;
        u_xlat10.y = x_1409;
        let x_1411 : vec4<f32> = u_xlat10;
        let x_1412 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1411 + x_1412);
        let x_1414 : vec4<f32> = u_xlat9;
        let x_1415 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1414 / x_1415);
        let x_1417 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1417 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1423 : vec4<f32> = u_xlat10;
        let x_1424 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1423 / x_1424);
        let x_1426 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1426 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1428 : vec4<f32> = u_xlat9;
        let x_1431 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1428.w, x_1428.x, x_1428.y, x_1428.z) * vec4<f32>(x_1431.x, x_1431.x, x_1431.x, x_1431.x));
        let x_1434 : vec4<f32> = u_xlat10;
        let x_1437 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1434.x, x_1434.w, x_1434.y, x_1434.z) * vec4<f32>(x_1437.y, x_1437.y, x_1437.y, x_1437.y));
        let x_1440 : vec4<f32> = u_xlat9;
        let x_1441 : vec3<f32> = vec3<f32>(x_1440.y, x_1440.z, x_1440.w);
        let x_1442 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1441.x, x_1442.y, x_1441.y, x_1441.z);
        let x_1445 : f32 = u_xlat10.x;
        u_xlat12.y = x_1445;
        let x_1447 : vec4<f32> = u_xlat7;
        let x_1450 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1453 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1447.x, x_1447.y, x_1447.x, x_1447.y) * vec4<f32>(x_1450.x, x_1450.y, x_1450.x, x_1450.y)) + vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1453.y));
        let x_1456 : vec4<f32> = u_xlat7;
        let x_1459 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1462 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1456.x, x_1456.y) * vec2<f32>(x_1459.x, x_1459.y)) + vec2<f32>(x_1462.w, x_1462.y));
        let x_1466 : f32 = u_xlat12.y;
        u_xlat9.y = x_1466;
        let x_1469 : f32 = u_xlat10.z;
        u_xlat12.y = x_1469;
        let x_1471 : vec4<f32> = u_xlat7;
        let x_1474 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1477 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1471.x, x_1471.y, x_1471.x, x_1471.y) * vec4<f32>(x_1474.x, x_1474.y, x_1474.x, x_1474.y)) + vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1477.y));
        let x_1480 : vec4<f32> = u_xlat7;
        let x_1483 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1486 : vec4<f32> = u_xlat12;
        let x_1488 : vec2<f32> = ((vec2<f32>(x_1480.x, x_1480.y) * vec2<f32>(x_1483.x, x_1483.y)) + vec2<f32>(x_1486.w, x_1486.y));
        let x_1489 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1488.x, x_1488.y, x_1489.z, x_1489.w);
        let x_1492 : f32 = u_xlat12.y;
        u_xlat9.z = x_1492;
        let x_1495 : vec4<f32> = u_xlat7;
        let x_1498 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1501 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1495.x, x_1495.y, x_1495.x, x_1495.y) * vec4<f32>(x_1498.x, x_1498.y, x_1498.x, x_1498.y)) + vec4<f32>(x_1501.x, x_1501.y, x_1501.x, x_1501.z));
        let x_1505 : f32 = u_xlat10.w;
        u_xlat12.y = x_1505;
        let x_1508 : vec4<f32> = u_xlat7;
        let x_1511 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1514 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1508.x, x_1508.y, x_1508.x, x_1508.y) * vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.y)) + vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1514.y));
        let x_1518 : vec4<f32> = u_xlat7;
        let x_1521 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1524 : vec4<f32> = u_xlat12;
        let x_1526 : vec2<f32> = ((vec2<f32>(x_1518.x, x_1518.y) * vec2<f32>(x_1521.x, x_1521.y)) + vec2<f32>(x_1524.w, x_1524.y));
        let x_1527 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1526.x, x_1526.y, x_1527.z);
        let x_1530 : f32 = u_xlat12.y;
        u_xlat9.w = x_1530;
        let x_1533 : vec4<f32> = u_xlat7;
        let x_1536 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1539 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1533.x, x_1533.y) * vec2<f32>(x_1536.x, x_1536.y)) + vec2<f32>(x_1539.x, x_1539.w));
        let x_1542 : vec4<f32> = u_xlat12;
        let x_1543 : vec3<f32> = vec3<f32>(x_1542.x, x_1542.z, x_1542.w);
        let x_1544 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1543.x, x_1544.y, x_1543.y, x_1543.z);
        let x_1546 : vec4<f32> = u_xlat7;
        let x_1549 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1552 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1546.x, x_1546.y, x_1546.x, x_1546.y) * vec4<f32>(x_1549.x, x_1549.y, x_1549.x, x_1549.y)) + vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1552.y));
        let x_1556 : vec4<f32> = u_xlat7;
        let x_1559 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1562 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1556.x, x_1556.y) * vec2<f32>(x_1559.x, x_1559.y)) + vec2<f32>(x_1562.w, x_1562.y));
        let x_1566 : f32 = u_xlat9.x;
        u_xlat10.x = x_1566;
        let x_1568 : vec4<f32> = u_xlat7;
        let x_1571 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1574 : vec4<f32> = u_xlat10;
        let x_1576 : vec2<f32> = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(x_1571.x, x_1571.y)) + vec2<f32>(x_1574.x, x_1574.y));
        let x_1577 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1576.x, x_1576.y, x_1577.z, x_1577.w);
        let x_1580 : vec4<f32> = u_xlat8;
        let x_1582 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1580.x, x_1580.x, x_1580.x, x_1580.x) * x_1582);
        let x_1585 : vec4<f32> = u_xlat8;
        let x_1587 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1585.y, x_1585.y, x_1585.y, x_1585.y) * x_1587);
        let x_1590 : vec4<f32> = u_xlat8;
        let x_1592 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1590.z, x_1590.z, x_1590.z, x_1590.z) * x_1592);
        let x_1594 : vec4<f32> = u_xlat8;
        let x_1596 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1594.w, x_1594.w, x_1594.w, x_1594.w) * x_1596);
        let x_1599 : vec4<f32> = u_xlat13;
        let x_1600 : vec2<f32> = vec2<f32>(x_1599.x, x_1599.y);
        let x_1602 : f32 = u_xlat24.z;
        txVec13 = vec3<f32>(x_1600.x, x_1600.y, x_1602);
        let x_1609 : vec3<f32> = txVec13;
        let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1609.xy, x_1609.z);
        u_xlat69 = x_1611;
        let x_1613 : vec4<f32> = u_xlat13;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.z, x_1613.w);
        let x_1616 : f32 = u_xlat24.z;
        txVec14 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec14;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1623.xy, x_1623.z);
        u_xlat9.x = x_1625;
        let x_1628 : f32 = u_xlat9.x;
        let x_1630 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1628 * x_1630);
        let x_1634 : f32 = u_xlat18.x;
        let x_1635 : f32 = u_xlat69;
        let x_1638 : f32 = u_xlat9.x;
        u_xlat69 = ((x_1634 * x_1635) + x_1638);
        let x_1641 : vec2<f32> = u_xlat49;
        let x_1643 : f32 = u_xlat24.z;
        txVec15 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec15;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1650.xy, x_1650.z);
        u_xlat49.x = x_1652;
        let x_1655 : f32 = u_xlat18.z;
        let x_1657 : f32 = u_xlat49.x;
        let x_1659 : f32 = u_xlat69;
        u_xlat69 = ((x_1655 * x_1657) + x_1659);
        let x_1662 : vec4<f32> = u_xlat16;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.x, x_1662.y);
        let x_1665 : f32 = u_xlat24.z;
        txVec16 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec16;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1672.xy, x_1672.z);
        u_xlat49.x = x_1674;
        let x_1677 : f32 = u_xlat18.w;
        let x_1679 : f32 = u_xlat49.x;
        let x_1681 : f32 = u_xlat69;
        u_xlat69 = ((x_1677 * x_1679) + x_1681);
        let x_1684 : vec4<f32> = u_xlat14;
        let x_1685 : vec2<f32> = vec2<f32>(x_1684.x, x_1684.y);
        let x_1687 : f32 = u_xlat24.z;
        txVec17 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1694 : vec3<f32> = txVec17;
        let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1694.xy, x_1694.z);
        u_xlat49.x = x_1696;
        let x_1699 : f32 = u_xlat19.x;
        let x_1701 : f32 = u_xlat49.x;
        let x_1703 : f32 = u_xlat69;
        u_xlat69 = ((x_1699 * x_1701) + x_1703);
        let x_1706 : vec4<f32> = u_xlat14;
        let x_1707 : vec2<f32> = vec2<f32>(x_1706.z, x_1706.w);
        let x_1709 : f32 = u_xlat24.z;
        txVec18 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec18;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1716.xy, x_1716.z);
        u_xlat49.x = x_1718;
        let x_1721 : f32 = u_xlat19.y;
        let x_1723 : f32 = u_xlat49.x;
        let x_1725 : f32 = u_xlat69;
        u_xlat69 = ((x_1721 * x_1723) + x_1725);
        let x_1728 : vec4<f32> = u_xlat15;
        let x_1729 : vec2<f32> = vec2<f32>(x_1728.x, x_1728.y);
        let x_1731 : f32 = u_xlat24.z;
        txVec19 = vec3<f32>(x_1729.x, x_1729.y, x_1731);
        let x_1738 : vec3<f32> = txVec19;
        let x_1740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1738.xy, x_1738.z);
        u_xlat49.x = x_1740;
        let x_1743 : f32 = u_xlat19.z;
        let x_1745 : f32 = u_xlat49.x;
        let x_1747 : f32 = u_xlat69;
        u_xlat69 = ((x_1743 * x_1745) + x_1747);
        let x_1750 : vec4<f32> = u_xlat16;
        let x_1751 : vec2<f32> = vec2<f32>(x_1750.z, x_1750.w);
        let x_1753 : f32 = u_xlat24.z;
        txVec20 = vec3<f32>(x_1751.x, x_1751.y, x_1753);
        let x_1760 : vec3<f32> = txVec20;
        let x_1762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1760.xy, x_1760.z);
        u_xlat49.x = x_1762;
        let x_1765 : f32 = u_xlat19.w;
        let x_1767 : f32 = u_xlat49.x;
        let x_1769 : f32 = u_xlat69;
        u_xlat69 = ((x_1765 * x_1767) + x_1769);
        let x_1772 : vec4<f32> = u_xlat17;
        let x_1773 : vec2<f32> = vec2<f32>(x_1772.x, x_1772.y);
        let x_1775 : f32 = u_xlat24.z;
        txVec21 = vec3<f32>(x_1773.x, x_1773.y, x_1775);
        let x_1782 : vec3<f32> = txVec21;
        let x_1784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1782.xy, x_1782.z);
        u_xlat49.x = x_1784;
        let x_1787 : f32 = u_xlat20.x;
        let x_1789 : f32 = u_xlat49.x;
        let x_1791 : f32 = u_xlat69;
        u_xlat69 = ((x_1787 * x_1789) + x_1791);
        let x_1794 : vec4<f32> = u_xlat17;
        let x_1795 : vec2<f32> = vec2<f32>(x_1794.z, x_1794.w);
        let x_1797 : f32 = u_xlat24.z;
        txVec22 = vec3<f32>(x_1795.x, x_1795.y, x_1797);
        let x_1804 : vec3<f32> = txVec22;
        let x_1806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1804.xy, x_1804.z);
        u_xlat49.x = x_1806;
        let x_1809 : f32 = u_xlat20.y;
        let x_1811 : f32 = u_xlat49.x;
        let x_1813 : f32 = u_xlat69;
        u_xlat69 = ((x_1809 * x_1811) + x_1813);
        let x_1816 : vec3<f32> = u_xlat30;
        let x_1817 : vec2<f32> = vec2<f32>(x_1816.x, x_1816.y);
        let x_1819 : f32 = u_xlat24.z;
        txVec23 = vec3<f32>(x_1817.x, x_1817.y, x_1819);
        let x_1826 : vec3<f32> = txVec23;
        let x_1828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1826.xy, x_1826.z);
        u_xlat49.x = x_1828;
        let x_1831 : f32 = u_xlat20.z;
        let x_1833 : f32 = u_xlat49.x;
        let x_1835 : f32 = u_xlat69;
        u_xlat69 = ((x_1831 * x_1833) + x_1835);
        let x_1838 : vec2<f32> = u_xlat57;
        let x_1840 : f32 = u_xlat24.z;
        txVec24 = vec3<f32>(x_1838.x, x_1838.y, x_1840);
        let x_1847 : vec3<f32> = txVec24;
        let x_1849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1847.xy, x_1847.z);
        u_xlat49.x = x_1849;
        let x_1852 : f32 = u_xlat20.w;
        let x_1854 : f32 = u_xlat49.x;
        let x_1856 : f32 = u_xlat69;
        u_xlat69 = ((x_1852 * x_1854) + x_1856);
        let x_1859 : vec4<f32> = u_xlat12;
        let x_1860 : vec2<f32> = vec2<f32>(x_1859.x, x_1859.y);
        let x_1862 : f32 = u_xlat24.z;
        txVec25 = vec3<f32>(x_1860.x, x_1860.y, x_1862);
        let x_1869 : vec3<f32> = txVec25;
        let x_1871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1869.xy, x_1869.z);
        u_xlat49.x = x_1871;
        let x_1874 : f32 = u_xlat8.x;
        let x_1876 : f32 = u_xlat49.x;
        let x_1878 : f32 = u_xlat69;
        u_xlat69 = ((x_1874 * x_1876) + x_1878);
        let x_1881 : vec4<f32> = u_xlat12;
        let x_1882 : vec2<f32> = vec2<f32>(x_1881.z, x_1881.w);
        let x_1884 : f32 = u_xlat24.z;
        txVec26 = vec3<f32>(x_1882.x, x_1882.y, x_1884);
        let x_1891 : vec3<f32> = txVec26;
        let x_1893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1891.xy, x_1891.z);
        u_xlat49.x = x_1893;
        let x_1896 : f32 = u_xlat8.y;
        let x_1898 : f32 = u_xlat49.x;
        let x_1900 : f32 = u_xlat69;
        u_xlat69 = ((x_1896 * x_1898) + x_1900);
        let x_1903 : vec2<f32> = u_xlat52;
        let x_1905 : f32 = u_xlat24.z;
        txVec27 = vec3<f32>(x_1903.x, x_1903.y, x_1905);
        let x_1912 : vec3<f32> = txVec27;
        let x_1914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1912.xy, x_1912.z);
        u_xlat49.x = x_1914;
        let x_1917 : f32 = u_xlat8.z;
        let x_1919 : f32 = u_xlat49.x;
        let x_1921 : f32 = u_xlat69;
        u_xlat69 = ((x_1917 * x_1919) + x_1921);
        let x_1924 : vec4<f32> = u_xlat7;
        let x_1925 : vec2<f32> = vec2<f32>(x_1924.x, x_1924.y);
        let x_1927 : f32 = u_xlat24.z;
        txVec28 = vec3<f32>(x_1925.x, x_1925.y, x_1927);
        let x_1934 : vec3<f32> = txVec28;
        let x_1936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1934.xy, x_1934.z);
        u_xlat7.x = x_1936;
        let x_1939 : f32 = u_xlat8.w;
        let x_1941 : f32 = u_xlat7.x;
        let x_1943 : f32 = u_xlat69;
        u_xlat67 = ((x_1939 * x_1941) + x_1943);
      }
    }
  } else {
    let x_1947 : vec3<f32> = u_xlat24;
    let x_1948 : vec2<f32> = vec2<f32>(x_1947.x, x_1947.y);
    let x_1950 : f32 = u_xlat24.z;
    txVec29 = vec3<f32>(x_1948.x, x_1948.y, x_1950);
    let x_1957 : vec3<f32> = txVec29;
    let x_1959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1957.xy, x_1957.z);
    u_xlat67 = x_1959;
  }
  let x_1961 : f32 = x_341.x_MainLightShadowParams.x;
  u_xlat24.x = (-(x_1961) + 1.0f);
  let x_1965 : f32 = u_xlat67;
  let x_1967 : f32 = x_341.x_MainLightShadowParams.x;
  let x_1970 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_1965 * x_1967) + x_1970);
  let x_1974 : f32 = u_xlat24.z;
  u_xlatb45 = (0.0f >= x_1974);
  let x_1978 : f32 = u_xlat24.z;
  u_xlatb66 = (x_1978 >= 1.0f);
  let x_1980 : bool = u_xlatb66;
  let x_1981 : bool = u_xlatb45;
  u_xlatb45 = (x_1980 | x_1981);
  let x_1983 : bool = u_xlatb45;
  if (x_1983) {
    x_1984 = 1.0f;
  } else {
    let x_1989 : f32 = u_xlat24.x;
    x_1984 = x_1989;
  }
  let x_1990 : f32 = x_1984;
  u_xlat24.x = x_1990;
  let x_1992 : vec3<f32> = vs_TEXCOORD1;
  let x_1994 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1996 : vec3<f32> = (x_1992 + -(x_1994));
  let x_1997 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1996.x, x_1996.y, x_1996.z, x_1997.w);
  let x_1999 : vec4<f32> = u_xlat7;
  let x_2001 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1999.x, x_1999.y, x_1999.z), vec3<f32>(x_2001.x, x_2001.y, x_2001.z));
  let x_2004 : f32 = u_xlat45;
  let x_2006 : f32 = x_341.x_MainLightShadowParams.z;
  let x_2009 : f32 = x_341.x_MainLightShadowParams.w;
  u_xlat45 = ((x_2004 * x_2006) + x_2009);
  let x_2011 : f32 = u_xlat45;
  u_xlat45 = clamp(x_2011, 0.0f, 1.0f);
  let x_2015 : f32 = u_xlat24.x;
  u_xlat66 = (-(x_2015) + 1.0f);
  let x_2018 : f32 = u_xlat45;
  let x_2019 : f32 = u_xlat66;
  let x_2022 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_2018 * x_2019) + x_2022);
  let x_2025 : f32 = u_xlat68;
  let x_2028 : vec4<f32> = x_44.x_MainLightColor;
  let x_2030 : vec3<f32> = (vec3<f32>(x_2025, x_2025, x_2025) * vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
  let x_2031 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2030.x, x_2030.y, x_2030.z, x_2031.w);
  let x_2033 : vec3<f32> = u_xlat5;
  let x_2035 : vec4<f32> = u_xlat4;
  u_xlat45 = dot(-(x_2033), vec3<f32>(x_2035.x, x_2035.y, x_2035.z));
  let x_2038 : f32 = u_xlat45;
  let x_2039 : f32 = u_xlat45;
  u_xlat45 = (x_2038 + x_2039);
  let x_2041 : vec4<f32> = u_xlat4;
  let x_2043 : f32 = u_xlat45;
  let x_2047 : vec3<f32> = u_xlat5;
  let x_2049 : vec3<f32> = ((vec3<f32>(x_2041.x, x_2041.y, x_2041.z) * -(vec3<f32>(x_2043, x_2043, x_2043))) + -(x_2047));
  let x_2050 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2049.x, x_2049.y, x_2049.z, x_2050.w);
  let x_2052 : vec4<f32> = u_xlat4;
  let x_2054 : vec3<f32> = u_xlat5;
  u_xlat45 = dot(vec3<f32>(x_2052.x, x_2052.y, x_2052.z), x_2054);
  let x_2056 : f32 = u_xlat45;
  u_xlat45 = clamp(x_2056, 0.0f, 1.0f);
  let x_2058 : f32 = u_xlat45;
  u_xlat45 = (-(x_2058) + 1.0f);
  let x_2061 : f32 = u_xlat45;
  let x_2062 : f32 = u_xlat45;
  u_xlat45 = (x_2061 * x_2062);
  let x_2064 : f32 = u_xlat45;
  let x_2065 : f32 = u_xlat45;
  u_xlat45 = (x_2064 * x_2065);
  let x_2067 : f32 = u_xlat63;
  u_xlat66 = ((-(x_2067) * 0.699999988f) + 1.700000048f);
  let x_2073 : f32 = u_xlat63;
  let x_2074 : f32 = u_xlat66;
  u_xlat63 = (x_2073 * x_2074);
  let x_2076 : f32 = u_xlat63;
  u_xlat63 = (x_2076 * 6.0f);
  let x_2087 : vec4<f32> = u_xlat8;
  let x_2089 : f32 = u_xlat63;
  let x_2090 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2087.x, x_2087.y, x_2087.z), x_2089);
  u_xlat8 = x_2090;
  let x_2092 : f32 = u_xlat8.w;
  u_xlat63 = (x_2092 + -1.0f);
  let x_2095 : f32 = x_184.unity_SpecCube0_HDR.w;
  let x_2096 : f32 = u_xlat63;
  u_xlat63 = ((x_2095 * x_2096) + 1.0f);
  let x_2099 : f32 = u_xlat63;
  u_xlat63 = max(x_2099, 0.0f);
  let x_2101 : f32 = u_xlat63;
  u_xlat63 = log2(x_2101);
  let x_2103 : f32 = u_xlat63;
  let x_2105 : f32 = x_184.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2103 * x_2105);
  let x_2107 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2107);
  let x_2109 : f32 = u_xlat63;
  let x_2111 : f32 = x_184.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2109 * x_2111);
  let x_2113 : vec4<f32> = u_xlat8;
  let x_2115 : f32 = u_xlat63;
  let x_2117 : vec3<f32> = (vec3<f32>(x_2113.x, x_2113.y, x_2113.z) * vec3<f32>(x_2115, x_2115, x_2115));
  let x_2118 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2117.x, x_2117.y, x_2117.z, x_2118.w);
  let x_2120 : vec2<f32> = u_xlat1;
  let x_2122 : vec2<f32> = u_xlat1;
  let x_2126 : vec2<f32> = ((vec2<f32>(x_2120.x, x_2120.x) * vec2<f32>(x_2122.x, x_2122.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2127 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2126.x, x_2126.y, x_2127.z, x_2127.w);
  let x_2130 : f32 = u_xlat9.y;
  u_xlat63 = (1.0f / x_2130);
  let x_2132 : vec4<f32> = u_xlat0;
  let x_2135 : f32 = u_xlat22;
  u_xlat30 = (-(vec3<f32>(x_2132.x, x_2132.y, x_2132.z)) + vec3<f32>(x_2135, x_2135, x_2135));
  let x_2138 : f32 = u_xlat45;
  let x_2140 : vec3<f32> = u_xlat30;
  let x_2142 : vec4<f32> = u_xlat0;
  u_xlat30 = ((vec3<f32>(x_2138, x_2138, x_2138) * x_2140) + vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
  let x_2145 : f32 = u_xlat63;
  let x_2147 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_2145, x_2145, x_2145) * x_2147);
  let x_2149 : vec4<f32> = u_xlat8;
  let x_2151 : vec3<f32> = u_xlat30;
  let x_2152 : vec3<f32> = (vec3<f32>(x_2149.x, x_2149.y, x_2149.z) * x_2151);
  let x_2153 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2152.x, x_2152.y, x_2152.z, x_2153.w);
  let x_2155 : vec3<f32> = u_xlat6;
  let x_2156 : vec3<f32> = u_xlat23;
  let x_2158 : vec4<f32> = u_xlat8;
  u_xlat6 = ((x_2155 * x_2156) + vec3<f32>(x_2158.x, x_2158.y, x_2158.z));
  let x_2162 : f32 = u_xlat24.x;
  let x_2164 : f32 = x_184.unity_LightData.z;
  u_xlat63 = (x_2162 * x_2164);
  let x_2166 : vec4<f32> = u_xlat4;
  let x_2169 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2166.x, x_2166.y, x_2166.z), vec3<f32>(x_2169.x, x_2169.y, x_2169.z));
  let x_2174 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2174, 0.0f, 1.0f);
  let x_2177 : f32 = u_xlat63;
  let x_2179 : f32 = u_xlat1.x;
  u_xlat63 = (x_2177 * x_2179);
  let x_2181 : f32 = u_xlat63;
  let x_2183 : vec4<f32> = u_xlat7;
  u_xlat24 = (vec3<f32>(x_2181, x_2181, x_2181) * vec3<f32>(x_2183.x, x_2183.y, x_2183.z));
  let x_2186 : vec3<f32> = u_xlat5;
  let x_2188 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2190 : vec3<f32> = (x_2186 + vec3<f32>(x_2188.x, x_2188.y, x_2188.z));
  let x_2191 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2190.x, x_2190.y, x_2190.z, x_2191.w);
  let x_2193 : vec4<f32> = u_xlat7;
  let x_2195 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2193.x, x_2193.y, x_2193.z), vec3<f32>(x_2195.x, x_2195.y, x_2195.z));
  let x_2198 : f32 = u_xlat63;
  u_xlat63 = max(x_2198, 1.17549435e-37f);
  let x_2201 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2201);
  let x_2203 : f32 = u_xlat63;
  let x_2205 : vec4<f32> = u_xlat7;
  let x_2207 : vec3<f32> = (vec3<f32>(x_2203, x_2203, x_2203) * vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
  let x_2208 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
  let x_2210 : vec4<f32> = u_xlat4;
  let x_2212 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2210.x, x_2210.y, x_2210.z), vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
  let x_2215 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2215, 0.0f, 1.0f);
  let x_2218 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2220 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_2218.x, x_2218.y, x_2218.z), vec3<f32>(x_2220.x, x_2220.y, x_2220.z));
  let x_2225 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2225, 0.0f, 1.0f);
  let x_2228 : f32 = u_xlat63;
  let x_2229 : f32 = u_xlat63;
  u_xlat63 = (x_2228 * x_2229);
  let x_2231 : f32 = u_xlat63;
  let x_2233 : f32 = u_xlat9.x;
  u_xlat63 = ((x_2231 * x_2233) + 1.000010014f);
  let x_2238 : f32 = u_xlat1.x;
  let x_2240 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2238 * x_2240);
  let x_2243 : f32 = u_xlat63;
  let x_2244 : f32 = u_xlat63;
  u_xlat63 = (x_2243 * x_2244);
  let x_2247 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2247, 0.100000001f);
  let x_2251 : f32 = u_xlat63;
  let x_2253 : f32 = u_xlat1.x;
  u_xlat63 = (x_2251 * x_2253);
  let x_2256 : f32 = u_xlat43.x;
  let x_2257 : f32 = u_xlat63;
  u_xlat63 = (x_2256 * x_2257);
  let x_2259 : f32 = u_xlat64;
  let x_2260 : f32 = u_xlat63;
  u_xlat63 = (x_2259 / x_2260);
  let x_2262 : vec4<f32> = u_xlat0;
  let x_2264 : f32 = u_xlat63;
  let x_2267 : vec3<f32> = u_xlat23;
  let x_2268 : vec3<f32> = ((vec3<f32>(x_2262.x, x_2262.y, x_2262.z) * vec3<f32>(x_2264, x_2264, x_2264)) + x_2267);
  let x_2269 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);
  let x_2271 : vec3<f32> = u_xlat24;
  let x_2272 : vec4<f32> = u_xlat7;
  u_xlat24 = (x_2271 * vec3<f32>(x_2272.x, x_2272.y, x_2272.z));
  let x_2276 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2278 : f32 = x_184.unity_LightData.y;
  u_xlat63 = min(x_2276, x_2278);
  let x_2280 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2280));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2292 : u32 = u_xlatu_loop_1;
    let x_2293 : u32 = u_xlatu63;
    if ((x_2292 < x_2293)) {
    } else {
      break;
    }
    let x_2296 : u32 = u_xlatu_loop_1;
    u_xlatu22 = (x_2296 >> 2u);
    let x_2299 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2299 & 3u));
    let x_2302 : u32 = u_xlatu22;
    let x_2305 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_2302)];
    let x_2315 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2320 : vec4<u32> = indexable[x_2315];
    u_xlat22 = dot(x_2305, bitcast<vec4<f32>>(x_2320));
    let x_2324 : f32 = u_xlat22;
    u_xlati22 = i32(x_2324);
    let x_2326 : vec3<f32> = vs_TEXCOORD1;
    let x_2338 : i32 = u_xlati22;
    let x_2340 : vec4<f32> = x_2337.x_AdditionalLightsPosition[x_2338];
    let x_2343 : i32 = u_xlati22;
    let x_2345 : vec4<f32> = x_2337.x_AdditionalLightsPosition[x_2343];
    let x_2347 : vec3<f32> = ((-(x_2326) * vec3<f32>(x_2340.w, x_2340.w, x_2340.w)) + vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
    let x_2348 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2347.x, x_2347.y, x_2347.z, x_2348.w);
    let x_2350 : vec4<f32> = u_xlat8;
    let x_2352 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(vec3<f32>(x_2350.x, x_2350.y, x_2350.z), vec3<f32>(x_2352.x, x_2352.y, x_2352.z));
    let x_2355 : f32 = u_xlat67;
    u_xlat67 = max(x_2355, 6.10351562e-05f);
    let x_2358 : f32 = u_xlat67;
    u_xlat69 = inverseSqrt(x_2358);
    let x_2360 : f32 = u_xlat69;
    let x_2362 : vec4<f32> = u_xlat8;
    u_xlat30 = (vec3<f32>(x_2360, x_2360, x_2360) * vec3<f32>(x_2362.x, x_2362.y, x_2362.z));
    let x_2366 : f32 = u_xlat67;
    u_xlat70 = (1.0f / x_2366);
    let x_2368 : f32 = u_xlat67;
    let x_2369 : i32 = u_xlati22;
    let x_2371 : f32 = x_2337.x_AdditionalLightsAttenuation[x_2369].x;
    u_xlat67 = (x_2368 * x_2371);
    let x_2373 : f32 = u_xlat67;
    let x_2375 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2373) * x_2375) + 1.0f);
    let x_2378 : f32 = u_xlat67;
    u_xlat67 = max(x_2378, 0.0f);
    let x_2380 : f32 = u_xlat67;
    let x_2381 : f32 = u_xlat67;
    u_xlat67 = (x_2380 * x_2381);
    let x_2383 : f32 = u_xlat67;
    let x_2384 : f32 = u_xlat70;
    u_xlat67 = (x_2383 * x_2384);
    let x_2386 : i32 = u_xlati22;
    let x_2388 : vec4<f32> = x_2337.x_AdditionalLightsSpotDir[x_2386];
    let x_2390 : vec3<f32> = u_xlat30;
    u_xlat70 = dot(vec3<f32>(x_2388.x, x_2388.y, x_2388.z), x_2390);
    let x_2392 : f32 = u_xlat70;
    let x_2393 : i32 = u_xlati22;
    let x_2395 : f32 = x_2337.x_AdditionalLightsAttenuation[x_2393].z;
    let x_2397 : i32 = u_xlati22;
    let x_2399 : f32 = x_2337.x_AdditionalLightsAttenuation[x_2397].w;
    u_xlat70 = ((x_2392 * x_2395) + x_2399);
    let x_2401 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2401, 0.0f, 1.0f);
    let x_2403 : f32 = u_xlat70;
    let x_2404 : f32 = u_xlat70;
    u_xlat70 = (x_2403 * x_2404);
    let x_2406 : f32 = u_xlat67;
    let x_2407 : f32 = u_xlat70;
    u_xlat67 = (x_2406 * x_2407);
    let x_2409 : f32 = u_xlat68;
    let x_2411 : i32 = u_xlati22;
    let x_2413 : vec4<f32> = x_2337.x_AdditionalLightsColor[x_2411];
    let x_2415 : vec3<f32> = (vec3<f32>(x_2409, x_2409, x_2409) * vec3<f32>(x_2413.x, x_2413.y, x_2413.z));
    let x_2416 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2415.x, x_2415.y, x_2415.z, x_2416.w);
    let x_2418 : vec4<f32> = u_xlat4;
    let x_2420 : vec3<f32> = u_xlat30;
    u_xlat22 = dot(vec3<f32>(x_2418.x, x_2418.y, x_2418.z), x_2420);
    let x_2422 : f32 = u_xlat22;
    u_xlat22 = clamp(x_2422, 0.0f, 1.0f);
    let x_2424 : f32 = u_xlat22;
    let x_2425 : f32 = u_xlat67;
    u_xlat22 = (x_2424 * x_2425);
    let x_2427 : f32 = u_xlat22;
    let x_2429 : vec4<f32> = u_xlat10;
    let x_2431 : vec3<f32> = (vec3<f32>(x_2427, x_2427, x_2427) * vec3<f32>(x_2429.x, x_2429.y, x_2429.z));
    let x_2432 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2431.x, x_2431.y, x_2431.z, x_2432.w);
    let x_2434 : vec4<f32> = u_xlat8;
    let x_2436 : f32 = u_xlat69;
    let x_2439 : vec3<f32> = u_xlat5;
    let x_2440 : vec3<f32> = ((vec3<f32>(x_2434.x, x_2434.y, x_2434.z) * vec3<f32>(x_2436, x_2436, x_2436)) + x_2439);
    let x_2441 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
    let x_2443 : vec4<f32> = u_xlat8;
    let x_2445 : vec4<f32> = u_xlat8;
    u_xlat22 = dot(vec3<f32>(x_2443.x, x_2443.y, x_2443.z), vec3<f32>(x_2445.x, x_2445.y, x_2445.z));
    let x_2448 : f32 = u_xlat22;
    u_xlat22 = max(x_2448, 1.17549435e-37f);
    let x_2450 : f32 = u_xlat22;
    u_xlat22 = inverseSqrt(x_2450);
    let x_2452 : f32 = u_xlat22;
    let x_2454 : vec4<f32> = u_xlat8;
    let x_2456 : vec3<f32> = (vec3<f32>(x_2452, x_2452, x_2452) * vec3<f32>(x_2454.x, x_2454.y, x_2454.z));
    let x_2457 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
    let x_2459 : vec4<f32> = u_xlat4;
    let x_2461 : vec4<f32> = u_xlat8;
    u_xlat22 = dot(vec3<f32>(x_2459.x, x_2459.y, x_2459.z), vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
    let x_2464 : f32 = u_xlat22;
    u_xlat22 = clamp(x_2464, 0.0f, 1.0f);
    let x_2466 : vec3<f32> = u_xlat30;
    let x_2467 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(x_2466, vec3<f32>(x_2467.x, x_2467.y, x_2467.z));
    let x_2470 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2470, 0.0f, 1.0f);
    let x_2472 : f32 = u_xlat22;
    let x_2473 : f32 = u_xlat22;
    u_xlat22 = (x_2472 * x_2473);
    let x_2475 : f32 = u_xlat22;
    let x_2477 : f32 = u_xlat9.x;
    u_xlat22 = ((x_2475 * x_2477) + 1.000010014f);
    let x_2480 : f32 = u_xlat67;
    let x_2481 : f32 = u_xlat67;
    u_xlat67 = (x_2480 * x_2481);
    let x_2483 : f32 = u_xlat22;
    let x_2484 : f32 = u_xlat22;
    u_xlat22 = (x_2483 * x_2484);
    let x_2486 : f32 = u_xlat67;
    u_xlat67 = max(x_2486, 0.100000001f);
    let x_2488 : f32 = u_xlat22;
    let x_2489 : f32 = u_xlat67;
    u_xlat22 = (x_2488 * x_2489);
    let x_2492 : f32 = u_xlat43.x;
    let x_2493 : f32 = u_xlat22;
    u_xlat22 = (x_2492 * x_2493);
    let x_2495 : f32 = u_xlat64;
    let x_2496 : f32 = u_xlat22;
    u_xlat22 = (x_2495 / x_2496);
    let x_2498 : vec4<f32> = u_xlat0;
    let x_2500 : f32 = u_xlat22;
    let x_2503 : vec3<f32> = u_xlat23;
    let x_2504 : vec3<f32> = ((vec3<f32>(x_2498.x, x_2498.y, x_2498.z) * vec3<f32>(x_2500, x_2500, x_2500)) + x_2503);
    let x_2505 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2504.x, x_2504.y, x_2504.z, x_2505.w);
    let x_2507 : vec4<f32> = u_xlat8;
    let x_2509 : vec4<f32> = u_xlat10;
    let x_2512 : vec4<f32> = u_xlat7;
    let x_2514 : vec3<f32> = ((vec3<f32>(x_2507.x, x_2507.y, x_2507.z) * vec3<f32>(x_2509.x, x_2509.y, x_2509.z)) + vec3<f32>(x_2512.x, x_2512.y, x_2512.z));
    let x_2515 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2514.x, x_2514.y, x_2514.z, x_2515.w);

    continuing {
      let x_2517 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2517 + bitcast<u32>(1i));
    }
  }
  let x_2519 : vec3<f32> = u_xlat6;
  let x_2520 : vec3<f32> = u_xlat3;
  let x_2523 : vec3<f32> = u_xlat24;
  let x_2524 : vec3<f32> = ((x_2519 * vec3<f32>(x_2520.x, x_2520.x, x_2520.x)) + x_2523);
  let x_2525 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2524.x, x_2524.y, x_2524.z, x_2525.w);
  let x_2529 : vec4<f32> = u_xlat7;
  let x_2531 : vec4<f32> = u_xlat0;
  let x_2533 : vec3<f32> = (vec3<f32>(x_2529.x, x_2529.y, x_2529.z) + vec3<f32>(x_2531.x, x_2531.y, x_2531.z));
  let x_2534 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2533.x, x_2533.y, x_2533.z, x_2534.w);
  let x_2539 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_2539 == 1.0f);
  let x_2541 : bool = u_xlatb0;
  if (x_2541) {
    let x_2546 : f32 = u_xlat2.x;
    x_2542 = x_2546;
  } else {
    x_2542 = 1.0f;
  }
  let x_2548 : f32 = x_2542;
  SV_Target0.w = x_2548;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

