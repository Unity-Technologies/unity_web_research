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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_158 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_348 : UnityPerDraw;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(4) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_926 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb33 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat35 : f32;
  var u_xlat3 : vec3<f32>;
  var x_103 : f32;
  var x_117 : f32;
  var x_129 : f32;
  var u_xlat33 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat17 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlatb15 : bool;
  var u_xlatb26 : bool;
  var x_596 : f32;
  var u_xlat26 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati39 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1125 : f32;
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
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb33 = (x_69 == 0.0f);
  let x_75 : vec3<f32> = vs_TEXCOORD1;
  let x_80 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_81 : vec3<f32> = (-(x_75) + x_80);
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat35 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat35;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = (vec3<f32>(x_93, x_93, x_93) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_102 : bool = u_xlatb33;
  if (x_102) {
    let x_107 : f32 = u_xlat2.x;
    x_103 = x_107;
  } else {
    let x_113 : f32 = x_44.unity_MatrixV[0i].z;
    x_103 = x_113;
  }
  let x_114 : f32 = x_103;
  u_xlat3.x = x_114;
  let x_116 : bool = u_xlatb33;
  if (x_116) {
    let x_122 : f32 = u_xlat2.y;
    x_117 = x_122;
  } else {
    let x_125 : f32 = x_44.unity_MatrixV[1i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.y = x_126;
  let x_128 : bool = u_xlatb33;
  if (x_128) {
    let x_133 : f32 = u_xlat2.z;
    x_129 = x_133;
  } else {
    let x_136 : f32 = x_44.unity_MatrixV[2i].z;
    x_129 = x_136;
  }
  let x_137 : f32 = x_129;
  u_xlat3.z = x_137;
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  let x_142 : vec3<f32> = vs_TEXCOORD2;
  u_xlat33 = dot(x_141, x_142);
  let x_144 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_144);
  let x_146 : f32 = u_xlat33;
  let x_148 : vec3<f32> = vs_TEXCOORD2;
  let x_149 : vec3<f32> = (vec3<f32>(x_146, x_146, x_146) * x_148);
  let x_150 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_153 : vec3<f32> = vs_TEXCOORD1;
  let x_160 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres0;
  let x_163 : vec3<f32> = (x_153 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD1;
  let x_169 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres1;
  let x_172 : vec3<f32> = (x_167 + -(vec3<f32>(x_169.x, x_169.y, x_169.z)));
  let x_173 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec3<f32> = vs_TEXCOORD1;
  let x_179 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres2;
  let x_182 : vec3<f32> = (x_176 + -(vec3<f32>(x_179.x, x_179.y, x_179.z)));
  let x_183 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_186 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_186 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat4;
  let x_195 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_199 : vec4<f32> = u_xlat5;
  let x_201 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_199.x, x_199.y, x_199.z), vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec4<f32> = u_xlat6;
  let x_207 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_205.x, x_205.y, x_205.z), vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_211 : vec3<f32> = u_xlat7;
  let x_212 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_211, x_212);
  let x_218 : vec4<f32> = u_xlat4;
  let x_221 : vec4<f32> = x_158.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_218 < x_221);
  let x_224 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_224);
  let x_228 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_232);
  let x_236 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_236);
  let x_240 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_240);
  let x_246 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_246);
  let x_250 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_250);
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat5;
  let x_257 : vec3<f32> = (vec3<f32>(x_253.x, x_253.y, x_253.z) + vec3<f32>(x_255.y, x_255.z, x_255.w));
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat4;
  let x_263 : vec3<f32> = max(vec3<f32>(x_260.x, x_260.y, x_260.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_264 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_264.x, x_263.x, x_263.y, x_263.z);
  let x_266 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_266, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_272 : f32 = u_xlat33;
  u_xlat33 = (-(x_272) + 4.0f);
  let x_277 : f32 = u_xlat33;
  u_xlatu33 = u32(x_277);
  let x_281 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_281) << bitcast<u32>(2i));
  let x_284 : vec3<f32> = vs_TEXCOORD1;
  let x_286 : i32 = u_xlati33;
  let x_289 : i32 = u_xlati33;
  let x_293 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_286 + 1i) / 4i)][((x_289 + 1i) % 4i)];
  let x_295 : vec3<f32> = (vec3<f32>(x_284.y, x_284.y, x_284.y) * vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : i32 = u_xlati33;
  let x_300 : i32 = u_xlati33;
  let x_303 : vec4<f32> = x_158.x_MainLightWorldToShadow[(x_298 / 4i)][(x_300 % 4i)];
  let x_305 : vec3<f32> = vs_TEXCOORD1;
  let x_308 : vec4<f32> = u_xlat4;
  let x_310 : vec3<f32> = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.x, x_305.x, x_305.x)) + vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : i32 = u_xlati33;
  let x_316 : i32 = u_xlati33;
  let x_320 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_313 + 2i) / 4i)][((x_316 + 2i) % 4i)];
  let x_322 : vec3<f32> = vs_TEXCOORD1;
  let x_325 : vec4<f32> = u_xlat4;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.z, x_322.z, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_332 : i32 = u_xlati33;
  let x_335 : i32 = u_xlati33;
  let x_339 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_332 + 3i) / 4i)][((x_335 + 3i) % 4i)];
  let x_341 : vec3<f32> = (vec3<f32>(x_330.x, x_330.y, x_330.z) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  u_xlat2.w = 1.0f;
  let x_351 : vec4<f32> = x_348.unity_SHAr;
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_351, x_352);
  let x_357 : vec4<f32> = x_348.unity_SHAg;
  let x_358 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_357, x_358);
  let x_363 : vec4<f32> = x_348.unity_SHAb;
  let x_364 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_363, x_364);
  let x_367 : vec4<f32> = u_xlat2;
  let x_369 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_367.y, x_367.z, x_367.z, x_367.x) * vec4<f32>(x_369.x, x_369.y, x_369.z, x_369.z));
  let x_374 : vec4<f32> = x_348.unity_SHBr;
  let x_375 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_374, x_375);
  let x_380 : vec4<f32> = x_348.unity_SHBg;
  let x_381 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_380, x_381);
  let x_386 : vec4<f32> = x_348.unity_SHBb;
  let x_387 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_386, x_387);
  let x_391 : f32 = u_xlat2.y;
  let x_393 : f32 = u_xlat2.y;
  u_xlat33 = (x_391 * x_393);
  let x_396 : f32 = u_xlat2.x;
  let x_398 : f32 = u_xlat2.x;
  let x_400 : f32 = u_xlat33;
  u_xlat33 = ((x_396 * x_398) + -(x_400));
  let x_405 : vec4<f32> = x_348.unity_SHC;
  let x_407 : f32 = u_xlat33;
  let x_410 : vec3<f32> = u_xlat7;
  let x_411 : vec3<f32> = ((vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(x_407, x_407, x_407)) + x_410);
  let x_412 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat5;
  let x_416 : vec4<f32> = u_xlat6;
  let x_418 : vec3<f32> = (vec3<f32>(x_414.x, x_414.y, x_414.z) + vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat5;
  let x_423 : vec3<f32> = max(vec3<f32>(x_421.x, x_421.y, x_421.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_424 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_428 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_429 : vec2<f32> = vec2<f32>(x_428.x, x_428.y);
  let x_433 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_429.x, x_429.y));
  let x_434 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_433.x, x_433.y, x_434.z, x_434.w);
  let x_436 : vec4<f32> = u_xlat6;
  let x_438 : vec4<f32> = hlslcc_FragCoord;
  let x_440 : vec2<f32> = (vec2<f32>(x_436.x, x_436.y) * vec2<f32>(x_438.x, x_438.y));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_444 : f32 = u_xlat6.y;
  let x_447 : f32 = x_44.x_ScaleBiasRt.x;
  let x_450 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_444 * x_447) + x_450);
  let x_452 : f32 = u_xlat33;
  u_xlat6.z = (-(x_452) + 1.0f);
  let x_457 : f32 = x_57.x_Metallic;
  u_xlat33 = ((-(x_457) * 0.959999979f) + 0.959999979f);
  let x_462 : f32 = u_xlat33;
  u_xlat35 = (-(x_462) + 1.0f);
  let x_466 : f32 = u_xlat33;
  let x_468 : vec4<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_466, x_466, x_466) * vec3<f32>(x_468.y, x_468.z, x_468.w));
  let x_471 : vec4<f32> = u_xlat0;
  let x_474 : vec4<f32> = x_57.x_BaseColor;
  let x_479 : vec3<f32> = ((vec3<f32>(x_471.x, x_471.y, x_471.z) * vec3<f32>(x_474.x, x_474.y, x_474.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_480 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_483 : f32 = x_57.x_Metallic;
  let x_485 : f32 = x_57.x_Metallic;
  let x_487 : f32 = x_57.x_Metallic;
  let x_488 : vec3<f32> = vec3<f32>(x_483, x_485, x_487);
  let x_493 : vec4<f32> = u_xlat0;
  let x_498 : vec3<f32> = ((vec3<f32>(x_488.x, x_488.y, x_488.z) * vec3<f32>(x_493.x, x_493.y, x_493.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_499 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_502 : f32 = x_57.x_Smoothness;
  u_xlat33 = (-(x_502) + 1.0f);
  let x_506 : f32 = u_xlat33;
  let x_507 : f32 = u_xlat33;
  u_xlat36 = (x_506 * x_507);
  let x_509 : f32 = u_xlat36;
  u_xlat36 = max(x_509, 0.0078125f);
  let x_513 : f32 = u_xlat36;
  let x_514 : f32 = u_xlat36;
  u_xlat37 = (x_513 * x_514);
  let x_516 : f32 = u_xlat35;
  let x_518 : f32 = x_57.x_Smoothness;
  u_xlat35 = (x_516 + x_518);
  let x_520 : f32 = u_xlat35;
  u_xlat35 = clamp(x_520, 0.0f, 1.0f);
  let x_523 : f32 = u_xlat36;
  u_xlat38 = ((x_523 * 4.0f) + 2.0f);
  let x_531 : vec4<f32> = u_xlat6;
  let x_534 : f32 = x_44.x_GlobalMipBias.x;
  let x_535 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_531.x, x_531.z), x_534);
  u_xlat6.x = x_535.x;
  let x_540 : f32 = u_xlat6.x;
  u_xlat17 = (x_540 + -1.0f);
  let x_543 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_544 : f32 = u_xlat17;
  u_xlat17 = ((x_543 * x_544) + 1.0f);
  let x_548 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_548, 1.0f);
  let x_552 : vec4<f32> = u_xlat4;
  let x_553 : vec2<f32> = vec2<f32>(x_552.x, x_552.y);
  let x_555 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_553.x, x_553.y, x_555);
  let x_567 : vec3<f32> = txVec0;
  let x_569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_567.xy, x_567.z);
  u_xlat4.x = x_569;
  let x_573 : f32 = x_158.x_MainLightShadowParams.x;
  u_xlat15 = (-(x_573) + 1.0f);
  let x_577 : f32 = u_xlat4.x;
  let x_579 : f32 = x_158.x_MainLightShadowParams.x;
  let x_581 : f32 = u_xlat15;
  u_xlat4.x = ((x_577 * x_579) + x_581);
  let x_586 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_586);
  let x_590 : f32 = u_xlat4.z;
  u_xlatb26 = (x_590 >= 1.0f);
  let x_592 : bool = u_xlatb26;
  let x_593 : bool = u_xlatb15;
  u_xlatb15 = (x_592 | x_593);
  let x_595 : bool = u_xlatb15;
  if (x_595) {
    x_596 = 1.0f;
  } else {
    let x_601 : f32 = u_xlat4.x;
    x_596 = x_601;
  }
  let x_602 : f32 = x_596;
  u_xlat4.x = x_602;
  let x_604 : vec3<f32> = vs_TEXCOORD1;
  let x_606 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_604 + -(x_606));
  let x_609 : vec3<f32> = u_xlat7;
  let x_610 : vec3<f32> = u_xlat7;
  u_xlat15 = dot(x_609, x_610);
  let x_612 : f32 = u_xlat15;
  let x_614 : f32 = x_158.x_MainLightShadowParams.z;
  let x_617 : f32 = x_158.x_MainLightShadowParams.w;
  u_xlat15 = ((x_612 * x_614) + x_617);
  let x_619 : f32 = u_xlat15;
  u_xlat15 = clamp(x_619, 0.0f, 1.0f);
  let x_623 : f32 = u_xlat4.x;
  u_xlat26 = (-(x_623) + 1.0f);
  let x_626 : f32 = u_xlat15;
  let x_627 : f32 = u_xlat26;
  let x_630 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_626 * x_627) + x_630);
  let x_633 : f32 = u_xlat17;
  let x_636 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_633, x_633, x_633) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec3<f32> = u_xlat3;
  let x_641 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(-(x_639), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_644 : f32 = u_xlat15;
  let x_645 : f32 = u_xlat15;
  u_xlat15 = (x_644 + x_645);
  let x_648 : vec4<f32> = u_xlat2;
  let x_650 : f32 = u_xlat15;
  let x_654 : vec3<f32> = u_xlat3;
  let x_656 : vec3<f32> = ((vec3<f32>(x_648.x, x_648.y, x_648.z) * -(vec3<f32>(x_650, x_650, x_650))) + -(x_654));
  let x_657 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : vec4<f32> = u_xlat2;
  let x_661 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_659.x, x_659.y, x_659.z), x_661);
  let x_663 : f32 = u_xlat15;
  u_xlat15 = clamp(x_663, 0.0f, 1.0f);
  let x_665 : f32 = u_xlat15;
  u_xlat15 = (-(x_665) + 1.0f);
  let x_668 : f32 = u_xlat15;
  let x_669 : f32 = u_xlat15;
  u_xlat15 = (x_668 * x_669);
  let x_671 : f32 = u_xlat15;
  let x_672 : f32 = u_xlat15;
  u_xlat15 = (x_671 * x_672);
  let x_674 : f32 = u_xlat33;
  u_xlat26 = ((-(x_674) * 0.699999988f) + 1.700000048f);
  let x_680 : f32 = u_xlat33;
  let x_681 : f32 = u_xlat26;
  u_xlat33 = (x_680 * x_681);
  let x_683 : f32 = u_xlat33;
  u_xlat33 = (x_683 * 6.0f);
  let x_694 : vec4<f32> = u_xlat8;
  let x_696 : f32 = u_xlat33;
  let x_697 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_694.x, x_694.y, x_694.z), x_696);
  u_xlat8 = x_697;
  let x_699 : f32 = u_xlat8.w;
  u_xlat33 = (x_699 + -1.0f);
  let x_702 : f32 = x_348.unity_SpecCube0_HDR.w;
  let x_703 : f32 = u_xlat33;
  u_xlat33 = ((x_702 * x_703) + 1.0f);
  let x_706 : f32 = u_xlat33;
  u_xlat33 = max(x_706, 0.0f);
  let x_708 : f32 = u_xlat33;
  u_xlat33 = log2(x_708);
  let x_710 : f32 = u_xlat33;
  let x_712 : f32 = x_348.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_710 * x_712);
  let x_714 : f32 = u_xlat33;
  u_xlat33 = exp2(x_714);
  let x_716 : f32 = u_xlat33;
  let x_718 : f32 = x_348.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_716 * x_718);
  let x_720 : vec4<f32> = u_xlat8;
  let x_722 : f32 = u_xlat33;
  let x_724 : vec3<f32> = (vec3<f32>(x_720.x, x_720.y, x_720.z) * vec3<f32>(x_722, x_722, x_722));
  let x_725 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_729 : f32 = u_xlat36;
  let x_731 : f32 = u_xlat36;
  u_xlat28 = ((vec2<f32>(x_729, x_729) * vec2<f32>(x_731, x_731)) + vec2<f32>(-1.0f, 1.0f));
  let x_737 : f32 = u_xlat28.y;
  u_xlat33 = (1.0f / x_737);
  let x_740 : vec4<f32> = u_xlat0;
  let x_743 : f32 = u_xlat35;
  u_xlat9 = (-(vec3<f32>(x_740.x, x_740.y, x_740.z)) + vec3<f32>(x_743, x_743, x_743));
  let x_746 : f32 = u_xlat15;
  let x_748 : vec3<f32> = u_xlat9;
  let x_750 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_746, x_746, x_746) * x_748) + vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : f32 = u_xlat33;
  let x_755 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_753, x_753, x_753) * x_755);
  let x_757 : vec4<f32> = u_xlat8;
  let x_759 : vec3<f32> = u_xlat9;
  let x_760 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) * x_759);
  let x_761 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat5;
  let x_765 : vec3<f32> = u_xlat12;
  let x_767 : vec4<f32> = u_xlat8;
  let x_769 : vec3<f32> = ((vec3<f32>(x_763.x, x_763.y, x_763.z) * x_765) + vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_773 : f32 = u_xlat4.x;
  let x_775 : f32 = x_348.unity_LightData.z;
  u_xlat33 = (x_773 * x_775);
  let x_777 : vec4<f32> = u_xlat2;
  let x_780 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(vec3<f32>(x_777.x, x_777.y, x_777.z), vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : f32 = u_xlat35;
  u_xlat35 = clamp(x_783, 0.0f, 1.0f);
  let x_785 : f32 = u_xlat33;
  let x_786 : f32 = u_xlat35;
  u_xlat33 = (x_785 * x_786);
  let x_788 : f32 = u_xlat33;
  let x_790 : vec3<f32> = u_xlat7;
  let x_791 : vec3<f32> = (vec3<f32>(x_788, x_788, x_788) * x_790);
  let x_792 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec3<f32> = u_xlat3;
  let x_796 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_794 + vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : vec3<f32> = u_xlat7;
  let x_800 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_799, x_800);
  let x_802 : f32 = u_xlat33;
  u_xlat33 = max(x_802, 1.17549435e-37f);
  let x_805 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_805);
  let x_807 : f32 = u_xlat33;
  let x_809 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_807, x_807, x_807) * x_809);
  let x_811 : vec4<f32> = u_xlat2;
  let x_813 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_811.x, x_811.y, x_811.z), x_813);
  let x_815 : f32 = u_xlat33;
  u_xlat33 = clamp(x_815, 0.0f, 1.0f);
  let x_818 : vec4<f32> = x_44.x_MainLightPosition;
  let x_820 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_818.x, x_818.y, x_818.z), x_820);
  let x_822 : f32 = u_xlat35;
  u_xlat35 = clamp(x_822, 0.0f, 1.0f);
  let x_824 : f32 = u_xlat33;
  let x_825 : f32 = u_xlat33;
  u_xlat33 = (x_824 * x_825);
  let x_827 : f32 = u_xlat33;
  let x_829 : f32 = u_xlat28.x;
  u_xlat33 = ((x_827 * x_829) + 1.000010014f);
  let x_833 : f32 = u_xlat35;
  let x_834 : f32 = u_xlat35;
  u_xlat35 = (x_833 * x_834);
  let x_836 : f32 = u_xlat33;
  let x_837 : f32 = u_xlat33;
  u_xlat33 = (x_836 * x_837);
  let x_839 : f32 = u_xlat35;
  u_xlat35 = max(x_839, 0.100000001f);
  let x_842 : f32 = u_xlat33;
  let x_843 : f32 = u_xlat35;
  u_xlat33 = (x_842 * x_843);
  let x_845 : f32 = u_xlat38;
  let x_846 : f32 = u_xlat33;
  u_xlat33 = (x_845 * x_846);
  let x_848 : f32 = u_xlat37;
  let x_849 : f32 = u_xlat33;
  u_xlat33 = (x_848 / x_849);
  let x_851 : vec4<f32> = u_xlat0;
  let x_853 : f32 = u_xlat33;
  let x_856 : vec3<f32> = u_xlat12;
  u_xlat7 = ((vec3<f32>(x_851.x, x_851.y, x_851.z) * vec3<f32>(x_853, x_853, x_853)) + x_856);
  let x_858 : vec4<f32> = u_xlat4;
  let x_860 : vec3<f32> = u_xlat7;
  let x_861 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) * x_860);
  let x_862 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_865 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_867 : f32 = x_348.unity_LightData.y;
  u_xlat33 = min(x_865, x_867);
  let x_869 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_869));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_881 : u32 = u_xlatu_loop_1;
    let x_882 : u32 = u_xlatu33;
    if ((x_881 < x_882)) {
    } else {
      break;
    }
    let x_885 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_885 >> 2u);
    let x_888 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_888 & 3u));
    let x_891 : u32 = u_xlatu36;
    let x_894 : vec4<f32> = x_348.unity_LightIndices[bitcast<i32>(x_891)];
    let x_904 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_909 : vec4<u32> = indexable[x_904];
    u_xlat36 = dot(x_894, bitcast<vec4<f32>>(x_909));
    let x_913 : f32 = u_xlat36;
    u_xlati36 = i32(x_913);
    let x_915 : vec3<f32> = vs_TEXCOORD1;
    let x_927 : i32 = u_xlati36;
    let x_929 : vec4<f32> = x_926.x_AdditionalLightsPosition[x_927];
    let x_932 : i32 = u_xlati36;
    let x_934 : vec4<f32> = x_926.x_AdditionalLightsPosition[x_932];
    let x_936 : vec3<f32> = ((-(x_915) * vec3<f32>(x_929.w, x_929.w, x_929.w)) + vec3<f32>(x_934.x, x_934.y, x_934.z));
    let x_937 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
    let x_940 : vec4<f32> = u_xlat8;
    let x_942 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_940.x, x_940.y, x_940.z), vec3<f32>(x_942.x, x_942.y, x_942.z));
    let x_945 : f32 = u_xlat39;
    u_xlat39 = max(x_945, 6.10351562e-05f);
    let x_949 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_949);
    let x_951 : f32 = u_xlat40;
    let x_953 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_951, x_951, x_951) * vec3<f32>(x_953.x, x_953.y, x_953.z));
    let x_957 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_957);
    let x_959 : f32 = u_xlat39;
    let x_960 : i32 = u_xlati36;
    let x_962 : f32 = x_926.x_AdditionalLightsAttenuation[x_960].x;
    u_xlat39 = (x_959 * x_962);
    let x_964 : f32 = u_xlat39;
    let x_966 : f32 = u_xlat39;
    u_xlat39 = ((-(x_964) * x_966) + 1.0f);
    let x_969 : f32 = u_xlat39;
    u_xlat39 = max(x_969, 0.0f);
    let x_971 : f32 = u_xlat39;
    let x_972 : f32 = u_xlat39;
    u_xlat39 = (x_971 * x_972);
    let x_974 : f32 = u_xlat39;
    let x_975 : f32 = u_xlat41;
    u_xlat39 = (x_974 * x_975);
    let x_977 : i32 = u_xlati36;
    let x_979 : vec4<f32> = x_926.x_AdditionalLightsSpotDir[x_977];
    let x_981 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_979.x, x_979.y, x_979.z), x_981);
    let x_983 : f32 = u_xlat41;
    let x_984 : i32 = u_xlati36;
    let x_986 : f32 = x_926.x_AdditionalLightsAttenuation[x_984].z;
    let x_988 : i32 = u_xlati36;
    let x_990 : f32 = x_926.x_AdditionalLightsAttenuation[x_988].w;
    u_xlat41 = ((x_983 * x_986) + x_990);
    let x_992 : f32 = u_xlat41;
    u_xlat41 = clamp(x_992, 0.0f, 1.0f);
    let x_994 : f32 = u_xlat41;
    let x_995 : f32 = u_xlat41;
    u_xlat41 = (x_994 * x_995);
    let x_997 : f32 = u_xlat39;
    let x_998 : f32 = u_xlat41;
    u_xlat39 = (x_997 * x_998);
    let x_1001 : f32 = u_xlat17;
    let x_1003 : i32 = u_xlati36;
    let x_1005 : vec4<f32> = x_926.x_AdditionalLightsColor[x_1003];
    u_xlat10 = (vec3<f32>(x_1001, x_1001, x_1001) * vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
    let x_1008 : vec4<f32> = u_xlat2;
    let x_1010 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1008.x, x_1008.y, x_1008.z), x_1010);
    let x_1012 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1012, 0.0f, 1.0f);
    let x_1014 : f32 = u_xlat36;
    let x_1015 : f32 = u_xlat39;
    u_xlat36 = (x_1014 * x_1015);
    let x_1017 : f32 = u_xlat36;
    let x_1019 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1017, x_1017, x_1017) * x_1019);
    let x_1021 : vec4<f32> = u_xlat8;
    let x_1023 : f32 = u_xlat40;
    let x_1026 : vec3<f32> = u_xlat3;
    let x_1027 : vec3<f32> = ((vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * vec3<f32>(x_1023, x_1023, x_1023)) + x_1026);
    let x_1028 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
    let x_1030 : vec4<f32> = u_xlat8;
    let x_1032 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1030.x, x_1030.y, x_1030.z), vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
    let x_1035 : f32 = u_xlat36;
    u_xlat36 = max(x_1035, 1.17549435e-37f);
    let x_1037 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1037);
    let x_1039 : f32 = u_xlat36;
    let x_1041 : vec4<f32> = u_xlat8;
    let x_1043 : vec3<f32> = (vec3<f32>(x_1039, x_1039, x_1039) * vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
    let x_1044 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
    let x_1046 : vec4<f32> = u_xlat2;
    let x_1048 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1046.x, x_1046.y, x_1046.z), vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
    let x_1051 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1051, 0.0f, 1.0f);
    let x_1053 : vec3<f32> = u_xlat9;
    let x_1054 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_1053, vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
    let x_1057 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1057, 0.0f, 1.0f);
    let x_1059 : f32 = u_xlat36;
    let x_1060 : f32 = u_xlat36;
    u_xlat36 = (x_1059 * x_1060);
    let x_1062 : f32 = u_xlat36;
    let x_1064 : f32 = u_xlat28.x;
    u_xlat36 = ((x_1062 * x_1064) + 1.000010014f);
    let x_1067 : f32 = u_xlat39;
    let x_1068 : f32 = u_xlat39;
    u_xlat39 = (x_1067 * x_1068);
    let x_1070 : f32 = u_xlat36;
    let x_1071 : f32 = u_xlat36;
    u_xlat36 = (x_1070 * x_1071);
    let x_1073 : f32 = u_xlat39;
    u_xlat39 = max(x_1073, 0.100000001f);
    let x_1075 : f32 = u_xlat36;
    let x_1076 : f32 = u_xlat39;
    u_xlat36 = (x_1075 * x_1076);
    let x_1078 : f32 = u_xlat38;
    let x_1079 : f32 = u_xlat36;
    u_xlat36 = (x_1078 * x_1079);
    let x_1081 : f32 = u_xlat37;
    let x_1082 : f32 = u_xlat36;
    u_xlat36 = (x_1081 / x_1082);
    let x_1084 : vec4<f32> = u_xlat0;
    let x_1086 : f32 = u_xlat36;
    let x_1089 : vec3<f32> = u_xlat12;
    let x_1090 : vec3<f32> = ((vec3<f32>(x_1084.x, x_1084.y, x_1084.z) * vec3<f32>(x_1086, x_1086, x_1086)) + x_1089);
    let x_1091 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
    let x_1093 : vec4<f32> = u_xlat8;
    let x_1095 : vec3<f32> = u_xlat10;
    let x_1097 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1093.x, x_1093.y, x_1093.z) * x_1095) + x_1097);

    continuing {
      let x_1099 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1099 + bitcast<u32>(1i));
    }
  }
  let x_1101 : vec4<f32> = u_xlat5;
  let x_1103 : vec4<f32> = u_xlat6;
  let x_1106 : vec4<f32> = u_xlat4;
  let x_1108 : vec3<f32> = ((vec3<f32>(x_1101.x, x_1101.y, x_1101.z) * vec3<f32>(x_1103.x, x_1103.x, x_1103.x)) + vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1113 : vec3<f32> = u_xlat7;
  let x_1114 : vec4<f32> = u_xlat0;
  let x_1116 : vec3<f32> = (x_1113 + vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
  let x_1117 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
  let x_1122 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1122 == 1.0f);
  let x_1124 : bool = u_xlatb0;
  if (x_1124) {
    let x_1129 : f32 = u_xlat1.x;
    x_1125 = x_1129;
  } else {
    x_1125 = 1.0f;
  }
  let x_1131 : f32 = x_1125;
  SV_Target0.w = x_1131;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

