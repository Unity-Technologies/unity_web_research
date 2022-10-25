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

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_EmissionMap : sampler;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_106 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_223 : MainLightShadows;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_991 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlatb38 : bool;
  var x_112 : f32;
  var u_xlatb36 : bool;
  var u_xlat38 : f32;
  var u_xlat4 : vec3<f32>;
  var x_171 : f32;
  var x_183 : f32;
  var x_195 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
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
  var x_661 : f32;
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
  var x_1210 : f32;
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
  let x_84 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_93 : vec4<f32> = u_xlat3;
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
  let x_151 : vec3<f32> = (-(x_145) + x_150);
  let x_152 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : vec4<f32> = u_xlat3;
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat38 = dot(vec3<f32>(x_155.x, x_155.y, x_155.z), vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_160 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_160);
  let x_162 : f32 = u_xlat38;
  let x_164 : vec4<f32> = u_xlat3;
  let x_166 : vec3<f32> = (vec3<f32>(x_162, x_162, x_162) * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_170 : bool = u_xlatb36;
  if (x_170) {
    let x_175 : f32 = u_xlat3.x;
    x_171 = x_175;
  } else {
    let x_179 : f32 = x_44.unity_MatrixV[0i].z;
    x_171 = x_179;
  }
  let x_180 : f32 = x_171;
  u_xlat4.x = x_180;
  let x_182 : bool = u_xlatb36;
  if (x_182) {
    let x_188 : f32 = u_xlat3.y;
    x_183 = x_188;
  } else {
    let x_191 : f32 = x_44.unity_MatrixV[1i].z;
    x_183 = x_191;
  }
  let x_192 : f32 = x_183;
  u_xlat4.y = x_192;
  let x_194 : bool = u_xlatb36;
  if (x_194) {
    let x_199 : f32 = u_xlat3.z;
    x_195 = x_199;
  } else {
    let x_202 : f32 = x_44.unity_MatrixV[2i].z;
    x_195 = x_202;
  }
  let x_203 : f32 = x_195;
  u_xlat4.z = x_203;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  let x_207 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_206, x_207);
  let x_209 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_209);
  let x_211 : f32 = u_xlat36;
  let x_213 : vec3<f32> = vs_TEXCOORD2;
  let x_214 : vec3<f32> = (vec3<f32>(x_211, x_211, x_211) * x_213);
  let x_215 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : vec3<f32> = vs_TEXCOORD1;
  let x_225 : vec4<f32> = x_223.x_CascadeShadowSplitSpheres0;
  let x_228 : vec3<f32> = (x_218 + -(vec3<f32>(x_225.x, x_225.y, x_225.z)));
  let x_229 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : vec3<f32> = vs_TEXCOORD1;
  let x_234 : vec4<f32> = x_223.x_CascadeShadowSplitSpheres1;
  let x_237 : vec3<f32> = (x_232 + -(vec3<f32>(x_234.x, x_234.y, x_234.z)));
  let x_238 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_241 : vec3<f32> = vs_TEXCOORD1;
  let x_244 : vec4<f32> = x_223.x_CascadeShadowSplitSpheres2;
  let x_247 : vec3<f32> = (x_241 + -(vec3<f32>(x_244.x, x_244.y, x_244.z)));
  let x_248 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_251 : vec3<f32> = vs_TEXCOORD1;
  let x_254 : vec4<f32> = x_223.x_CascadeShadowSplitSpheres3;
  let x_257 : vec3<f32> = (x_251 + -(vec3<f32>(x_254.x, x_254.y, x_254.z)));
  let x_258 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat5;
  let x_262 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_260.x, x_260.y, x_260.z), vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_266 : vec4<f32> = u_xlat6;
  let x_268 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_272 : vec4<f32> = u_xlat7;
  let x_274 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_272.x, x_272.y, x_272.z), vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_278 : vec4<f32> = u_xlat8;
  let x_280 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_287 : vec4<f32> = u_xlat5;
  let x_290 : vec4<f32> = x_223.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_287 < x_290);
  let x_293 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_293);
  let x_297 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_297);
  let x_301 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_301);
  let x_305 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_305);
  let x_309 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_309);
  let x_315 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_315);
  let x_319 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_319);
  let x_322 : vec4<f32> = u_xlat5;
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) + vec3<f32>(x_324.y, x_324.z, x_324.w));
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat5;
  let x_332 : vec3<f32> = max(vec3<f32>(x_329.x, x_329.y, x_329.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_333 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_333.x, x_332.x, x_332.y, x_332.z);
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_335, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_341 : f32 = u_xlat36;
  u_xlat36 = (-(x_341) + 4.0f);
  let x_346 : f32 = u_xlat36;
  u_xlatu36 = u32(x_346);
  let x_350 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_350) << bitcast<u32>(2i));
  let x_353 : vec3<f32> = vs_TEXCOORD1;
  let x_355 : i32 = u_xlati36;
  let x_358 : i32 = u_xlati36;
  let x_362 : vec4<f32> = x_223.x_MainLightWorldToShadow[((x_355 + 1i) / 4i)][((x_358 + 1i) % 4i)];
  let x_364 : vec3<f32> = (vec3<f32>(x_353.y, x_353.y, x_353.y) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_367 : i32 = u_xlati36;
  let x_369 : i32 = u_xlati36;
  let x_372 : vec4<f32> = x_223.x_MainLightWorldToShadow[(x_367 / 4i)][(x_369 % 4i)];
  let x_374 : vec3<f32> = vs_TEXCOORD1;
  let x_377 : vec4<f32> = u_xlat5;
  let x_379 : vec3<f32> = ((vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_374.x, x_374.x, x_374.x)) + vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : i32 = u_xlati36;
  let x_385 : i32 = u_xlati36;
  let x_389 : vec4<f32> = x_223.x_MainLightWorldToShadow[((x_382 + 2i) / 4i)][((x_385 + 2i) % 4i)];
  let x_391 : vec3<f32> = vs_TEXCOORD1;
  let x_394 : vec4<f32> = u_xlat5;
  let x_396 : vec3<f32> = ((vec3<f32>(x_389.x, x_389.y, x_389.z) * vec3<f32>(x_391.z, x_391.z, x_391.z)) + vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat5;
  let x_401 : i32 = u_xlati36;
  let x_404 : i32 = u_xlati36;
  let x_408 : vec4<f32> = x_223.x_MainLightWorldToShadow[((x_401 + 3i) / 4i)][((x_404 + 3i) % 4i)];
  let x_410 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  u_xlat3.w = 1.0f;
  let x_416 : vec4<f32> = x_106.unity_SHAr;
  let x_417 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_416, x_417);
  let x_422 : vec4<f32> = x_106.unity_SHAg;
  let x_423 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_422, x_423);
  let x_428 : vec4<f32> = x_106.unity_SHAb;
  let x_429 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_428, x_429);
  let x_432 : vec4<f32> = u_xlat3;
  let x_434 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_432.y, x_432.z, x_432.z, x_432.x) * vec4<f32>(x_434.x, x_434.y, x_434.z, x_434.z));
  let x_439 : vec4<f32> = x_106.unity_SHBr;
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_439, x_440);
  let x_445 : vec4<f32> = x_106.unity_SHBg;
  let x_446 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_445, x_446);
  let x_451 : vec4<f32> = x_106.unity_SHBb;
  let x_452 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_451, x_452);
  let x_456 : f32 = u_xlat3.y;
  let x_458 : f32 = u_xlat3.y;
  u_xlat36 = (x_456 * x_458);
  let x_461 : f32 = u_xlat3.x;
  let x_463 : f32 = u_xlat3.x;
  let x_465 : f32 = u_xlat36;
  u_xlat36 = ((x_461 * x_463) + -(x_465));
  let x_470 : vec4<f32> = x_106.unity_SHC;
  let x_472 : f32 = u_xlat36;
  let x_475 : vec4<f32> = u_xlat8;
  let x_477 : vec3<f32> = ((vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(x_472, x_472, x_472)) + vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat6;
  let x_482 : vec4<f32> = u_xlat7;
  let x_484 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.z) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat6;
  let x_489 : vec3<f32> = max(vec3<f32>(x_487.x, x_487.y, x_487.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_490 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_494 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_495 : vec2<f32> = vec2<f32>(x_494.x, x_494.y);
  let x_499 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_495.x, x_495.y));
  let x_500 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_499.x, x_499.y, x_500.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat7;
  let x_504 : vec4<f32> = hlslcc_FragCoord;
  let x_506 : vec2<f32> = (vec2<f32>(x_502.x, x_502.y) * vec2<f32>(x_504.x, x_504.y));
  let x_507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
  let x_510 : f32 = u_xlat7.y;
  let x_513 : f32 = x_44.x_ScaleBiasRt.x;
  let x_516 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat36 = ((x_510 * x_513) + x_516);
  let x_518 : f32 = u_xlat36;
  u_xlat7.z = (-(x_518) + 1.0f);
  let x_523 : f32 = x_57.x_Metallic;
  u_xlat36 = ((-(x_523) * 0.959999979f) + 0.959999979f);
  let x_528 : f32 = u_xlat36;
  u_xlat38 = (-(x_528) + 1.0f);
  let x_532 : f32 = u_xlat36;
  let x_534 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec3<f32>(x_532, x_532, x_532) * vec3<f32>(x_534.y, x_534.z, x_534.w));
  let x_537 : vec4<f32> = u_xlat0;
  let x_540 : vec4<f32> = x_57.x_BaseColor;
  let x_545 : vec3<f32> = ((vec3<f32>(x_537.x, x_537.y, x_537.z) * vec3<f32>(x_540.x, x_540.y, x_540.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_546 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_549 : f32 = x_57.x_Metallic;
  let x_551 : f32 = x_57.x_Metallic;
  let x_553 : f32 = x_57.x_Metallic;
  let x_554 : vec3<f32> = vec3<f32>(x_549, x_551, x_553);
  let x_559 : vec4<f32> = u_xlat0;
  let x_564 : vec3<f32> = ((vec3<f32>(x_554.x, x_554.y, x_554.z) * vec3<f32>(x_559.x, x_559.y, x_559.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_565 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_568 : f32 = x_57.x_Smoothness;
  u_xlat36 = (-(x_568) + 1.0f);
  let x_572 : f32 = u_xlat36;
  let x_573 : f32 = u_xlat36;
  u_xlat39 = (x_572 * x_573);
  let x_575 : f32 = u_xlat39;
  u_xlat39 = max(x_575, 0.0078125f);
  let x_579 : f32 = u_xlat39;
  let x_580 : f32 = u_xlat39;
  u_xlat40 = (x_579 * x_580);
  let x_582 : f32 = u_xlat38;
  let x_584 : f32 = x_57.x_Smoothness;
  u_xlat38 = (x_582 + x_584);
  let x_586 : f32 = u_xlat38;
  u_xlat38 = clamp(x_586, 0.0f, 1.0f);
  let x_589 : f32 = u_xlat39;
  u_xlat41 = ((x_589 * 4.0f) + 2.0f);
  let x_598 : vec4<f32> = u_xlat7;
  let x_601 : f32 = x_44.x_GlobalMipBias.x;
  let x_602 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_598.x, x_598.z), x_601);
  u_xlat42 = x_602.x;
  let x_604 : f32 = u_xlat42;
  u_xlat7.x = (x_604 + -1.0f);
  let x_608 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_610 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_608 * x_610) + 1.0f);
  let x_614 : f32 = u_xlat42;
  u_xlat42 = min(x_614, 1.0f);
  let x_617 : vec4<f32> = u_xlat5;
  let x_618 : vec2<f32> = vec2<f32>(x_617.x, x_617.y);
  let x_620 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_618.x, x_618.y, x_620);
  let x_632 : vec3<f32> = txVec0;
  let x_634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_632.xy, x_632.z);
  u_xlat5.x = x_634;
  let x_638 : f32 = x_223.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_638) + 1.0f);
  let x_642 : f32 = u_xlat5.x;
  let x_644 : f32 = x_223.x_MainLightShadowParams.x;
  let x_646 : f32 = u_xlat17;
  u_xlat5.x = ((x_642 * x_644) + x_646);
  let x_651 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_651);
  let x_655 : f32 = u_xlat5.z;
  u_xlatb29 = (x_655 >= 1.0f);
  let x_657 : bool = u_xlatb29;
  let x_658 : bool = u_xlatb17;
  u_xlatb17 = (x_657 | x_658);
  let x_660 : bool = u_xlatb17;
  if (x_660) {
    x_661 = 1.0f;
  } else {
    let x_666 : f32 = u_xlat5.x;
    x_661 = x_666;
  }
  let x_667 : f32 = x_661;
  u_xlat5.x = x_667;
  let x_670 : vec3<f32> = vs_TEXCOORD1;
  let x_672 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat19 = (x_670 + -(x_672));
  let x_675 : vec3<f32> = u_xlat19;
  let x_676 : vec3<f32> = u_xlat19;
  u_xlat17 = dot(x_675, x_676);
  let x_678 : f32 = u_xlat17;
  let x_680 : f32 = x_223.x_MainLightShadowParams.z;
  let x_683 : f32 = x_223.x_MainLightShadowParams.w;
  u_xlat17 = ((x_678 * x_680) + x_683);
  let x_685 : f32 = u_xlat17;
  u_xlat17 = clamp(x_685, 0.0f, 1.0f);
  let x_689 : f32 = u_xlat5.x;
  u_xlat29 = (-(x_689) + 1.0f);
  let x_692 : f32 = u_xlat17;
  let x_693 : f32 = u_xlat29;
  let x_696 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_692 * x_693) + x_696);
  let x_699 : vec4<f32> = u_xlat7;
  let x_702 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat19 = (vec3<f32>(x_699.x, x_699.x, x_699.x) * vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec3<f32> = u_xlat4;
  let x_707 : vec4<f32> = u_xlat3;
  u_xlat17 = dot(-(x_705), vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_710 : f32 = u_xlat17;
  let x_711 : f32 = u_xlat17;
  u_xlat17 = (x_710 + x_711);
  let x_713 : vec4<f32> = u_xlat3;
  let x_715 : f32 = u_xlat17;
  let x_719 : vec3<f32> = u_xlat4;
  let x_721 : vec3<f32> = ((vec3<f32>(x_713.x, x_713.y, x_713.z) * -(vec3<f32>(x_715, x_715, x_715))) + -(x_719));
  let x_722 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec4<f32> = u_xlat3;
  let x_726 : vec3<f32> = u_xlat4;
  u_xlat17 = dot(vec3<f32>(x_724.x, x_724.y, x_724.z), x_726);
  let x_728 : f32 = u_xlat17;
  u_xlat17 = clamp(x_728, 0.0f, 1.0f);
  let x_730 : f32 = u_xlat17;
  u_xlat17 = (-(x_730) + 1.0f);
  let x_733 : f32 = u_xlat17;
  let x_734 : f32 = u_xlat17;
  u_xlat17 = (x_733 * x_734);
  let x_736 : f32 = u_xlat17;
  let x_737 : f32 = u_xlat17;
  u_xlat17 = (x_736 * x_737);
  let x_739 : f32 = u_xlat36;
  u_xlat29 = ((-(x_739) * 0.699999988f) + 1.700000048f);
  let x_745 : f32 = u_xlat36;
  let x_746 : f32 = u_xlat29;
  u_xlat36 = (x_745 * x_746);
  let x_748 : f32 = u_xlat36;
  u_xlat36 = (x_748 * 6.0f);
  let x_759 : vec4<f32> = u_xlat8;
  let x_761 : f32 = u_xlat36;
  let x_762 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_759.x, x_759.y, x_759.z), x_761);
  u_xlat8 = x_762;
  let x_764 : f32 = u_xlat8.w;
  u_xlat36 = (x_764 + -1.0f);
  let x_767 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_768 : f32 = u_xlat36;
  u_xlat36 = ((x_767 * x_768) + 1.0f);
  let x_771 : f32 = u_xlat36;
  u_xlat36 = max(x_771, 0.0f);
  let x_773 : f32 = u_xlat36;
  u_xlat36 = log2(x_773);
  let x_775 : f32 = u_xlat36;
  let x_777 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_775 * x_777);
  let x_779 : f32 = u_xlat36;
  u_xlat36 = exp2(x_779);
  let x_781 : f32 = u_xlat36;
  let x_783 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_781 * x_783);
  let x_785 : vec4<f32> = u_xlat8;
  let x_787 : f32 = u_xlat36;
  let x_789 : vec3<f32> = (vec3<f32>(x_785.x, x_785.y, x_785.z) * vec3<f32>(x_787, x_787, x_787));
  let x_790 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_794 : f32 = u_xlat39;
  let x_796 : f32 = u_xlat39;
  u_xlat9 = ((vec2<f32>(x_794, x_794) * vec2<f32>(x_796, x_796)) + vec2<f32>(-1.0f, 1.0f));
  let x_802 : f32 = u_xlat9.y;
  u_xlat36 = (1.0f / x_802);
  let x_805 : vec4<f32> = u_xlat0;
  let x_808 : f32 = u_xlat38;
  u_xlat21 = (-(vec3<f32>(x_805.x, x_805.y, x_805.z)) + vec3<f32>(x_808, x_808, x_808));
  let x_811 : f32 = u_xlat17;
  let x_813 : vec3<f32> = u_xlat21;
  let x_815 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_811, x_811, x_811) * x_813) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : f32 = u_xlat36;
  let x_820 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_818, x_818, x_818) * x_820);
  let x_822 : vec4<f32> = u_xlat8;
  let x_824 : vec3<f32> = u_xlat21;
  let x_825 : vec3<f32> = (vec3<f32>(x_822.x, x_822.y, x_822.z) * x_824);
  let x_826 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : vec4<f32> = u_xlat6;
  let x_830 : vec3<f32> = u_xlat13;
  let x_832 : vec4<f32> = u_xlat8;
  let x_834 : vec3<f32> = ((vec3<f32>(x_828.x, x_828.y, x_828.z) * x_830) + vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_838 : f32 = u_xlat5.x;
  let x_840 : f32 = x_106.unity_LightData.z;
  u_xlat36 = (x_838 * x_840);
  let x_842 : vec4<f32> = u_xlat3;
  let x_845 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_842.x, x_842.y, x_842.z), vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : f32 = u_xlat38;
  u_xlat38 = clamp(x_848, 0.0f, 1.0f);
  let x_850 : f32 = u_xlat36;
  let x_851 : f32 = u_xlat38;
  u_xlat36 = (x_850 * x_851);
  let x_853 : f32 = u_xlat36;
  let x_855 : vec3<f32> = u_xlat19;
  let x_856 : vec3<f32> = (vec3<f32>(x_853, x_853, x_853) * x_855);
  let x_857 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec3<f32> = u_xlat4;
  let x_861 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat19 = (x_859 + vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec3<f32> = u_xlat19;
  let x_865 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_864, x_865);
  let x_867 : f32 = u_xlat36;
  u_xlat36 = max(x_867, 1.17549435e-37f);
  let x_870 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_870);
  let x_872 : f32 = u_xlat36;
  let x_874 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_872, x_872, x_872) * x_874);
  let x_876 : vec4<f32> = u_xlat3;
  let x_878 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(vec3<f32>(x_876.x, x_876.y, x_876.z), x_878);
  let x_880 : f32 = u_xlat36;
  u_xlat36 = clamp(x_880, 0.0f, 1.0f);
  let x_883 : vec4<f32> = x_44.x_MainLightPosition;
  let x_885 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), x_885);
  let x_887 : f32 = u_xlat38;
  u_xlat38 = clamp(x_887, 0.0f, 1.0f);
  let x_889 : f32 = u_xlat36;
  let x_890 : f32 = u_xlat36;
  u_xlat36 = (x_889 * x_890);
  let x_892 : f32 = u_xlat36;
  let x_894 : f32 = u_xlat9.x;
  u_xlat36 = ((x_892 * x_894) + 1.000010014f);
  let x_898 : f32 = u_xlat38;
  let x_899 : f32 = u_xlat38;
  u_xlat38 = (x_898 * x_899);
  let x_901 : f32 = u_xlat36;
  let x_902 : f32 = u_xlat36;
  u_xlat36 = (x_901 * x_902);
  let x_904 : f32 = u_xlat38;
  u_xlat38 = max(x_904, 0.100000001f);
  let x_907 : f32 = u_xlat36;
  let x_908 : f32 = u_xlat38;
  u_xlat36 = (x_907 * x_908);
  let x_910 : f32 = u_xlat41;
  let x_911 : f32 = u_xlat36;
  u_xlat36 = (x_910 * x_911);
  let x_913 : f32 = u_xlat40;
  let x_914 : f32 = u_xlat36;
  u_xlat36 = (x_913 / x_914);
  let x_916 : vec4<f32> = u_xlat0;
  let x_918 : f32 = u_xlat36;
  let x_921 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(x_918, x_918, x_918)) + x_921);
  let x_923 : vec4<f32> = u_xlat5;
  let x_925 : vec3<f32> = u_xlat19;
  let x_926 : vec3<f32> = (vec3<f32>(x_923.x, x_923.y, x_923.z) * x_925);
  let x_927 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_930 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_932 : f32 = x_106.unity_LightData.y;
  u_xlat36 = min(x_930, x_932);
  let x_934 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_934));
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_946 : u32 = u_xlatu_loop_1;
    let x_947 : u32 = u_xlatu36;
    if ((x_946 < x_947)) {
    } else {
      break;
    }
    let x_950 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_950 >> 2u);
    let x_953 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_953 & 3u));
    let x_956 : u32 = u_xlatu39;
    let x_959 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_956)];
    let x_969 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_974 : vec4<u32> = indexable[x_969];
    u_xlat39 = dot(x_959, bitcast<vec4<f32>>(x_974));
    let x_978 : f32 = u_xlat39;
    u_xlati39 = i32(x_978);
    let x_980 : vec3<f32> = vs_TEXCOORD1;
    let x_992 : i32 = u_xlati39;
    let x_994 : vec4<f32> = x_991.x_AdditionalLightsPosition[x_992];
    let x_997 : i32 = u_xlati39;
    let x_999 : vec4<f32> = x_991.x_AdditionalLightsPosition[x_997];
    let x_1001 : vec3<f32> = ((-(x_980) * vec3<f32>(x_994.w, x_994.w, x_994.w)) + vec3<f32>(x_999.x, x_999.y, x_999.z));
    let x_1002 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
    let x_1005 : vec4<f32> = u_xlat8;
    let x_1007 : vec4<f32> = u_xlat8;
    u_xlat44 = dot(vec3<f32>(x_1005.x, x_1005.y, x_1005.z), vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
    let x_1010 : f32 = u_xlat44;
    u_xlat44 = max(x_1010, 6.10351562e-05f);
    let x_1013 : f32 = u_xlat44;
    u_xlat21.x = inverseSqrt(x_1013);
    let x_1017 : vec4<f32> = u_xlat8;
    let x_1019 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1017.x, x_1017.y, x_1017.z) * vec3<f32>(x_1019.x, x_1019.x, x_1019.x));
    let x_1023 : f32 = u_xlat44;
    u_xlat33 = (1.0f / x_1023);
    let x_1025 : f32 = u_xlat44;
    let x_1026 : i32 = u_xlati39;
    let x_1028 : f32 = x_991.x_AdditionalLightsAttenuation[x_1026].x;
    u_xlat44 = (x_1025 * x_1028);
    let x_1030 : f32 = u_xlat44;
    let x_1032 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1030) * x_1032) + 1.0f);
    let x_1035 : f32 = u_xlat44;
    u_xlat44 = max(x_1035, 0.0f);
    let x_1037 : f32 = u_xlat44;
    let x_1038 : f32 = u_xlat44;
    u_xlat44 = (x_1037 * x_1038);
    let x_1040 : f32 = u_xlat44;
    let x_1041 : f32 = u_xlat33;
    u_xlat44 = (x_1040 * x_1041);
    let x_1043 : i32 = u_xlati39;
    let x_1045 : vec4<f32> = x_991.x_AdditionalLightsSpotDir[x_1043];
    let x_1047 : vec3<f32> = u_xlat10;
    u_xlat33 = dot(vec3<f32>(x_1045.x, x_1045.y, x_1045.z), x_1047);
    let x_1049 : f32 = u_xlat33;
    let x_1050 : i32 = u_xlati39;
    let x_1052 : f32 = x_991.x_AdditionalLightsAttenuation[x_1050].z;
    let x_1054 : i32 = u_xlati39;
    let x_1056 : f32 = x_991.x_AdditionalLightsAttenuation[x_1054].w;
    u_xlat33 = ((x_1049 * x_1052) + x_1056);
    let x_1058 : f32 = u_xlat33;
    u_xlat33 = clamp(x_1058, 0.0f, 1.0f);
    let x_1060 : f32 = u_xlat33;
    let x_1061 : f32 = u_xlat33;
    u_xlat33 = (x_1060 * x_1061);
    let x_1063 : f32 = u_xlat44;
    let x_1064 : f32 = u_xlat33;
    u_xlat44 = (x_1063 * x_1064);
    let x_1067 : vec4<f32> = u_xlat7;
    let x_1069 : i32 = u_xlati39;
    let x_1071 : vec4<f32> = x_991.x_AdditionalLightsColor[x_1069];
    u_xlat11 = (vec3<f32>(x_1067.x, x_1067.x, x_1067.x) * vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
    let x_1074 : vec4<f32> = u_xlat3;
    let x_1076 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(vec3<f32>(x_1074.x, x_1074.y, x_1074.z), x_1076);
    let x_1078 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1078, 0.0f, 1.0f);
    let x_1080 : f32 = u_xlat39;
    let x_1081 : f32 = u_xlat44;
    u_xlat39 = (x_1080 * x_1081);
    let x_1083 : f32 = u_xlat39;
    let x_1085 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1083, x_1083, x_1083) * x_1085);
    let x_1087 : vec4<f32> = u_xlat8;
    let x_1089 : vec3<f32> = u_xlat21;
    let x_1092 : vec3<f32> = u_xlat4;
    let x_1093 : vec3<f32> = ((vec3<f32>(x_1087.x, x_1087.y, x_1087.z) * vec3<f32>(x_1089.x, x_1089.x, x_1089.x)) + x_1092);
    let x_1094 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
    let x_1096 : vec4<f32> = u_xlat8;
    let x_1098 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1096.x, x_1096.y, x_1096.z), vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
    let x_1101 : f32 = u_xlat39;
    u_xlat39 = max(x_1101, 1.17549435e-37f);
    let x_1103 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1103);
    let x_1105 : f32 = u_xlat39;
    let x_1107 : vec4<f32> = u_xlat8;
    let x_1109 : vec3<f32> = (vec3<f32>(x_1105, x_1105, x_1105) * vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
    let x_1110 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
    let x_1112 : vec4<f32> = u_xlat3;
    let x_1114 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1112.x, x_1112.y, x_1112.z), vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
    let x_1117 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1117, 0.0f, 1.0f);
    let x_1119 : vec3<f32> = u_xlat10;
    let x_1120 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1119, vec3<f32>(x_1120.x, x_1120.y, x_1120.z));
    let x_1125 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1125, 0.0f, 1.0f);
    let x_1128 : f32 = u_xlat39;
    let x_1129 : f32 = u_xlat39;
    u_xlat39 = (x_1128 * x_1129);
    let x_1131 : f32 = u_xlat39;
    let x_1133 : f32 = u_xlat9.x;
    u_xlat39 = ((x_1131 * x_1133) + 1.000010014f);
    let x_1137 : f32 = u_xlat8.x;
    let x_1139 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1137 * x_1139);
    let x_1142 : f32 = u_xlat39;
    let x_1143 : f32 = u_xlat39;
    u_xlat39 = (x_1142 * x_1143);
    let x_1146 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1146, 0.100000001f);
    let x_1149 : f32 = u_xlat39;
    let x_1151 : f32 = u_xlat8.x;
    u_xlat39 = (x_1149 * x_1151);
    let x_1153 : f32 = u_xlat41;
    let x_1154 : f32 = u_xlat39;
    u_xlat39 = (x_1153 * x_1154);
    let x_1156 : f32 = u_xlat40;
    let x_1157 : f32 = u_xlat39;
    u_xlat39 = (x_1156 / x_1157);
    let x_1159 : vec4<f32> = u_xlat0;
    let x_1161 : f32 = u_xlat39;
    let x_1164 : vec3<f32> = u_xlat13;
    let x_1165 : vec3<f32> = ((vec3<f32>(x_1159.x, x_1159.y, x_1159.z) * vec3<f32>(x_1161, x_1161, x_1161)) + x_1164);
    let x_1166 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
    let x_1168 : vec4<f32> = u_xlat8;
    let x_1170 : vec3<f32> = u_xlat11;
    let x_1172 : vec3<f32> = u_xlat19;
    u_xlat19 = ((vec3<f32>(x_1168.x, x_1168.y, x_1168.z) * x_1170) + x_1172);

    continuing {
      let x_1174 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1174 + bitcast<u32>(1i));
    }
  }
  let x_1176 : vec4<f32> = u_xlat6;
  let x_1178 : f32 = u_xlat42;
  let x_1181 : vec4<f32> = u_xlat5;
  let x_1183 : vec3<f32> = ((vec3<f32>(x_1176.x, x_1176.y, x_1176.z) * vec3<f32>(x_1178, x_1178, x_1178)) + vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  let x_1186 : vec3<f32> = u_xlat19;
  let x_1187 : vec4<f32> = u_xlat0;
  let x_1189 : vec3<f32> = (x_1186 + vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
  let x_1190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
  let x_1194 : vec3<f32> = u_xlat2;
  let x_1196 : vec4<f32> = x_57.x_EmissionColor;
  let x_1199 : vec4<f32> = u_xlat0;
  let x_1201 : vec3<f32> = ((x_1194 * vec3<f32>(x_1196.x, x_1196.y, x_1196.z)) + vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
  let x_1202 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
  let x_1207 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1207 == 1.0f);
  let x_1209 : bool = u_xlatb0;
  if (x_1209) {
    let x_1214 : f32 = u_xlat1.x;
    x_1210 = x_1214;
  } else {
    x_1210 = 1.0f;
  }
  let x_1216 : f32 = x_1210;
  SV_Target0.w = x_1216;
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

