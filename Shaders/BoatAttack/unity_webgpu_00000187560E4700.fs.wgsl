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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_160 : MainLightShadows;

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

@group(1) @binding(2) var<uniform> x_670 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_894 : AdditionalLights;

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
  var x_107 : f32;
  var x_121 : f32;
  var x_133 : f32;
  var u_xlat36 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var u_xlat13 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlatb17 : bool;
  var u_xlatb29 : bool;
  var x_565 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati8 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati39 : i32;
  var u_xlat44 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1111 : f32;
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
  let x_106 : bool = u_xlatb36;
  if (x_106) {
    let x_111 : f32 = u_xlat3.x;
    x_107 = x_111;
  } else {
    let x_117 : f32 = x_44.unity_MatrixV[0i].z;
    x_107 = x_117;
  }
  let x_118 : f32 = x_107;
  u_xlat4.x = x_118;
  let x_120 : bool = u_xlatb36;
  if (x_120) {
    let x_126 : f32 = u_xlat3.y;
    x_121 = x_126;
  } else {
    let x_129 : f32 = x_44.unity_MatrixV[1i].z;
    x_121 = x_129;
  }
  let x_130 : f32 = x_121;
  u_xlat4.y = x_130;
  let x_132 : bool = u_xlatb36;
  if (x_132) {
    let x_137 : f32 = u_xlat3.z;
    x_133 = x_137;
  } else {
    let x_140 : f32 = x_44.unity_MatrixV[2i].z;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat4.z = x_141;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_145, x_146);
  let x_148 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_148);
  let x_150 : f32 = u_xlat36;
  let x_152 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_150, x_150, x_150) * x_152);
  let x_155 : vec3<f32> = vs_TEXCOORD1;
  let x_162 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres0;
  let x_165 : vec3<f32> = (x_155 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_171 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres1;
  let x_174 : vec3<f32> = (x_169 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD1;
  let x_181 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_186 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres3;
  let x_192 : vec3<f32> = (x_186 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat5;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat6;
  let x_203 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_207 : vec3<f32> = u_xlat7;
  let x_208 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_207, x_208);
  let x_211 : vec4<f32> = u_xlat8;
  let x_213 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_220 : vec4<f32> = u_xlat5;
  let x_223 : vec4<f32> = x_160.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_220 < x_223);
  let x_226 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_242);
  let x_248 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_248);
  let x_252 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_252);
  let x_255 : vec4<f32> = u_xlat5;
  let x_257 : vec4<f32> = u_xlat6;
  let x_259 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + vec3<f32>(x_257.y, x_257.z, x_257.w));
  let x_260 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat5;
  let x_265 : vec3<f32> = max(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_266 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_266.x, x_265.x, x_265.y, x_265.z);
  let x_268 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_268, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_274 : f32 = u_xlat36;
  u_xlat36 = (-(x_274) + 4.0f);
  let x_279 : f32 = u_xlat36;
  u_xlatu36 = u32(x_279);
  let x_283 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_283) << bitcast<u32>(2i));
  let x_286 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : i32 = u_xlati36;
  let x_291 : i32 = u_xlati36;
  let x_295 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_288 + 1i) / 4i)][((x_291 + 1i) % 4i)];
  let x_297 : vec3<f32> = (vec3<f32>(x_286.y, x_286.y, x_286.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : i32 = u_xlati36;
  let x_302 : i32 = u_xlati36;
  let x_305 : vec4<f32> = x_160.x_MainLightWorldToShadow[(x_300 / 4i)][(x_302 % 4i)];
  let x_307 : vec3<f32> = vs_TEXCOORD1;
  let x_310 : vec4<f32> = u_xlat5;
  let x_312 : vec3<f32> = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.x, x_307.x, x_307.x)) + vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : i32 = u_xlati36;
  let x_318 : i32 = u_xlati36;
  let x_322 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_315 + 2i) / 4i)][((x_318 + 2i) % 4i)];
  let x_324 : vec3<f32> = vs_TEXCOORD1;
  let x_327 : vec4<f32> = u_xlat5;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.z, x_324.z, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : i32 = u_xlati36;
  let x_337 : i32 = u_xlati36;
  let x_341 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_334 + 3i) / 4i)][((x_337 + 3i) % 4i)];
  let x_343 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_352 : vec2<f32> = vs_TEXCOORD8;
  let x_354 : f32 = x_44.x_GlobalMipBias.x;
  let x_355 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_352, x_354);
  u_xlat6 = x_355;
  let x_360 : vec2<f32> = vs_TEXCOORD8;
  let x_362 : f32 = x_44.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_360, x_362);
  u_xlat7 = vec3<f32>(x_363.x, x_363.y, x_363.z);
  let x_365 : vec4<f32> = u_xlat6;
  let x_369 : vec3<f32> = (vec3<f32>(x_365.x, x_365.y, x_365.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_370 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec3<f32> = u_xlat3;
  let x_373 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_372, vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : f32 = u_xlat36;
  u_xlat36 = (x_376 + 0.5f);
  let x_379 : f32 = u_xlat36;
  let x_381 : vec3<f32> = u_xlat7;
  let x_382 : vec3<f32> = (vec3<f32>(x_379, x_379, x_379) * x_381);
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : f32 = u_xlat6.w;
  u_xlat36 = max(x_386, 0.0001f);
  let x_389 : vec4<f32> = u_xlat6;
  let x_391 : f32 = u_xlat36;
  let x_393 : vec3<f32> = (vec3<f32>(x_389.x, x_389.y, x_389.z) / vec3<f32>(x_391, x_391, x_391));
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_398 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_399 : vec2<f32> = vec2<f32>(x_398.x, x_398.y);
  let x_403 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_399.x, x_399.y));
  let x_404 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_403.x, x_403.y, x_404.z);
  let x_406 : vec3<f32> = u_xlat7;
  let x_408 : vec4<f32> = hlslcc_FragCoord;
  let x_410 : vec2<f32> = (vec2<f32>(x_406.x, x_406.y) * vec2<f32>(x_408.x, x_408.y));
  let x_411 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_410.x, x_410.y, x_411.z);
  let x_414 : f32 = u_xlat7.y;
  let x_417 : f32 = x_44.x_ScaleBiasRt.x;
  let x_420 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat36 = ((x_414 * x_417) + x_420);
  let x_422 : f32 = u_xlat36;
  u_xlat7.z = (-(x_422) + 1.0f);
  let x_427 : f32 = x_57.x_Metallic;
  u_xlat36 = ((-(x_427) * 0.959999979f) + 0.959999979f);
  let x_432 : f32 = u_xlat36;
  let x_435 : f32 = x_57.x_Smoothness;
  u_xlat38 = (-(x_432) + x_435);
  let x_438 : f32 = u_xlat36;
  let x_440 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec3<f32>(x_438, x_438, x_438) * vec3<f32>(x_440.y, x_440.z, x_440.w));
  let x_443 : vec4<f32> = u_xlat0;
  let x_446 : vec4<f32> = x_57.x_BaseColor;
  let x_451 : vec3<f32> = ((vec3<f32>(x_443.x, x_443.y, x_443.z) * vec3<f32>(x_446.x, x_446.y, x_446.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_452 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : f32 = x_57.x_Metallic;
  let x_457 : f32 = x_57.x_Metallic;
  let x_459 : f32 = x_57.x_Metallic;
  let x_460 : vec3<f32> = vec3<f32>(x_455, x_457, x_459);
  let x_465 : vec4<f32> = u_xlat0;
  let x_470 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_465.x, x_465.y, x_465.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_471 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : f32 = x_57.x_Smoothness;
  u_xlat36 = (-(x_474) + 1.0f);
  let x_478 : f32 = u_xlat36;
  let x_479 : f32 = u_xlat36;
  u_xlat39 = (x_478 * x_479);
  let x_481 : f32 = u_xlat39;
  u_xlat39 = max(x_481, 0.0078125f);
  let x_485 : f32 = u_xlat39;
  let x_486 : f32 = u_xlat39;
  u_xlat40 = (x_485 * x_486);
  let x_488 : f32 = u_xlat38;
  u_xlat38 = (x_488 + 1.0f);
  let x_490 : f32 = u_xlat38;
  u_xlat38 = clamp(x_490, 0.0f, 1.0f);
  let x_493 : f32 = u_xlat39;
  u_xlat41 = ((x_493 * 4.0f) + 2.0f);
  let x_502 : vec3<f32> = u_xlat7;
  let x_505 : f32 = x_44.x_GlobalMipBias.x;
  let x_506 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_502.x, x_502.z), x_505);
  u_xlat42 = x_506.x;
  let x_508 : f32 = u_xlat42;
  u_xlat7.x = (x_508 + -1.0f);
  let x_512 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_514 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_512 * x_514) + 1.0f);
  let x_518 : f32 = u_xlat42;
  u_xlat42 = min(x_518, 1.0f);
  let x_521 : vec4<f32> = u_xlat5;
  let x_522 : vec2<f32> = vec2<f32>(x_521.x, x_521.y);
  let x_524 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_522.x, x_522.y, x_524);
  let x_536 : vec3<f32> = txVec0;
  let x_538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_536.xy, x_536.z);
  u_xlat5.x = x_538;
  let x_542 : f32 = x_160.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_542) + 1.0f);
  let x_546 : f32 = u_xlat5.x;
  let x_548 : f32 = x_160.x_MainLightShadowParams.x;
  let x_550 : f32 = u_xlat17;
  u_xlat5.x = ((x_546 * x_548) + x_550);
  let x_555 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_555);
  let x_559 : f32 = u_xlat5.z;
  u_xlatb29 = (x_559 >= 1.0f);
  let x_561 : bool = u_xlatb29;
  let x_562 : bool = u_xlatb17;
  u_xlatb17 = (x_561 | x_562);
  let x_564 : bool = u_xlatb17;
  if (x_564) {
    x_565 = 1.0f;
  } else {
    let x_570 : f32 = u_xlat5.x;
    x_565 = x_570;
  }
  let x_571 : f32 = x_565;
  u_xlat5.x = x_571;
  let x_574 : vec3<f32> = vs_TEXCOORD1;
  let x_576 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat19 = (x_574 + -(x_576));
  let x_579 : vec3<f32> = u_xlat19;
  let x_580 : vec3<f32> = u_xlat19;
  u_xlat17 = dot(x_579, x_580);
  let x_582 : f32 = u_xlat17;
  let x_584 : f32 = x_160.x_MainLightShadowParams.z;
  let x_587 : f32 = x_160.x_MainLightShadowParams.w;
  u_xlat17 = ((x_582 * x_584) + x_587);
  let x_589 : f32 = u_xlat17;
  u_xlat17 = clamp(x_589, 0.0f, 1.0f);
  let x_593 : f32 = u_xlat5.x;
  u_xlat29 = (-(x_593) + 1.0f);
  let x_596 : f32 = u_xlat17;
  let x_597 : f32 = u_xlat29;
  let x_600 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_596 * x_597) + x_600);
  let x_603 : vec3<f32> = u_xlat7;
  let x_606 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat19 = (vec3<f32>(x_603.x, x_603.x, x_603.x) * vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec3<f32> = u_xlat4;
  let x_611 : vec3<f32> = u_xlat3;
  u_xlat17 = dot(-(x_609), x_611);
  let x_613 : f32 = u_xlat17;
  let x_614 : f32 = u_xlat17;
  u_xlat17 = (x_613 + x_614);
  let x_616 : vec3<f32> = u_xlat3;
  let x_617 : f32 = u_xlat17;
  let x_621 : vec3<f32> = u_xlat4;
  let x_623 : vec3<f32> = ((x_616 * -(vec3<f32>(x_617, x_617, x_617))) + -(x_621));
  let x_624 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec3<f32> = u_xlat3;
  let x_627 : vec3<f32> = u_xlat4;
  u_xlat17 = dot(x_626, x_627);
  let x_629 : f32 = u_xlat17;
  u_xlat17 = clamp(x_629, 0.0f, 1.0f);
  let x_631 : f32 = u_xlat17;
  u_xlat17 = (-(x_631) + 1.0f);
  let x_634 : f32 = u_xlat17;
  let x_635 : f32 = u_xlat17;
  u_xlat17 = (x_634 * x_635);
  let x_637 : f32 = u_xlat17;
  let x_638 : f32 = u_xlat17;
  u_xlat17 = (x_637 * x_638);
  let x_640 : f32 = u_xlat36;
  u_xlat29 = ((-(x_640) * 0.699999988f) + 1.700000048f);
  let x_646 : f32 = u_xlat36;
  let x_647 : f32 = u_xlat29;
  u_xlat36 = (x_646 * x_647);
  let x_649 : f32 = u_xlat36;
  u_xlat36 = (x_649 * 6.0f);
  let x_660 : vec4<f32> = u_xlat8;
  let x_662 : f32 = u_xlat36;
  let x_663 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_660.x, x_660.y, x_660.z), x_662);
  u_xlat8 = x_663;
  let x_665 : f32 = u_xlat8.w;
  u_xlat36 = (x_665 + -1.0f);
  let x_672 : f32 = x_670.unity_SpecCube0_HDR.w;
  let x_673 : f32 = u_xlat36;
  u_xlat36 = ((x_672 * x_673) + 1.0f);
  let x_676 : f32 = u_xlat36;
  u_xlat36 = max(x_676, 0.0f);
  let x_678 : f32 = u_xlat36;
  u_xlat36 = log2(x_678);
  let x_680 : f32 = u_xlat36;
  let x_682 : f32 = x_670.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_680 * x_682);
  let x_684 : f32 = u_xlat36;
  u_xlat36 = exp2(x_684);
  let x_686 : f32 = u_xlat36;
  let x_688 : f32 = x_670.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_686 * x_688);
  let x_690 : vec4<f32> = u_xlat8;
  let x_692 : f32 = u_xlat36;
  let x_694 : vec3<f32> = (vec3<f32>(x_690.x, x_690.y, x_690.z) * vec3<f32>(x_692, x_692, x_692));
  let x_695 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_699 : f32 = u_xlat39;
  let x_701 : f32 = u_xlat39;
  u_xlat9 = ((vec2<f32>(x_699, x_699) * vec2<f32>(x_701, x_701)) + vec2<f32>(-1.0f, 1.0f));
  let x_707 : f32 = u_xlat9.y;
  u_xlat36 = (1.0f / x_707);
  let x_710 : vec4<f32> = u_xlat0;
  let x_713 : f32 = u_xlat38;
  u_xlat21 = (-(vec3<f32>(x_710.x, x_710.y, x_710.z)) + vec3<f32>(x_713, x_713, x_713));
  let x_716 : f32 = u_xlat17;
  let x_718 : vec3<f32> = u_xlat21;
  let x_720 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_716, x_716, x_716) * x_718) + vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : f32 = u_xlat36;
  let x_725 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_723, x_723, x_723) * x_725);
  let x_727 : vec4<f32> = u_xlat8;
  let x_729 : vec3<f32> = u_xlat21;
  let x_730 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) * x_729);
  let x_731 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec4<f32> = u_xlat6;
  let x_735 : vec3<f32> = u_xlat13;
  let x_737 : vec4<f32> = u_xlat8;
  let x_739 : vec3<f32> = ((vec3<f32>(x_733.x, x_733.y, x_733.z) * x_735) + vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_743 : f32 = u_xlat5.x;
  let x_745 : f32 = x_670.unity_LightData.z;
  u_xlat36 = (x_743 * x_745);
  let x_747 : vec3<f32> = u_xlat3;
  let x_749 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat38 = dot(x_747, vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : f32 = u_xlat38;
  u_xlat38 = clamp(x_752, 0.0f, 1.0f);
  let x_754 : f32 = u_xlat36;
  let x_755 : f32 = u_xlat38;
  u_xlat36 = (x_754 * x_755);
  let x_757 : f32 = u_xlat36;
  let x_759 : vec3<f32> = u_xlat19;
  let x_760 : vec3<f32> = (vec3<f32>(x_757, x_757, x_757) * x_759);
  let x_761 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec3<f32> = u_xlat4;
  let x_765 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat19 = (x_763 + vec3<f32>(x_765.x, x_765.y, x_765.z));
  let x_768 : vec3<f32> = u_xlat19;
  let x_769 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_768, x_769);
  let x_771 : f32 = u_xlat36;
  u_xlat36 = max(x_771, 1.17549435e-37f);
  let x_774 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_774);
  let x_776 : f32 = u_xlat36;
  let x_778 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_776, x_776, x_776) * x_778);
  let x_780 : vec3<f32> = u_xlat3;
  let x_781 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_780, x_781);
  let x_783 : f32 = u_xlat36;
  u_xlat36 = clamp(x_783, 0.0f, 1.0f);
  let x_786 : vec4<f32> = x_44.x_MainLightPosition;
  let x_788 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(vec3<f32>(x_786.x, x_786.y, x_786.z), x_788);
  let x_790 : f32 = u_xlat38;
  u_xlat38 = clamp(x_790, 0.0f, 1.0f);
  let x_792 : f32 = u_xlat36;
  let x_793 : f32 = u_xlat36;
  u_xlat36 = (x_792 * x_793);
  let x_795 : f32 = u_xlat36;
  let x_797 : f32 = u_xlat9.x;
  u_xlat36 = ((x_795 * x_797) + 1.000010014f);
  let x_801 : f32 = u_xlat38;
  let x_802 : f32 = u_xlat38;
  u_xlat38 = (x_801 * x_802);
  let x_804 : f32 = u_xlat36;
  let x_805 : f32 = u_xlat36;
  u_xlat36 = (x_804 * x_805);
  let x_807 : f32 = u_xlat38;
  u_xlat38 = max(x_807, 0.100000001f);
  let x_810 : f32 = u_xlat36;
  let x_811 : f32 = u_xlat38;
  u_xlat36 = (x_810 * x_811);
  let x_813 : f32 = u_xlat41;
  let x_814 : f32 = u_xlat36;
  u_xlat36 = (x_813 * x_814);
  let x_816 : f32 = u_xlat40;
  let x_817 : f32 = u_xlat36;
  u_xlat36 = (x_816 / x_817);
  let x_819 : vec4<f32> = u_xlat0;
  let x_821 : f32 = u_xlat36;
  let x_824 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_819.x, x_819.y, x_819.z) * vec3<f32>(x_821, x_821, x_821)) + x_824);
  let x_826 : vec4<f32> = u_xlat5;
  let x_828 : vec3<f32> = u_xlat19;
  let x_829 : vec3<f32> = (vec3<f32>(x_826.x, x_826.y, x_826.z) * x_828);
  let x_830 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_833 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_835 : f32 = x_670.unity_LightData.y;
  u_xlat36 = min(x_833, x_835);
  let x_837 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_837));
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_849 : u32 = u_xlatu_loop_1;
    let x_850 : u32 = u_xlatu36;
    if ((x_849 < x_850)) {
    } else {
      break;
    }
    let x_853 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_853 >> 2u);
    let x_856 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_856 & 3u));
    let x_859 : u32 = u_xlatu39;
    let x_862 : vec4<f32> = x_670.unity_LightIndices[bitcast<i32>(x_859)];
    let x_872 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_877 : vec4<u32> = indexable[x_872];
    u_xlat39 = dot(x_862, bitcast<vec4<f32>>(x_877));
    let x_881 : f32 = u_xlat39;
    u_xlati39 = i32(x_881);
    let x_883 : vec3<f32> = vs_TEXCOORD1;
    let x_895 : i32 = u_xlati39;
    let x_897 : vec4<f32> = x_894.x_AdditionalLightsPosition[x_895];
    let x_900 : i32 = u_xlati39;
    let x_902 : vec4<f32> = x_894.x_AdditionalLightsPosition[x_900];
    let x_904 : vec3<f32> = ((-(x_883) * vec3<f32>(x_897.w, x_897.w, x_897.w)) + vec3<f32>(x_902.x, x_902.y, x_902.z));
    let x_905 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
    let x_908 : vec4<f32> = u_xlat8;
    let x_910 : vec4<f32> = u_xlat8;
    u_xlat44 = dot(vec3<f32>(x_908.x, x_908.y, x_908.z), vec3<f32>(x_910.x, x_910.y, x_910.z));
    let x_913 : f32 = u_xlat44;
    u_xlat44 = max(x_913, 6.10351562e-05f);
    let x_916 : f32 = u_xlat44;
    u_xlat21.x = inverseSqrt(x_916);
    let x_920 : vec4<f32> = u_xlat8;
    let x_922 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_920.x, x_920.y, x_920.z) * vec3<f32>(x_922.x, x_922.x, x_922.x));
    let x_926 : f32 = u_xlat44;
    u_xlat33 = (1.0f / x_926);
    let x_928 : f32 = u_xlat44;
    let x_929 : i32 = u_xlati39;
    let x_931 : f32 = x_894.x_AdditionalLightsAttenuation[x_929].x;
    u_xlat44 = (x_928 * x_931);
    let x_933 : f32 = u_xlat44;
    let x_935 : f32 = u_xlat44;
    u_xlat44 = ((-(x_933) * x_935) + 1.0f);
    let x_938 : f32 = u_xlat44;
    u_xlat44 = max(x_938, 0.0f);
    let x_940 : f32 = u_xlat44;
    let x_941 : f32 = u_xlat44;
    u_xlat44 = (x_940 * x_941);
    let x_943 : f32 = u_xlat44;
    let x_944 : f32 = u_xlat33;
    u_xlat44 = (x_943 * x_944);
    let x_946 : i32 = u_xlati39;
    let x_948 : vec4<f32> = x_894.x_AdditionalLightsSpotDir[x_946];
    let x_950 : vec3<f32> = u_xlat10;
    u_xlat33 = dot(vec3<f32>(x_948.x, x_948.y, x_948.z), x_950);
    let x_952 : f32 = u_xlat33;
    let x_953 : i32 = u_xlati39;
    let x_955 : f32 = x_894.x_AdditionalLightsAttenuation[x_953].z;
    let x_957 : i32 = u_xlati39;
    let x_959 : f32 = x_894.x_AdditionalLightsAttenuation[x_957].w;
    u_xlat33 = ((x_952 * x_955) + x_959);
    let x_961 : f32 = u_xlat33;
    u_xlat33 = clamp(x_961, 0.0f, 1.0f);
    let x_963 : f32 = u_xlat33;
    let x_964 : f32 = u_xlat33;
    u_xlat33 = (x_963 * x_964);
    let x_966 : f32 = u_xlat44;
    let x_967 : f32 = u_xlat33;
    u_xlat44 = (x_966 * x_967);
    let x_970 : vec3<f32> = u_xlat7;
    let x_972 : i32 = u_xlati39;
    let x_974 : vec4<f32> = x_894.x_AdditionalLightsColor[x_972];
    u_xlat11 = (vec3<f32>(x_970.x, x_970.x, x_970.x) * vec3<f32>(x_974.x, x_974.y, x_974.z));
    let x_977 : vec3<f32> = u_xlat3;
    let x_978 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(x_977, x_978);
    let x_980 : f32 = u_xlat39;
    u_xlat39 = clamp(x_980, 0.0f, 1.0f);
    let x_982 : f32 = u_xlat39;
    let x_983 : f32 = u_xlat44;
    u_xlat39 = (x_982 * x_983);
    let x_985 : f32 = u_xlat39;
    let x_987 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_985, x_985, x_985) * x_987);
    let x_989 : vec4<f32> = u_xlat8;
    let x_991 : vec3<f32> = u_xlat21;
    let x_994 : vec3<f32> = u_xlat4;
    let x_995 : vec3<f32> = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991.x, x_991.x, x_991.x)) + x_994);
    let x_996 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
    let x_998 : vec4<f32> = u_xlat8;
    let x_1000 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_998.x, x_998.y, x_998.z), vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
    let x_1003 : f32 = u_xlat39;
    u_xlat39 = max(x_1003, 1.17549435e-37f);
    let x_1005 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1005);
    let x_1007 : f32 = u_xlat39;
    let x_1009 : vec4<f32> = u_xlat8;
    let x_1011 : vec3<f32> = (vec3<f32>(x_1007, x_1007, x_1007) * vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
    let x_1012 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
    let x_1014 : vec3<f32> = u_xlat3;
    let x_1015 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_1014, vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
    let x_1018 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1018, 0.0f, 1.0f);
    let x_1020 : vec3<f32> = u_xlat10;
    let x_1021 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1020, vec3<f32>(x_1021.x, x_1021.y, x_1021.z));
    let x_1026 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1026, 0.0f, 1.0f);
    let x_1029 : f32 = u_xlat39;
    let x_1030 : f32 = u_xlat39;
    u_xlat39 = (x_1029 * x_1030);
    let x_1032 : f32 = u_xlat39;
    let x_1034 : f32 = u_xlat9.x;
    u_xlat39 = ((x_1032 * x_1034) + 1.000010014f);
    let x_1038 : f32 = u_xlat8.x;
    let x_1040 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1038 * x_1040);
    let x_1043 : f32 = u_xlat39;
    let x_1044 : f32 = u_xlat39;
    u_xlat39 = (x_1043 * x_1044);
    let x_1047 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1047, 0.100000001f);
    let x_1050 : f32 = u_xlat39;
    let x_1052 : f32 = u_xlat8.x;
    u_xlat39 = (x_1050 * x_1052);
    let x_1054 : f32 = u_xlat41;
    let x_1055 : f32 = u_xlat39;
    u_xlat39 = (x_1054 * x_1055);
    let x_1057 : f32 = u_xlat40;
    let x_1058 : f32 = u_xlat39;
    u_xlat39 = (x_1057 / x_1058);
    let x_1060 : vec4<f32> = u_xlat0;
    let x_1062 : f32 = u_xlat39;
    let x_1065 : vec3<f32> = u_xlat13;
    let x_1066 : vec3<f32> = ((vec3<f32>(x_1060.x, x_1060.y, x_1060.z) * vec3<f32>(x_1062, x_1062, x_1062)) + x_1065);
    let x_1067 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
    let x_1069 : vec4<f32> = u_xlat8;
    let x_1071 : vec3<f32> = u_xlat11;
    let x_1073 : vec3<f32> = u_xlat19;
    u_xlat19 = ((vec3<f32>(x_1069.x, x_1069.y, x_1069.z) * x_1071) + x_1073);

    continuing {
      let x_1075 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1075 + bitcast<u32>(1i));
    }
  }
  let x_1077 : vec4<f32> = u_xlat6;
  let x_1079 : f32 = u_xlat42;
  let x_1082 : vec4<f32> = u_xlat5;
  let x_1084 : vec3<f32> = ((vec3<f32>(x_1077.x, x_1077.y, x_1077.z) * vec3<f32>(x_1079, x_1079, x_1079)) + vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
  let x_1085 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
  let x_1087 : vec3<f32> = u_xlat19;
  let x_1088 : vec4<f32> = u_xlat0;
  let x_1090 : vec3<f32> = (x_1087 + vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1095 : vec3<f32> = u_xlat2;
  let x_1097 : vec4<f32> = x_57.x_EmissionColor;
  let x_1100 : vec4<f32> = u_xlat0;
  let x_1102 : vec3<f32> = ((x_1095 * vec3<f32>(x_1097.x, x_1097.y, x_1097.z)) + vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1103 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1108 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1108 == 1.0f);
  let x_1110 : bool = u_xlatb0;
  if (x_1110) {
    let x_1115 : f32 = u_xlat1.x;
    x_1111 = x_1115;
  } else {
    x_1111 = 1.0f;
  }
  let x_1117 : f32 = x_1111;
  SV_Target0.w = x_1117;
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

