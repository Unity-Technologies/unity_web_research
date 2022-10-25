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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_136 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_363 : UnityPerDraw;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(4) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_947 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb33 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat3 : vec4<f32>;
  var x_109 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat36 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat17 : f32;
  var u_xlat28 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlatb15 : bool;
  var u_xlatb26 : bool;
  var x_612 : f32;
  var u_xlat26 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu35 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati40 : i32;
  var u_xlat39 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati39 : i32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1173 : f32;
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
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat35 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat35;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_106 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_106;
  let x_108 : bool = u_xlatb33;
  if (x_108) {
    let x_112 : vec3<f32> = u_xlat2;
    x_109 = x_112;
  } else {
    let x_114 : vec4<f32> = u_xlat3;
    x_109 = vec3<f32>(x_114.x, x_114.y, x_114.z);
  }
  let x_116 : vec3<f32> = x_109;
  u_xlat2 = x_116;
  let x_119 : vec3<f32> = vs_TEXCOORD2;
  let x_120 : vec3<f32> = vs_TEXCOORD2;
  u_xlat33 = dot(x_119, x_120);
  let x_122 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_122);
  let x_124 : f32 = u_xlat33;
  let x_126 : vec3<f32> = vs_TEXCOORD2;
  let x_127 : vec3<f32> = (vec3<f32>(x_124, x_124, x_124) * x_126);
  let x_128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_131 : vec3<f32> = vs_TEXCOORD1;
  let x_138 : vec4<f32> = x_136.x_CascadeShadowSplitSpheres0;
  let x_141 : vec3<f32> = (x_131 + -(vec3<f32>(x_138.x, x_138.y, x_138.z)));
  let x_142 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_145 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec4<f32> = x_136.x_CascadeShadowSplitSpheres1;
  let x_150 : vec3<f32> = (x_145 + -(vec3<f32>(x_147.x, x_147.y, x_147.z)));
  let x_151 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_154 : vec3<f32> = vs_TEXCOORD1;
  let x_157 : vec4<f32> = x_136.x_CascadeShadowSplitSpheres2;
  let x_160 : vec3<f32> = (x_154 + -(vec3<f32>(x_157.x, x_157.y, x_157.z)));
  let x_161 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec3<f32> = vs_TEXCOORD1;
  let x_167 : vec4<f32> = x_136.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_164 + -(vec3<f32>(x_167.x, x_167.y, x_167.z)));
  let x_171 : vec4<f32> = u_xlat4;
  let x_173 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_177 : vec4<f32> = u_xlat5;
  let x_179 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_183 : vec4<f32> = u_xlat6;
  let x_185 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_189 : vec3<f32> = u_xlat7;
  let x_190 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_189, x_190);
  let x_196 : vec4<f32> = u_xlat4;
  let x_199 : vec4<f32> = x_136.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_196 < x_199);
  let x_202 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_202);
  let x_206 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_206);
  let x_210 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_210);
  let x_214 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_214);
  let x_218 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_218);
  let x_224 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_224);
  let x_228 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_228);
  let x_231 : vec4<f32> = u_xlat4;
  let x_233 : vec4<f32> = u_xlat5;
  let x_235 : vec3<f32> = (vec3<f32>(x_231.x, x_231.y, x_231.z) + vec3<f32>(x_233.y, x_233.z, x_233.w));
  let x_236 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat4;
  let x_241 : vec3<f32> = max(vec3<f32>(x_238.x, x_238.y, x_238.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_242 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_242.x, x_241.x, x_241.y, x_241.z);
  let x_244 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_244, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_250 : f32 = u_xlat33;
  u_xlat33 = (-(x_250) + 4.0f);
  let x_255 : f32 = u_xlat33;
  u_xlatu33 = u32(x_255);
  let x_259 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_259) << bitcast<u32>(2i));
  let x_262 : vec3<f32> = vs_TEXCOORD1;
  let x_264 : i32 = u_xlati33;
  let x_267 : i32 = u_xlati33;
  let x_271 : vec4<f32> = x_136.x_MainLightWorldToShadow[((x_264 + 1i) / 4i)][((x_267 + 1i) % 4i)];
  let x_273 : vec3<f32> = (vec3<f32>(x_262.y, x_262.y, x_262.y) * vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : i32 = u_xlati33;
  let x_278 : i32 = u_xlati33;
  let x_281 : vec4<f32> = x_136.x_MainLightWorldToShadow[(x_276 / 4i)][(x_278 % 4i)];
  let x_283 : vec3<f32> = vs_TEXCOORD1;
  let x_286 : vec4<f32> = u_xlat4;
  let x_288 : vec3<f32> = ((vec3<f32>(x_281.x, x_281.y, x_281.z) * vec3<f32>(x_283.x, x_283.x, x_283.x)) + vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : i32 = u_xlati33;
  let x_294 : i32 = u_xlati33;
  let x_298 : vec4<f32> = x_136.x_MainLightWorldToShadow[((x_291 + 2i) / 4i)][((x_294 + 2i) % 4i)];
  let x_300 : vec3<f32> = vs_TEXCOORD1;
  let x_303 : vec4<f32> = u_xlat4;
  let x_305 : vec3<f32> = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_300.z, x_300.z, x_300.z)) + vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat4;
  let x_310 : i32 = u_xlati33;
  let x_313 : i32 = u_xlati33;
  let x_317 : vec4<f32> = x_136.x_MainLightWorldToShadow[((x_310 + 3i) / 4i)][((x_313 + 3i) % 4i)];
  let x_319 : vec3<f32> = (vec3<f32>(x_308.x, x_308.y, x_308.z) + vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : f32 = vs_TEXCOORD1.y;
  let x_325 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_323 * x_325);
  let x_328 : f32 = x_44.unity_MatrixV[0i].z;
  let x_330 : f32 = vs_TEXCOORD1.x;
  let x_332 : f32 = u_xlat33;
  u_xlat33 = ((x_328 * x_330) + x_332);
  let x_335 : f32 = x_44.unity_MatrixV[2i].z;
  let x_337 : f32 = vs_TEXCOORD1.z;
  let x_339 : f32 = u_xlat33;
  u_xlat33 = ((x_335 * x_337) + x_339);
  let x_341 : f32 = u_xlat33;
  let x_343 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_341 + x_343);
  let x_345 : f32 = u_xlat33;
  let x_349 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_345) + -(x_349));
  let x_352 : f32 = u_xlat33;
  u_xlat33 = max(x_352, 0.0f);
  let x_354 : f32 = u_xlat33;
  let x_357 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_354 * x_357);
  u_xlat3.w = 1.0f;
  let x_366 : vec4<f32> = x_363.unity_SHAr;
  let x_367 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_366, x_367);
  let x_372 : vec4<f32> = x_363.unity_SHAg;
  let x_373 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_372, x_373);
  let x_378 : vec4<f32> = x_363.unity_SHAb;
  let x_379 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_378, x_379);
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_382.y, x_382.z, x_382.z, x_382.x) * vec4<f32>(x_384.x, x_384.y, x_384.z, x_384.z));
  let x_389 : vec4<f32> = x_363.unity_SHBr;
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_389, x_390);
  let x_395 : vec4<f32> = x_363.unity_SHBg;
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_395, x_396);
  let x_401 : vec4<f32> = x_363.unity_SHBb;
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_401, x_402);
  let x_406 : f32 = u_xlat3.y;
  let x_408 : f32 = u_xlat3.y;
  u_xlat35 = (x_406 * x_408);
  let x_411 : f32 = u_xlat3.x;
  let x_413 : f32 = u_xlat3.x;
  let x_415 : f32 = u_xlat35;
  u_xlat35 = ((x_411 * x_413) + -(x_415));
  let x_420 : vec4<f32> = x_363.unity_SHC;
  let x_422 : f32 = u_xlat35;
  let x_425 : vec3<f32> = u_xlat7;
  let x_426 : vec3<f32> = ((vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(x_422, x_422, x_422)) + x_425);
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat5;
  let x_431 : vec4<f32> = u_xlat6;
  let x_433 : vec3<f32> = (vec3<f32>(x_429.x, x_429.y, x_429.z) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec4<f32> = u_xlat5;
  let x_438 : vec3<f32> = max(vec3<f32>(x_436.x, x_436.y, x_436.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_439 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_443 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_444 : vec2<f32> = vec2<f32>(x_443.x, x_443.y);
  let x_448 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_444.x, x_444.y));
  let x_449 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat6;
  let x_453 : vec4<f32> = hlslcc_FragCoord;
  let x_455 : vec2<f32> = (vec2<f32>(x_451.x, x_451.y) * vec2<f32>(x_453.x, x_453.y));
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
  let x_459 : f32 = u_xlat6.y;
  let x_462 : f32 = x_44.x_ScaleBiasRt.x;
  let x_465 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_459 * x_462) + x_465);
  let x_467 : f32 = u_xlat35;
  u_xlat6.z = (-(x_467) + 1.0f);
  let x_472 : f32 = x_57.x_Metallic;
  u_xlat35 = ((-(x_472) * 0.959999979f) + 0.959999979f);
  let x_478 : f32 = u_xlat35;
  u_xlat36 = (-(x_478) + 1.0f);
  let x_482 : vec4<f32> = u_xlat1;
  let x_484 : f32 = u_xlat35;
  u_xlat12 = (vec3<f32>(x_482.y, x_482.z, x_482.w) * vec3<f32>(x_484, x_484, x_484));
  let x_487 : vec4<f32> = u_xlat0;
  let x_490 : vec4<f32> = x_57.x_BaseColor;
  let x_495 : vec3<f32> = ((vec3<f32>(x_487.x, x_487.y, x_487.z) * vec3<f32>(x_490.x, x_490.y, x_490.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_496 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : f32 = x_57.x_Metallic;
  let x_501 : f32 = x_57.x_Metallic;
  let x_503 : f32 = x_57.x_Metallic;
  let x_504 : vec3<f32> = vec3<f32>(x_499, x_501, x_503);
  let x_509 : vec4<f32> = u_xlat0;
  let x_514 : vec3<f32> = ((vec3<f32>(x_504.x, x_504.y, x_504.z) * vec3<f32>(x_509.x, x_509.y, x_509.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_515 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_518 : f32 = x_57.x_Smoothness;
  u_xlat35 = (-(x_518) + 1.0f);
  let x_522 : f32 = u_xlat35;
  let x_523 : f32 = u_xlat35;
  u_xlat37 = (x_522 * x_523);
  let x_525 : f32 = u_xlat37;
  u_xlat37 = max(x_525, 0.0078125f);
  let x_529 : f32 = u_xlat37;
  let x_530 : f32 = u_xlat37;
  u_xlat38 = (x_529 * x_530);
  let x_532 : f32 = u_xlat36;
  let x_534 : f32 = x_57.x_Smoothness;
  u_xlat36 = (x_532 + x_534);
  let x_536 : f32 = u_xlat36;
  u_xlat36 = clamp(x_536, 0.0f, 1.0f);
  let x_539 : f32 = u_xlat37;
  u_xlat17 = ((x_539 * 4.0f) + 2.0f);
  let x_547 : vec4<f32> = u_xlat6;
  let x_550 : f32 = x_44.x_GlobalMipBias.x;
  let x_551 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_547.x, x_547.z), x_550);
  u_xlat6.x = x_551.x;
  let x_556 : f32 = u_xlat6.x;
  u_xlat28 = (x_556 + -1.0f);
  let x_559 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_560 : f32 = u_xlat28;
  u_xlat28 = ((x_559 * x_560) + 1.0f);
  let x_564 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_564, 1.0f);
  let x_568 : vec4<f32> = u_xlat4;
  let x_569 : vec2<f32> = vec2<f32>(x_568.x, x_568.y);
  let x_571 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_569.x, x_569.y, x_571);
  let x_583 : vec3<f32> = txVec0;
  let x_585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_583.xy, x_583.z);
  u_xlat4.x = x_585;
  let x_589 : f32 = x_136.x_MainLightShadowParams.x;
  u_xlat15 = (-(x_589) + 1.0f);
  let x_593 : f32 = u_xlat4.x;
  let x_595 : f32 = x_136.x_MainLightShadowParams.x;
  let x_597 : f32 = u_xlat15;
  u_xlat4.x = ((x_593 * x_595) + x_597);
  let x_602 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_602);
  let x_606 : f32 = u_xlat4.z;
  u_xlatb26 = (x_606 >= 1.0f);
  let x_608 : bool = u_xlatb26;
  let x_609 : bool = u_xlatb15;
  u_xlatb15 = (x_608 | x_609);
  let x_611 : bool = u_xlatb15;
  if (x_611) {
    x_612 = 1.0f;
  } else {
    let x_617 : f32 = u_xlat4.x;
    x_612 = x_617;
  }
  let x_618 : f32 = x_612;
  u_xlat4.x = x_618;
  let x_620 : vec3<f32> = vs_TEXCOORD1;
  let x_622 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_620 + -(x_622));
  let x_625 : vec3<f32> = u_xlat7;
  let x_626 : vec3<f32> = u_xlat7;
  u_xlat15 = dot(x_625, x_626);
  let x_628 : f32 = u_xlat15;
  let x_630 : f32 = x_136.x_MainLightShadowParams.z;
  let x_633 : f32 = x_136.x_MainLightShadowParams.w;
  u_xlat15 = ((x_628 * x_630) + x_633);
  let x_635 : f32 = u_xlat15;
  u_xlat15 = clamp(x_635, 0.0f, 1.0f);
  let x_640 : f32 = u_xlat4.x;
  u_xlat26.x = (-(x_640) + 1.0f);
  let x_644 : f32 = u_xlat15;
  let x_646 : f32 = u_xlat26.x;
  let x_649 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_644 * x_646) + x_649);
  let x_652 : f32 = u_xlat28;
  let x_655 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_652, x_652, x_652) * vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec3<f32> = u_xlat2;
  let x_660 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(-(x_658), vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : f32 = u_xlat15;
  let x_664 : f32 = u_xlat15;
  u_xlat15 = (x_663 + x_664);
  let x_667 : vec4<f32> = u_xlat3;
  let x_669 : f32 = u_xlat15;
  let x_673 : vec3<f32> = u_xlat2;
  let x_675 : vec3<f32> = ((vec3<f32>(x_667.x, x_667.y, x_667.z) * -(vec3<f32>(x_669, x_669, x_669))) + -(x_673));
  let x_676 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  let x_678 : vec4<f32> = u_xlat3;
  let x_680 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_678.x, x_678.y, x_678.z), x_680);
  let x_682 : f32 = u_xlat15;
  u_xlat15 = clamp(x_682, 0.0f, 1.0f);
  let x_684 : f32 = u_xlat15;
  u_xlat15 = (-(x_684) + 1.0f);
  let x_687 : f32 = u_xlat15;
  let x_688 : f32 = u_xlat15;
  u_xlat15 = (x_687 * x_688);
  let x_690 : f32 = u_xlat15;
  let x_691 : f32 = u_xlat15;
  u_xlat15 = (x_690 * x_691);
  let x_693 : f32 = u_xlat35;
  u_xlat26.x = ((-(x_693) * 0.699999988f) + 1.700000048f);
  let x_700 : f32 = u_xlat35;
  let x_702 : f32 = u_xlat26.x;
  u_xlat35 = (x_700 * x_702);
  let x_704 : f32 = u_xlat35;
  u_xlat35 = (x_704 * 6.0f);
  let x_715 : vec4<f32> = u_xlat8;
  let x_717 : f32 = u_xlat35;
  let x_718 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_715.x, x_715.y, x_715.z), x_717);
  u_xlat8 = x_718;
  let x_720 : f32 = u_xlat8.w;
  u_xlat35 = (x_720 + -1.0f);
  let x_723 : f32 = x_363.unity_SpecCube0_HDR.w;
  let x_724 : f32 = u_xlat35;
  u_xlat35 = ((x_723 * x_724) + 1.0f);
  let x_727 : f32 = u_xlat35;
  u_xlat35 = max(x_727, 0.0f);
  let x_729 : f32 = u_xlat35;
  u_xlat35 = log2(x_729);
  let x_731 : f32 = u_xlat35;
  let x_733 : f32 = x_363.unity_SpecCube0_HDR.y;
  u_xlat35 = (x_731 * x_733);
  let x_735 : f32 = u_xlat35;
  u_xlat35 = exp2(x_735);
  let x_737 : f32 = u_xlat35;
  let x_739 : f32 = x_363.unity_SpecCube0_HDR.x;
  u_xlat35 = (x_737 * x_739);
  let x_741 : vec4<f32> = u_xlat8;
  let x_743 : f32 = u_xlat35;
  let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_743, x_743, x_743));
  let x_746 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : f32 = u_xlat37;
  let x_750 : f32 = u_xlat37;
  u_xlat26 = ((vec2<f32>(x_748, x_748) * vec2<f32>(x_750, x_750)) + vec2<f32>(-1.0f, 1.0f));
  let x_756 : f32 = u_xlat26.y;
  u_xlat35 = (1.0f / x_756);
  let x_759 : vec4<f32> = u_xlat0;
  let x_762 : f32 = u_xlat36;
  u_xlat9 = (-(vec3<f32>(x_759.x, x_759.y, x_759.z)) + vec3<f32>(x_762, x_762, x_762));
  let x_765 : f32 = u_xlat15;
  let x_767 : vec3<f32> = u_xlat9;
  let x_769 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_765, x_765, x_765) * x_767) + vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : f32 = u_xlat35;
  let x_774 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_772, x_772, x_772) * x_774);
  let x_776 : vec4<f32> = u_xlat8;
  let x_778 : vec3<f32> = u_xlat9;
  let x_779 : vec3<f32> = (vec3<f32>(x_776.x, x_776.y, x_776.z) * x_778);
  let x_780 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat5;
  let x_784 : vec3<f32> = u_xlat12;
  let x_786 : vec4<f32> = u_xlat8;
  let x_788 : vec3<f32> = ((vec3<f32>(x_782.x, x_782.y, x_782.z) * x_784) + vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_792 : f32 = u_xlat4.x;
  let x_794 : f32 = x_363.unity_LightData.z;
  u_xlat35 = (x_792 * x_794);
  let x_796 : vec4<f32> = u_xlat3;
  let x_799 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_796.x, x_796.y, x_796.z), vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : f32 = u_xlat36;
  u_xlat36 = clamp(x_802, 0.0f, 1.0f);
  let x_804 : f32 = u_xlat35;
  let x_805 : f32 = u_xlat36;
  u_xlat35 = (x_804 * x_805);
  let x_807 : f32 = u_xlat35;
  let x_809 : vec3<f32> = u_xlat7;
  let x_810 : vec3<f32> = (vec3<f32>(x_807, x_807, x_807) * x_809);
  let x_811 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_810.x, x_810.y, x_811.z, x_810.z);
  let x_813 : vec3<f32> = u_xlat2;
  let x_815 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_813 + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec3<f32> = u_xlat7;
  let x_819 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_818, x_819);
  let x_821 : f32 = u_xlat35;
  u_xlat35 = max(x_821, 1.17549435e-37f);
  let x_824 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_824);
  let x_826 : f32 = u_xlat35;
  let x_828 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_826, x_826, x_826) * x_828);
  let x_830 : vec4<f32> = u_xlat3;
  let x_832 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_830.x, x_830.y, x_830.z), x_832);
  let x_834 : f32 = u_xlat35;
  u_xlat35 = clamp(x_834, 0.0f, 1.0f);
  let x_837 : vec4<f32> = x_44.x_MainLightPosition;
  let x_839 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_837.x, x_837.y, x_837.z), x_839);
  let x_841 : f32 = u_xlat36;
  u_xlat36 = clamp(x_841, 0.0f, 1.0f);
  let x_843 : f32 = u_xlat35;
  let x_844 : f32 = u_xlat35;
  u_xlat35 = (x_843 * x_844);
  let x_846 : f32 = u_xlat35;
  let x_848 : f32 = u_xlat26.x;
  u_xlat35 = ((x_846 * x_848) + 1.000010014f);
  let x_852 : f32 = u_xlat36;
  let x_853 : f32 = u_xlat36;
  u_xlat36 = (x_852 * x_853);
  let x_855 : f32 = u_xlat35;
  let x_856 : f32 = u_xlat35;
  u_xlat35 = (x_855 * x_856);
  let x_858 : f32 = u_xlat36;
  u_xlat36 = max(x_858, 0.100000001f);
  let x_861 : f32 = u_xlat35;
  let x_862 : f32 = u_xlat36;
  u_xlat35 = (x_861 * x_862);
  let x_864 : f32 = u_xlat17;
  let x_865 : f32 = u_xlat35;
  u_xlat35 = (x_864 * x_865);
  let x_867 : f32 = u_xlat38;
  let x_868 : f32 = u_xlat35;
  u_xlat35 = (x_867 / x_868);
  let x_870 : vec4<f32> = u_xlat0;
  let x_872 : f32 = u_xlat35;
  let x_875 : vec3<f32> = u_xlat12;
  u_xlat7 = ((vec3<f32>(x_870.x, x_870.y, x_870.z) * vec3<f32>(x_872, x_872, x_872)) + x_875);
  let x_877 : vec4<f32> = u_xlat4;
  let x_879 : vec3<f32> = u_xlat7;
  let x_880 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.w) * x_879);
  let x_881 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_880.z);
  let x_884 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_886 : f32 = x_363.unity_LightData.y;
  u_xlat35 = min(x_884, x_886);
  let x_889 : f32 = u_xlat35;
  u_xlatu35 = bitcast<u32>(i32(x_889));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_901 : u32 = u_xlatu_loop_1;
    let x_902 : u32 = u_xlatu35;
    if ((x_901 < x_902)) {
    } else {
      break;
    }
    let x_905 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_905 >> 2u);
    let x_908 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_908 & 3u));
    let x_912 : u32 = u_xlatu39;
    let x_915 : vec4<f32> = x_363.unity_LightIndices[bitcast<i32>(x_912)];
    let x_925 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_930 : vec4<u32> = indexable[x_925];
    u_xlat39 = dot(x_915, bitcast<vec4<f32>>(x_930));
    let x_934 : f32 = u_xlat39;
    u_xlati39 = i32(x_934);
    let x_936 : vec3<f32> = vs_TEXCOORD1;
    let x_948 : i32 = u_xlati39;
    let x_950 : vec4<f32> = x_947.x_AdditionalLightsPosition[x_948];
    let x_953 : i32 = u_xlati39;
    let x_955 : vec4<f32> = x_947.x_AdditionalLightsPosition[x_953];
    let x_957 : vec3<f32> = ((-(x_936) * vec3<f32>(x_950.w, x_950.w, x_950.w)) + vec3<f32>(x_955.x, x_955.y, x_955.z));
    let x_958 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
    let x_961 : vec4<f32> = u_xlat8;
    let x_963 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_961.x, x_961.y, x_961.z), vec3<f32>(x_963.x, x_963.y, x_963.z));
    let x_966 : f32 = u_xlat40;
    u_xlat40 = max(x_966, 6.10351562e-05f);
    let x_970 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_970);
    let x_972 : f32 = u_xlat41;
    let x_974 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_972, x_972, x_972) * vec3<f32>(x_974.x, x_974.y, x_974.z));
    let x_978 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_978);
    let x_980 : f32 = u_xlat40;
    let x_981 : i32 = u_xlati39;
    let x_983 : f32 = x_947.x_AdditionalLightsAttenuation[x_981].x;
    u_xlat40 = (x_980 * x_983);
    let x_985 : f32 = u_xlat40;
    let x_987 : f32 = u_xlat40;
    u_xlat40 = ((-(x_985) * x_987) + 1.0f);
    let x_990 : f32 = u_xlat40;
    u_xlat40 = max(x_990, 0.0f);
    let x_992 : f32 = u_xlat40;
    let x_993 : f32 = u_xlat40;
    u_xlat40 = (x_992 * x_993);
    let x_995 : f32 = u_xlat40;
    let x_996 : f32 = u_xlat42;
    u_xlat40 = (x_995 * x_996);
    let x_998 : i32 = u_xlati39;
    let x_1000 : vec4<f32> = x_947.x_AdditionalLightsSpotDir[x_998];
    let x_1002 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1000.x, x_1000.y, x_1000.z), x_1002);
    let x_1004 : f32 = u_xlat42;
    let x_1005 : i32 = u_xlati39;
    let x_1007 : f32 = x_947.x_AdditionalLightsAttenuation[x_1005].z;
    let x_1009 : i32 = u_xlati39;
    let x_1011 : f32 = x_947.x_AdditionalLightsAttenuation[x_1009].w;
    u_xlat42 = ((x_1004 * x_1007) + x_1011);
    let x_1013 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1013, 0.0f, 1.0f);
    let x_1015 : f32 = u_xlat42;
    let x_1016 : f32 = u_xlat42;
    u_xlat42 = (x_1015 * x_1016);
    let x_1018 : f32 = u_xlat40;
    let x_1019 : f32 = u_xlat42;
    u_xlat40 = (x_1018 * x_1019);
    let x_1022 : f32 = u_xlat28;
    let x_1024 : i32 = u_xlati39;
    let x_1026 : vec4<f32> = x_947.x_AdditionalLightsColor[x_1024];
    u_xlat10 = (vec3<f32>(x_1022, x_1022, x_1022) * vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
    let x_1029 : vec4<f32> = u_xlat3;
    let x_1031 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), x_1031);
    let x_1033 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1033, 0.0f, 1.0f);
    let x_1035 : f32 = u_xlat39;
    let x_1036 : f32 = u_xlat40;
    u_xlat39 = (x_1035 * x_1036);
    let x_1038 : f32 = u_xlat39;
    let x_1040 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1038, x_1038, x_1038) * x_1040);
    let x_1042 : vec4<f32> = u_xlat8;
    let x_1044 : f32 = u_xlat41;
    let x_1047 : vec3<f32> = u_xlat2;
    let x_1048 : vec3<f32> = ((vec3<f32>(x_1042.x, x_1042.y, x_1042.z) * vec3<f32>(x_1044, x_1044, x_1044)) + x_1047);
    let x_1049 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
    let x_1051 : vec4<f32> = u_xlat8;
    let x_1053 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1051.x, x_1051.y, x_1051.z), vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
    let x_1056 : f32 = u_xlat39;
    u_xlat39 = max(x_1056, 1.17549435e-37f);
    let x_1058 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1058);
    let x_1060 : f32 = u_xlat39;
    let x_1062 : vec4<f32> = u_xlat8;
    let x_1064 : vec3<f32> = (vec3<f32>(x_1060, x_1060, x_1060) * vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
    let x_1065 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
    let x_1067 : vec4<f32> = u_xlat3;
    let x_1069 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1067.x, x_1067.y, x_1067.z), vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
    let x_1072 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1072, 0.0f, 1.0f);
    let x_1074 : vec3<f32> = u_xlat9;
    let x_1075 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1074, vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
    let x_1078 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1078, 0.0f, 1.0f);
    let x_1080 : f32 = u_xlat39;
    let x_1081 : f32 = u_xlat39;
    u_xlat39 = (x_1080 * x_1081);
    let x_1083 : f32 = u_xlat39;
    let x_1085 : f32 = u_xlat26.x;
    u_xlat39 = ((x_1083 * x_1085) + 1.000010014f);
    let x_1088 : f32 = u_xlat40;
    let x_1089 : f32 = u_xlat40;
    u_xlat40 = (x_1088 * x_1089);
    let x_1091 : f32 = u_xlat39;
    let x_1092 : f32 = u_xlat39;
    u_xlat39 = (x_1091 * x_1092);
    let x_1094 : f32 = u_xlat40;
    u_xlat40 = max(x_1094, 0.100000001f);
    let x_1096 : f32 = u_xlat39;
    let x_1097 : f32 = u_xlat40;
    u_xlat39 = (x_1096 * x_1097);
    let x_1099 : f32 = u_xlat17;
    let x_1100 : f32 = u_xlat39;
    u_xlat39 = (x_1099 * x_1100);
    let x_1102 : f32 = u_xlat38;
    let x_1103 : f32 = u_xlat39;
    u_xlat39 = (x_1102 / x_1103);
    let x_1105 : vec4<f32> = u_xlat0;
    let x_1107 : f32 = u_xlat39;
    let x_1110 : vec3<f32> = u_xlat12;
    let x_1111 : vec3<f32> = ((vec3<f32>(x_1105.x, x_1105.y, x_1105.z) * vec3<f32>(x_1107, x_1107, x_1107)) + x_1110);
    let x_1112 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
    let x_1114 : vec4<f32> = u_xlat8;
    let x_1116 : vec3<f32> = u_xlat10;
    let x_1118 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1114.x, x_1114.y, x_1114.z) * x_1116) + x_1118);

    continuing {
      let x_1120 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1120 + bitcast<u32>(1i));
    }
  }
  let x_1122 : vec4<f32> = u_xlat5;
  let x_1124 : vec4<f32> = u_xlat6;
  let x_1127 : vec4<f32> = u_xlat4;
  let x_1129 : vec3<f32> = ((vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * vec3<f32>(x_1124.x, x_1124.x, x_1124.x)) + vec3<f32>(x_1127.x, x_1127.y, x_1127.w));
  let x_1130 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  let x_1132 : vec3<f32> = u_xlat7;
  let x_1133 : vec4<f32> = u_xlat0;
  let x_1135 : vec3<f32> = (x_1132 + vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : f32 = u_xlat33;
  let x_1139 : f32 = u_xlat33;
  u_xlat33 = (x_1138 * -(x_1139));
  let x_1142 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1142);
  let x_1144 : vec4<f32> = u_xlat0;
  let x_1148 : vec4<f32> = x_44.unity_FogColor;
  let x_1151 : vec3<f32> = (vec3<f32>(x_1144.x, x_1144.y, x_1144.z) + -(vec3<f32>(x_1148.x, x_1148.y, x_1148.z)));
  let x_1152 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1156 : f32 = u_xlat33;
  let x_1158 : vec4<f32> = u_xlat0;
  let x_1162 : vec4<f32> = x_44.unity_FogColor;
  let x_1164 : vec3<f32> = ((vec3<f32>(x_1156, x_1156, x_1156) * vec3<f32>(x_1158.x, x_1158.y, x_1158.z)) + vec3<f32>(x_1162.x, x_1162.y, x_1162.z));
  let x_1165 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
  let x_1170 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1170 == 1.0f);
  let x_1172 : bool = u_xlatb0;
  if (x_1172) {
    let x_1177 : f32 = u_xlat1.x;
    x_1173 = x_1177;
  } else {
    x_1173 = 1.0f;
  }
  let x_1179 : f32 = x_1173;
  SV_Target0.w = x_1179;
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

