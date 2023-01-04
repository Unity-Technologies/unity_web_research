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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BumpMap : sampler;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

@group(0) @binding(9) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_539 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_913 : AdditionalLights;

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
  var u_xlat13 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat34 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb17 : bool;
  var u_xlat17 : f32;
  var u_xlat39 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu23 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati23 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1120 : f32;
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
  u_xlat14 = (vec3<f32>(x_330, x_330, x_330) * x_332);
  let x_340 : vec2<f32> = vs_TEXCOORD8;
  let x_342 : f32 = x_44.x_GlobalMipBias.x;
  let x_343 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_340, x_342);
  u_xlat4 = x_343;
  let x_349 : vec2<f32> = vs_TEXCOORD8;
  let x_351 : f32 = x_44.x_GlobalMipBias.x;
  let x_352 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_349, x_351);
  u_xlat6 = vec3<f32>(x_352.x, x_352.y, x_352.z);
  let x_354 : vec4<f32> = u_xlat4;
  let x_358 : vec3<f32> = (vec3<f32>(x_354.x, x_354.y, x_354.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_359 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec3<f32> = u_xlat14;
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(x_361, vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : f32 = u_xlat33;
  u_xlat33 = (x_365 + 0.5f);
  let x_368 : f32 = u_xlat33;
  let x_370 : vec3<f32> = u_xlat6;
  let x_371 : vec3<f32> = (vec3<f32>(x_368, x_368, x_368) * x_370);
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : f32 = u_xlat4.w;
  u_xlat33 = max(x_375, 0.0001f);
  let x_378 : vec4<f32> = u_xlat4;
  let x_380 : f32 = u_xlat33;
  let x_382 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) / vec3<f32>(x_380, x_380, x_380));
  let x_383 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_387 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_388 : vec2<f32> = vec2<f32>(x_387.x, x_387.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_388.x, x_388.y));
  let x_393 : vec2<f32> = u_xlat23;
  let x_394 : vec4<f32> = hlslcc_FragCoord;
  let x_396 : vec2<f32> = (x_393 * vec2<f32>(x_394.x, x_394.y));
  let x_397 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_396.x, x_396.y, x_397.z);
  let x_400 : f32 = u_xlat6.y;
  let x_402 : f32 = x_44.x_ScaleBiasRt.x;
  let x_405 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_400 * x_402) + x_405);
  let x_407 : f32 = u_xlat33;
  u_xlat6.z = (-(x_407) + 1.0f);
  let x_412 : f32 = u_xlat1.x;
  u_xlat33 = ((-(x_412) * 0.959999979f) + 0.959999979f);
  let x_418 : f32 = u_xlat1.y;
  let x_420 : f32 = x_69.x_Smoothness;
  let x_422 : f32 = u_xlat33;
  u_xlat23.x = ((x_418 * x_420) + -(x_422));
  let x_427 : f32 = u_xlat33;
  let x_429 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.y, x_429.z, x_429.w));
  let x_432 : vec4<f32> = u_xlat0;
  let x_435 : vec4<f32> = x_69.x_BaseColor;
  let x_440 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(x_435.x, x_435.y, x_435.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_441 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_443 : vec2<f32> = u_xlat1;
  let x_445 : vec4<f32> = u_xlat0;
  let x_450 : vec3<f32> = ((vec3<f32>(x_443.x, x_443.x, x_443.x) * vec3<f32>(x_445.x, x_445.y, x_445.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_451 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : f32 = u_xlat1.y;
  let x_457 : f32 = x_69.x_Smoothness;
  u_xlat33 = ((-(x_454) * x_457) + 1.0f);
  let x_460 : f32 = u_xlat33;
  let x_461 : f32 = u_xlat33;
  u_xlat1.x = (x_460 * x_461);
  let x_465 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_465, 0.0078125f);
  let x_471 : f32 = u_xlat1.x;
  let x_473 : f32 = u_xlat1.x;
  u_xlat12 = (x_471 * x_473);
  let x_476 : f32 = u_xlat23.x;
  u_xlat23.x = (x_476 + 1.0f);
  let x_480 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_480, 0.0f, 1.0f);
  let x_485 : f32 = u_xlat1.x;
  u_xlat34 = ((x_485 * 4.0f) + 2.0f);
  let x_495 : vec3<f32> = u_xlat6;
  let x_498 : f32 = x_44.x_GlobalMipBias.x;
  let x_499 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_495.x, x_495.z), x_498);
  u_xlat37 = x_499.x;
  let x_502 : f32 = u_xlat37;
  u_xlat38 = (x_502 + -1.0f);
  let x_506 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_507 : f32 = u_xlat38;
  u_xlat38 = ((x_506 * x_507) + 1.0f);
  let x_511 : f32 = u_xlat3.x;
  let x_512 : f32 = u_xlat37;
  u_xlat3.x = min(x_511, x_512);
  let x_517 : vec4<f32> = vs_TEXCOORD6;
  let x_518 : vec2<f32> = vec2<f32>(x_517.x, x_517.y);
  let x_520 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_518.x, x_518.y, x_520);
  let x_532 : vec3<f32> = txVec0;
  let x_534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_532.xy, x_532.z);
  u_xlat37 = x_534;
  let x_541 : f32 = x_539.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_541) + 1.0f);
  let x_545 : f32 = u_xlat37;
  let x_547 : f32 = x_539.x_MainLightShadowParams.x;
  let x_550 : f32 = u_xlat6.x;
  u_xlat37 = ((x_545 * x_547) + x_550);
  let x_554 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_554);
  let x_558 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (x_558 >= 1.0f);
  let x_560 : bool = u_xlatb17;
  let x_561 : bool = u_xlatb6;
  u_xlatb6 = (x_560 | x_561);
  let x_563 : bool = u_xlatb6;
  let x_564 : f32 = u_xlat37;
  u_xlat37 = select(x_564, 1.0f, x_563);
  let x_566 : vec3<f32> = vs_TEXCOORD1;
  let x_568 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat6 = (x_566 + -(x_568));
  let x_571 : vec3<f32> = u_xlat6;
  let x_572 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_571, x_572);
  let x_576 : f32 = u_xlat6.x;
  let x_578 : f32 = x_539.x_MainLightShadowParams.z;
  let x_581 : f32 = x_539.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_576 * x_578) + x_581);
  let x_585 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_585, 0.0f, 1.0f);
  let x_589 : f32 = u_xlat37;
  u_xlat17 = (-(x_589) + 1.0f);
  let x_593 : f32 = u_xlat6.x;
  let x_594 : f32 = u_xlat17;
  let x_596 : f32 = u_xlat37;
  u_xlat37 = ((x_593 * x_594) + x_596);
  let x_598 : f32 = u_xlat38;
  let x_602 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_598, x_598, x_598) * vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_606 : vec3<f32> = u_xlat5;
  let x_608 : vec3<f32> = u_xlat14;
  u_xlat39 = dot(-(x_606), x_608);
  let x_610 : f32 = u_xlat39;
  let x_611 : f32 = u_xlat39;
  u_xlat39 = (x_610 + x_611);
  let x_614 : vec3<f32> = u_xlat14;
  let x_615 : f32 = u_xlat39;
  let x_619 : vec3<f32> = u_xlat5;
  let x_621 : vec3<f32> = ((x_614 * -(vec3<f32>(x_615, x_615, x_615))) + -(x_619));
  let x_622 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_624 : vec3<f32> = u_xlat14;
  let x_625 : vec3<f32> = u_xlat5;
  u_xlat39 = dot(x_624, x_625);
  let x_627 : f32 = u_xlat39;
  u_xlat39 = clamp(x_627, 0.0f, 1.0f);
  let x_629 : f32 = u_xlat39;
  u_xlat39 = (-(x_629) + 1.0f);
  let x_632 : f32 = u_xlat39;
  let x_633 : f32 = u_xlat39;
  u_xlat39 = (x_632 * x_633);
  let x_635 : f32 = u_xlat39;
  let x_636 : f32 = u_xlat39;
  u_xlat39 = (x_635 * x_636);
  let x_639 : f32 = u_xlat33;
  u_xlat40 = ((-(x_639) * 0.699999988f) + 1.700000048f);
  let x_645 : f32 = u_xlat33;
  let x_646 : f32 = u_xlat40;
  u_xlat33 = (x_645 * x_646);
  let x_648 : f32 = u_xlat33;
  u_xlat33 = (x_648 * 6.0f);
  let x_659 : vec4<f32> = u_xlat7;
  let x_661 : f32 = u_xlat33;
  let x_662 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_659.x, x_659.y, x_659.z), x_661);
  u_xlat7 = x_662;
  let x_664 : f32 = u_xlat7.w;
  u_xlat33 = (x_664 + -1.0f);
  let x_667 : f32 = x_184.unity_SpecCube0_HDR.w;
  let x_668 : f32 = u_xlat33;
  u_xlat33 = ((x_667 * x_668) + 1.0f);
  let x_671 : f32 = u_xlat33;
  u_xlat33 = max(x_671, 0.0f);
  let x_673 : f32 = u_xlat33;
  u_xlat33 = log2(x_673);
  let x_675 : f32 = u_xlat33;
  let x_677 : f32 = x_184.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_675 * x_677);
  let x_679 : f32 = u_xlat33;
  u_xlat33 = exp2(x_679);
  let x_681 : f32 = u_xlat33;
  let x_683 : f32 = x_184.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_681 * x_683);
  let x_685 : vec4<f32> = u_xlat7;
  let x_687 : f32 = u_xlat33;
  let x_689 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) * vec3<f32>(x_687, x_687, x_687));
  let x_690 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_693 : vec2<f32> = u_xlat1;
  let x_695 : vec2<f32> = u_xlat1;
  u_xlat8 = ((vec2<f32>(x_693.x, x_693.x) * vec2<f32>(x_695.x, x_695.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_701 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_701);
  let x_704 : vec4<f32> = u_xlat0;
  let x_707 : vec2<f32> = u_xlat23;
  u_xlat19 = (-(vec3<f32>(x_704.x, x_704.y, x_704.z)) + vec3<f32>(x_707.x, x_707.x, x_707.x));
  let x_710 : f32 = u_xlat39;
  let x_712 : vec3<f32> = u_xlat19;
  let x_714 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_710, x_710, x_710) * x_712) + vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : f32 = u_xlat33;
  let x_719 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_717, x_717, x_717) * x_719);
  let x_721 : vec4<f32> = u_xlat7;
  let x_723 : vec3<f32> = u_xlat19;
  let x_724 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) * x_723);
  let x_725 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : vec4<f32> = u_xlat4;
  let x_729 : vec3<f32> = u_xlat13;
  let x_731 : vec4<f32> = u_xlat7;
  let x_733 : vec3<f32> = ((vec3<f32>(x_727.x, x_727.y, x_727.z) * x_729) + vec3<f32>(x_731.x, x_731.y, x_731.z));
  let x_734 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_736 : f32 = u_xlat37;
  let x_739 : f32 = x_184.unity_LightData.z;
  u_xlat33 = (x_736 * x_739);
  let x_741 : vec3<f32> = u_xlat14;
  let x_743 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_741, vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_748 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_748, 0.0f, 1.0f);
  let x_751 : f32 = u_xlat33;
  let x_753 : f32 = u_xlat1.x;
  u_xlat33 = (x_751 * x_753);
  let x_755 : f32 = u_xlat33;
  let x_757 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_755, x_755, x_755) * x_757);
  let x_759 : vec3<f32> = u_xlat5;
  let x_761 : vec4<f32> = x_44.x_MainLightPosition;
  let x_763 : vec3<f32> = (x_759 + vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat7;
  let x_768 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_766.x, x_766.y, x_766.z), vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_771 : f32 = u_xlat33;
  u_xlat33 = max(x_771, 1.17549435e-37f);
  let x_774 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_774);
  let x_776 : f32 = u_xlat33;
  let x_778 : vec4<f32> = u_xlat7;
  let x_780 : vec3<f32> = (vec3<f32>(x_776, x_776, x_776) * vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec3<f32> = u_xlat14;
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_783, vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : f32 = u_xlat33;
  u_xlat33 = clamp(x_787, 0.0f, 1.0f);
  let x_790 : vec4<f32> = x_44.x_MainLightPosition;
  let x_792 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_790.x, x_790.y, x_790.z), vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_797 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_797, 0.0f, 1.0f);
  let x_800 : f32 = u_xlat33;
  let x_801 : f32 = u_xlat33;
  u_xlat33 = (x_800 * x_801);
  let x_803 : f32 = u_xlat33;
  let x_805 : f32 = u_xlat8.x;
  u_xlat33 = ((x_803 * x_805) + 1.000010014f);
  let x_810 : f32 = u_xlat1.x;
  let x_812 : f32 = u_xlat1.x;
  u_xlat1.x = (x_810 * x_812);
  let x_815 : f32 = u_xlat33;
  let x_816 : f32 = u_xlat33;
  u_xlat33 = (x_815 * x_816);
  let x_819 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_819, 0.100000001f);
  let x_823 : f32 = u_xlat33;
  let x_825 : f32 = u_xlat1.x;
  u_xlat33 = (x_823 * x_825);
  let x_827 : f32 = u_xlat34;
  let x_828 : f32 = u_xlat33;
  u_xlat33 = (x_827 * x_828);
  let x_830 : f32 = u_xlat12;
  let x_831 : f32 = u_xlat33;
  u_xlat33 = (x_830 / x_831);
  let x_833 : vec4<f32> = u_xlat0;
  let x_835 : f32 = u_xlat33;
  let x_838 : vec3<f32> = u_xlat13;
  let x_839 : vec3<f32> = ((vec3<f32>(x_833.x, x_833.y, x_833.z) * vec3<f32>(x_835, x_835, x_835)) + x_838);
  let x_840 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec3<f32> = u_xlat6;
  let x_843 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_842 * vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_847 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_849 : f32 = x_184.unity_LightData.y;
  u_xlat33 = min(x_847, x_849);
  let x_853 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_853));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_865 : u32 = u_xlatu_loop_1;
    let x_866 : u32 = u_xlatu33;
    if ((x_865 < x_866)) {
    } else {
      break;
    }
    let x_869 : u32 = u_xlatu_loop_1;
    u_xlatu23 = (x_869 >> 2u);
    let x_873 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_873 & 3u));
    let x_876 : u32 = u_xlatu23;
    let x_879 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_876)];
    let x_889 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_894 : vec4<u32> = indexable[x_889];
    u_xlat23.x = dot(x_879, bitcast<vec4<f32>>(x_894));
    let x_900 : f32 = u_xlat23.x;
    u_xlati23 = i32(x_900);
    let x_902 : vec3<f32> = vs_TEXCOORD1;
    let x_914 : i32 = u_xlati23;
    let x_916 : vec4<f32> = x_913.x_AdditionalLightsPosition[x_914];
    let x_919 : i32 = u_xlati23;
    let x_921 : vec4<f32> = x_913.x_AdditionalLightsPosition[x_919];
    u_xlat19 = ((-(x_902) * vec3<f32>(x_916.w, x_916.w, x_916.w)) + vec3<f32>(x_921.x, x_921.y, x_921.z));
    let x_924 : vec3<f32> = u_xlat19;
    let x_925 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_924, x_925);
    let x_927 : f32 = u_xlat37;
    u_xlat37 = max(x_927, 6.10351562e-05f);
    let x_930 : f32 = u_xlat37;
    u_xlat39 = inverseSqrt(x_930);
    let x_933 : f32 = u_xlat39;
    let x_935 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_933, x_933, x_933) * x_935);
    let x_937 : f32 = u_xlat37;
    u_xlat40 = (1.0f / x_937);
    let x_939 : f32 = u_xlat37;
    let x_940 : i32 = u_xlati23;
    let x_942 : f32 = x_913.x_AdditionalLightsAttenuation[x_940].x;
    u_xlat37 = (x_939 * x_942);
    let x_944 : f32 = u_xlat37;
    let x_946 : f32 = u_xlat37;
    u_xlat37 = ((-(x_944) * x_946) + 1.0f);
    let x_949 : f32 = u_xlat37;
    u_xlat37 = max(x_949, 0.0f);
    let x_951 : f32 = u_xlat37;
    let x_952 : f32 = u_xlat37;
    u_xlat37 = (x_951 * x_952);
    let x_954 : f32 = u_xlat37;
    let x_955 : f32 = u_xlat40;
    u_xlat37 = (x_954 * x_955);
    let x_957 : i32 = u_xlati23;
    let x_959 : vec4<f32> = x_913.x_AdditionalLightsSpotDir[x_957];
    let x_961 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_959.x, x_959.y, x_959.z), x_961);
    let x_963 : f32 = u_xlat40;
    let x_964 : i32 = u_xlati23;
    let x_966 : f32 = x_913.x_AdditionalLightsAttenuation[x_964].z;
    let x_968 : i32 = u_xlati23;
    let x_970 : f32 = x_913.x_AdditionalLightsAttenuation[x_968].w;
    u_xlat40 = ((x_963 * x_966) + x_970);
    let x_972 : f32 = u_xlat40;
    u_xlat40 = clamp(x_972, 0.0f, 1.0f);
    let x_974 : f32 = u_xlat40;
    let x_975 : f32 = u_xlat40;
    u_xlat40 = (x_974 * x_975);
    let x_977 : f32 = u_xlat37;
    let x_978 : f32 = u_xlat40;
    u_xlat37 = (x_977 * x_978);
    let x_981 : f32 = u_xlat38;
    let x_983 : i32 = u_xlati23;
    let x_985 : vec4<f32> = x_913.x_AdditionalLightsColor[x_983];
    u_xlat10 = (vec3<f32>(x_981, x_981, x_981) * vec3<f32>(x_985.x, x_985.y, x_985.z));
    let x_988 : vec3<f32> = u_xlat14;
    let x_989 : vec3<f32> = u_xlat9;
    u_xlat23.x = dot(x_988, x_989);
    let x_993 : f32 = u_xlat23.x;
    u_xlat23.x = clamp(x_993, 0.0f, 1.0f);
    let x_997 : f32 = u_xlat23.x;
    let x_998 : f32 = u_xlat37;
    u_xlat23.x = (x_997 * x_998);
    let x_1001 : vec2<f32> = u_xlat23;
    let x_1003 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1001.x, x_1001.x, x_1001.x) * x_1003);
    let x_1005 : vec3<f32> = u_xlat19;
    let x_1006 : f32 = u_xlat39;
    let x_1009 : vec3<f32> = u_xlat5;
    u_xlat19 = ((x_1005 * vec3<f32>(x_1006, x_1006, x_1006)) + x_1009);
    let x_1011 : vec3<f32> = u_xlat19;
    let x_1012 : vec3<f32> = u_xlat19;
    u_xlat23.x = dot(x_1011, x_1012);
    let x_1016 : f32 = u_xlat23.x;
    u_xlat23.x = max(x_1016, 1.17549435e-37f);
    let x_1020 : f32 = u_xlat23.x;
    u_xlat23.x = inverseSqrt(x_1020);
    let x_1023 : vec2<f32> = u_xlat23;
    let x_1025 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1023.x, x_1023.x, x_1023.x) * x_1025);
    let x_1027 : vec3<f32> = u_xlat14;
    let x_1028 : vec3<f32> = u_xlat19;
    u_xlat23.x = dot(x_1027, x_1028);
    let x_1032 : f32 = u_xlat23.x;
    u_xlat23.x = clamp(x_1032, 0.0f, 1.0f);
    let x_1035 : vec3<f32> = u_xlat9;
    let x_1036 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1035, x_1036);
    let x_1038 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1038, 0.0f, 1.0f);
    let x_1041 : f32 = u_xlat23.x;
    let x_1043 : f32 = u_xlat23.x;
    u_xlat23.x = (x_1041 * x_1043);
    let x_1047 : f32 = u_xlat23.x;
    let x_1049 : f32 = u_xlat8.x;
    u_xlat23.x = ((x_1047 * x_1049) + 1.000010014f);
    let x_1053 : f32 = u_xlat37;
    let x_1054 : f32 = u_xlat37;
    u_xlat37 = (x_1053 * x_1054);
    let x_1057 : f32 = u_xlat23.x;
    let x_1059 : f32 = u_xlat23.x;
    u_xlat23.x = (x_1057 * x_1059);
    let x_1062 : f32 = u_xlat37;
    u_xlat37 = max(x_1062, 0.100000001f);
    let x_1065 : f32 = u_xlat23.x;
    let x_1066 : f32 = u_xlat37;
    u_xlat23.x = (x_1065 * x_1066);
    let x_1069 : f32 = u_xlat34;
    let x_1071 : f32 = u_xlat23.x;
    u_xlat23.x = (x_1069 * x_1071);
    let x_1074 : f32 = u_xlat12;
    let x_1076 : f32 = u_xlat23.x;
    u_xlat23.x = (x_1074 / x_1076);
    let x_1079 : vec4<f32> = u_xlat0;
    let x_1081 : vec2<f32> = u_xlat23;
    let x_1084 : vec3<f32> = u_xlat13;
    u_xlat19 = ((vec3<f32>(x_1079.x, x_1079.y, x_1079.z) * vec3<f32>(x_1081.x, x_1081.x, x_1081.x)) + x_1084);
    let x_1086 : vec3<f32> = u_xlat19;
    let x_1087 : vec3<f32> = u_xlat10;
    let x_1089 : vec4<f32> = u_xlat7;
    let x_1091 : vec3<f32> = ((x_1086 * x_1087) + vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
    let x_1092 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);

    continuing {
      let x_1094 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1094 + bitcast<u32>(1i));
    }
  }
  let x_1096 : vec4<f32> = u_xlat4;
  let x_1098 : vec3<f32> = u_xlat3;
  let x_1101 : vec3<f32> = u_xlat6;
  let x_1102 : vec3<f32> = ((vec3<f32>(x_1096.x, x_1096.y, x_1096.z) * vec3<f32>(x_1098.x, x_1098.x, x_1098.x)) + x_1101);
  let x_1103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1107 : vec4<f32> = u_xlat7;
  let x_1109 : vec4<f32> = u_xlat0;
  let x_1111 : vec3<f32> = (vec3<f32>(x_1107.x, x_1107.y, x_1107.z) + vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1112 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1117 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1117 == 1.0f);
  let x_1119 : bool = u_xlatb0;
  if (x_1119) {
    let x_1124 : f32 = u_xlat2.x;
    x_1120 = x_1124;
  } else {
    x_1120 = 1.0f;
  }
  let x_1126 : f32 = x_1120;
  SV_Target0.w = x_1126;
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

