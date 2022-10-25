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

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_EmissionMap : sampler;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_106 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_214 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_944 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlatb38 : bool;
  var x_112 : f32;
  var u_xlatb36 : bool;
  var u_xlat38 : f32;
  var u_xlat4 : vec3<f32>;
  var x_164 : f32;
  var x_176 : f32;
  var x_188 : f32;
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
  var x_619 : f32;
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
  var x_1161 : f32;
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
  let x_77 : vec4<f32> = hlslcc_FragCoord;
  let x_81 : f32 = x_44.x_DitheringTextureInvSize;
  let x_83 : vec2<f32> = (vec2<f32>(x_77.x, x_77.y) * vec2<f32>(x_81, x_81));
  let x_84 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_83.x, x_83.y, x_84.z);
  let x_93 : vec3<f32> = u_xlat3;
  let x_96 : f32 = x_44.x_GlobalMipBias.x;
  let x_97 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_93.x, x_93.y), x_96);
  u_xlat36 = x_97.w;
  let x_108 : f32 = x_106.unity_LODFade.x;
  u_xlatb38 = (x_108 >= 0.0f);
  let x_111 : bool = u_xlatb38;
  if (x_111) {
    let x_115 : f32 = u_xlat36;
    x_112 = abs(x_115);
  } else {
    let x_118 : f32 = u_xlat36;
    x_112 = -(abs(x_118));
  }
  let x_121 : f32 = x_112;
  u_xlat36 = x_121;
  let x_122 : f32 = u_xlat36;
  let x_125 : f32 = x_106.unity_LODFade.x;
  u_xlat36 = (-(x_122) + x_125);
  let x_128 : f32 = u_xlat36;
  u_xlatb36 = (x_128 < 0.0f);
  let x_130 : bool = u_xlatb36;
  if (((select(0i, 1i, x_130) * -1i) != 0i)) {
    discard;
  }
  let x_141 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb36 = (x_141 == 0.0f);
  let x_145 : vec3<f32> = vs_TEXCOORD1;
  let x_150 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_145) + x_150);
  let x_153 : vec3<f32> = u_xlat3;
  let x_154 : vec3<f32> = u_xlat3;
  u_xlat38 = dot(x_153, x_154);
  let x_156 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_156);
  let x_158 : f32 = u_xlat38;
  let x_160 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_158, x_158, x_158) * x_160);
  let x_163 : bool = u_xlatb36;
  if (x_163) {
    let x_168 : f32 = u_xlat3.x;
    x_164 = x_168;
  } else {
    let x_172 : f32 = x_44.unity_MatrixV[0i].z;
    x_164 = x_172;
  }
  let x_173 : f32 = x_164;
  u_xlat4.x = x_173;
  let x_175 : bool = u_xlatb36;
  if (x_175) {
    let x_181 : f32 = u_xlat3.y;
    x_176 = x_181;
  } else {
    let x_184 : f32 = x_44.unity_MatrixV[1i].z;
    x_176 = x_184;
  }
  let x_185 : f32 = x_176;
  u_xlat4.y = x_185;
  let x_187 : bool = u_xlatb36;
  if (x_187) {
    let x_192 : f32 = u_xlat3.z;
    x_188 = x_192;
  } else {
    let x_195 : f32 = x_44.unity_MatrixV[2i].z;
    x_188 = x_195;
  }
  let x_196 : f32 = x_188;
  u_xlat4.z = x_196;
  let x_199 : vec3<f32> = vs_TEXCOORD2;
  let x_200 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_199, x_200);
  let x_202 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_202);
  let x_204 : f32 = u_xlat36;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_204, x_204, x_204) * x_206);
  let x_209 : vec3<f32> = vs_TEXCOORD1;
  let x_216 : vec4<f32> = x_214.x_CascadeShadowSplitSpheres0;
  let x_219 : vec3<f32> = (x_209 + -(vec3<f32>(x_216.x, x_216.y, x_216.z)));
  let x_220 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_223 : vec3<f32> = vs_TEXCOORD1;
  let x_225 : vec4<f32> = x_214.x_CascadeShadowSplitSpheres1;
  let x_228 : vec3<f32> = (x_223 + -(vec3<f32>(x_225.x, x_225.y, x_225.z)));
  let x_229 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : vec3<f32> = vs_TEXCOORD1;
  let x_235 : vec4<f32> = x_214.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_232 + -(vec3<f32>(x_235.x, x_235.y, x_235.z)));
  let x_240 : vec3<f32> = vs_TEXCOORD1;
  let x_243 : vec4<f32> = x_214.x_CascadeShadowSplitSpheres3;
  let x_246 : vec3<f32> = (x_240 + -(vec3<f32>(x_243.x, x_243.y, x_243.z)));
  let x_247 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat5;
  let x_251 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_255 : vec4<f32> = u_xlat6;
  let x_257 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_255.x, x_255.y, x_255.z), vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_261 : vec3<f32> = u_xlat7;
  let x_262 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_261, x_262);
  let x_265 : vec4<f32> = u_xlat8;
  let x_267 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_265.x, x_265.y, x_265.z), vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_274 : vec4<f32> = u_xlat5;
  let x_277 : vec4<f32> = x_214.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_274 < x_277);
  let x_280 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_280);
  let x_284 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_284);
  let x_288 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_288);
  let x_292 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_292);
  let x_296 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_296);
  let x_302 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_302);
  let x_306 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_306);
  let x_309 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = u_xlat6;
  let x_313 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) + vec3<f32>(x_311.y, x_311.z, x_311.w));
  let x_314 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat5;
  let x_319 : vec3<f32> = max(vec3<f32>(x_316.x, x_316.y, x_316.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_320.x, x_319.x, x_319.y, x_319.z);
  let x_322 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_322, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_328 : f32 = u_xlat36;
  u_xlat36 = (-(x_328) + 4.0f);
  let x_333 : f32 = u_xlat36;
  u_xlatu36 = u32(x_333);
  let x_337 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_337) << bitcast<u32>(2i));
  let x_340 : vec3<f32> = vs_TEXCOORD1;
  let x_342 : i32 = u_xlati36;
  let x_345 : i32 = u_xlati36;
  let x_349 : vec4<f32> = x_214.x_MainLightWorldToShadow[((x_342 + 1i) / 4i)][((x_345 + 1i) % 4i)];
  let x_351 : vec3<f32> = (vec3<f32>(x_340.y, x_340.y, x_340.y) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : i32 = u_xlati36;
  let x_356 : i32 = u_xlati36;
  let x_359 : vec4<f32> = x_214.x_MainLightWorldToShadow[(x_354 / 4i)][(x_356 % 4i)];
  let x_361 : vec3<f32> = vs_TEXCOORD1;
  let x_364 : vec4<f32> = u_xlat5;
  let x_366 : vec3<f32> = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_361.x, x_361.x, x_361.x)) + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : i32 = u_xlati36;
  let x_372 : i32 = u_xlati36;
  let x_376 : vec4<f32> = x_214.x_MainLightWorldToShadow[((x_369 + 2i) / 4i)][((x_372 + 2i) % 4i)];
  let x_378 : vec3<f32> = vs_TEXCOORD1;
  let x_381 : vec4<f32> = u_xlat5;
  let x_383 : vec3<f32> = ((vec3<f32>(x_376.x, x_376.y, x_376.z) * vec3<f32>(x_378.z, x_378.z, x_378.z)) + vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : i32 = u_xlati36;
  let x_391 : i32 = u_xlati36;
  let x_395 : vec4<f32> = x_214.x_MainLightWorldToShadow[((x_388 + 3i) / 4i)][((x_391 + 3i) % 4i)];
  let x_397 : vec3<f32> = (vec3<f32>(x_386.x, x_386.y, x_386.z) + vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_398 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_406 : vec2<f32> = vs_TEXCOORD8;
  let x_408 : f32 = x_44.x_GlobalMipBias.x;
  let x_409 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_406, x_408);
  u_xlat6 = x_409;
  let x_414 : vec2<f32> = vs_TEXCOORD8;
  let x_416 : f32 = x_44.x_GlobalMipBias.x;
  let x_417 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_414, x_416);
  u_xlat7 = vec3<f32>(x_417.x, x_417.y, x_417.z);
  let x_419 : vec4<f32> = u_xlat6;
  let x_423 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_424 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : vec3<f32> = u_xlat3;
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_426, vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : f32 = u_xlat36;
  u_xlat36 = (x_430 + 0.5f);
  let x_433 : f32 = u_xlat36;
  let x_435 : vec3<f32> = u_xlat7;
  let x_436 : vec3<f32> = (vec3<f32>(x_433, x_433, x_433) * x_435);
  let x_437 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : f32 = u_xlat6.w;
  u_xlat36 = max(x_440, 0.0001f);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : f32 = u_xlat36;
  let x_447 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) / vec3<f32>(x_445, x_445, x_445));
  let x_448 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_452 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_453 : vec2<f32> = vec2<f32>(x_452.x, x_452.y);
  let x_457 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_453.x, x_453.y));
  let x_458 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_457.x, x_457.y, x_458.z);
  let x_460 : vec3<f32> = u_xlat7;
  let x_462 : vec4<f32> = hlslcc_FragCoord;
  let x_464 : vec2<f32> = (vec2<f32>(x_460.x, x_460.y) * vec2<f32>(x_462.x, x_462.y));
  let x_465 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_464.x, x_464.y, x_465.z);
  let x_468 : f32 = u_xlat7.y;
  let x_471 : f32 = x_44.x_ScaleBiasRt.x;
  let x_474 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat36 = ((x_468 * x_471) + x_474);
  let x_476 : f32 = u_xlat36;
  u_xlat7.z = (-(x_476) + 1.0f);
  let x_481 : f32 = x_57.x_Metallic;
  u_xlat36 = ((-(x_481) * 0.959999979f) + 0.959999979f);
  let x_486 : f32 = u_xlat36;
  let x_489 : f32 = x_57.x_Smoothness;
  u_xlat38 = (-(x_486) + x_489);
  let x_492 : f32 = u_xlat36;
  let x_494 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec3<f32>(x_492, x_492, x_492) * vec3<f32>(x_494.y, x_494.z, x_494.w));
  let x_497 : vec4<f32> = u_xlat0;
  let x_500 : vec4<f32> = x_57.x_BaseColor;
  let x_505 : vec3<f32> = ((vec3<f32>(x_497.x, x_497.y, x_497.z) * vec3<f32>(x_500.x, x_500.y, x_500.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_506 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_509 : f32 = x_57.x_Metallic;
  let x_511 : f32 = x_57.x_Metallic;
  let x_513 : f32 = x_57.x_Metallic;
  let x_514 : vec3<f32> = vec3<f32>(x_509, x_511, x_513);
  let x_519 : vec4<f32> = u_xlat0;
  let x_524 : vec3<f32> = ((vec3<f32>(x_514.x, x_514.y, x_514.z) * vec3<f32>(x_519.x, x_519.y, x_519.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_525 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_528 : f32 = x_57.x_Smoothness;
  u_xlat36 = (-(x_528) + 1.0f);
  let x_532 : f32 = u_xlat36;
  let x_533 : f32 = u_xlat36;
  u_xlat39 = (x_532 * x_533);
  let x_535 : f32 = u_xlat39;
  u_xlat39 = max(x_535, 0.0078125f);
  let x_539 : f32 = u_xlat39;
  let x_540 : f32 = u_xlat39;
  u_xlat40 = (x_539 * x_540);
  let x_542 : f32 = u_xlat38;
  u_xlat38 = (x_542 + 1.0f);
  let x_544 : f32 = u_xlat38;
  u_xlat38 = clamp(x_544, 0.0f, 1.0f);
  let x_547 : f32 = u_xlat39;
  u_xlat41 = ((x_547 * 4.0f) + 2.0f);
  let x_556 : vec3<f32> = u_xlat7;
  let x_559 : f32 = x_44.x_GlobalMipBias.x;
  let x_560 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_556.x, x_556.z), x_559);
  u_xlat42 = x_560.x;
  let x_562 : f32 = u_xlat42;
  u_xlat7.x = (x_562 + -1.0f);
  let x_566 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_568 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_566 * x_568) + 1.0f);
  let x_572 : f32 = u_xlat42;
  u_xlat42 = min(x_572, 1.0f);
  let x_575 : vec4<f32> = u_xlat5;
  let x_576 : vec2<f32> = vec2<f32>(x_575.x, x_575.y);
  let x_578 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_576.x, x_576.y, x_578);
  let x_590 : vec3<f32> = txVec0;
  let x_592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_590.xy, x_590.z);
  u_xlat5.x = x_592;
  let x_596 : f32 = x_214.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_596) + 1.0f);
  let x_600 : f32 = u_xlat5.x;
  let x_602 : f32 = x_214.x_MainLightShadowParams.x;
  let x_604 : f32 = u_xlat17;
  u_xlat5.x = ((x_600 * x_602) + x_604);
  let x_609 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_609);
  let x_613 : f32 = u_xlat5.z;
  u_xlatb29 = (x_613 >= 1.0f);
  let x_615 : bool = u_xlatb29;
  let x_616 : bool = u_xlatb17;
  u_xlatb17 = (x_615 | x_616);
  let x_618 : bool = u_xlatb17;
  if (x_618) {
    x_619 = 1.0f;
  } else {
    let x_624 : f32 = u_xlat5.x;
    x_619 = x_624;
  }
  let x_625 : f32 = x_619;
  u_xlat5.x = x_625;
  let x_628 : vec3<f32> = vs_TEXCOORD1;
  let x_630 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat19 = (x_628 + -(x_630));
  let x_633 : vec3<f32> = u_xlat19;
  let x_634 : vec3<f32> = u_xlat19;
  u_xlat17 = dot(x_633, x_634);
  let x_636 : f32 = u_xlat17;
  let x_638 : f32 = x_214.x_MainLightShadowParams.z;
  let x_641 : f32 = x_214.x_MainLightShadowParams.w;
  u_xlat17 = ((x_636 * x_638) + x_641);
  let x_643 : f32 = u_xlat17;
  u_xlat17 = clamp(x_643, 0.0f, 1.0f);
  let x_647 : f32 = u_xlat5.x;
  u_xlat29 = (-(x_647) + 1.0f);
  let x_650 : f32 = u_xlat17;
  let x_651 : f32 = u_xlat29;
  let x_654 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_650 * x_651) + x_654);
  let x_657 : vec3<f32> = u_xlat7;
  let x_660 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat19 = (vec3<f32>(x_657.x, x_657.x, x_657.x) * vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec3<f32> = u_xlat4;
  let x_665 : vec3<f32> = u_xlat3;
  u_xlat17 = dot(-(x_663), x_665);
  let x_667 : f32 = u_xlat17;
  let x_668 : f32 = u_xlat17;
  u_xlat17 = (x_667 + x_668);
  let x_670 : vec3<f32> = u_xlat3;
  let x_671 : f32 = u_xlat17;
  let x_675 : vec3<f32> = u_xlat4;
  let x_677 : vec3<f32> = ((x_670 * -(vec3<f32>(x_671, x_671, x_671))) + -(x_675));
  let x_678 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec3<f32> = u_xlat3;
  let x_681 : vec3<f32> = u_xlat4;
  u_xlat17 = dot(x_680, x_681);
  let x_683 : f32 = u_xlat17;
  u_xlat17 = clamp(x_683, 0.0f, 1.0f);
  let x_685 : f32 = u_xlat17;
  u_xlat17 = (-(x_685) + 1.0f);
  let x_688 : f32 = u_xlat17;
  let x_689 : f32 = u_xlat17;
  u_xlat17 = (x_688 * x_689);
  let x_691 : f32 = u_xlat17;
  let x_692 : f32 = u_xlat17;
  u_xlat17 = (x_691 * x_692);
  let x_694 : f32 = u_xlat36;
  u_xlat29 = ((-(x_694) * 0.699999988f) + 1.700000048f);
  let x_700 : f32 = u_xlat36;
  let x_701 : f32 = u_xlat29;
  u_xlat36 = (x_700 * x_701);
  let x_703 : f32 = u_xlat36;
  u_xlat36 = (x_703 * 6.0f);
  let x_714 : vec4<f32> = u_xlat8;
  let x_716 : f32 = u_xlat36;
  let x_717 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_714.x, x_714.y, x_714.z), x_716);
  u_xlat8 = x_717;
  let x_719 : f32 = u_xlat8.w;
  u_xlat36 = (x_719 + -1.0f);
  let x_722 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_723 : f32 = u_xlat36;
  u_xlat36 = ((x_722 * x_723) + 1.0f);
  let x_726 : f32 = u_xlat36;
  u_xlat36 = max(x_726, 0.0f);
  let x_728 : f32 = u_xlat36;
  u_xlat36 = log2(x_728);
  let x_730 : f32 = u_xlat36;
  let x_732 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_730 * x_732);
  let x_734 : f32 = u_xlat36;
  u_xlat36 = exp2(x_734);
  let x_736 : f32 = u_xlat36;
  let x_738 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_736 * x_738);
  let x_740 : vec4<f32> = u_xlat8;
  let x_742 : f32 = u_xlat36;
  let x_744 : vec3<f32> = (vec3<f32>(x_740.x, x_740.y, x_740.z) * vec3<f32>(x_742, x_742, x_742));
  let x_745 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  let x_749 : f32 = u_xlat39;
  let x_751 : f32 = u_xlat39;
  u_xlat9 = ((vec2<f32>(x_749, x_749) * vec2<f32>(x_751, x_751)) + vec2<f32>(-1.0f, 1.0f));
  let x_757 : f32 = u_xlat9.y;
  u_xlat36 = (1.0f / x_757);
  let x_760 : vec4<f32> = u_xlat0;
  let x_763 : f32 = u_xlat38;
  u_xlat21 = (-(vec3<f32>(x_760.x, x_760.y, x_760.z)) + vec3<f32>(x_763, x_763, x_763));
  let x_766 : f32 = u_xlat17;
  let x_768 : vec3<f32> = u_xlat21;
  let x_770 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_766, x_766, x_766) * x_768) + vec3<f32>(x_770.x, x_770.y, x_770.z));
  let x_773 : f32 = u_xlat36;
  let x_775 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_773, x_773, x_773) * x_775);
  let x_777 : vec4<f32> = u_xlat8;
  let x_779 : vec3<f32> = u_xlat21;
  let x_780 : vec3<f32> = (vec3<f32>(x_777.x, x_777.y, x_777.z) * x_779);
  let x_781 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat6;
  let x_785 : vec3<f32> = u_xlat13;
  let x_787 : vec4<f32> = u_xlat8;
  let x_789 : vec3<f32> = ((vec3<f32>(x_783.x, x_783.y, x_783.z) * x_785) + vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_790 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_793 : f32 = u_xlat5.x;
  let x_795 : f32 = x_106.unity_LightData.z;
  u_xlat36 = (x_793 * x_795);
  let x_797 : vec3<f32> = u_xlat3;
  let x_799 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat38 = dot(x_797, vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : f32 = u_xlat38;
  u_xlat38 = clamp(x_802, 0.0f, 1.0f);
  let x_804 : f32 = u_xlat36;
  let x_805 : f32 = u_xlat38;
  u_xlat36 = (x_804 * x_805);
  let x_807 : f32 = u_xlat36;
  let x_809 : vec3<f32> = u_xlat19;
  let x_810 : vec3<f32> = (vec3<f32>(x_807, x_807, x_807) * x_809);
  let x_811 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec3<f32> = u_xlat4;
  let x_815 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat19 = (x_813 + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec3<f32> = u_xlat19;
  let x_819 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_818, x_819);
  let x_821 : f32 = u_xlat36;
  u_xlat36 = max(x_821, 1.17549435e-37f);
  let x_824 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_824);
  let x_826 : f32 = u_xlat36;
  let x_828 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_826, x_826, x_826) * x_828);
  let x_830 : vec3<f32> = u_xlat3;
  let x_831 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_830, x_831);
  let x_833 : f32 = u_xlat36;
  u_xlat36 = clamp(x_833, 0.0f, 1.0f);
  let x_836 : vec4<f32> = x_44.x_MainLightPosition;
  let x_838 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(vec3<f32>(x_836.x, x_836.y, x_836.z), x_838);
  let x_840 : f32 = u_xlat38;
  u_xlat38 = clamp(x_840, 0.0f, 1.0f);
  let x_842 : f32 = u_xlat36;
  let x_843 : f32 = u_xlat36;
  u_xlat36 = (x_842 * x_843);
  let x_845 : f32 = u_xlat36;
  let x_847 : f32 = u_xlat9.x;
  u_xlat36 = ((x_845 * x_847) + 1.000010014f);
  let x_851 : f32 = u_xlat38;
  let x_852 : f32 = u_xlat38;
  u_xlat38 = (x_851 * x_852);
  let x_854 : f32 = u_xlat36;
  let x_855 : f32 = u_xlat36;
  u_xlat36 = (x_854 * x_855);
  let x_857 : f32 = u_xlat38;
  u_xlat38 = max(x_857, 0.100000001f);
  let x_860 : f32 = u_xlat36;
  let x_861 : f32 = u_xlat38;
  u_xlat36 = (x_860 * x_861);
  let x_863 : f32 = u_xlat41;
  let x_864 : f32 = u_xlat36;
  u_xlat36 = (x_863 * x_864);
  let x_866 : f32 = u_xlat40;
  let x_867 : f32 = u_xlat36;
  u_xlat36 = (x_866 / x_867);
  let x_869 : vec4<f32> = u_xlat0;
  let x_871 : f32 = u_xlat36;
  let x_874 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_869.x, x_869.y, x_869.z) * vec3<f32>(x_871, x_871, x_871)) + x_874);
  let x_876 : vec4<f32> = u_xlat5;
  let x_878 : vec3<f32> = u_xlat19;
  let x_879 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) * x_878);
  let x_880 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_883 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_885 : f32 = x_106.unity_LightData.y;
  u_xlat36 = min(x_883, x_885);
  let x_887 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_887));
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_899 : u32 = u_xlatu_loop_1;
    let x_900 : u32 = u_xlatu36;
    if ((x_899 < x_900)) {
    } else {
      break;
    }
    let x_903 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_903 >> 2u);
    let x_906 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_906 & 3u));
    let x_909 : u32 = u_xlatu39;
    let x_912 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_909)];
    let x_922 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_927 : vec4<u32> = indexable[x_922];
    u_xlat39 = dot(x_912, bitcast<vec4<f32>>(x_927));
    let x_931 : f32 = u_xlat39;
    u_xlati39 = i32(x_931);
    let x_933 : vec3<f32> = vs_TEXCOORD1;
    let x_945 : i32 = u_xlati39;
    let x_947 : vec4<f32> = x_944.x_AdditionalLightsPosition[x_945];
    let x_950 : i32 = u_xlati39;
    let x_952 : vec4<f32> = x_944.x_AdditionalLightsPosition[x_950];
    let x_954 : vec3<f32> = ((-(x_933) * vec3<f32>(x_947.w, x_947.w, x_947.w)) + vec3<f32>(x_952.x, x_952.y, x_952.z));
    let x_955 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
    let x_958 : vec4<f32> = u_xlat8;
    let x_960 : vec4<f32> = u_xlat8;
    u_xlat44 = dot(vec3<f32>(x_958.x, x_958.y, x_958.z), vec3<f32>(x_960.x, x_960.y, x_960.z));
    let x_963 : f32 = u_xlat44;
    u_xlat44 = max(x_963, 6.10351562e-05f);
    let x_966 : f32 = u_xlat44;
    u_xlat21.x = inverseSqrt(x_966);
    let x_970 : vec4<f32> = u_xlat8;
    let x_972 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_970.x, x_970.y, x_970.z) * vec3<f32>(x_972.x, x_972.x, x_972.x));
    let x_976 : f32 = u_xlat44;
    u_xlat33 = (1.0f / x_976);
    let x_978 : f32 = u_xlat44;
    let x_979 : i32 = u_xlati39;
    let x_981 : f32 = x_944.x_AdditionalLightsAttenuation[x_979].x;
    u_xlat44 = (x_978 * x_981);
    let x_983 : f32 = u_xlat44;
    let x_985 : f32 = u_xlat44;
    u_xlat44 = ((-(x_983) * x_985) + 1.0f);
    let x_988 : f32 = u_xlat44;
    u_xlat44 = max(x_988, 0.0f);
    let x_990 : f32 = u_xlat44;
    let x_991 : f32 = u_xlat44;
    u_xlat44 = (x_990 * x_991);
    let x_993 : f32 = u_xlat44;
    let x_994 : f32 = u_xlat33;
    u_xlat44 = (x_993 * x_994);
    let x_996 : i32 = u_xlati39;
    let x_998 : vec4<f32> = x_944.x_AdditionalLightsSpotDir[x_996];
    let x_1000 : vec3<f32> = u_xlat10;
    u_xlat33 = dot(vec3<f32>(x_998.x, x_998.y, x_998.z), x_1000);
    let x_1002 : f32 = u_xlat33;
    let x_1003 : i32 = u_xlati39;
    let x_1005 : f32 = x_944.x_AdditionalLightsAttenuation[x_1003].z;
    let x_1007 : i32 = u_xlati39;
    let x_1009 : f32 = x_944.x_AdditionalLightsAttenuation[x_1007].w;
    u_xlat33 = ((x_1002 * x_1005) + x_1009);
    let x_1011 : f32 = u_xlat33;
    u_xlat33 = clamp(x_1011, 0.0f, 1.0f);
    let x_1013 : f32 = u_xlat33;
    let x_1014 : f32 = u_xlat33;
    u_xlat33 = (x_1013 * x_1014);
    let x_1016 : f32 = u_xlat44;
    let x_1017 : f32 = u_xlat33;
    u_xlat44 = (x_1016 * x_1017);
    let x_1020 : vec3<f32> = u_xlat7;
    let x_1022 : i32 = u_xlati39;
    let x_1024 : vec4<f32> = x_944.x_AdditionalLightsColor[x_1022];
    u_xlat11 = (vec3<f32>(x_1020.x, x_1020.x, x_1020.x) * vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
    let x_1027 : vec3<f32> = u_xlat3;
    let x_1028 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(x_1027, x_1028);
    let x_1030 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1030, 0.0f, 1.0f);
    let x_1032 : f32 = u_xlat39;
    let x_1033 : f32 = u_xlat44;
    u_xlat39 = (x_1032 * x_1033);
    let x_1035 : f32 = u_xlat39;
    let x_1037 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1035, x_1035, x_1035) * x_1037);
    let x_1039 : vec4<f32> = u_xlat8;
    let x_1041 : vec3<f32> = u_xlat21;
    let x_1044 : vec3<f32> = u_xlat4;
    let x_1045 : vec3<f32> = ((vec3<f32>(x_1039.x, x_1039.y, x_1039.z) * vec3<f32>(x_1041.x, x_1041.x, x_1041.x)) + x_1044);
    let x_1046 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
    let x_1048 : vec4<f32> = u_xlat8;
    let x_1050 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1048.x, x_1048.y, x_1048.z), vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
    let x_1053 : f32 = u_xlat39;
    u_xlat39 = max(x_1053, 1.17549435e-37f);
    let x_1055 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1055);
    let x_1057 : f32 = u_xlat39;
    let x_1059 : vec4<f32> = u_xlat8;
    let x_1061 : vec3<f32> = (vec3<f32>(x_1057, x_1057, x_1057) * vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
    let x_1062 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
    let x_1064 : vec3<f32> = u_xlat3;
    let x_1065 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_1064, vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
    let x_1068 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1068, 0.0f, 1.0f);
    let x_1070 : vec3<f32> = u_xlat10;
    let x_1071 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1070, vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
    let x_1076 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1076, 0.0f, 1.0f);
    let x_1079 : f32 = u_xlat39;
    let x_1080 : f32 = u_xlat39;
    u_xlat39 = (x_1079 * x_1080);
    let x_1082 : f32 = u_xlat39;
    let x_1084 : f32 = u_xlat9.x;
    u_xlat39 = ((x_1082 * x_1084) + 1.000010014f);
    let x_1088 : f32 = u_xlat8.x;
    let x_1090 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1088 * x_1090);
    let x_1093 : f32 = u_xlat39;
    let x_1094 : f32 = u_xlat39;
    u_xlat39 = (x_1093 * x_1094);
    let x_1097 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1097, 0.100000001f);
    let x_1100 : f32 = u_xlat39;
    let x_1102 : f32 = u_xlat8.x;
    u_xlat39 = (x_1100 * x_1102);
    let x_1104 : f32 = u_xlat41;
    let x_1105 : f32 = u_xlat39;
    u_xlat39 = (x_1104 * x_1105);
    let x_1107 : f32 = u_xlat40;
    let x_1108 : f32 = u_xlat39;
    u_xlat39 = (x_1107 / x_1108);
    let x_1110 : vec4<f32> = u_xlat0;
    let x_1112 : f32 = u_xlat39;
    let x_1115 : vec3<f32> = u_xlat13;
    let x_1116 : vec3<f32> = ((vec3<f32>(x_1110.x, x_1110.y, x_1110.z) * vec3<f32>(x_1112, x_1112, x_1112)) + x_1115);
    let x_1117 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
    let x_1119 : vec4<f32> = u_xlat8;
    let x_1121 : vec3<f32> = u_xlat11;
    let x_1123 : vec3<f32> = u_xlat19;
    u_xlat19 = ((vec3<f32>(x_1119.x, x_1119.y, x_1119.z) * x_1121) + x_1123);

    continuing {
      let x_1125 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1125 + bitcast<u32>(1i));
    }
  }
  let x_1127 : vec4<f32> = u_xlat6;
  let x_1129 : f32 = u_xlat42;
  let x_1132 : vec4<f32> = u_xlat5;
  let x_1134 : vec3<f32> = ((vec3<f32>(x_1127.x, x_1127.y, x_1127.z) * vec3<f32>(x_1129, x_1129, x_1129)) + vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
  let x_1135 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1137 : vec3<f32> = u_xlat19;
  let x_1138 : vec4<f32> = u_xlat0;
  let x_1140 : vec3<f32> = (x_1137 + vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1145 : vec3<f32> = u_xlat2;
  let x_1147 : vec4<f32> = x_57.x_EmissionColor;
  let x_1150 : vec4<f32> = u_xlat0;
  let x_1152 : vec3<f32> = ((x_1145 * vec3<f32>(x_1147.x, x_1147.y, x_1147.z)) + vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1153 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1158 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1158 == 1.0f);
  let x_1160 : bool = u_xlatb0;
  if (x_1160) {
    let x_1165 : f32 = u_xlat1.x;
    x_1161 = x_1165;
  } else {
    x_1161 = 1.0f;
  }
  let x_1167 : f32 = x_1161;
  SV_Target0.w = x_1167;
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

