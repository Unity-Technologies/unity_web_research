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

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_147 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_374 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_954 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb36 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat4 : vec4<f32>;
  var x_120 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
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
  var x_623 : f32;
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
  var x_1190 : f32;
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
    let x_125 : vec4<f32> = u_xlat4;
    x_120 = vec3<f32>(x_125.x, x_125.y, x_125.z);
  }
  let x_127 : vec3<f32> = x_120;
  u_xlat3 = x_127;
  let x_130 : vec3<f32> = vs_TEXCOORD2;
  let x_131 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_130, x_131);
  let x_133 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_133);
  let x_135 : f32 = u_xlat36;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = (vec3<f32>(x_135, x_135, x_135) * x_137);
  let x_139 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_149 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres0;
  let x_152 : vec3<f32> = (x_142 + -(vec3<f32>(x_149.x, x_149.y, x_149.z)));
  let x_153 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_156 : vec3<f32> = vs_TEXCOORD1;
  let x_158 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres1;
  let x_161 : vec3<f32> = (x_156 + -(vec3<f32>(x_158.x, x_158.y, x_158.z)));
  let x_162 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  let x_165 : vec3<f32> = vs_TEXCOORD1;
  let x_168 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres2;
  let x_171 : vec3<f32> = (x_165 + -(vec3<f32>(x_168.x, x_168.y, x_168.z)));
  let x_172 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_175 : vec3<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_175 + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_182 : vec4<f32> = u_xlat5;
  let x_184 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_188 : vec4<f32> = u_xlat6;
  let x_190 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : vec4<f32> = u_xlat7;
  let x_196 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_194.x, x_194.y, x_194.z), vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_200 : vec3<f32> = u_xlat8;
  let x_201 : vec3<f32> = u_xlat8;
  u_xlat5.w = dot(x_200, x_201);
  let x_207 : vec4<f32> = u_xlat5;
  let x_210 : vec4<f32> = x_147.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_207 < x_210);
  let x_213 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_213);
  let x_217 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_217);
  let x_221 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_229);
  let x_235 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_235);
  let x_239 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_239);
  let x_242 : vec4<f32> = u_xlat5;
  let x_244 : vec4<f32> = u_xlat6;
  let x_246 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) + vec3<f32>(x_244.y, x_244.z, x_244.w));
  let x_247 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat5;
  let x_252 : vec3<f32> = max(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_253 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_253.x, x_252.x, x_252.y, x_252.z);
  let x_255 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_255, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_261 : f32 = u_xlat36;
  u_xlat36 = (-(x_261) + 4.0f);
  let x_266 : f32 = u_xlat36;
  u_xlatu36 = u32(x_266);
  let x_270 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_270) << bitcast<u32>(2i));
  let x_273 : vec3<f32> = vs_TEXCOORD1;
  let x_275 : i32 = u_xlati36;
  let x_278 : i32 = u_xlati36;
  let x_282 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_275 + 1i) / 4i)][((x_278 + 1i) % 4i)];
  let x_284 : vec3<f32> = (vec3<f32>(x_273.y, x_273.y, x_273.y) * vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : i32 = u_xlati36;
  let x_289 : i32 = u_xlati36;
  let x_292 : vec4<f32> = x_147.x_MainLightWorldToShadow[(x_287 / 4i)][(x_289 % 4i)];
  let x_294 : vec3<f32> = vs_TEXCOORD1;
  let x_297 : vec4<f32> = u_xlat5;
  let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.x, x_294.x, x_294.x)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : i32 = u_xlati36;
  let x_305 : i32 = u_xlati36;
  let x_309 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_302 + 2i) / 4i)][((x_305 + 2i) % 4i)];
  let x_311 : vec3<f32> = vs_TEXCOORD1;
  let x_314 : vec4<f32> = u_xlat5;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.z, x_311.z, x_311.z)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : i32 = u_xlati36;
  let x_324 : i32 = u_xlati36;
  let x_328 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_321 + 3i) / 4i)][((x_324 + 3i) % 4i)];
  let x_330 : vec3<f32> = (vec3<f32>(x_319.x, x_319.y, x_319.z) + vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_334 : f32 = vs_TEXCOORD1.y;
  let x_336 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_334 * x_336);
  let x_339 : f32 = x_44.unity_MatrixV[0i].z;
  let x_341 : f32 = vs_TEXCOORD1.x;
  let x_343 : f32 = u_xlat36;
  u_xlat36 = ((x_339 * x_341) + x_343);
  let x_346 : f32 = x_44.unity_MatrixV[2i].z;
  let x_348 : f32 = vs_TEXCOORD1.z;
  let x_350 : f32 = u_xlat36;
  u_xlat36 = ((x_346 * x_348) + x_350);
  let x_352 : f32 = u_xlat36;
  let x_354 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_352 + x_354);
  let x_356 : f32 = u_xlat36;
  let x_360 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_356) + -(x_360));
  let x_363 : f32 = u_xlat36;
  u_xlat36 = max(x_363, 0.0f);
  let x_365 : f32 = u_xlat36;
  let x_368 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_365 * x_368);
  u_xlat4.w = 1.0f;
  let x_377 : vec4<f32> = x_374.unity_SHAr;
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_377, x_378);
  let x_383 : vec4<f32> = x_374.unity_SHAg;
  let x_384 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_383, x_384);
  let x_389 : vec4<f32> = x_374.unity_SHAb;
  let x_390 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_389, x_390);
  let x_393 : vec4<f32> = u_xlat4;
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_393.y, x_393.z, x_393.z, x_393.x) * vec4<f32>(x_395.x, x_395.y, x_395.z, x_395.z));
  let x_400 : vec4<f32> = x_374.unity_SHBr;
  let x_401 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_400, x_401);
  let x_406 : vec4<f32> = x_374.unity_SHBg;
  let x_407 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_406, x_407);
  let x_412 : vec4<f32> = x_374.unity_SHBb;
  let x_413 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_412, x_413);
  let x_417 : f32 = u_xlat4.y;
  let x_419 : f32 = u_xlat4.y;
  u_xlat38 = (x_417 * x_419);
  let x_422 : f32 = u_xlat4.x;
  let x_424 : f32 = u_xlat4.x;
  let x_426 : f32 = u_xlat38;
  u_xlat38 = ((x_422 * x_424) + -(x_426));
  let x_431 : vec4<f32> = x_374.unity_SHC;
  let x_433 : f32 = u_xlat38;
  let x_436 : vec3<f32> = u_xlat8;
  let x_437 : vec3<f32> = ((vec3<f32>(x_431.x, x_431.y, x_431.z) * vec3<f32>(x_433, x_433, x_433)) + x_436);
  let x_438 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat6;
  let x_442 : vec4<f32> = u_xlat7;
  let x_444 : vec3<f32> = (vec3<f32>(x_440.x, x_440.y, x_440.z) + vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat6;
  let x_449 : vec3<f32> = max(vec3<f32>(x_447.x, x_447.y, x_447.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_454 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_455 : vec2<f32> = vec2<f32>(x_454.x, x_454.y);
  let x_459 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_455.x, x_455.y));
  let x_460 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat7;
  let x_464 : vec4<f32> = hlslcc_FragCoord;
  let x_466 : vec2<f32> = (vec2<f32>(x_462.x, x_462.y) * vec2<f32>(x_464.x, x_464.y));
  let x_467 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
  let x_470 : f32 = u_xlat7.y;
  let x_473 : f32 = x_44.x_ScaleBiasRt.x;
  let x_476 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat38 = ((x_470 * x_473) + x_476);
  let x_478 : f32 = u_xlat38;
  u_xlat7.z = (-(x_478) + 1.0f);
  let x_483 : f32 = x_57.x_Metallic;
  u_xlat38 = ((-(x_483) * 0.959999979f) + 0.959999979f);
  let x_489 : f32 = u_xlat38;
  u_xlat39 = (-(x_489) + 1.0f);
  let x_493 : vec4<f32> = u_xlat1;
  let x_495 : f32 = u_xlat38;
  u_xlat13 = (vec3<f32>(x_493.y, x_493.z, x_493.w) * vec3<f32>(x_495, x_495, x_495));
  let x_498 : vec4<f32> = u_xlat0;
  let x_501 : vec4<f32> = x_57.x_BaseColor;
  let x_506 : vec3<f32> = ((vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(x_501.x, x_501.y, x_501.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_507 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_510 : f32 = x_57.x_Metallic;
  let x_512 : f32 = x_57.x_Metallic;
  let x_514 : f32 = x_57.x_Metallic;
  let x_515 : vec3<f32> = vec3<f32>(x_510, x_512, x_514);
  let x_520 : vec4<f32> = u_xlat0;
  let x_525 : vec3<f32> = ((vec3<f32>(x_515.x, x_515.y, x_515.z) * vec3<f32>(x_520.x, x_520.y, x_520.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_526 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_529 : f32 = x_57.x_Smoothness;
  u_xlat38 = (-(x_529) + 1.0f);
  let x_533 : f32 = u_xlat38;
  let x_534 : f32 = u_xlat38;
  u_xlat40 = (x_533 * x_534);
  let x_536 : f32 = u_xlat40;
  u_xlat40 = max(x_536, 0.0078125f);
  let x_540 : f32 = u_xlat40;
  let x_541 : f32 = u_xlat40;
  u_xlat41 = (x_540 * x_541);
  let x_543 : f32 = u_xlat39;
  let x_545 : f32 = x_57.x_Smoothness;
  u_xlat39 = (x_543 + x_545);
  let x_547 : f32 = u_xlat39;
  u_xlat39 = clamp(x_547, 0.0f, 1.0f);
  let x_550 : f32 = u_xlat40;
  u_xlat42 = ((x_550 * 4.0f) + 2.0f);
  let x_558 : vec4<f32> = u_xlat7;
  let x_561 : f32 = x_44.x_GlobalMipBias.x;
  let x_562 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_558.x, x_558.z), x_561);
  u_xlat7.x = x_562.x;
  let x_567 : f32 = u_xlat7.x;
  u_xlat19 = (x_567 + -1.0f);
  let x_570 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_571 : f32 = u_xlat19;
  u_xlat19 = ((x_570 * x_571) + 1.0f);
  let x_575 : f32 = u_xlat7.x;
  u_xlat7.x = min(x_575, 1.0f);
  let x_579 : vec4<f32> = u_xlat5;
  let x_580 : vec2<f32> = vec2<f32>(x_579.x, x_579.y);
  let x_582 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_580.x, x_580.y, x_582);
  let x_594 : vec3<f32> = txVec0;
  let x_596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_594.xy, x_594.z);
  u_xlat5.x = x_596;
  let x_600 : f32 = x_147.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_600) + 1.0f);
  let x_604 : f32 = u_xlat5.x;
  let x_606 : f32 = x_147.x_MainLightShadowParams.x;
  let x_608 : f32 = u_xlat17;
  u_xlat5.x = ((x_604 * x_606) + x_608);
  let x_613 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_613);
  let x_617 : f32 = u_xlat5.z;
  u_xlatb29 = (x_617 >= 1.0f);
  let x_619 : bool = u_xlatb29;
  let x_620 : bool = u_xlatb17;
  u_xlatb17 = (x_619 | x_620);
  let x_622 : bool = u_xlatb17;
  if (x_622) {
    x_623 = 1.0f;
  } else {
    let x_628 : f32 = u_xlat5.x;
    x_623 = x_628;
  }
  let x_629 : f32 = x_623;
  u_xlat5.x = x_629;
  let x_631 : vec3<f32> = vs_TEXCOORD1;
  let x_633 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat8 = (x_631 + -(x_633));
  let x_636 : vec3<f32> = u_xlat8;
  let x_637 : vec3<f32> = u_xlat8;
  u_xlat17 = dot(x_636, x_637);
  let x_639 : f32 = u_xlat17;
  let x_641 : f32 = x_147.x_MainLightShadowParams.z;
  let x_644 : f32 = x_147.x_MainLightShadowParams.w;
  u_xlat17 = ((x_639 * x_641) + x_644);
  let x_646 : f32 = u_xlat17;
  u_xlat17 = clamp(x_646, 0.0f, 1.0f);
  let x_650 : f32 = u_xlat5.x;
  u_xlat29 = (-(x_650) + 1.0f);
  let x_653 : f32 = u_xlat17;
  let x_654 : f32 = u_xlat29;
  let x_657 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_653 * x_654) + x_657);
  let x_660 : f32 = u_xlat19;
  let x_663 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat8 = (vec3<f32>(x_660, x_660, x_660) * vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : vec3<f32> = u_xlat3;
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat17 = dot(-(x_666), vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : f32 = u_xlat17;
  let x_672 : f32 = u_xlat17;
  u_xlat17 = (x_671 + x_672);
  let x_675 : vec4<f32> = u_xlat4;
  let x_677 : f32 = u_xlat17;
  let x_681 : vec3<f32> = u_xlat3;
  let x_683 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * -(vec3<f32>(x_677, x_677, x_677))) + -(x_681));
  let x_684 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat4;
  let x_688 : vec3<f32> = u_xlat3;
  u_xlat17 = dot(vec3<f32>(x_686.x, x_686.y, x_686.z), x_688);
  let x_690 : f32 = u_xlat17;
  u_xlat17 = clamp(x_690, 0.0f, 1.0f);
  let x_692 : f32 = u_xlat17;
  u_xlat17 = (-(x_692) + 1.0f);
  let x_695 : f32 = u_xlat17;
  let x_696 : f32 = u_xlat17;
  u_xlat17 = (x_695 * x_696);
  let x_698 : f32 = u_xlat17;
  let x_699 : f32 = u_xlat17;
  u_xlat17 = (x_698 * x_699);
  let x_701 : f32 = u_xlat38;
  u_xlat29 = ((-(x_701) * 0.699999988f) + 1.700000048f);
  let x_707 : f32 = u_xlat38;
  let x_708 : f32 = u_xlat29;
  u_xlat38 = (x_707 * x_708);
  let x_710 : f32 = u_xlat38;
  u_xlat38 = (x_710 * 6.0f);
  let x_721 : vec4<f32> = u_xlat9;
  let x_723 : f32 = u_xlat38;
  let x_724 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_721.x, x_721.y, x_721.z), x_723);
  u_xlat9 = x_724;
  let x_726 : f32 = u_xlat9.w;
  u_xlat38 = (x_726 + -1.0f);
  let x_729 : f32 = x_374.unity_SpecCube0_HDR.w;
  let x_730 : f32 = u_xlat38;
  u_xlat38 = ((x_729 * x_730) + 1.0f);
  let x_733 : f32 = u_xlat38;
  u_xlat38 = max(x_733, 0.0f);
  let x_735 : f32 = u_xlat38;
  u_xlat38 = log2(x_735);
  let x_737 : f32 = u_xlat38;
  let x_739 : f32 = x_374.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_737 * x_739);
  let x_741 : f32 = u_xlat38;
  u_xlat38 = exp2(x_741);
  let x_743 : f32 = u_xlat38;
  let x_745 : f32 = x_374.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_743 * x_745);
  let x_747 : vec4<f32> = u_xlat9;
  let x_749 : f32 = u_xlat38;
  let x_751 : vec3<f32> = (vec3<f32>(x_747.x, x_747.y, x_747.z) * vec3<f32>(x_749, x_749, x_749));
  let x_752 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_756 : f32 = u_xlat40;
  let x_758 : f32 = u_xlat40;
  u_xlat31 = ((vec2<f32>(x_756, x_756) * vec2<f32>(x_758, x_758)) + vec2<f32>(-1.0f, 1.0f));
  let x_764 : f32 = u_xlat31.y;
  u_xlat38 = (1.0f / x_764);
  let x_767 : vec4<f32> = u_xlat0;
  let x_770 : f32 = u_xlat39;
  u_xlat10 = (-(vec3<f32>(x_767.x, x_767.y, x_767.z)) + vec3<f32>(x_770, x_770, x_770));
  let x_773 : f32 = u_xlat17;
  let x_775 : vec3<f32> = u_xlat10;
  let x_777 : vec4<f32> = u_xlat0;
  u_xlat10 = ((vec3<f32>(x_773, x_773, x_773) * x_775) + vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : f32 = u_xlat38;
  let x_782 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_780, x_780, x_780) * x_782);
  let x_784 : vec4<f32> = u_xlat9;
  let x_786 : vec3<f32> = u_xlat10;
  let x_787 : vec3<f32> = (vec3<f32>(x_784.x, x_784.y, x_784.z) * x_786);
  let x_788 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec4<f32> = u_xlat6;
  let x_792 : vec3<f32> = u_xlat13;
  let x_794 : vec4<f32> = u_xlat9;
  let x_796 : vec3<f32> = ((vec3<f32>(x_790.x, x_790.y, x_790.z) * x_792) + vec3<f32>(x_794.x, x_794.y, x_794.z));
  let x_797 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_800 : f32 = u_xlat5.x;
  let x_802 : f32 = x_374.unity_LightData.z;
  u_xlat38 = (x_800 * x_802);
  let x_804 : vec4<f32> = u_xlat4;
  let x_807 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat39 = dot(vec3<f32>(x_804.x, x_804.y, x_804.z), vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : f32 = u_xlat39;
  u_xlat39 = clamp(x_810, 0.0f, 1.0f);
  let x_812 : f32 = u_xlat38;
  let x_813 : f32 = u_xlat39;
  u_xlat38 = (x_812 * x_813);
  let x_815 : f32 = u_xlat38;
  let x_817 : vec3<f32> = u_xlat8;
  let x_818 : vec3<f32> = (vec3<f32>(x_815, x_815, x_815) * x_817);
  let x_819 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec3<f32> = u_xlat3;
  let x_823 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat8 = (x_821 + vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : vec3<f32> = u_xlat8;
  let x_827 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(x_826, x_827);
  let x_829 : f32 = u_xlat38;
  u_xlat38 = max(x_829, 1.17549435e-37f);
  let x_832 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_832);
  let x_834 : f32 = u_xlat38;
  let x_836 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_834, x_834, x_834) * x_836);
  let x_838 : vec4<f32> = u_xlat4;
  let x_840 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_838.x, x_838.y, x_838.z), x_840);
  let x_842 : f32 = u_xlat38;
  u_xlat38 = clamp(x_842, 0.0f, 1.0f);
  let x_845 : vec4<f32> = x_44.x_MainLightPosition;
  let x_847 : vec3<f32> = u_xlat8;
  u_xlat39 = dot(vec3<f32>(x_845.x, x_845.y, x_845.z), x_847);
  let x_849 : f32 = u_xlat39;
  u_xlat39 = clamp(x_849, 0.0f, 1.0f);
  let x_851 : f32 = u_xlat38;
  let x_852 : f32 = u_xlat38;
  u_xlat38 = (x_851 * x_852);
  let x_854 : f32 = u_xlat38;
  let x_856 : f32 = u_xlat31.x;
  u_xlat38 = ((x_854 * x_856) + 1.000010014f);
  let x_860 : f32 = u_xlat39;
  let x_861 : f32 = u_xlat39;
  u_xlat39 = (x_860 * x_861);
  let x_863 : f32 = u_xlat38;
  let x_864 : f32 = u_xlat38;
  u_xlat38 = (x_863 * x_864);
  let x_866 : f32 = u_xlat39;
  u_xlat39 = max(x_866, 0.100000001f);
  let x_869 : f32 = u_xlat38;
  let x_870 : f32 = u_xlat39;
  u_xlat38 = (x_869 * x_870);
  let x_872 : f32 = u_xlat42;
  let x_873 : f32 = u_xlat38;
  u_xlat38 = (x_872 * x_873);
  let x_875 : f32 = u_xlat41;
  let x_876 : f32 = u_xlat38;
  u_xlat38 = (x_875 / x_876);
  let x_878 : vec4<f32> = u_xlat0;
  let x_880 : f32 = u_xlat38;
  let x_883 : vec3<f32> = u_xlat13;
  u_xlat8 = ((vec3<f32>(x_878.x, x_878.y, x_878.z) * vec3<f32>(x_880, x_880, x_880)) + x_883);
  let x_885 : vec4<f32> = u_xlat5;
  let x_887 : vec3<f32> = u_xlat8;
  let x_888 : vec3<f32> = (vec3<f32>(x_885.x, x_885.y, x_885.z) * x_887);
  let x_889 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_892 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_894 : f32 = x_374.unity_LightData.y;
  u_xlat38 = min(x_892, x_894);
  let x_897 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_897));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_909 : u32 = u_xlatu_loop_1;
    let x_910 : u32 = u_xlatu38;
    if ((x_909 < x_910)) {
    } else {
      break;
    }
    let x_913 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_913 >> 2u);
    let x_916 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_916 & 3u));
    let x_919 : u32 = u_xlatu40;
    let x_922 : vec4<f32> = x_374.unity_LightIndices[bitcast<i32>(x_919)];
    let x_932 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_937 : vec4<u32> = indexable[x_932];
    u_xlat40 = dot(x_922, bitcast<vec4<f32>>(x_937));
    let x_941 : f32 = u_xlat40;
    u_xlati40 = i32(x_941);
    let x_943 : vec3<f32> = vs_TEXCOORD1;
    let x_955 : i32 = u_xlati40;
    let x_957 : vec4<f32> = x_954.x_AdditionalLightsPosition[x_955];
    let x_960 : i32 = u_xlati40;
    let x_962 : vec4<f32> = x_954.x_AdditionalLightsPosition[x_960];
    let x_964 : vec3<f32> = ((-(x_943) * vec3<f32>(x_957.w, x_957.w, x_957.w)) + vec3<f32>(x_962.x, x_962.y, x_962.z));
    let x_965 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
    let x_968 : vec4<f32> = u_xlat9;
    let x_970 : vec4<f32> = u_xlat9;
    u_xlat43 = dot(vec3<f32>(x_968.x, x_968.y, x_968.z), vec3<f32>(x_970.x, x_970.y, x_970.z));
    let x_973 : f32 = u_xlat43;
    u_xlat43 = max(x_973, 6.10351562e-05f);
    let x_977 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_977);
    let x_979 : f32 = u_xlat44;
    let x_981 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_979, x_979, x_979) * vec3<f32>(x_981.x, x_981.y, x_981.z));
    let x_985 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_985);
    let x_987 : f32 = u_xlat43;
    let x_988 : i32 = u_xlati40;
    let x_990 : f32 = x_954.x_AdditionalLightsAttenuation[x_988].x;
    u_xlat43 = (x_987 * x_990);
    let x_992 : f32 = u_xlat43;
    let x_994 : f32 = u_xlat43;
    u_xlat43 = ((-(x_992) * x_994) + 1.0f);
    let x_997 : f32 = u_xlat43;
    u_xlat43 = max(x_997, 0.0f);
    let x_999 : f32 = u_xlat43;
    let x_1000 : f32 = u_xlat43;
    u_xlat43 = (x_999 * x_1000);
    let x_1002 : f32 = u_xlat43;
    let x_1003 : f32 = u_xlat45;
    u_xlat43 = (x_1002 * x_1003);
    let x_1005 : i32 = u_xlati40;
    let x_1007 : vec4<f32> = x_954.x_AdditionalLightsSpotDir[x_1005];
    let x_1009 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1007.x, x_1007.y, x_1007.z), x_1009);
    let x_1011 : f32 = u_xlat45;
    let x_1012 : i32 = u_xlati40;
    let x_1014 : f32 = x_954.x_AdditionalLightsAttenuation[x_1012].z;
    let x_1016 : i32 = u_xlati40;
    let x_1018 : f32 = x_954.x_AdditionalLightsAttenuation[x_1016].w;
    u_xlat45 = ((x_1011 * x_1014) + x_1018);
    let x_1020 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1020, 0.0f, 1.0f);
    let x_1022 : f32 = u_xlat45;
    let x_1023 : f32 = u_xlat45;
    u_xlat45 = (x_1022 * x_1023);
    let x_1025 : f32 = u_xlat43;
    let x_1026 : f32 = u_xlat45;
    u_xlat43 = (x_1025 * x_1026);
    let x_1029 : f32 = u_xlat19;
    let x_1031 : i32 = u_xlati40;
    let x_1033 : vec4<f32> = x_954.x_AdditionalLightsColor[x_1031];
    u_xlat11 = (vec3<f32>(x_1029, x_1029, x_1029) * vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
    let x_1036 : vec4<f32> = u_xlat4;
    let x_1038 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(vec3<f32>(x_1036.x, x_1036.y, x_1036.z), x_1038);
    let x_1040 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1040, 0.0f, 1.0f);
    let x_1042 : f32 = u_xlat40;
    let x_1043 : f32 = u_xlat43;
    u_xlat40 = (x_1042 * x_1043);
    let x_1045 : f32 = u_xlat40;
    let x_1047 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1045, x_1045, x_1045) * x_1047);
    let x_1049 : vec4<f32> = u_xlat9;
    let x_1051 : f32 = u_xlat44;
    let x_1054 : vec3<f32> = u_xlat3;
    let x_1055 : vec3<f32> = ((vec3<f32>(x_1049.x, x_1049.y, x_1049.z) * vec3<f32>(x_1051, x_1051, x_1051)) + x_1054);
    let x_1056 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
    let x_1058 : vec4<f32> = u_xlat9;
    let x_1060 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1058.x, x_1058.y, x_1058.z), vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
    let x_1063 : f32 = u_xlat40;
    u_xlat40 = max(x_1063, 1.17549435e-37f);
    let x_1065 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1065);
    let x_1067 : f32 = u_xlat40;
    let x_1069 : vec4<f32> = u_xlat9;
    let x_1071 : vec3<f32> = (vec3<f32>(x_1067, x_1067, x_1067) * vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
    let x_1072 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
    let x_1074 : vec4<f32> = u_xlat4;
    let x_1076 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1074.x, x_1074.y, x_1074.z), vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
    let x_1079 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1079, 0.0f, 1.0f);
    let x_1081 : vec3<f32> = u_xlat10;
    let x_1082 : vec4<f32> = u_xlat9;
    u_xlat43 = dot(x_1081, vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
    let x_1085 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1085, 0.0f, 1.0f);
    let x_1087 : f32 = u_xlat40;
    let x_1088 : f32 = u_xlat40;
    u_xlat40 = (x_1087 * x_1088);
    let x_1090 : f32 = u_xlat40;
    let x_1092 : f32 = u_xlat31.x;
    u_xlat40 = ((x_1090 * x_1092) + 1.000010014f);
    let x_1095 : f32 = u_xlat43;
    let x_1096 : f32 = u_xlat43;
    u_xlat43 = (x_1095 * x_1096);
    let x_1098 : f32 = u_xlat40;
    let x_1099 : f32 = u_xlat40;
    u_xlat40 = (x_1098 * x_1099);
    let x_1101 : f32 = u_xlat43;
    u_xlat43 = max(x_1101, 0.100000001f);
    let x_1103 : f32 = u_xlat40;
    let x_1104 : f32 = u_xlat43;
    u_xlat40 = (x_1103 * x_1104);
    let x_1106 : f32 = u_xlat42;
    let x_1107 : f32 = u_xlat40;
    u_xlat40 = (x_1106 * x_1107);
    let x_1109 : f32 = u_xlat41;
    let x_1110 : f32 = u_xlat40;
    u_xlat40 = (x_1109 / x_1110);
    let x_1112 : vec4<f32> = u_xlat0;
    let x_1114 : f32 = u_xlat40;
    let x_1117 : vec3<f32> = u_xlat13;
    let x_1118 : vec3<f32> = ((vec3<f32>(x_1112.x, x_1112.y, x_1112.z) * vec3<f32>(x_1114, x_1114, x_1114)) + x_1117);
    let x_1119 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
    let x_1121 : vec4<f32> = u_xlat9;
    let x_1123 : vec3<f32> = u_xlat11;
    let x_1125 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1121.x, x_1121.y, x_1121.z) * x_1123) + x_1125);

    continuing {
      let x_1127 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1127 + bitcast<u32>(1i));
    }
  }
  let x_1129 : vec4<f32> = u_xlat6;
  let x_1131 : vec4<f32> = u_xlat7;
  let x_1134 : vec4<f32> = u_xlat5;
  let x_1136 : vec3<f32> = ((vec3<f32>(x_1129.x, x_1129.y, x_1129.z) * vec3<f32>(x_1131.x, x_1131.x, x_1131.x)) + vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
  let x_1137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1139 : vec3<f32> = u_xlat8;
  let x_1140 : vec4<f32> = u_xlat0;
  let x_1142 : vec3<f32> = (x_1139 + vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
  let x_1143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
  let x_1145 : vec3<f32> = u_xlat2;
  let x_1147 : vec4<f32> = x_57.x_EmissionColor;
  let x_1150 : vec4<f32> = u_xlat0;
  let x_1152 : vec3<f32> = ((x_1145 * vec3<f32>(x_1147.x, x_1147.y, x_1147.z)) + vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1153 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1155 : f32 = u_xlat36;
  let x_1156 : f32 = u_xlat36;
  u_xlat36 = (x_1155 * -(x_1156));
  let x_1159 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1159);
  let x_1161 : vec4<f32> = u_xlat0;
  let x_1165 : vec4<f32> = x_44.unity_FogColor;
  let x_1168 : vec3<f32> = (vec3<f32>(x_1161.x, x_1161.y, x_1161.z) + -(vec3<f32>(x_1165.x, x_1165.y, x_1165.z)));
  let x_1169 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1173 : f32 = u_xlat36;
  let x_1175 : vec4<f32> = u_xlat0;
  let x_1179 : vec4<f32> = x_44.unity_FogColor;
  let x_1181 : vec3<f32> = ((vec3<f32>(x_1173, x_1173, x_1173) * vec3<f32>(x_1175.x, x_1175.y, x_1175.z)) + vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1187 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1187 == 1.0f);
  let x_1189 : bool = u_xlatb0;
  if (x_1189) {
    let x_1194 : f32 = u_xlat1.x;
    x_1190 = x_1194;
  } else {
    x_1190 = 1.0f;
  }
  let x_1196 : f32 = x_1190;
  SV_Target0.w = x_1196;
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

