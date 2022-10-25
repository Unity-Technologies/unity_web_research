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

@group(1) @binding(4) var<uniform> x_198 : MainLightShadows;

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

@group(1) @binding(1) var<uniform> x_964 : AdditionalLights;

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
  var x_175 : vec3<f32>;
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
  var x_638 : f32;
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
  var x_1198 : f32;
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
  let x_165 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_165;
  let x_168 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_168;
  let x_172 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_172;
  let x_174 : bool = u_xlatb36;
  if (x_174) {
    let x_178 : vec3<f32> = u_xlat3;
    x_175 = x_178;
  } else {
    let x_180 : vec3<f32> = u_xlat4;
    x_175 = x_180;
  }
  let x_181 : vec3<f32> = x_175;
  u_xlat3 = x_181;
  let x_183 : vec3<f32> = vs_TEXCOORD2;
  let x_184 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_183, x_184);
  let x_186 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_186);
  let x_188 : f32 = u_xlat36;
  let x_190 : vec3<f32> = vs_TEXCOORD2;
  u_xlat4 = (vec3<f32>(x_188, x_188, x_188) * x_190);
  let x_193 : vec3<f32> = vs_TEXCOORD1;
  let x_200 : vec4<f32> = x_198.x_CascadeShadowSplitSpheres0;
  let x_203 : vec3<f32> = (x_193 + -(vec3<f32>(x_200.x, x_200.y, x_200.z)));
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : vec3<f32> = vs_TEXCOORD1;
  let x_209 : vec4<f32> = x_198.x_CascadeShadowSplitSpheres1;
  let x_212 : vec3<f32> = (x_207 + -(vec3<f32>(x_209.x, x_209.y, x_209.z)));
  let x_213 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : vec3<f32> = vs_TEXCOORD1;
  let x_219 : vec4<f32> = x_198.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_216 + -(vec3<f32>(x_219.x, x_219.y, x_219.z)));
  let x_224 : vec3<f32> = vs_TEXCOORD1;
  let x_227 : vec4<f32> = x_198.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_224 + -(vec3<f32>(x_227.x, x_227.y, x_227.z)));
  let x_231 : vec4<f32> = u_xlat5;
  let x_233 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_237 : vec4<f32> = u_xlat6;
  let x_239 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_237.x, x_237.y, x_237.z), vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_243 : vec3<f32> = u_xlat7;
  let x_244 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_243, x_244);
  let x_247 : vec3<f32> = u_xlat8;
  let x_248 : vec3<f32> = u_xlat8;
  u_xlat5.w = dot(x_247, x_248);
  let x_254 : vec4<f32> = u_xlat5;
  let x_257 : vec4<f32> = x_198.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_254 < x_257);
  let x_260 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_260);
  let x_264 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_264);
  let x_268 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_268);
  let x_272 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_272);
  let x_276 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_276);
  let x_282 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_282);
  let x_286 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_286);
  let x_289 : vec4<f32> = u_xlat5;
  let x_291 : vec4<f32> = u_xlat6;
  let x_293 : vec3<f32> = (vec3<f32>(x_289.x, x_289.y, x_289.z) + vec3<f32>(x_291.y, x_291.z, x_291.w));
  let x_294 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat5;
  let x_299 : vec3<f32> = max(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_300 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_300.x, x_299.x, x_299.y, x_299.z);
  let x_302 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_302, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_308 : f32 = u_xlat36;
  u_xlat36 = (-(x_308) + 4.0f);
  let x_313 : f32 = u_xlat36;
  u_xlatu36 = u32(x_313);
  let x_317 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_317) << bitcast<u32>(2i));
  let x_320 : vec3<f32> = vs_TEXCOORD1;
  let x_322 : i32 = u_xlati36;
  let x_325 : i32 = u_xlati36;
  let x_329 : vec4<f32> = x_198.x_MainLightWorldToShadow[((x_322 + 1i) / 4i)][((x_325 + 1i) % 4i)];
  let x_331 : vec3<f32> = (vec3<f32>(x_320.y, x_320.y, x_320.y) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : i32 = u_xlati36;
  let x_336 : i32 = u_xlati36;
  let x_339 : vec4<f32> = x_198.x_MainLightWorldToShadow[(x_334 / 4i)][(x_336 % 4i)];
  let x_341 : vec3<f32> = vs_TEXCOORD1;
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.x, x_341.x, x_341.x)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : i32 = u_xlati36;
  let x_352 : i32 = u_xlati36;
  let x_356 : vec4<f32> = x_198.x_MainLightWorldToShadow[((x_349 + 2i) / 4i)][((x_352 + 2i) % 4i)];
  let x_358 : vec3<f32> = vs_TEXCOORD1;
  let x_361 : vec4<f32> = u_xlat5;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.z, x_358.z, x_358.z)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : vec4<f32> = u_xlat5;
  let x_368 : i32 = u_xlati36;
  let x_371 : i32 = u_xlati36;
  let x_375 : vec4<f32> = x_198.x_MainLightWorldToShadow[((x_368 + 3i) / 4i)][((x_371 + 3i) % 4i)];
  let x_377 : vec3<f32> = (vec3<f32>(x_366.x, x_366.y, x_366.z) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = vs_TEXCOORD1.y;
  let x_383 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_381 * x_383);
  let x_386 : f32 = x_44.unity_MatrixV[0i].z;
  let x_388 : f32 = vs_TEXCOORD1.x;
  let x_390 : f32 = u_xlat36;
  u_xlat36 = ((x_386 * x_388) + x_390);
  let x_393 : f32 = x_44.unity_MatrixV[2i].z;
  let x_395 : f32 = vs_TEXCOORD1.z;
  let x_397 : f32 = u_xlat36;
  u_xlat36 = ((x_393 * x_395) + x_397);
  let x_399 : f32 = u_xlat36;
  let x_401 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_399 + x_401);
  let x_403 : f32 = u_xlat36;
  let x_407 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_403) + -(x_407));
  let x_410 : f32 = u_xlat36;
  u_xlat36 = max(x_410, 0.0f);
  let x_412 : f32 = u_xlat36;
  let x_415 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_412 * x_415);
  let x_423 : vec2<f32> = vs_TEXCOORD8;
  let x_425 : f32 = x_44.x_GlobalMipBias.x;
  let x_426 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_423, x_425);
  u_xlat6 = x_426;
  let x_431 : vec2<f32> = vs_TEXCOORD8;
  let x_433 : f32 = x_44.x_GlobalMipBias.x;
  let x_434 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_431, x_433);
  u_xlat7 = vec3<f32>(x_434.x, x_434.y, x_434.z);
  let x_436 : vec4<f32> = u_xlat6;
  let x_440 : vec3<f32> = (vec3<f32>(x_436.x, x_436.y, x_436.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_443 : vec3<f32> = u_xlat4;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat38 = dot(x_443, vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : f32 = u_xlat38;
  u_xlat38 = (x_447 + 0.5f);
  let x_450 : f32 = u_xlat38;
  let x_452 : vec3<f32> = u_xlat7;
  let x_453 : vec3<f32> = (vec3<f32>(x_450, x_450, x_450) * x_452);
  let x_454 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_457 : f32 = u_xlat6.w;
  u_xlat38 = max(x_457, 0.0001f);
  let x_460 : vec4<f32> = u_xlat6;
  let x_462 : f32 = u_xlat38;
  let x_464 : vec3<f32> = (vec3<f32>(x_460.x, x_460.y, x_460.z) / vec3<f32>(x_462, x_462, x_462));
  let x_465 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_469 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_470 : vec2<f32> = vec2<f32>(x_469.x, x_469.y);
  let x_474 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_470.x, x_470.y));
  let x_475 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_474.x, x_474.y, x_475.z);
  let x_477 : vec3<f32> = u_xlat7;
  let x_479 : vec4<f32> = hlslcc_FragCoord;
  let x_481 : vec2<f32> = (vec2<f32>(x_477.x, x_477.y) * vec2<f32>(x_479.x, x_479.y));
  let x_482 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_481.x, x_481.y, x_482.z);
  let x_485 : f32 = u_xlat7.y;
  let x_488 : f32 = x_44.x_ScaleBiasRt.x;
  let x_491 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat38 = ((x_485 * x_488) + x_491);
  let x_493 : f32 = u_xlat38;
  u_xlat7.z = (-(x_493) + 1.0f);
  let x_498 : f32 = x_57.x_Metallic;
  u_xlat38 = ((-(x_498) * 0.959999979f) + 0.959999979f);
  let x_504 : f32 = u_xlat38;
  let x_507 : f32 = x_57.x_Smoothness;
  u_xlat39 = (-(x_504) + x_507);
  let x_510 : vec4<f32> = u_xlat1;
  let x_512 : f32 = u_xlat38;
  u_xlat13 = (vec3<f32>(x_510.y, x_510.z, x_510.w) * vec3<f32>(x_512, x_512, x_512));
  let x_515 : vec4<f32> = u_xlat0;
  let x_518 : vec4<f32> = x_57.x_BaseColor;
  let x_523 : vec3<f32> = ((vec3<f32>(x_515.x, x_515.y, x_515.z) * vec3<f32>(x_518.x, x_518.y, x_518.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_524 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_527 : f32 = x_57.x_Metallic;
  let x_529 : f32 = x_57.x_Metallic;
  let x_531 : f32 = x_57.x_Metallic;
  let x_532 : vec3<f32> = vec3<f32>(x_527, x_529, x_531);
  let x_537 : vec4<f32> = u_xlat0;
  let x_542 : vec3<f32> = ((vec3<f32>(x_532.x, x_532.y, x_532.z) * vec3<f32>(x_537.x, x_537.y, x_537.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_543 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_546 : f32 = x_57.x_Smoothness;
  u_xlat38 = (-(x_546) + 1.0f);
  let x_550 : f32 = u_xlat38;
  let x_551 : f32 = u_xlat38;
  u_xlat40 = (x_550 * x_551);
  let x_553 : f32 = u_xlat40;
  u_xlat40 = max(x_553, 0.0078125f);
  let x_557 : f32 = u_xlat40;
  let x_558 : f32 = u_xlat40;
  u_xlat41 = (x_557 * x_558);
  let x_560 : f32 = u_xlat39;
  u_xlat39 = (x_560 + 1.0f);
  let x_562 : f32 = u_xlat39;
  u_xlat39 = clamp(x_562, 0.0f, 1.0f);
  let x_565 : f32 = u_xlat40;
  u_xlat42 = ((x_565 * 4.0f) + 2.0f);
  let x_573 : vec3<f32> = u_xlat7;
  let x_576 : f32 = x_44.x_GlobalMipBias.x;
  let x_577 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_573.x, x_573.z), x_576);
  u_xlat7.x = x_577.x;
  let x_582 : f32 = u_xlat7.x;
  u_xlat19 = (x_582 + -1.0f);
  let x_585 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_586 : f32 = u_xlat19;
  u_xlat19 = ((x_585 * x_586) + 1.0f);
  let x_590 : f32 = u_xlat7.x;
  u_xlat7.x = min(x_590, 1.0f);
  let x_594 : vec4<f32> = u_xlat5;
  let x_595 : vec2<f32> = vec2<f32>(x_594.x, x_594.y);
  let x_597 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_595.x, x_595.y, x_597);
  let x_609 : vec3<f32> = txVec0;
  let x_611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_609.xy, x_609.z);
  u_xlat5.x = x_611;
  let x_615 : f32 = x_198.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_615) + 1.0f);
  let x_619 : f32 = u_xlat5.x;
  let x_621 : f32 = x_198.x_MainLightShadowParams.x;
  let x_623 : f32 = u_xlat17;
  u_xlat5.x = ((x_619 * x_621) + x_623);
  let x_628 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_628);
  let x_632 : f32 = u_xlat5.z;
  u_xlatb29 = (x_632 >= 1.0f);
  let x_634 : bool = u_xlatb29;
  let x_635 : bool = u_xlatb17;
  u_xlatb17 = (x_634 | x_635);
  let x_637 : bool = u_xlatb17;
  if (x_637) {
    x_638 = 1.0f;
  } else {
    let x_643 : f32 = u_xlat5.x;
    x_638 = x_643;
  }
  let x_644 : f32 = x_638;
  u_xlat5.x = x_644;
  let x_646 : vec3<f32> = vs_TEXCOORD1;
  let x_648 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat8 = (x_646 + -(x_648));
  let x_651 : vec3<f32> = u_xlat8;
  let x_652 : vec3<f32> = u_xlat8;
  u_xlat17 = dot(x_651, x_652);
  let x_654 : f32 = u_xlat17;
  let x_656 : f32 = x_198.x_MainLightShadowParams.z;
  let x_659 : f32 = x_198.x_MainLightShadowParams.w;
  u_xlat17 = ((x_654 * x_656) + x_659);
  let x_661 : f32 = u_xlat17;
  u_xlat17 = clamp(x_661, 0.0f, 1.0f);
  let x_665 : f32 = u_xlat5.x;
  u_xlat29 = (-(x_665) + 1.0f);
  let x_668 : f32 = u_xlat17;
  let x_669 : f32 = u_xlat29;
  let x_672 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_668 * x_669) + x_672);
  let x_675 : f32 = u_xlat19;
  let x_678 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat8 = (vec3<f32>(x_675, x_675, x_675) * vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec3<f32> = u_xlat3;
  let x_683 : vec3<f32> = u_xlat4;
  u_xlat17 = dot(-(x_681), x_683);
  let x_685 : f32 = u_xlat17;
  let x_686 : f32 = u_xlat17;
  u_xlat17 = (x_685 + x_686);
  let x_689 : vec3<f32> = u_xlat4;
  let x_690 : f32 = u_xlat17;
  let x_694 : vec3<f32> = u_xlat3;
  let x_696 : vec3<f32> = ((x_689 * -(vec3<f32>(x_690, x_690, x_690))) + -(x_694));
  let x_697 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : vec3<f32> = u_xlat4;
  let x_700 : vec3<f32> = u_xlat3;
  u_xlat17 = dot(x_699, x_700);
  let x_702 : f32 = u_xlat17;
  u_xlat17 = clamp(x_702, 0.0f, 1.0f);
  let x_704 : f32 = u_xlat17;
  u_xlat17 = (-(x_704) + 1.0f);
  let x_707 : f32 = u_xlat17;
  let x_708 : f32 = u_xlat17;
  u_xlat17 = (x_707 * x_708);
  let x_710 : f32 = u_xlat17;
  let x_711 : f32 = u_xlat17;
  u_xlat17 = (x_710 * x_711);
  let x_713 : f32 = u_xlat38;
  u_xlat29 = ((-(x_713) * 0.699999988f) + 1.700000048f);
  let x_719 : f32 = u_xlat38;
  let x_720 : f32 = u_xlat29;
  u_xlat38 = (x_719 * x_720);
  let x_722 : f32 = u_xlat38;
  u_xlat38 = (x_722 * 6.0f);
  let x_733 : vec4<f32> = u_xlat9;
  let x_735 : f32 = u_xlat38;
  let x_736 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_733.x, x_733.y, x_733.z), x_735);
  u_xlat9 = x_736;
  let x_738 : f32 = u_xlat9.w;
  u_xlat38 = (x_738 + -1.0f);
  let x_741 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_742 : f32 = u_xlat38;
  u_xlat38 = ((x_741 * x_742) + 1.0f);
  let x_745 : f32 = u_xlat38;
  u_xlat38 = max(x_745, 0.0f);
  let x_747 : f32 = u_xlat38;
  u_xlat38 = log2(x_747);
  let x_749 : f32 = u_xlat38;
  let x_751 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_749 * x_751);
  let x_753 : f32 = u_xlat38;
  u_xlat38 = exp2(x_753);
  let x_755 : f32 = u_xlat38;
  let x_757 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_755 * x_757);
  let x_759 : vec4<f32> = u_xlat9;
  let x_761 : f32 = u_xlat38;
  let x_763 : vec3<f32> = (vec3<f32>(x_759.x, x_759.y, x_759.z) * vec3<f32>(x_761, x_761, x_761));
  let x_764 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_768 : f32 = u_xlat40;
  let x_770 : f32 = u_xlat40;
  u_xlat31 = ((vec2<f32>(x_768, x_768) * vec2<f32>(x_770, x_770)) + vec2<f32>(-1.0f, 1.0f));
  let x_776 : f32 = u_xlat31.y;
  u_xlat38 = (1.0f / x_776);
  let x_779 : vec4<f32> = u_xlat0;
  let x_782 : f32 = u_xlat39;
  u_xlat10 = (-(vec3<f32>(x_779.x, x_779.y, x_779.z)) + vec3<f32>(x_782, x_782, x_782));
  let x_785 : f32 = u_xlat17;
  let x_787 : vec3<f32> = u_xlat10;
  let x_789 : vec4<f32> = u_xlat0;
  u_xlat10 = ((vec3<f32>(x_785, x_785, x_785) * x_787) + vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : f32 = u_xlat38;
  let x_794 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_792, x_792, x_792) * x_794);
  let x_796 : vec4<f32> = u_xlat9;
  let x_798 : vec3<f32> = u_xlat10;
  let x_799 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) * x_798);
  let x_800 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat6;
  let x_804 : vec3<f32> = u_xlat13;
  let x_806 : vec4<f32> = u_xlat9;
  let x_808 : vec3<f32> = ((vec3<f32>(x_802.x, x_802.y, x_802.z) * x_804) + vec3<f32>(x_806.x, x_806.y, x_806.z));
  let x_809 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_812 : f32 = u_xlat5.x;
  let x_814 : f32 = x_106.unity_LightData.z;
  u_xlat38 = (x_812 * x_814);
  let x_816 : vec3<f32> = u_xlat4;
  let x_818 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat39 = dot(x_816, vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : f32 = u_xlat39;
  u_xlat39 = clamp(x_821, 0.0f, 1.0f);
  let x_823 : f32 = u_xlat38;
  let x_824 : f32 = u_xlat39;
  u_xlat38 = (x_823 * x_824);
  let x_826 : f32 = u_xlat38;
  let x_828 : vec3<f32> = u_xlat8;
  let x_829 : vec3<f32> = (vec3<f32>(x_826, x_826, x_826) * x_828);
  let x_830 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec3<f32> = u_xlat3;
  let x_834 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat8 = (x_832 + vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec3<f32> = u_xlat8;
  let x_838 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(x_837, x_838);
  let x_840 : f32 = u_xlat38;
  u_xlat38 = max(x_840, 1.17549435e-37f);
  let x_843 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_843);
  let x_845 : f32 = u_xlat38;
  let x_847 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_845, x_845, x_845) * x_847);
  let x_849 : vec3<f32> = u_xlat4;
  let x_850 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(x_849, x_850);
  let x_852 : f32 = u_xlat38;
  u_xlat38 = clamp(x_852, 0.0f, 1.0f);
  let x_855 : vec4<f32> = x_44.x_MainLightPosition;
  let x_857 : vec3<f32> = u_xlat8;
  u_xlat39 = dot(vec3<f32>(x_855.x, x_855.y, x_855.z), x_857);
  let x_859 : f32 = u_xlat39;
  u_xlat39 = clamp(x_859, 0.0f, 1.0f);
  let x_861 : f32 = u_xlat38;
  let x_862 : f32 = u_xlat38;
  u_xlat38 = (x_861 * x_862);
  let x_864 : f32 = u_xlat38;
  let x_866 : f32 = u_xlat31.x;
  u_xlat38 = ((x_864 * x_866) + 1.000010014f);
  let x_870 : f32 = u_xlat39;
  let x_871 : f32 = u_xlat39;
  u_xlat39 = (x_870 * x_871);
  let x_873 : f32 = u_xlat38;
  let x_874 : f32 = u_xlat38;
  u_xlat38 = (x_873 * x_874);
  let x_876 : f32 = u_xlat39;
  u_xlat39 = max(x_876, 0.100000001f);
  let x_879 : f32 = u_xlat38;
  let x_880 : f32 = u_xlat39;
  u_xlat38 = (x_879 * x_880);
  let x_882 : f32 = u_xlat42;
  let x_883 : f32 = u_xlat38;
  u_xlat38 = (x_882 * x_883);
  let x_885 : f32 = u_xlat41;
  let x_886 : f32 = u_xlat38;
  u_xlat38 = (x_885 / x_886);
  let x_888 : vec4<f32> = u_xlat0;
  let x_890 : f32 = u_xlat38;
  let x_893 : vec3<f32> = u_xlat13;
  u_xlat8 = ((vec3<f32>(x_888.x, x_888.y, x_888.z) * vec3<f32>(x_890, x_890, x_890)) + x_893);
  let x_895 : vec4<f32> = u_xlat5;
  let x_897 : vec3<f32> = u_xlat8;
  let x_898 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) * x_897);
  let x_899 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_902 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_904 : f32 = x_106.unity_LightData.y;
  u_xlat38 = min(x_902, x_904);
  let x_907 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_907));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_919 : u32 = u_xlatu_loop_1;
    let x_920 : u32 = u_xlatu38;
    if ((x_919 < x_920)) {
    } else {
      break;
    }
    let x_923 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_923 >> 2u);
    let x_926 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_926 & 3u));
    let x_929 : u32 = u_xlatu40;
    let x_932 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_929)];
    let x_942 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_947 : vec4<u32> = indexable[x_942];
    u_xlat40 = dot(x_932, bitcast<vec4<f32>>(x_947));
    let x_951 : f32 = u_xlat40;
    u_xlati40 = i32(x_951);
    let x_953 : vec3<f32> = vs_TEXCOORD1;
    let x_965 : i32 = u_xlati40;
    let x_967 : vec4<f32> = x_964.x_AdditionalLightsPosition[x_965];
    let x_970 : i32 = u_xlati40;
    let x_972 : vec4<f32> = x_964.x_AdditionalLightsPosition[x_970];
    let x_974 : vec3<f32> = ((-(x_953) * vec3<f32>(x_967.w, x_967.w, x_967.w)) + vec3<f32>(x_972.x, x_972.y, x_972.z));
    let x_975 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
    let x_978 : vec4<f32> = u_xlat9;
    let x_980 : vec4<f32> = u_xlat9;
    u_xlat43 = dot(vec3<f32>(x_978.x, x_978.y, x_978.z), vec3<f32>(x_980.x, x_980.y, x_980.z));
    let x_983 : f32 = u_xlat43;
    u_xlat43 = max(x_983, 6.10351562e-05f);
    let x_987 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_987);
    let x_989 : f32 = u_xlat44;
    let x_991 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_989, x_989, x_989) * vec3<f32>(x_991.x, x_991.y, x_991.z));
    let x_995 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_995);
    let x_997 : f32 = u_xlat43;
    let x_998 : i32 = u_xlati40;
    let x_1000 : f32 = x_964.x_AdditionalLightsAttenuation[x_998].x;
    u_xlat43 = (x_997 * x_1000);
    let x_1002 : f32 = u_xlat43;
    let x_1004 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1002) * x_1004) + 1.0f);
    let x_1007 : f32 = u_xlat43;
    u_xlat43 = max(x_1007, 0.0f);
    let x_1009 : f32 = u_xlat43;
    let x_1010 : f32 = u_xlat43;
    u_xlat43 = (x_1009 * x_1010);
    let x_1012 : f32 = u_xlat43;
    let x_1013 : f32 = u_xlat45;
    u_xlat43 = (x_1012 * x_1013);
    let x_1015 : i32 = u_xlati40;
    let x_1017 : vec4<f32> = x_964.x_AdditionalLightsSpotDir[x_1015];
    let x_1019 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1017.x, x_1017.y, x_1017.z), x_1019);
    let x_1021 : f32 = u_xlat45;
    let x_1022 : i32 = u_xlati40;
    let x_1024 : f32 = x_964.x_AdditionalLightsAttenuation[x_1022].z;
    let x_1026 : i32 = u_xlati40;
    let x_1028 : f32 = x_964.x_AdditionalLightsAttenuation[x_1026].w;
    u_xlat45 = ((x_1021 * x_1024) + x_1028);
    let x_1030 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1030, 0.0f, 1.0f);
    let x_1032 : f32 = u_xlat45;
    let x_1033 : f32 = u_xlat45;
    u_xlat45 = (x_1032 * x_1033);
    let x_1035 : f32 = u_xlat43;
    let x_1036 : f32 = u_xlat45;
    u_xlat43 = (x_1035 * x_1036);
    let x_1039 : f32 = u_xlat19;
    let x_1041 : i32 = u_xlati40;
    let x_1043 : vec4<f32> = x_964.x_AdditionalLightsColor[x_1041];
    u_xlat11 = (vec3<f32>(x_1039, x_1039, x_1039) * vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
    let x_1046 : vec3<f32> = u_xlat4;
    let x_1047 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(x_1046, x_1047);
    let x_1049 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1049, 0.0f, 1.0f);
    let x_1051 : f32 = u_xlat40;
    let x_1052 : f32 = u_xlat43;
    u_xlat40 = (x_1051 * x_1052);
    let x_1054 : f32 = u_xlat40;
    let x_1056 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1054, x_1054, x_1054) * x_1056);
    let x_1058 : vec4<f32> = u_xlat9;
    let x_1060 : f32 = u_xlat44;
    let x_1063 : vec3<f32> = u_xlat3;
    let x_1064 : vec3<f32> = ((vec3<f32>(x_1058.x, x_1058.y, x_1058.z) * vec3<f32>(x_1060, x_1060, x_1060)) + x_1063);
    let x_1065 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
    let x_1067 : vec4<f32> = u_xlat9;
    let x_1069 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1067.x, x_1067.y, x_1067.z), vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
    let x_1072 : f32 = u_xlat40;
    u_xlat40 = max(x_1072, 1.17549435e-37f);
    let x_1074 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1074);
    let x_1076 : f32 = u_xlat40;
    let x_1078 : vec4<f32> = u_xlat9;
    let x_1080 : vec3<f32> = (vec3<f32>(x_1076, x_1076, x_1076) * vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
    let x_1081 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
    let x_1083 : vec3<f32> = u_xlat4;
    let x_1084 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(x_1083, vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
    let x_1087 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1087, 0.0f, 1.0f);
    let x_1089 : vec3<f32> = u_xlat10;
    let x_1090 : vec4<f32> = u_xlat9;
    u_xlat43 = dot(x_1089, vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
    let x_1093 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1093, 0.0f, 1.0f);
    let x_1095 : f32 = u_xlat40;
    let x_1096 : f32 = u_xlat40;
    u_xlat40 = (x_1095 * x_1096);
    let x_1098 : f32 = u_xlat40;
    let x_1100 : f32 = u_xlat31.x;
    u_xlat40 = ((x_1098 * x_1100) + 1.000010014f);
    let x_1103 : f32 = u_xlat43;
    let x_1104 : f32 = u_xlat43;
    u_xlat43 = (x_1103 * x_1104);
    let x_1106 : f32 = u_xlat40;
    let x_1107 : f32 = u_xlat40;
    u_xlat40 = (x_1106 * x_1107);
    let x_1109 : f32 = u_xlat43;
    u_xlat43 = max(x_1109, 0.100000001f);
    let x_1111 : f32 = u_xlat40;
    let x_1112 : f32 = u_xlat43;
    u_xlat40 = (x_1111 * x_1112);
    let x_1114 : f32 = u_xlat42;
    let x_1115 : f32 = u_xlat40;
    u_xlat40 = (x_1114 * x_1115);
    let x_1117 : f32 = u_xlat41;
    let x_1118 : f32 = u_xlat40;
    u_xlat40 = (x_1117 / x_1118);
    let x_1120 : vec4<f32> = u_xlat0;
    let x_1122 : f32 = u_xlat40;
    let x_1125 : vec3<f32> = u_xlat13;
    let x_1126 : vec3<f32> = ((vec3<f32>(x_1120.x, x_1120.y, x_1120.z) * vec3<f32>(x_1122, x_1122, x_1122)) + x_1125);
    let x_1127 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
    let x_1129 : vec4<f32> = u_xlat9;
    let x_1131 : vec3<f32> = u_xlat11;
    let x_1133 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1129.x, x_1129.y, x_1129.z) * x_1131) + x_1133);

    continuing {
      let x_1135 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1135 + bitcast<u32>(1i));
    }
  }
  let x_1137 : vec4<f32> = u_xlat6;
  let x_1139 : vec3<f32> = u_xlat7;
  let x_1142 : vec4<f32> = u_xlat5;
  let x_1144 : vec3<f32> = ((vec3<f32>(x_1137.x, x_1137.y, x_1137.z) * vec3<f32>(x_1139.x, x_1139.x, x_1139.x)) + vec3<f32>(x_1142.x, x_1142.y, x_1142.z));
  let x_1145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : vec3<f32> = u_xlat8;
  let x_1148 : vec4<f32> = u_xlat0;
  let x_1150 : vec3<f32> = (x_1147 + vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec3<f32> = u_xlat2;
  let x_1155 : vec4<f32> = x_57.x_EmissionColor;
  let x_1158 : vec4<f32> = u_xlat0;
  let x_1160 : vec3<f32> = ((x_1153 * vec3<f32>(x_1155.x, x_1155.y, x_1155.z)) + vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
  let x_1161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
  let x_1163 : f32 = u_xlat36;
  let x_1164 : f32 = u_xlat36;
  u_xlat36 = (x_1163 * -(x_1164));
  let x_1167 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1167);
  let x_1169 : vec4<f32> = u_xlat0;
  let x_1173 : vec4<f32> = x_44.unity_FogColor;
  let x_1176 : vec3<f32> = (vec3<f32>(x_1169.x, x_1169.y, x_1169.z) + -(vec3<f32>(x_1173.x, x_1173.y, x_1173.z)));
  let x_1177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
  let x_1181 : f32 = u_xlat36;
  let x_1183 : vec4<f32> = u_xlat0;
  let x_1187 : vec4<f32> = x_44.unity_FogColor;
  let x_1189 : vec3<f32> = ((vec3<f32>(x_1181, x_1181, x_1181) * vec3<f32>(x_1183.x, x_1183.y, x_1183.z)) + vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
  let x_1190 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
  let x_1195 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1195 == 1.0f);
  let x_1197 : bool = u_xlatb0;
  if (x_1197) {
    let x_1202 : f32 = u_xlat1.x;
    x_1198 = x_1202;
  } else {
    x_1198 = 1.0f;
  }
  let x_1204 : f32 = x_1198;
  SV_Target0.w = x_1204;
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

