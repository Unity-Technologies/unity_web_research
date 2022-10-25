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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_144 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_689 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_914 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb36 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat4 : vec3<f32>;
  var x_120 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var u_xlat39 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat19 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlatb17 : bool;
  var u_xlatb29 : bool;
  var x_584 : f32;
  var u_xlat29 : f32;
  var u_xlat9 : vec4<f32>;
  var u_xlat31 : vec2<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatu38 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati43 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati40 : i32;
  var u_xlat43 : f32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1148 : f32;
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
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_81 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb36 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_87) + x_92);
  let x_96 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat38 = dot(x_96, x_97);
  let x_99 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_99);
  let x_101 : f32 = u_xlat38;
  let x_103 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_101, x_101, x_101) * x_103);
  let x_110 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_110;
  let x_113 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_113;
  let x_117 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_117;
  let x_119 : bool = u_xlatb36;
  if (x_119) {
    let x_123 : vec3<f32> = u_xlat3;
    x_120 = x_123;
  } else {
    let x_125 : vec3<f32> = u_xlat4;
    x_120 = x_125;
  }
  let x_126 : vec3<f32> = x_120;
  u_xlat3 = x_126;
  let x_129 : vec3<f32> = vs_TEXCOORD2;
  let x_130 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_129, x_130);
  let x_132 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_132);
  let x_134 : f32 = u_xlat36;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat4 = (vec3<f32>(x_134, x_134, x_134) * x_136);
  let x_139 : vec3<f32> = vs_TEXCOORD1;
  let x_146 : vec4<f32> = x_144.x_CascadeShadowSplitSpheres0;
  let x_149 : vec3<f32> = (x_139 + -(vec3<f32>(x_146.x, x_146.y, x_146.z)));
  let x_150 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_153 : vec3<f32> = vs_TEXCOORD1;
  let x_155 : vec4<f32> = x_144.x_CascadeShadowSplitSpheres1;
  let x_158 : vec3<f32> = (x_153 + -(vec3<f32>(x_155.x, x_155.y, x_155.z)));
  let x_159 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_162 : vec3<f32> = vs_TEXCOORD1;
  let x_165 : vec4<f32> = x_144.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_162 + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_170 : vec3<f32> = vs_TEXCOORD1;
  let x_173 : vec4<f32> = x_144.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_170 + -(vec3<f32>(x_173.x, x_173.y, x_173.z)));
  let x_177 : vec4<f32> = u_xlat5;
  let x_179 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_183 : vec4<f32> = u_xlat6;
  let x_185 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_189 : vec3<f32> = u_xlat7;
  let x_190 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_189, x_190);
  let x_193 : vec3<f32> = u_xlat8;
  let x_194 : vec3<f32> = u_xlat8;
  u_xlat5.w = dot(x_193, x_194);
  let x_200 : vec4<f32> = u_xlat5;
  let x_203 : vec4<f32> = x_144.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_200 < x_203);
  let x_206 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_206);
  let x_210 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_210);
  let x_214 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_214);
  let x_218 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_218);
  let x_222 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_222);
  let x_228 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_228);
  let x_232 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_232);
  let x_235 : vec4<f32> = u_xlat5;
  let x_237 : vec4<f32> = u_xlat6;
  let x_239 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) + vec3<f32>(x_237.y, x_237.z, x_237.w));
  let x_240 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat5;
  let x_245 : vec3<f32> = max(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_246 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_246.x, x_245.x, x_245.y, x_245.z);
  let x_248 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_248, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_254 : f32 = u_xlat36;
  u_xlat36 = (-(x_254) + 4.0f);
  let x_259 : f32 = u_xlat36;
  u_xlatu36 = u32(x_259);
  let x_263 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_263) << bitcast<u32>(2i));
  let x_266 : vec3<f32> = vs_TEXCOORD1;
  let x_268 : i32 = u_xlati36;
  let x_271 : i32 = u_xlati36;
  let x_275 : vec4<f32> = x_144.x_MainLightWorldToShadow[((x_268 + 1i) / 4i)][((x_271 + 1i) % 4i)];
  let x_277 : vec3<f32> = (vec3<f32>(x_266.y, x_266.y, x_266.y) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : i32 = u_xlati36;
  let x_282 : i32 = u_xlati36;
  let x_285 : vec4<f32> = x_144.x_MainLightWorldToShadow[(x_280 / 4i)][(x_282 % 4i)];
  let x_287 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : vec4<f32> = u_xlat5;
  let x_292 : vec3<f32> = ((vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_287.x, x_287.x, x_287.x)) + vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : i32 = u_xlati36;
  let x_298 : i32 = u_xlati36;
  let x_302 : vec4<f32> = x_144.x_MainLightWorldToShadow[((x_295 + 2i) / 4i)][((x_298 + 2i) % 4i)];
  let x_304 : vec3<f32> = vs_TEXCOORD1;
  let x_307 : vec4<f32> = u_xlat5;
  let x_309 : vec3<f32> = ((vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304.z, x_304.z, x_304.z)) + vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat5;
  let x_314 : i32 = u_xlati36;
  let x_317 : i32 = u_xlati36;
  let x_321 : vec4<f32> = x_144.x_MainLightWorldToShadow[((x_314 + 3i) / 4i)][((x_317 + 3i) % 4i)];
  let x_323 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_327 : f32 = vs_TEXCOORD1.y;
  let x_329 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_327 * x_329);
  let x_332 : f32 = x_44.unity_MatrixV[0i].z;
  let x_334 : f32 = vs_TEXCOORD1.x;
  let x_336 : f32 = u_xlat36;
  u_xlat36 = ((x_332 * x_334) + x_336);
  let x_339 : f32 = x_44.unity_MatrixV[2i].z;
  let x_341 : f32 = vs_TEXCOORD1.z;
  let x_343 : f32 = u_xlat36;
  u_xlat36 = ((x_339 * x_341) + x_343);
  let x_345 : f32 = u_xlat36;
  let x_347 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_345 + x_347);
  let x_349 : f32 = u_xlat36;
  let x_353 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_349) + -(x_353));
  let x_356 : f32 = u_xlat36;
  u_xlat36 = max(x_356, 0.0f);
  let x_358 : f32 = u_xlat36;
  let x_361 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_358 * x_361);
  let x_369 : vec2<f32> = vs_TEXCOORD8;
  let x_371 : f32 = x_44.x_GlobalMipBias.x;
  let x_372 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_369, x_371);
  u_xlat6 = x_372;
  let x_377 : vec2<f32> = vs_TEXCOORD8;
  let x_379 : f32 = x_44.x_GlobalMipBias.x;
  let x_380 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_377, x_379);
  u_xlat7 = vec3<f32>(x_380.x, x_380.y, x_380.z);
  let x_382 : vec4<f32> = u_xlat6;
  let x_386 : vec3<f32> = (vec3<f32>(x_382.x, x_382.y, x_382.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_387 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_389 : vec3<f32> = u_xlat4;
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat38 = dot(x_389, vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : f32 = u_xlat38;
  u_xlat38 = (x_393 + 0.5f);
  let x_396 : f32 = u_xlat38;
  let x_398 : vec3<f32> = u_xlat7;
  let x_399 : vec3<f32> = (vec3<f32>(x_396, x_396, x_396) * x_398);
  let x_400 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_403 : f32 = u_xlat6.w;
  u_xlat38 = max(x_403, 0.0001f);
  let x_406 : vec4<f32> = u_xlat6;
  let x_408 : f32 = u_xlat38;
  let x_410 : vec3<f32> = (vec3<f32>(x_406.x, x_406.y, x_406.z) / vec3<f32>(x_408, x_408, x_408));
  let x_411 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_415 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_416 : vec2<f32> = vec2<f32>(x_415.x, x_415.y);
  let x_420 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_416.x, x_416.y));
  let x_421 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_420.x, x_420.y, x_421.z);
  let x_423 : vec3<f32> = u_xlat7;
  let x_425 : vec4<f32> = hlslcc_FragCoord;
  let x_427 : vec2<f32> = (vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_425.x, x_425.y));
  let x_428 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_427.x, x_427.y, x_428.z);
  let x_431 : f32 = u_xlat7.y;
  let x_434 : f32 = x_44.x_ScaleBiasRt.x;
  let x_437 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat38 = ((x_431 * x_434) + x_437);
  let x_439 : f32 = u_xlat38;
  u_xlat7.z = (-(x_439) + 1.0f);
  let x_444 : f32 = x_57.x_Metallic;
  u_xlat38 = ((-(x_444) * 0.959999979f) + 0.959999979f);
  let x_450 : f32 = u_xlat38;
  let x_453 : f32 = x_57.x_Smoothness;
  u_xlat39 = (-(x_450) + x_453);
  let x_456 : vec4<f32> = u_xlat1;
  let x_458 : f32 = u_xlat38;
  u_xlat13 = (vec3<f32>(x_456.y, x_456.z, x_456.w) * vec3<f32>(x_458, x_458, x_458));
  let x_461 : vec4<f32> = u_xlat0;
  let x_464 : vec4<f32> = x_57.x_BaseColor;
  let x_469 : vec3<f32> = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_464.x, x_464.y, x_464.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_470 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_473 : f32 = x_57.x_Metallic;
  let x_475 : f32 = x_57.x_Metallic;
  let x_477 : f32 = x_57.x_Metallic;
  let x_478 : vec3<f32> = vec3<f32>(x_473, x_475, x_477);
  let x_483 : vec4<f32> = u_xlat0;
  let x_488 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_483.x, x_483.y, x_483.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_489 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_492 : f32 = x_57.x_Smoothness;
  u_xlat38 = (-(x_492) + 1.0f);
  let x_496 : f32 = u_xlat38;
  let x_497 : f32 = u_xlat38;
  u_xlat40 = (x_496 * x_497);
  let x_499 : f32 = u_xlat40;
  u_xlat40 = max(x_499, 0.0078125f);
  let x_503 : f32 = u_xlat40;
  let x_504 : f32 = u_xlat40;
  u_xlat41 = (x_503 * x_504);
  let x_506 : f32 = u_xlat39;
  u_xlat39 = (x_506 + 1.0f);
  let x_508 : f32 = u_xlat39;
  u_xlat39 = clamp(x_508, 0.0f, 1.0f);
  let x_511 : f32 = u_xlat40;
  u_xlat42 = ((x_511 * 4.0f) + 2.0f);
  let x_519 : vec3<f32> = u_xlat7;
  let x_522 : f32 = x_44.x_GlobalMipBias.x;
  let x_523 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_519.x, x_519.z), x_522);
  u_xlat7.x = x_523.x;
  let x_528 : f32 = u_xlat7.x;
  u_xlat19 = (x_528 + -1.0f);
  let x_531 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_532 : f32 = u_xlat19;
  u_xlat19 = ((x_531 * x_532) + 1.0f);
  let x_536 : f32 = u_xlat7.x;
  u_xlat7.x = min(x_536, 1.0f);
  let x_540 : vec4<f32> = u_xlat5;
  let x_541 : vec2<f32> = vec2<f32>(x_540.x, x_540.y);
  let x_543 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_541.x, x_541.y, x_543);
  let x_555 : vec3<f32> = txVec0;
  let x_557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_555.xy, x_555.z);
  u_xlat5.x = x_557;
  let x_561 : f32 = x_144.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_561) + 1.0f);
  let x_565 : f32 = u_xlat5.x;
  let x_567 : f32 = x_144.x_MainLightShadowParams.x;
  let x_569 : f32 = u_xlat17;
  u_xlat5.x = ((x_565 * x_567) + x_569);
  let x_574 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_574);
  let x_578 : f32 = u_xlat5.z;
  u_xlatb29 = (x_578 >= 1.0f);
  let x_580 : bool = u_xlatb29;
  let x_581 : bool = u_xlatb17;
  u_xlatb17 = (x_580 | x_581);
  let x_583 : bool = u_xlatb17;
  if (x_583) {
    x_584 = 1.0f;
  } else {
    let x_589 : f32 = u_xlat5.x;
    x_584 = x_589;
  }
  let x_590 : f32 = x_584;
  u_xlat5.x = x_590;
  let x_592 : vec3<f32> = vs_TEXCOORD1;
  let x_594 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat8 = (x_592 + -(x_594));
  let x_597 : vec3<f32> = u_xlat8;
  let x_598 : vec3<f32> = u_xlat8;
  u_xlat17 = dot(x_597, x_598);
  let x_600 : f32 = u_xlat17;
  let x_602 : f32 = x_144.x_MainLightShadowParams.z;
  let x_605 : f32 = x_144.x_MainLightShadowParams.w;
  u_xlat17 = ((x_600 * x_602) + x_605);
  let x_607 : f32 = u_xlat17;
  u_xlat17 = clamp(x_607, 0.0f, 1.0f);
  let x_611 : f32 = u_xlat5.x;
  u_xlat29 = (-(x_611) + 1.0f);
  let x_614 : f32 = u_xlat17;
  let x_615 : f32 = u_xlat29;
  let x_618 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_614 * x_615) + x_618);
  let x_621 : f32 = u_xlat19;
  let x_624 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat8 = (vec3<f32>(x_621, x_621, x_621) * vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec3<f32> = u_xlat3;
  let x_629 : vec3<f32> = u_xlat4;
  u_xlat17 = dot(-(x_627), x_629);
  let x_631 : f32 = u_xlat17;
  let x_632 : f32 = u_xlat17;
  u_xlat17 = (x_631 + x_632);
  let x_635 : vec3<f32> = u_xlat4;
  let x_636 : f32 = u_xlat17;
  let x_640 : vec3<f32> = u_xlat3;
  let x_642 : vec3<f32> = ((x_635 * -(vec3<f32>(x_636, x_636, x_636))) + -(x_640));
  let x_643 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec3<f32> = u_xlat4;
  let x_646 : vec3<f32> = u_xlat3;
  u_xlat17 = dot(x_645, x_646);
  let x_648 : f32 = u_xlat17;
  u_xlat17 = clamp(x_648, 0.0f, 1.0f);
  let x_650 : f32 = u_xlat17;
  u_xlat17 = (-(x_650) + 1.0f);
  let x_653 : f32 = u_xlat17;
  let x_654 : f32 = u_xlat17;
  u_xlat17 = (x_653 * x_654);
  let x_656 : f32 = u_xlat17;
  let x_657 : f32 = u_xlat17;
  u_xlat17 = (x_656 * x_657);
  let x_659 : f32 = u_xlat38;
  u_xlat29 = ((-(x_659) * 0.699999988f) + 1.700000048f);
  let x_665 : f32 = u_xlat38;
  let x_666 : f32 = u_xlat29;
  u_xlat38 = (x_665 * x_666);
  let x_668 : f32 = u_xlat38;
  u_xlat38 = (x_668 * 6.0f);
  let x_679 : vec4<f32> = u_xlat9;
  let x_681 : f32 = u_xlat38;
  let x_682 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_679.x, x_679.y, x_679.z), x_681);
  u_xlat9 = x_682;
  let x_684 : f32 = u_xlat9.w;
  u_xlat38 = (x_684 + -1.0f);
  let x_691 : f32 = x_689.unity_SpecCube0_HDR.w;
  let x_692 : f32 = u_xlat38;
  u_xlat38 = ((x_691 * x_692) + 1.0f);
  let x_695 : f32 = u_xlat38;
  u_xlat38 = max(x_695, 0.0f);
  let x_697 : f32 = u_xlat38;
  u_xlat38 = log2(x_697);
  let x_699 : f32 = u_xlat38;
  let x_701 : f32 = x_689.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_699 * x_701);
  let x_703 : f32 = u_xlat38;
  u_xlat38 = exp2(x_703);
  let x_705 : f32 = u_xlat38;
  let x_707 : f32 = x_689.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_705 * x_707);
  let x_709 : vec4<f32> = u_xlat9;
  let x_711 : f32 = u_xlat38;
  let x_713 : vec3<f32> = (vec3<f32>(x_709.x, x_709.y, x_709.z) * vec3<f32>(x_711, x_711, x_711));
  let x_714 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_718 : f32 = u_xlat40;
  let x_720 : f32 = u_xlat40;
  u_xlat31 = ((vec2<f32>(x_718, x_718) * vec2<f32>(x_720, x_720)) + vec2<f32>(-1.0f, 1.0f));
  let x_726 : f32 = u_xlat31.y;
  u_xlat38 = (1.0f / x_726);
  let x_729 : vec4<f32> = u_xlat0;
  let x_732 : f32 = u_xlat39;
  u_xlat10 = (-(vec3<f32>(x_729.x, x_729.y, x_729.z)) + vec3<f32>(x_732, x_732, x_732));
  let x_735 : f32 = u_xlat17;
  let x_737 : vec3<f32> = u_xlat10;
  let x_739 : vec4<f32> = u_xlat0;
  u_xlat10 = ((vec3<f32>(x_735, x_735, x_735) * x_737) + vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : f32 = u_xlat38;
  let x_744 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_742, x_742, x_742) * x_744);
  let x_746 : vec4<f32> = u_xlat9;
  let x_748 : vec3<f32> = u_xlat10;
  let x_749 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) * x_748);
  let x_750 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec4<f32> = u_xlat6;
  let x_754 : vec3<f32> = u_xlat13;
  let x_756 : vec4<f32> = u_xlat9;
  let x_758 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.y, x_752.z) * x_754) + vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_762 : f32 = u_xlat5.x;
  let x_764 : f32 = x_689.unity_LightData.z;
  u_xlat38 = (x_762 * x_764);
  let x_766 : vec3<f32> = u_xlat4;
  let x_768 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat39 = dot(x_766, vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_771 : f32 = u_xlat39;
  u_xlat39 = clamp(x_771, 0.0f, 1.0f);
  let x_773 : f32 = u_xlat38;
  let x_774 : f32 = u_xlat39;
  u_xlat38 = (x_773 * x_774);
  let x_776 : f32 = u_xlat38;
  let x_778 : vec3<f32> = u_xlat8;
  let x_779 : vec3<f32> = (vec3<f32>(x_776, x_776, x_776) * x_778);
  let x_780 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec3<f32> = u_xlat3;
  let x_784 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat8 = (x_782 + vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : vec3<f32> = u_xlat8;
  let x_788 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(x_787, x_788);
  let x_790 : f32 = u_xlat38;
  u_xlat38 = max(x_790, 1.17549435e-37f);
  let x_793 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_793);
  let x_795 : f32 = u_xlat38;
  let x_797 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_795, x_795, x_795) * x_797);
  let x_799 : vec3<f32> = u_xlat4;
  let x_800 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(x_799, x_800);
  let x_802 : f32 = u_xlat38;
  u_xlat38 = clamp(x_802, 0.0f, 1.0f);
  let x_805 : vec4<f32> = x_44.x_MainLightPosition;
  let x_807 : vec3<f32> = u_xlat8;
  u_xlat39 = dot(vec3<f32>(x_805.x, x_805.y, x_805.z), x_807);
  let x_809 : f32 = u_xlat39;
  u_xlat39 = clamp(x_809, 0.0f, 1.0f);
  let x_811 : f32 = u_xlat38;
  let x_812 : f32 = u_xlat38;
  u_xlat38 = (x_811 * x_812);
  let x_814 : f32 = u_xlat38;
  let x_816 : f32 = u_xlat31.x;
  u_xlat38 = ((x_814 * x_816) + 1.000010014f);
  let x_820 : f32 = u_xlat39;
  let x_821 : f32 = u_xlat39;
  u_xlat39 = (x_820 * x_821);
  let x_823 : f32 = u_xlat38;
  let x_824 : f32 = u_xlat38;
  u_xlat38 = (x_823 * x_824);
  let x_826 : f32 = u_xlat39;
  u_xlat39 = max(x_826, 0.100000001f);
  let x_829 : f32 = u_xlat38;
  let x_830 : f32 = u_xlat39;
  u_xlat38 = (x_829 * x_830);
  let x_832 : f32 = u_xlat42;
  let x_833 : f32 = u_xlat38;
  u_xlat38 = (x_832 * x_833);
  let x_835 : f32 = u_xlat41;
  let x_836 : f32 = u_xlat38;
  u_xlat38 = (x_835 / x_836);
  let x_838 : vec4<f32> = u_xlat0;
  let x_840 : f32 = u_xlat38;
  let x_843 : vec3<f32> = u_xlat13;
  u_xlat8 = ((vec3<f32>(x_838.x, x_838.y, x_838.z) * vec3<f32>(x_840, x_840, x_840)) + x_843);
  let x_845 : vec4<f32> = u_xlat5;
  let x_847 : vec3<f32> = u_xlat8;
  let x_848 : vec3<f32> = (vec3<f32>(x_845.x, x_845.y, x_845.z) * x_847);
  let x_849 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_852 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_854 : f32 = x_689.unity_LightData.y;
  u_xlat38 = min(x_852, x_854);
  let x_857 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_857));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_869 : u32 = u_xlatu_loop_1;
    let x_870 : u32 = u_xlatu38;
    if ((x_869 < x_870)) {
    } else {
      break;
    }
    let x_873 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_873 >> 2u);
    let x_876 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_876 & 3u));
    let x_879 : u32 = u_xlatu40;
    let x_882 : vec4<f32> = x_689.unity_LightIndices[bitcast<i32>(x_879)];
    let x_892 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_897 : vec4<u32> = indexable[x_892];
    u_xlat40 = dot(x_882, bitcast<vec4<f32>>(x_897));
    let x_901 : f32 = u_xlat40;
    u_xlati40 = i32(x_901);
    let x_903 : vec3<f32> = vs_TEXCOORD1;
    let x_915 : i32 = u_xlati40;
    let x_917 : vec4<f32> = x_914.x_AdditionalLightsPosition[x_915];
    let x_920 : i32 = u_xlati40;
    let x_922 : vec4<f32> = x_914.x_AdditionalLightsPosition[x_920];
    let x_924 : vec3<f32> = ((-(x_903) * vec3<f32>(x_917.w, x_917.w, x_917.w)) + vec3<f32>(x_922.x, x_922.y, x_922.z));
    let x_925 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
    let x_928 : vec4<f32> = u_xlat9;
    let x_930 : vec4<f32> = u_xlat9;
    u_xlat43 = dot(vec3<f32>(x_928.x, x_928.y, x_928.z), vec3<f32>(x_930.x, x_930.y, x_930.z));
    let x_933 : f32 = u_xlat43;
    u_xlat43 = max(x_933, 6.10351562e-05f);
    let x_937 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_937);
    let x_939 : f32 = u_xlat44;
    let x_941 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_939, x_939, x_939) * vec3<f32>(x_941.x, x_941.y, x_941.z));
    let x_945 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_945);
    let x_947 : f32 = u_xlat43;
    let x_948 : i32 = u_xlati40;
    let x_950 : f32 = x_914.x_AdditionalLightsAttenuation[x_948].x;
    u_xlat43 = (x_947 * x_950);
    let x_952 : f32 = u_xlat43;
    let x_954 : f32 = u_xlat43;
    u_xlat43 = ((-(x_952) * x_954) + 1.0f);
    let x_957 : f32 = u_xlat43;
    u_xlat43 = max(x_957, 0.0f);
    let x_959 : f32 = u_xlat43;
    let x_960 : f32 = u_xlat43;
    u_xlat43 = (x_959 * x_960);
    let x_962 : f32 = u_xlat43;
    let x_963 : f32 = u_xlat45;
    u_xlat43 = (x_962 * x_963);
    let x_965 : i32 = u_xlati40;
    let x_967 : vec4<f32> = x_914.x_AdditionalLightsSpotDir[x_965];
    let x_969 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_967.x, x_967.y, x_967.z), x_969);
    let x_971 : f32 = u_xlat45;
    let x_972 : i32 = u_xlati40;
    let x_974 : f32 = x_914.x_AdditionalLightsAttenuation[x_972].z;
    let x_976 : i32 = u_xlati40;
    let x_978 : f32 = x_914.x_AdditionalLightsAttenuation[x_976].w;
    u_xlat45 = ((x_971 * x_974) + x_978);
    let x_980 : f32 = u_xlat45;
    u_xlat45 = clamp(x_980, 0.0f, 1.0f);
    let x_982 : f32 = u_xlat45;
    let x_983 : f32 = u_xlat45;
    u_xlat45 = (x_982 * x_983);
    let x_985 : f32 = u_xlat43;
    let x_986 : f32 = u_xlat45;
    u_xlat43 = (x_985 * x_986);
    let x_989 : f32 = u_xlat19;
    let x_991 : i32 = u_xlati40;
    let x_993 : vec4<f32> = x_914.x_AdditionalLightsColor[x_991];
    u_xlat11 = (vec3<f32>(x_989, x_989, x_989) * vec3<f32>(x_993.x, x_993.y, x_993.z));
    let x_996 : vec3<f32> = u_xlat4;
    let x_997 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(x_996, x_997);
    let x_999 : f32 = u_xlat40;
    u_xlat40 = clamp(x_999, 0.0f, 1.0f);
    let x_1001 : f32 = u_xlat40;
    let x_1002 : f32 = u_xlat43;
    u_xlat40 = (x_1001 * x_1002);
    let x_1004 : f32 = u_xlat40;
    let x_1006 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1004, x_1004, x_1004) * x_1006);
    let x_1008 : vec4<f32> = u_xlat9;
    let x_1010 : f32 = u_xlat44;
    let x_1013 : vec3<f32> = u_xlat3;
    let x_1014 : vec3<f32> = ((vec3<f32>(x_1008.x, x_1008.y, x_1008.z) * vec3<f32>(x_1010, x_1010, x_1010)) + x_1013);
    let x_1015 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
    let x_1017 : vec4<f32> = u_xlat9;
    let x_1019 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1017.x, x_1017.y, x_1017.z), vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
    let x_1022 : f32 = u_xlat40;
    u_xlat40 = max(x_1022, 1.17549435e-37f);
    let x_1024 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1024);
    let x_1026 : f32 = u_xlat40;
    let x_1028 : vec4<f32> = u_xlat9;
    let x_1030 : vec3<f32> = (vec3<f32>(x_1026, x_1026, x_1026) * vec3<f32>(x_1028.x, x_1028.y, x_1028.z));
    let x_1031 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
    let x_1033 : vec3<f32> = u_xlat4;
    let x_1034 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(x_1033, vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
    let x_1037 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1037, 0.0f, 1.0f);
    let x_1039 : vec3<f32> = u_xlat10;
    let x_1040 : vec4<f32> = u_xlat9;
    u_xlat43 = dot(x_1039, vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
    let x_1043 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1043, 0.0f, 1.0f);
    let x_1045 : f32 = u_xlat40;
    let x_1046 : f32 = u_xlat40;
    u_xlat40 = (x_1045 * x_1046);
    let x_1048 : f32 = u_xlat40;
    let x_1050 : f32 = u_xlat31.x;
    u_xlat40 = ((x_1048 * x_1050) + 1.000010014f);
    let x_1053 : f32 = u_xlat43;
    let x_1054 : f32 = u_xlat43;
    u_xlat43 = (x_1053 * x_1054);
    let x_1056 : f32 = u_xlat40;
    let x_1057 : f32 = u_xlat40;
    u_xlat40 = (x_1056 * x_1057);
    let x_1059 : f32 = u_xlat43;
    u_xlat43 = max(x_1059, 0.100000001f);
    let x_1061 : f32 = u_xlat40;
    let x_1062 : f32 = u_xlat43;
    u_xlat40 = (x_1061 * x_1062);
    let x_1064 : f32 = u_xlat42;
    let x_1065 : f32 = u_xlat40;
    u_xlat40 = (x_1064 * x_1065);
    let x_1067 : f32 = u_xlat41;
    let x_1068 : f32 = u_xlat40;
    u_xlat40 = (x_1067 / x_1068);
    let x_1070 : vec4<f32> = u_xlat0;
    let x_1072 : f32 = u_xlat40;
    let x_1075 : vec3<f32> = u_xlat13;
    let x_1076 : vec3<f32> = ((vec3<f32>(x_1070.x, x_1070.y, x_1070.z) * vec3<f32>(x_1072, x_1072, x_1072)) + x_1075);
    let x_1077 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
    let x_1079 : vec4<f32> = u_xlat9;
    let x_1081 : vec3<f32> = u_xlat11;
    let x_1083 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1079.x, x_1079.y, x_1079.z) * x_1081) + x_1083);

    continuing {
      let x_1085 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1085 + bitcast<u32>(1i));
    }
  }
  let x_1087 : vec4<f32> = u_xlat6;
  let x_1089 : vec3<f32> = u_xlat7;
  let x_1092 : vec4<f32> = u_xlat5;
  let x_1094 : vec3<f32> = ((vec3<f32>(x_1087.x, x_1087.y, x_1087.z) * vec3<f32>(x_1089.x, x_1089.x, x_1089.x)) + vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1097 : vec3<f32> = u_xlat8;
  let x_1098 : vec4<f32> = u_xlat0;
  let x_1100 : vec3<f32> = (x_1097 + vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec3<f32> = u_xlat2;
  let x_1105 : vec4<f32> = x_57.x_EmissionColor;
  let x_1108 : vec4<f32> = u_xlat0;
  let x_1110 : vec3<f32> = ((x_1103 * vec3<f32>(x_1105.x, x_1105.y, x_1105.z)) + vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
  let x_1111 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
  let x_1113 : f32 = u_xlat36;
  let x_1114 : f32 = u_xlat36;
  u_xlat36 = (x_1113 * -(x_1114));
  let x_1117 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1117);
  let x_1119 : vec4<f32> = u_xlat0;
  let x_1123 : vec4<f32> = x_44.unity_FogColor;
  let x_1126 : vec3<f32> = (vec3<f32>(x_1119.x, x_1119.y, x_1119.z) + -(vec3<f32>(x_1123.x, x_1123.y, x_1123.z)));
  let x_1127 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1131 : f32 = u_xlat36;
  let x_1133 : vec4<f32> = u_xlat0;
  let x_1137 : vec4<f32> = x_44.unity_FogColor;
  let x_1139 : vec3<f32> = ((vec3<f32>(x_1131, x_1131, x_1131) * vec3<f32>(x_1133.x, x_1133.y, x_1133.z)) + vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1145 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1145 == 1.0f);
  let x_1147 : bool = u_xlatb0;
  if (x_1147) {
    let x_1152 : f32 = u_xlat1.x;
    x_1148 = x_1152;
  } else {
    x_1148 = 1.0f;
  }
  let x_1154 : f32 = x_1148;
  SV_Target0.w = x_1154;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

