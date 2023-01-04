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

@group(1) @binding(1) var<uniform> x_1103 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat33 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlatb25 : bool;
  var x_190 : f32;
  var u_xlatb14 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlat5 : vec3<f32>;
  var x_256 : f32;
  var x_268 : f32;
  var x_279 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat13 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat12 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb36 : bool;
  var x_749 : f32;
  var u_xlat36 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu12 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati12 : i32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1304 : f32;
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
  u_xlat23 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat23;
  let x_107 : vec2<f32> = u_xlat23;
  u_xlat33 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat33;
  u_xlat33 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat33;
  u_xlat33 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_114);
  let x_116 : f32 = u_xlat33;
  u_xlat33 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat23;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat23 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat14.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_44.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_163.x, x_163.y, x_164.z);
  let x_171 : vec3<f32> = u_xlat14;
  let x_174 : f32 = x_44.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.y), x_174);
  u_xlat14.x = x_175.w;
  let x_186 : f32 = x_184.unity_LODFade.x;
  u_xlatb25 = (x_186 >= 0.0f);
  let x_189 : bool = u_xlatb25;
  if (x_189) {
    let x_194 : f32 = u_xlat14.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat14.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat14.x = x_201;
  let x_204 : f32 = u_xlat14.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat14.x = (-(x_204) + x_207);
  let x_212 : f32 = u_xlat14.x;
  u_xlatb14 = (x_212 < 0.0f);
  let x_214 : bool = u_xlatb14;
  if (((select(0i, 1i, x_214) * -1i) != 0i)) {
    discard;
  }
  let x_225 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_225 == 0.0f);
  let x_230 : vec3<f32> = vs_TEXCOORD1;
  let x_235 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_236 : vec3<f32> = (-(x_230) + x_235);
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_245);
  let x_247 : f32 = u_xlat25;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : bool = u_xlatb14;
  if (x_255) {
    let x_260 : f32 = u_xlat4.x;
    x_256 = x_260;
  } else {
    let x_264 : f32 = x_44.unity_MatrixV[0i].z;
    x_256 = x_264;
  }
  let x_265 : f32 = x_256;
  u_xlat5.x = x_265;
  let x_267 : bool = u_xlatb14;
  if (x_267) {
    let x_272 : f32 = u_xlat4.y;
    x_268 = x_272;
  } else {
    let x_275 : f32 = x_44.unity_MatrixV[1i].z;
    x_268 = x_275;
  }
  let x_276 : f32 = x_268;
  u_xlat5.y = x_276;
  let x_278 : bool = u_xlatb14;
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
  u_xlat14 = (vec3<f32>(x_290.z, x_290.x, x_290.y) * vec3<f32>(x_293.y, x_293.z, x_293.x));
  let x_296 : vec3<f32> = vs_TEXCOORD2;
  let x_298 : vec4<f32> = vs_TEXCOORD3;
  let x_301 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_296.y, x_296.z, x_296.x) * vec3<f32>(x_298.z, x_298.x, x_298.y)) + -(x_301));
  let x_304 : vec3<f32> = u_xlat14;
  let x_305 : vec4<f32> = vs_TEXCOORD3;
  u_xlat14 = (x_304 * vec3<f32>(x_305.w, x_305.w, x_305.w));
  let x_308 : vec2<f32> = u_xlat23;
  let x_310 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_308.y, x_308.y, x_308.y) * x_310);
  let x_312 : vec2<f32> = u_xlat23;
  let x_314 : vec4<f32> = vs_TEXCOORD3;
  let x_317 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_312.x, x_312.x, x_312.x) * vec3<f32>(x_314.x, x_314.y, x_314.z)) + x_317);
  let x_319 : f32 = u_xlat33;
  let x_321 : vec3<f32> = vs_TEXCOORD2;
  let x_323 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_319, x_319, x_319) * x_321) + x_323);
  let x_325 : vec3<f32> = u_xlat14;
  let x_326 : vec3<f32> = u_xlat14;
  u_xlat33 = dot(x_325, x_326);
  let x_328 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_328);
  let x_330 : f32 = u_xlat33;
  let x_332 : vec3<f32> = u_xlat14;
  let x_333 : vec3<f32> = (vec3<f32>(x_330, x_330, x_330) * x_332);
  let x_334 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec3<f32> = vs_TEXCOORD1;
  let x_343 : vec4<f32> = x_341.x_CascadeShadowSplitSpheres0;
  u_xlat14 = (x_336 + -(vec3<f32>(x_343.x, x_343.y, x_343.z)));
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
  let x_375 : vec3<f32> = u_xlat14;
  let x_376 : vec3<f32> = u_xlat14;
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
  u_xlat14.x = select(-0.0f, -1.0f, x_420);
  let x_425 : bool = u_xlatb6.y;
  u_xlat14.y = select(-0.0f, -1.0f, x_425);
  let x_429 : bool = u_xlatb6.z;
  u_xlat14.z = select(-0.0f, -1.0f, x_429);
  let x_432 : vec3<f32> = u_xlat14;
  let x_433 : vec4<f32> = u_xlat7;
  u_xlat14 = (x_432 + vec3<f32>(x_433.y, x_433.z, x_433.w));
  let x_436 : vec3<f32> = u_xlat14;
  let x_438 : vec3<f32> = max(x_436, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_439 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_439.x, x_438.x, x_438.y, x_438.z);
  let x_441 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_441, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_446 : f32 = u_xlat33;
  u_xlat33 = (-(x_446) + 4.0f);
  let x_451 : f32 = u_xlat33;
  u_xlatu33 = u32(x_451);
  let x_455 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_455) << bitcast<u32>(2i));
  let x_458 : vec3<f32> = vs_TEXCOORD1;
  let x_460 : i32 = u_xlati33;
  let x_463 : i32 = u_xlati33;
  let x_467 : vec4<f32> = x_341.x_MainLightWorldToShadow[((x_460 + 1i) / 4i)][((x_463 + 1i) % 4i)];
  u_xlat14 = (vec3<f32>(x_458.y, x_458.y, x_458.y) * vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : i32 = u_xlati33;
  let x_472 : i32 = u_xlati33;
  let x_475 : vec4<f32> = x_341.x_MainLightWorldToShadow[(x_470 / 4i)][(x_472 % 4i)];
  let x_477 : vec3<f32> = vs_TEXCOORD1;
  let x_480 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(x_477.x, x_477.x, x_477.x)) + x_480);
  let x_482 : i32 = u_xlati33;
  let x_485 : i32 = u_xlati33;
  let x_489 : vec4<f32> = x_341.x_MainLightWorldToShadow[((x_482 + 2i) / 4i)][((x_485 + 2i) % 4i)];
  let x_491 : vec3<f32> = vs_TEXCOORD1;
  let x_494 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(x_491.z, x_491.z, x_491.z)) + x_494);
  let x_496 : vec3<f32> = u_xlat14;
  let x_497 : i32 = u_xlati33;
  let x_500 : i32 = u_xlati33;
  let x_504 : vec4<f32> = x_341.x_MainLightWorldToShadow[((x_497 + 3i) / 4i)][((x_500 + 3i) % 4i)];
  u_xlat14 = (x_496 + vec3<f32>(x_504.x, x_504.y, x_504.z));
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
  u_xlat33 = (x_550 * x_552);
  let x_555 : f32 = u_xlat4.x;
  let x_557 : f32 = u_xlat4.x;
  let x_559 : f32 = u_xlat33;
  u_xlat33 = ((x_555 * x_557) + -(x_559));
  let x_564 : vec4<f32> = x_184.unity_SHC;
  let x_566 : f32 = u_xlat33;
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
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_583.x, x_583.y));
  let x_588 : vec2<f32> = u_xlat23;
  let x_589 : vec4<f32> = hlslcc_FragCoord;
  let x_591 : vec2<f32> = (x_588 * vec2<f32>(x_589.x, x_589.y));
  let x_592 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
  let x_595 : f32 = u_xlat7.y;
  let x_597 : f32 = x_44.x_ScaleBiasRt.x;
  let x_600 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_595 * x_597) + x_600);
  let x_602 : f32 = u_xlat33;
  u_xlat7.z = (-(x_602) + 1.0f);
  let x_607 : f32 = u_xlat1.x;
  u_xlat33 = ((-(x_607) * 0.959999979f) + 0.959999979f);
  let x_612 : f32 = u_xlat33;
  u_xlat23.x = (-(x_612) + 1.0f);
  let x_617 : f32 = u_xlat33;
  let x_619 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_617, x_617, x_617) * vec3<f32>(x_619.y, x_619.z, x_619.w));
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
  u_xlat33 = ((-(x_644) * x_647) + 1.0f);
  let x_650 : f32 = u_xlat33;
  let x_651 : f32 = u_xlat33;
  u_xlat1.x = (x_650 * x_651);
  let x_655 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_655, 0.0078125f);
  let x_661 : f32 = u_xlat1.x;
  let x_663 : f32 = u_xlat1.x;
  u_xlat34 = (x_661 * x_663);
  let x_667 : f32 = u_xlat1.y;
  let x_669 : f32 = x_69.x_Smoothness;
  let x_672 : f32 = u_xlat23.x;
  u_xlat12 = ((x_667 * x_669) + x_672);
  let x_674 : f32 = u_xlat12;
  u_xlat12 = clamp(x_674, 0.0f, 1.0f);
  let x_677 : f32 = u_xlat1.x;
  u_xlat23.x = ((x_677 * 4.0f) + 2.0f);
  let x_687 : vec4<f32> = u_xlat7;
  let x_690 : f32 = x_44.x_GlobalMipBias.x;
  let x_691 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_687.x, x_687.z), x_690);
  u_xlat37 = x_691.x;
  let x_694 : f32 = u_xlat37;
  u_xlat38 = (x_694 + -1.0f);
  let x_697 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_698 : f32 = u_xlat38;
  u_xlat38 = ((x_697 * x_698) + 1.0f);
  let x_702 : f32 = u_xlat3.x;
  let x_703 : f32 = u_xlat37;
  u_xlat3.x = min(x_702, x_703);
  let x_707 : vec3<f32> = u_xlat14;
  let x_708 : vec2<f32> = vec2<f32>(x_707.x, x_707.y);
  let x_710 : f32 = u_xlat14.z;
  txVec0 = vec3<f32>(x_708.x, x_708.y, x_710);
  let x_722 : vec3<f32> = txVec0;
  let x_724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_722.xy, x_722.z);
  u_xlat14.x = x_724;
  let x_727 : f32 = x_341.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_727) + 1.0f);
  let x_731 : f32 = u_xlat14.x;
  let x_733 : f32 = x_341.x_MainLightShadowParams.x;
  let x_735 : f32 = u_xlat25;
  u_xlat14.x = ((x_731 * x_733) + x_735);
  let x_739 : f32 = u_xlat14.z;
  u_xlatb25 = (0.0f >= x_739);
  let x_743 : f32 = u_xlat14.z;
  u_xlatb36 = (x_743 >= 1.0f);
  let x_745 : bool = u_xlatb36;
  let x_746 : bool = u_xlatb25;
  u_xlatb25 = (x_745 | x_746);
  let x_748 : bool = u_xlatb25;
  if (x_748) {
    x_749 = 1.0f;
  } else {
    let x_754 : f32 = u_xlat14.x;
    x_749 = x_754;
  }
  let x_755 : f32 = x_749;
  u_xlat14.x = x_755;
  let x_757 : vec3<f32> = vs_TEXCOORD1;
  let x_759 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_761 : vec3<f32> = (x_757 + -(x_759));
  let x_762 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec4<f32> = u_xlat7;
  let x_766 : vec4<f32> = u_xlat7;
  u_xlat25 = dot(vec3<f32>(x_764.x, x_764.y, x_764.z), vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : f32 = u_xlat25;
  let x_771 : f32 = x_341.x_MainLightShadowParams.z;
  let x_774 : f32 = x_341.x_MainLightShadowParams.w;
  u_xlat25 = ((x_769 * x_771) + x_774);
  let x_776 : f32 = u_xlat25;
  u_xlat25 = clamp(x_776, 0.0f, 1.0f);
  let x_780 : f32 = u_xlat14.x;
  u_xlat36 = (-(x_780) + 1.0f);
  let x_783 : f32 = u_xlat25;
  let x_784 : f32 = u_xlat36;
  let x_787 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_783 * x_784) + x_787);
  let x_790 : f32 = u_xlat38;
  let x_793 : vec4<f32> = x_44.x_MainLightColor;
  let x_795 : vec3<f32> = (vec3<f32>(x_790, x_790, x_790) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec3<f32> = u_xlat5;
  let x_800 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(-(x_798), vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_803 : f32 = u_xlat25;
  let x_804 : f32 = u_xlat25;
  u_xlat25 = (x_803 + x_804);
  let x_806 : vec4<f32> = u_xlat4;
  let x_808 : f32 = u_xlat25;
  let x_812 : vec3<f32> = u_xlat5;
  let x_814 : vec3<f32> = ((vec3<f32>(x_806.x, x_806.y, x_806.z) * -(vec3<f32>(x_808, x_808, x_808))) + -(x_812));
  let x_815 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat4;
  let x_819 : vec3<f32> = u_xlat5;
  u_xlat25 = dot(vec3<f32>(x_817.x, x_817.y, x_817.z), x_819);
  let x_821 : f32 = u_xlat25;
  u_xlat25 = clamp(x_821, 0.0f, 1.0f);
  let x_823 : f32 = u_xlat25;
  u_xlat25 = (-(x_823) + 1.0f);
  let x_826 : f32 = u_xlat25;
  let x_827 : f32 = u_xlat25;
  u_xlat25 = (x_826 * x_827);
  let x_829 : f32 = u_xlat25;
  let x_830 : f32 = u_xlat25;
  u_xlat25 = (x_829 * x_830);
  let x_832 : f32 = u_xlat33;
  u_xlat36 = ((-(x_832) * 0.699999988f) + 1.700000048f);
  let x_838 : f32 = u_xlat33;
  let x_839 : f32 = u_xlat36;
  u_xlat33 = (x_838 * x_839);
  let x_841 : f32 = u_xlat33;
  u_xlat33 = (x_841 * 6.0f);
  let x_852 : vec4<f32> = u_xlat8;
  let x_854 : f32 = u_xlat33;
  let x_855 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_852.x, x_852.y, x_852.z), x_854);
  u_xlat8 = x_855;
  let x_857 : f32 = u_xlat8.w;
  u_xlat33 = (x_857 + -1.0f);
  let x_860 : f32 = x_184.unity_SpecCube0_HDR.w;
  let x_861 : f32 = u_xlat33;
  u_xlat33 = ((x_860 * x_861) + 1.0f);
  let x_864 : f32 = u_xlat33;
  u_xlat33 = max(x_864, 0.0f);
  let x_866 : f32 = u_xlat33;
  u_xlat33 = log2(x_866);
  let x_868 : f32 = u_xlat33;
  let x_870 : f32 = x_184.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_868 * x_870);
  let x_872 : f32 = u_xlat33;
  u_xlat33 = exp2(x_872);
  let x_874 : f32 = u_xlat33;
  let x_876 : f32 = x_184.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_874 * x_876);
  let x_878 : vec4<f32> = u_xlat8;
  let x_880 : f32 = u_xlat33;
  let x_882 : vec3<f32> = (vec3<f32>(x_878.x, x_878.y, x_878.z) * vec3<f32>(x_880, x_880, x_880));
  let x_883 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec2<f32> = u_xlat1;
  let x_887 : vec2<f32> = u_xlat1;
  let x_891 : vec2<f32> = ((vec2<f32>(x_885.x, x_885.x) * vec2<f32>(x_887.x, x_887.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_892 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_891.x, x_891.y, x_892.z, x_892.w);
  let x_895 : f32 = u_xlat9.y;
  u_xlat33 = (1.0f / x_895);
  let x_898 : vec4<f32> = u_xlat0;
  let x_901 : f32 = u_xlat12;
  u_xlat20 = (-(vec3<f32>(x_898.x, x_898.y, x_898.z)) + vec3<f32>(x_901, x_901, x_901));
  let x_904 : f32 = u_xlat25;
  let x_906 : vec3<f32> = u_xlat20;
  let x_908 : vec4<f32> = u_xlat0;
  u_xlat20 = ((vec3<f32>(x_904, x_904, x_904) * x_906) + vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_911 : f32 = u_xlat33;
  let x_913 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_911, x_911, x_911) * x_913);
  let x_915 : vec4<f32> = u_xlat8;
  let x_917 : vec3<f32> = u_xlat20;
  let x_918 : vec3<f32> = (vec3<f32>(x_915.x, x_915.y, x_915.z) * x_917);
  let x_919 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : vec3<f32> = u_xlat6;
  let x_922 : vec3<f32> = u_xlat13;
  let x_924 : vec4<f32> = u_xlat8;
  u_xlat6 = ((x_921 * x_922) + vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_928 : f32 = u_xlat14.x;
  let x_930 : f32 = x_184.unity_LightData.z;
  u_xlat33 = (x_928 * x_930);
  let x_932 : vec4<f32> = u_xlat4;
  let x_935 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_932.x, x_932.y, x_932.z), vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_940 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_940, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat33;
  let x_945 : f32 = u_xlat1.x;
  u_xlat33 = (x_943 * x_945);
  let x_947 : f32 = u_xlat33;
  let x_949 : vec4<f32> = u_xlat7;
  u_xlat14 = (vec3<f32>(x_947, x_947, x_947) * vec3<f32>(x_949.x, x_949.y, x_949.z));
  let x_952 : vec3<f32> = u_xlat5;
  let x_954 : vec4<f32> = x_44.x_MainLightPosition;
  let x_956 : vec3<f32> = (x_952 + vec3<f32>(x_954.x, x_954.y, x_954.z));
  let x_957 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec4<f32> = u_xlat7;
  let x_961 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_959.x, x_959.y, x_959.z), vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_964 : f32 = u_xlat33;
  u_xlat33 = max(x_964, 1.17549435e-37f);
  let x_967 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_967);
  let x_969 : f32 = u_xlat33;
  let x_971 : vec4<f32> = u_xlat7;
  let x_973 : vec3<f32> = (vec3<f32>(x_969, x_969, x_969) * vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : vec4<f32> = u_xlat4;
  let x_978 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_976.x, x_976.y, x_976.z), vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_981 : f32 = u_xlat33;
  u_xlat33 = clamp(x_981, 0.0f, 1.0f);
  let x_984 : vec4<f32> = x_44.x_MainLightPosition;
  let x_986 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_984.x, x_984.y, x_984.z), vec3<f32>(x_986.x, x_986.y, x_986.z));
  let x_991 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_991, 0.0f, 1.0f);
  let x_994 : f32 = u_xlat33;
  let x_995 : f32 = u_xlat33;
  u_xlat33 = (x_994 * x_995);
  let x_997 : f32 = u_xlat33;
  let x_999 : f32 = u_xlat9.x;
  u_xlat33 = ((x_997 * x_999) + 1.000010014f);
  let x_1004 : f32 = u_xlat1.x;
  let x_1006 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1004 * x_1006);
  let x_1009 : f32 = u_xlat33;
  let x_1010 : f32 = u_xlat33;
  u_xlat33 = (x_1009 * x_1010);
  let x_1013 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1013, 0.100000001f);
  let x_1017 : f32 = u_xlat33;
  let x_1019 : f32 = u_xlat1.x;
  u_xlat33 = (x_1017 * x_1019);
  let x_1022 : f32 = u_xlat23.x;
  let x_1023 : f32 = u_xlat33;
  u_xlat33 = (x_1022 * x_1023);
  let x_1025 : f32 = u_xlat34;
  let x_1026 : f32 = u_xlat33;
  u_xlat33 = (x_1025 / x_1026);
  let x_1028 : vec4<f32> = u_xlat0;
  let x_1030 : f32 = u_xlat33;
  let x_1033 : vec3<f32> = u_xlat13;
  let x_1034 : vec3<f32> = ((vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * vec3<f32>(x_1030, x_1030, x_1030)) + x_1033);
  let x_1035 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1037 : vec3<f32> = u_xlat14;
  let x_1038 : vec4<f32> = u_xlat7;
  u_xlat14 = (x_1037 * vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1042 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1044 : f32 = x_184.unity_LightData.y;
  u_xlat33 = min(x_1042, x_1044);
  let x_1046 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1046));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1058 : u32 = u_xlatu_loop_1;
    let x_1059 : u32 = u_xlatu33;
    if ((x_1058 < x_1059)) {
    } else {
      break;
    }
    let x_1062 : u32 = u_xlatu_loop_1;
    u_xlatu12 = (x_1062 >> 2u);
    let x_1065 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_1065 & 3u));
    let x_1068 : u32 = u_xlatu12;
    let x_1071 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_1068)];
    let x_1081 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1086 : vec4<u32> = indexable[x_1081];
    u_xlat12 = dot(x_1071, bitcast<vec4<f32>>(x_1086));
    let x_1090 : f32 = u_xlat12;
    u_xlati12 = i32(x_1090);
    let x_1092 : vec3<f32> = vs_TEXCOORD1;
    let x_1104 : i32 = u_xlati12;
    let x_1106 : vec4<f32> = x_1103.x_AdditionalLightsPosition[x_1104];
    let x_1109 : i32 = u_xlati12;
    let x_1111 : vec4<f32> = x_1103.x_AdditionalLightsPosition[x_1109];
    let x_1113 : vec3<f32> = ((-(x_1092) * vec3<f32>(x_1106.w, x_1106.w, x_1106.w)) + vec3<f32>(x_1111.x, x_1111.y, x_1111.z));
    let x_1114 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
    let x_1116 : vec4<f32> = u_xlat8;
    let x_1118 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1116.x, x_1116.y, x_1116.z), vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
    let x_1121 : f32 = u_xlat37;
    u_xlat37 = max(x_1121, 6.10351562e-05f);
    let x_1125 : f32 = u_xlat37;
    u_xlat39 = inverseSqrt(x_1125);
    let x_1127 : f32 = u_xlat39;
    let x_1129 : vec4<f32> = u_xlat8;
    u_xlat20 = (vec3<f32>(x_1127, x_1127, x_1127) * vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
    let x_1133 : f32 = u_xlat37;
    u_xlat40 = (1.0f / x_1133);
    let x_1135 : f32 = u_xlat37;
    let x_1136 : i32 = u_xlati12;
    let x_1138 : f32 = x_1103.x_AdditionalLightsAttenuation[x_1136].x;
    u_xlat37 = (x_1135 * x_1138);
    let x_1140 : f32 = u_xlat37;
    let x_1142 : f32 = u_xlat37;
    u_xlat37 = ((-(x_1140) * x_1142) + 1.0f);
    let x_1145 : f32 = u_xlat37;
    u_xlat37 = max(x_1145, 0.0f);
    let x_1147 : f32 = u_xlat37;
    let x_1148 : f32 = u_xlat37;
    u_xlat37 = (x_1147 * x_1148);
    let x_1150 : f32 = u_xlat37;
    let x_1151 : f32 = u_xlat40;
    u_xlat37 = (x_1150 * x_1151);
    let x_1153 : i32 = u_xlati12;
    let x_1155 : vec4<f32> = x_1103.x_AdditionalLightsSpotDir[x_1153];
    let x_1157 : vec3<f32> = u_xlat20;
    u_xlat40 = dot(vec3<f32>(x_1155.x, x_1155.y, x_1155.z), x_1157);
    let x_1159 : f32 = u_xlat40;
    let x_1160 : i32 = u_xlati12;
    let x_1162 : f32 = x_1103.x_AdditionalLightsAttenuation[x_1160].z;
    let x_1164 : i32 = u_xlati12;
    let x_1166 : f32 = x_1103.x_AdditionalLightsAttenuation[x_1164].w;
    u_xlat40 = ((x_1159 * x_1162) + x_1166);
    let x_1168 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1168, 0.0f, 1.0f);
    let x_1170 : f32 = u_xlat40;
    let x_1171 : f32 = u_xlat40;
    u_xlat40 = (x_1170 * x_1171);
    let x_1173 : f32 = u_xlat37;
    let x_1174 : f32 = u_xlat40;
    u_xlat37 = (x_1173 * x_1174);
    let x_1177 : f32 = u_xlat38;
    let x_1179 : i32 = u_xlati12;
    let x_1181 : vec4<f32> = x_1103.x_AdditionalLightsColor[x_1179];
    u_xlat10 = (vec3<f32>(x_1177, x_1177, x_1177) * vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
    let x_1184 : vec4<f32> = u_xlat4;
    let x_1186 : vec3<f32> = u_xlat20;
    u_xlat12 = dot(vec3<f32>(x_1184.x, x_1184.y, x_1184.z), x_1186);
    let x_1188 : f32 = u_xlat12;
    u_xlat12 = clamp(x_1188, 0.0f, 1.0f);
    let x_1190 : f32 = u_xlat12;
    let x_1191 : f32 = u_xlat37;
    u_xlat12 = (x_1190 * x_1191);
    let x_1193 : f32 = u_xlat12;
    let x_1195 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1193, x_1193, x_1193) * x_1195);
    let x_1197 : vec4<f32> = u_xlat8;
    let x_1199 : f32 = u_xlat39;
    let x_1202 : vec3<f32> = u_xlat5;
    let x_1203 : vec3<f32> = ((vec3<f32>(x_1197.x, x_1197.y, x_1197.z) * vec3<f32>(x_1199, x_1199, x_1199)) + x_1202);
    let x_1204 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
    let x_1206 : vec4<f32> = u_xlat8;
    let x_1208 : vec4<f32> = u_xlat8;
    u_xlat12 = dot(vec3<f32>(x_1206.x, x_1206.y, x_1206.z), vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
    let x_1211 : f32 = u_xlat12;
    u_xlat12 = max(x_1211, 1.17549435e-37f);
    let x_1213 : f32 = u_xlat12;
    u_xlat12 = inverseSqrt(x_1213);
    let x_1215 : f32 = u_xlat12;
    let x_1217 : vec4<f32> = u_xlat8;
    let x_1219 : vec3<f32> = (vec3<f32>(x_1215, x_1215, x_1215) * vec3<f32>(x_1217.x, x_1217.y, x_1217.z));
    let x_1220 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
    let x_1222 : vec4<f32> = u_xlat4;
    let x_1224 : vec4<f32> = u_xlat8;
    u_xlat12 = dot(vec3<f32>(x_1222.x, x_1222.y, x_1222.z), vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
    let x_1227 : f32 = u_xlat12;
    u_xlat12 = clamp(x_1227, 0.0f, 1.0f);
    let x_1229 : vec3<f32> = u_xlat20;
    let x_1230 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(x_1229, vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
    let x_1233 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1233, 0.0f, 1.0f);
    let x_1235 : f32 = u_xlat12;
    let x_1236 : f32 = u_xlat12;
    u_xlat12 = (x_1235 * x_1236);
    let x_1238 : f32 = u_xlat12;
    let x_1240 : f32 = u_xlat9.x;
    u_xlat12 = ((x_1238 * x_1240) + 1.000010014f);
    let x_1243 : f32 = u_xlat37;
    let x_1244 : f32 = u_xlat37;
    u_xlat37 = (x_1243 * x_1244);
    let x_1246 : f32 = u_xlat12;
    let x_1247 : f32 = u_xlat12;
    u_xlat12 = (x_1246 * x_1247);
    let x_1249 : f32 = u_xlat37;
    u_xlat37 = max(x_1249, 0.100000001f);
    let x_1251 : f32 = u_xlat12;
    let x_1252 : f32 = u_xlat37;
    u_xlat12 = (x_1251 * x_1252);
    let x_1255 : f32 = u_xlat23.x;
    let x_1256 : f32 = u_xlat12;
    u_xlat12 = (x_1255 * x_1256);
    let x_1258 : f32 = u_xlat34;
    let x_1259 : f32 = u_xlat12;
    u_xlat12 = (x_1258 / x_1259);
    let x_1261 : vec4<f32> = u_xlat0;
    let x_1263 : f32 = u_xlat12;
    let x_1266 : vec3<f32> = u_xlat13;
    let x_1267 : vec3<f32> = ((vec3<f32>(x_1261.x, x_1261.y, x_1261.z) * vec3<f32>(x_1263, x_1263, x_1263)) + x_1266);
    let x_1268 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
    let x_1270 : vec4<f32> = u_xlat8;
    let x_1272 : vec3<f32> = u_xlat10;
    let x_1274 : vec4<f32> = u_xlat7;
    let x_1276 : vec3<f32> = ((vec3<f32>(x_1270.x, x_1270.y, x_1270.z) * x_1272) + vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
    let x_1277 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);

    continuing {
      let x_1279 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1279 + bitcast<u32>(1i));
    }
  }
  let x_1281 : vec3<f32> = u_xlat6;
  let x_1282 : vec3<f32> = u_xlat3;
  let x_1285 : vec3<f32> = u_xlat14;
  let x_1286 : vec3<f32> = ((x_1281 * vec3<f32>(x_1282.x, x_1282.x, x_1282.x)) + x_1285);
  let x_1287 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
  let x_1291 : vec4<f32> = u_xlat7;
  let x_1293 : vec4<f32> = u_xlat0;
  let x_1295 : vec3<f32> = (vec3<f32>(x_1291.x, x_1291.y, x_1291.z) + vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
  let x_1296 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
  let x_1301 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1301 == 1.0f);
  let x_1303 : bool = u_xlatb0;
  if (x_1303) {
    let x_1308 : f32 = u_xlat2.x;
    x_1304 = x_1308;
  } else {
    x_1304 = 1.0f;
  }
  let x_1310 : f32 = x_1304;
  SV_Target0.w = x_1310;
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

