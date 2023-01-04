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

@group(1) @binding(4) var<uniform> x_201 : MainLightShadows;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1004 : AdditionalLights;

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
  var u_xlat4 : vec4<f32>;
  var x_175 : vec3<f32>;
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
  var x_673 : f32;
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
  var x_1240 : f32;
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
    let x_180 : vec4<f32> = u_xlat4;
    x_175 = vec3<f32>(x_180.x, x_180.y, x_180.z);
  }
  let x_182 : vec3<f32> = x_175;
  u_xlat3 = x_182;
  let x_184 : vec3<f32> = vs_TEXCOORD2;
  let x_185 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_184, x_185);
  let x_187 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat36;
  let x_191 : vec3<f32> = vs_TEXCOORD2;
  let x_192 : vec3<f32> = (vec3<f32>(x_189, x_189, x_189) * x_191);
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec3<f32> = vs_TEXCOORD1;
  let x_203 : vec4<f32> = x_201.x_CascadeShadowSplitSpheres0;
  let x_206 : vec3<f32> = (x_196 + -(vec3<f32>(x_203.x, x_203.y, x_203.z)));
  let x_207 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_210 : vec3<f32> = vs_TEXCOORD1;
  let x_212 : vec4<f32> = x_201.x_CascadeShadowSplitSpheres1;
  let x_215 : vec3<f32> = (x_210 + -(vec3<f32>(x_212.x, x_212.y, x_212.z)));
  let x_216 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_219 : vec3<f32> = vs_TEXCOORD1;
  let x_222 : vec4<f32> = x_201.x_CascadeShadowSplitSpheres2;
  let x_225 : vec3<f32> = (x_219 + -(vec3<f32>(x_222.x, x_222.y, x_222.z)));
  let x_226 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_229 : vec3<f32> = vs_TEXCOORD1;
  let x_232 : vec4<f32> = x_201.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_229 + -(vec3<f32>(x_232.x, x_232.y, x_232.z)));
  let x_236 : vec4<f32> = u_xlat5;
  let x_238 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_236.x, x_236.y, x_236.z), vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_242 : vec4<f32> = u_xlat6;
  let x_244 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_248 : vec4<f32> = u_xlat7;
  let x_250 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_248.x, x_248.y, x_248.z), vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_254 : vec3<f32> = u_xlat8;
  let x_255 : vec3<f32> = u_xlat8;
  u_xlat5.w = dot(x_254, x_255);
  let x_261 : vec4<f32> = u_xlat5;
  let x_264 : vec4<f32> = x_201.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_261 < x_264);
  let x_267 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_267);
  let x_271 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_271);
  let x_275 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_275);
  let x_279 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_279);
  let x_283 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_283);
  let x_289 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_289);
  let x_293 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_293);
  let x_296 : vec4<f32> = u_xlat5;
  let x_298 : vec4<f32> = u_xlat6;
  let x_300 : vec3<f32> = (vec3<f32>(x_296.x, x_296.y, x_296.z) + vec3<f32>(x_298.y, x_298.z, x_298.w));
  let x_301 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat5;
  let x_306 : vec3<f32> = max(vec3<f32>(x_303.x, x_303.y, x_303.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_307 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_307.x, x_306.x, x_306.y, x_306.z);
  let x_309 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_309, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_315 : f32 = u_xlat36;
  u_xlat36 = (-(x_315) + 4.0f);
  let x_320 : f32 = u_xlat36;
  u_xlatu36 = u32(x_320);
  let x_324 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_324) << bitcast<u32>(2i));
  let x_327 : vec3<f32> = vs_TEXCOORD1;
  let x_329 : i32 = u_xlati36;
  let x_332 : i32 = u_xlati36;
  let x_336 : vec4<f32> = x_201.x_MainLightWorldToShadow[((x_329 + 1i) / 4i)][((x_332 + 1i) % 4i)];
  let x_338 : vec3<f32> = (vec3<f32>(x_327.y, x_327.y, x_327.y) * vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : i32 = u_xlati36;
  let x_343 : i32 = u_xlati36;
  let x_346 : vec4<f32> = x_201.x_MainLightWorldToShadow[(x_341 / 4i)][(x_343 % 4i)];
  let x_348 : vec3<f32> = vs_TEXCOORD1;
  let x_351 : vec4<f32> = u_xlat5;
  let x_353 : vec3<f32> = ((vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_348.x, x_348.x, x_348.x)) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : i32 = u_xlati36;
  let x_359 : i32 = u_xlati36;
  let x_363 : vec4<f32> = x_201.x_MainLightWorldToShadow[((x_356 + 2i) / 4i)][((x_359 + 2i) % 4i)];
  let x_365 : vec3<f32> = vs_TEXCOORD1;
  let x_368 : vec4<f32> = u_xlat5;
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.z, x_365.z, x_365.z)) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat5;
  let x_375 : i32 = u_xlati36;
  let x_378 : i32 = u_xlati36;
  let x_382 : vec4<f32> = x_201.x_MainLightWorldToShadow[((x_375 + 3i) / 4i)][((x_378 + 3i) % 4i)];
  let x_384 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.z) + vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_388 : f32 = vs_TEXCOORD1.y;
  let x_390 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_388 * x_390);
  let x_393 : f32 = x_44.unity_MatrixV[0i].z;
  let x_395 : f32 = vs_TEXCOORD1.x;
  let x_397 : f32 = u_xlat36;
  u_xlat36 = ((x_393 * x_395) + x_397);
  let x_400 : f32 = x_44.unity_MatrixV[2i].z;
  let x_402 : f32 = vs_TEXCOORD1.z;
  let x_404 : f32 = u_xlat36;
  u_xlat36 = ((x_400 * x_402) + x_404);
  let x_406 : f32 = u_xlat36;
  let x_408 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_406 + x_408);
  let x_410 : f32 = u_xlat36;
  let x_414 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_410) + -(x_414));
  let x_417 : f32 = u_xlat36;
  u_xlat36 = max(x_417, 0.0f);
  let x_419 : f32 = u_xlat36;
  let x_422 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_419 * x_422);
  u_xlat4.w = 1.0f;
  let x_427 : vec4<f32> = x_106.unity_SHAr;
  let x_428 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_427, x_428);
  let x_433 : vec4<f32> = x_106.unity_SHAg;
  let x_434 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_433, x_434);
  let x_439 : vec4<f32> = x_106.unity_SHAb;
  let x_440 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_439, x_440);
  let x_443 : vec4<f32> = u_xlat4;
  let x_445 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_443.y, x_443.z, x_443.z, x_443.x) * vec4<f32>(x_445.x, x_445.y, x_445.z, x_445.z));
  let x_450 : vec4<f32> = x_106.unity_SHBr;
  let x_451 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_450, x_451);
  let x_456 : vec4<f32> = x_106.unity_SHBg;
  let x_457 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_456, x_457);
  let x_462 : vec4<f32> = x_106.unity_SHBb;
  let x_463 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_462, x_463);
  let x_467 : f32 = u_xlat4.y;
  let x_469 : f32 = u_xlat4.y;
  u_xlat38 = (x_467 * x_469);
  let x_472 : f32 = u_xlat4.x;
  let x_474 : f32 = u_xlat4.x;
  let x_476 : f32 = u_xlat38;
  u_xlat38 = ((x_472 * x_474) + -(x_476));
  let x_481 : vec4<f32> = x_106.unity_SHC;
  let x_483 : f32 = u_xlat38;
  let x_486 : vec3<f32> = u_xlat8;
  let x_487 : vec3<f32> = ((vec3<f32>(x_481.x, x_481.y, x_481.z) * vec3<f32>(x_483, x_483, x_483)) + x_486);
  let x_488 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : vec4<f32> = u_xlat6;
  let x_492 : vec4<f32> = u_xlat7;
  let x_494 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) + vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_495 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat6;
  let x_499 : vec3<f32> = max(vec3<f32>(x_497.x, x_497.y, x_497.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_500 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_504 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_505 : vec2<f32> = vec2<f32>(x_504.x, x_504.y);
  let x_509 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_505.x, x_505.y));
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : vec4<f32> = hlslcc_FragCoord;
  let x_516 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) * vec2<f32>(x_514.x, x_514.y));
  let x_517 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
  let x_520 : f32 = u_xlat7.y;
  let x_523 : f32 = x_44.x_ScaleBiasRt.x;
  let x_526 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat38 = ((x_520 * x_523) + x_526);
  let x_528 : f32 = u_xlat38;
  u_xlat7.z = (-(x_528) + 1.0f);
  let x_533 : f32 = x_57.x_Metallic;
  u_xlat38 = ((-(x_533) * 0.959999979f) + 0.959999979f);
  let x_539 : f32 = u_xlat38;
  u_xlat39 = (-(x_539) + 1.0f);
  let x_543 : vec4<f32> = u_xlat1;
  let x_545 : f32 = u_xlat38;
  u_xlat13 = (vec3<f32>(x_543.y, x_543.z, x_543.w) * vec3<f32>(x_545, x_545, x_545));
  let x_548 : vec4<f32> = u_xlat0;
  let x_551 : vec4<f32> = x_57.x_BaseColor;
  let x_556 : vec3<f32> = ((vec3<f32>(x_548.x, x_548.y, x_548.z) * vec3<f32>(x_551.x, x_551.y, x_551.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_557 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_560 : f32 = x_57.x_Metallic;
  let x_562 : f32 = x_57.x_Metallic;
  let x_564 : f32 = x_57.x_Metallic;
  let x_565 : vec3<f32> = vec3<f32>(x_560, x_562, x_564);
  let x_570 : vec4<f32> = u_xlat0;
  let x_575 : vec3<f32> = ((vec3<f32>(x_565.x, x_565.y, x_565.z) * vec3<f32>(x_570.x, x_570.y, x_570.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_576 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_579 : f32 = x_57.x_Smoothness;
  u_xlat38 = (-(x_579) + 1.0f);
  let x_583 : f32 = u_xlat38;
  let x_584 : f32 = u_xlat38;
  u_xlat40 = (x_583 * x_584);
  let x_586 : f32 = u_xlat40;
  u_xlat40 = max(x_586, 0.0078125f);
  let x_590 : f32 = u_xlat40;
  let x_591 : f32 = u_xlat40;
  u_xlat41 = (x_590 * x_591);
  let x_593 : f32 = u_xlat39;
  let x_595 : f32 = x_57.x_Smoothness;
  u_xlat39 = (x_593 + x_595);
  let x_597 : f32 = u_xlat39;
  u_xlat39 = clamp(x_597, 0.0f, 1.0f);
  let x_600 : f32 = u_xlat40;
  u_xlat42 = ((x_600 * 4.0f) + 2.0f);
  let x_608 : vec4<f32> = u_xlat7;
  let x_611 : f32 = x_44.x_GlobalMipBias.x;
  let x_612 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_608.x, x_608.z), x_611);
  u_xlat7.x = x_612.x;
  let x_617 : f32 = u_xlat7.x;
  u_xlat19 = (x_617 + -1.0f);
  let x_620 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_621 : f32 = u_xlat19;
  u_xlat19 = ((x_620 * x_621) + 1.0f);
  let x_625 : f32 = u_xlat7.x;
  u_xlat7.x = min(x_625, 1.0f);
  let x_629 : vec4<f32> = u_xlat5;
  let x_630 : vec2<f32> = vec2<f32>(x_629.x, x_629.y);
  let x_632 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_630.x, x_630.y, x_632);
  let x_644 : vec3<f32> = txVec0;
  let x_646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_644.xy, x_644.z);
  u_xlat5.x = x_646;
  let x_650 : f32 = x_201.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_650) + 1.0f);
  let x_654 : f32 = u_xlat5.x;
  let x_656 : f32 = x_201.x_MainLightShadowParams.x;
  let x_658 : f32 = u_xlat17;
  u_xlat5.x = ((x_654 * x_656) + x_658);
  let x_663 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_663);
  let x_667 : f32 = u_xlat5.z;
  u_xlatb29 = (x_667 >= 1.0f);
  let x_669 : bool = u_xlatb29;
  let x_670 : bool = u_xlatb17;
  u_xlatb17 = (x_669 | x_670);
  let x_672 : bool = u_xlatb17;
  if (x_672) {
    x_673 = 1.0f;
  } else {
    let x_678 : f32 = u_xlat5.x;
    x_673 = x_678;
  }
  let x_679 : f32 = x_673;
  u_xlat5.x = x_679;
  let x_681 : vec3<f32> = vs_TEXCOORD1;
  let x_683 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat8 = (x_681 + -(x_683));
  let x_686 : vec3<f32> = u_xlat8;
  let x_687 : vec3<f32> = u_xlat8;
  u_xlat17 = dot(x_686, x_687);
  let x_689 : f32 = u_xlat17;
  let x_691 : f32 = x_201.x_MainLightShadowParams.z;
  let x_694 : f32 = x_201.x_MainLightShadowParams.w;
  u_xlat17 = ((x_689 * x_691) + x_694);
  let x_696 : f32 = u_xlat17;
  u_xlat17 = clamp(x_696, 0.0f, 1.0f);
  let x_700 : f32 = u_xlat5.x;
  u_xlat29 = (-(x_700) + 1.0f);
  let x_703 : f32 = u_xlat17;
  let x_704 : f32 = u_xlat29;
  let x_707 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_703 * x_704) + x_707);
  let x_710 : f32 = u_xlat19;
  let x_713 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat8 = (vec3<f32>(x_710, x_710, x_710) * vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec3<f32> = u_xlat3;
  let x_718 : vec4<f32> = u_xlat4;
  u_xlat17 = dot(-(x_716), vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : f32 = u_xlat17;
  let x_722 : f32 = u_xlat17;
  u_xlat17 = (x_721 + x_722);
  let x_725 : vec4<f32> = u_xlat4;
  let x_727 : f32 = u_xlat17;
  let x_731 : vec3<f32> = u_xlat3;
  let x_733 : vec3<f32> = ((vec3<f32>(x_725.x, x_725.y, x_725.z) * -(vec3<f32>(x_727, x_727, x_727))) + -(x_731));
  let x_734 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_736 : vec4<f32> = u_xlat4;
  let x_738 : vec3<f32> = u_xlat3;
  u_xlat17 = dot(vec3<f32>(x_736.x, x_736.y, x_736.z), x_738);
  let x_740 : f32 = u_xlat17;
  u_xlat17 = clamp(x_740, 0.0f, 1.0f);
  let x_742 : f32 = u_xlat17;
  u_xlat17 = (-(x_742) + 1.0f);
  let x_745 : f32 = u_xlat17;
  let x_746 : f32 = u_xlat17;
  u_xlat17 = (x_745 * x_746);
  let x_748 : f32 = u_xlat17;
  let x_749 : f32 = u_xlat17;
  u_xlat17 = (x_748 * x_749);
  let x_751 : f32 = u_xlat38;
  u_xlat29 = ((-(x_751) * 0.699999988f) + 1.700000048f);
  let x_757 : f32 = u_xlat38;
  let x_758 : f32 = u_xlat29;
  u_xlat38 = (x_757 * x_758);
  let x_760 : f32 = u_xlat38;
  u_xlat38 = (x_760 * 6.0f);
  let x_771 : vec4<f32> = u_xlat9;
  let x_773 : f32 = u_xlat38;
  let x_774 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_771.x, x_771.y, x_771.z), x_773);
  u_xlat9 = x_774;
  let x_776 : f32 = u_xlat9.w;
  u_xlat38 = (x_776 + -1.0f);
  let x_779 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_780 : f32 = u_xlat38;
  u_xlat38 = ((x_779 * x_780) + 1.0f);
  let x_783 : f32 = u_xlat38;
  u_xlat38 = max(x_783, 0.0f);
  let x_785 : f32 = u_xlat38;
  u_xlat38 = log2(x_785);
  let x_787 : f32 = u_xlat38;
  let x_789 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_787 * x_789);
  let x_791 : f32 = u_xlat38;
  u_xlat38 = exp2(x_791);
  let x_793 : f32 = u_xlat38;
  let x_795 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_793 * x_795);
  let x_797 : vec4<f32> = u_xlat9;
  let x_799 : f32 = u_xlat38;
  let x_801 : vec3<f32> = (vec3<f32>(x_797.x, x_797.y, x_797.z) * vec3<f32>(x_799, x_799, x_799));
  let x_802 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_806 : f32 = u_xlat40;
  let x_808 : f32 = u_xlat40;
  u_xlat31 = ((vec2<f32>(x_806, x_806) * vec2<f32>(x_808, x_808)) + vec2<f32>(-1.0f, 1.0f));
  let x_814 : f32 = u_xlat31.y;
  u_xlat38 = (1.0f / x_814);
  let x_817 : vec4<f32> = u_xlat0;
  let x_820 : f32 = u_xlat39;
  u_xlat10 = (-(vec3<f32>(x_817.x, x_817.y, x_817.z)) + vec3<f32>(x_820, x_820, x_820));
  let x_823 : f32 = u_xlat17;
  let x_825 : vec3<f32> = u_xlat10;
  let x_827 : vec4<f32> = u_xlat0;
  u_xlat10 = ((vec3<f32>(x_823, x_823, x_823) * x_825) + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : f32 = u_xlat38;
  let x_832 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_830, x_830, x_830) * x_832);
  let x_834 : vec4<f32> = u_xlat9;
  let x_836 : vec3<f32> = u_xlat10;
  let x_837 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) * x_836);
  let x_838 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat6;
  let x_842 : vec3<f32> = u_xlat13;
  let x_844 : vec4<f32> = u_xlat9;
  let x_846 : vec3<f32> = ((vec3<f32>(x_840.x, x_840.y, x_840.z) * x_842) + vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_850 : f32 = u_xlat5.x;
  let x_852 : f32 = x_106.unity_LightData.z;
  u_xlat38 = (x_850 * x_852);
  let x_854 : vec4<f32> = u_xlat4;
  let x_857 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat39 = dot(vec3<f32>(x_854.x, x_854.y, x_854.z), vec3<f32>(x_857.x, x_857.y, x_857.z));
  let x_860 : f32 = u_xlat39;
  u_xlat39 = clamp(x_860, 0.0f, 1.0f);
  let x_862 : f32 = u_xlat38;
  let x_863 : f32 = u_xlat39;
  u_xlat38 = (x_862 * x_863);
  let x_865 : f32 = u_xlat38;
  let x_867 : vec3<f32> = u_xlat8;
  let x_868 : vec3<f32> = (vec3<f32>(x_865, x_865, x_865) * x_867);
  let x_869 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec3<f32> = u_xlat3;
  let x_873 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat8 = (x_871 + vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : vec3<f32> = u_xlat8;
  let x_877 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(x_876, x_877);
  let x_879 : f32 = u_xlat38;
  u_xlat38 = max(x_879, 1.17549435e-37f);
  let x_882 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_882);
  let x_884 : f32 = u_xlat38;
  let x_886 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_884, x_884, x_884) * x_886);
  let x_888 : vec4<f32> = u_xlat4;
  let x_890 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_888.x, x_888.y, x_888.z), x_890);
  let x_892 : f32 = u_xlat38;
  u_xlat38 = clamp(x_892, 0.0f, 1.0f);
  let x_895 : vec4<f32> = x_44.x_MainLightPosition;
  let x_897 : vec3<f32> = u_xlat8;
  u_xlat39 = dot(vec3<f32>(x_895.x, x_895.y, x_895.z), x_897);
  let x_899 : f32 = u_xlat39;
  u_xlat39 = clamp(x_899, 0.0f, 1.0f);
  let x_901 : f32 = u_xlat38;
  let x_902 : f32 = u_xlat38;
  u_xlat38 = (x_901 * x_902);
  let x_904 : f32 = u_xlat38;
  let x_906 : f32 = u_xlat31.x;
  u_xlat38 = ((x_904 * x_906) + 1.000010014f);
  let x_910 : f32 = u_xlat39;
  let x_911 : f32 = u_xlat39;
  u_xlat39 = (x_910 * x_911);
  let x_913 : f32 = u_xlat38;
  let x_914 : f32 = u_xlat38;
  u_xlat38 = (x_913 * x_914);
  let x_916 : f32 = u_xlat39;
  u_xlat39 = max(x_916, 0.100000001f);
  let x_919 : f32 = u_xlat38;
  let x_920 : f32 = u_xlat39;
  u_xlat38 = (x_919 * x_920);
  let x_922 : f32 = u_xlat42;
  let x_923 : f32 = u_xlat38;
  u_xlat38 = (x_922 * x_923);
  let x_925 : f32 = u_xlat41;
  let x_926 : f32 = u_xlat38;
  u_xlat38 = (x_925 / x_926);
  let x_928 : vec4<f32> = u_xlat0;
  let x_930 : f32 = u_xlat38;
  let x_933 : vec3<f32> = u_xlat13;
  u_xlat8 = ((vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(x_930, x_930, x_930)) + x_933);
  let x_935 : vec4<f32> = u_xlat5;
  let x_937 : vec3<f32> = u_xlat8;
  let x_938 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) * x_937);
  let x_939 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_942 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_944 : f32 = x_106.unity_LightData.y;
  u_xlat38 = min(x_942, x_944);
  let x_947 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_947));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_959 : u32 = u_xlatu_loop_1;
    let x_960 : u32 = u_xlatu38;
    if ((x_959 < x_960)) {
    } else {
      break;
    }
    let x_963 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_963 >> 2u);
    let x_966 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_966 & 3u));
    let x_969 : u32 = u_xlatu40;
    let x_972 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_969)];
    let x_982 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_987 : vec4<u32> = indexable[x_982];
    u_xlat40 = dot(x_972, bitcast<vec4<f32>>(x_987));
    let x_991 : f32 = u_xlat40;
    u_xlati40 = i32(x_991);
    let x_993 : vec3<f32> = vs_TEXCOORD1;
    let x_1005 : i32 = u_xlati40;
    let x_1007 : vec4<f32> = x_1004.x_AdditionalLightsPosition[x_1005];
    let x_1010 : i32 = u_xlati40;
    let x_1012 : vec4<f32> = x_1004.x_AdditionalLightsPosition[x_1010];
    let x_1014 : vec3<f32> = ((-(x_993) * vec3<f32>(x_1007.w, x_1007.w, x_1007.w)) + vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
    let x_1015 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
    let x_1018 : vec4<f32> = u_xlat9;
    let x_1020 : vec4<f32> = u_xlat9;
    u_xlat43 = dot(vec3<f32>(x_1018.x, x_1018.y, x_1018.z), vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
    let x_1023 : f32 = u_xlat43;
    u_xlat43 = max(x_1023, 6.10351562e-05f);
    let x_1027 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_1027);
    let x_1029 : f32 = u_xlat44;
    let x_1031 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1029, x_1029, x_1029) * vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
    let x_1035 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_1035);
    let x_1037 : f32 = u_xlat43;
    let x_1038 : i32 = u_xlati40;
    let x_1040 : f32 = x_1004.x_AdditionalLightsAttenuation[x_1038].x;
    u_xlat43 = (x_1037 * x_1040);
    let x_1042 : f32 = u_xlat43;
    let x_1044 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1042) * x_1044) + 1.0f);
    let x_1047 : f32 = u_xlat43;
    u_xlat43 = max(x_1047, 0.0f);
    let x_1049 : f32 = u_xlat43;
    let x_1050 : f32 = u_xlat43;
    u_xlat43 = (x_1049 * x_1050);
    let x_1052 : f32 = u_xlat43;
    let x_1053 : f32 = u_xlat45;
    u_xlat43 = (x_1052 * x_1053);
    let x_1055 : i32 = u_xlati40;
    let x_1057 : vec4<f32> = x_1004.x_AdditionalLightsSpotDir[x_1055];
    let x_1059 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1057.x, x_1057.y, x_1057.z), x_1059);
    let x_1061 : f32 = u_xlat45;
    let x_1062 : i32 = u_xlati40;
    let x_1064 : f32 = x_1004.x_AdditionalLightsAttenuation[x_1062].z;
    let x_1066 : i32 = u_xlati40;
    let x_1068 : f32 = x_1004.x_AdditionalLightsAttenuation[x_1066].w;
    u_xlat45 = ((x_1061 * x_1064) + x_1068);
    let x_1070 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1070, 0.0f, 1.0f);
    let x_1072 : f32 = u_xlat45;
    let x_1073 : f32 = u_xlat45;
    u_xlat45 = (x_1072 * x_1073);
    let x_1075 : f32 = u_xlat43;
    let x_1076 : f32 = u_xlat45;
    u_xlat43 = (x_1075 * x_1076);
    let x_1079 : f32 = u_xlat19;
    let x_1081 : i32 = u_xlati40;
    let x_1083 : vec4<f32> = x_1004.x_AdditionalLightsColor[x_1081];
    u_xlat11 = (vec3<f32>(x_1079, x_1079, x_1079) * vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
    let x_1086 : vec4<f32> = u_xlat4;
    let x_1088 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(vec3<f32>(x_1086.x, x_1086.y, x_1086.z), x_1088);
    let x_1090 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1090, 0.0f, 1.0f);
    let x_1092 : f32 = u_xlat40;
    let x_1093 : f32 = u_xlat43;
    u_xlat40 = (x_1092 * x_1093);
    let x_1095 : f32 = u_xlat40;
    let x_1097 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1095, x_1095, x_1095) * x_1097);
    let x_1099 : vec4<f32> = u_xlat9;
    let x_1101 : f32 = u_xlat44;
    let x_1104 : vec3<f32> = u_xlat3;
    let x_1105 : vec3<f32> = ((vec3<f32>(x_1099.x, x_1099.y, x_1099.z) * vec3<f32>(x_1101, x_1101, x_1101)) + x_1104);
    let x_1106 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
    let x_1108 : vec4<f32> = u_xlat9;
    let x_1110 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1108.x, x_1108.y, x_1108.z), vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
    let x_1113 : f32 = u_xlat40;
    u_xlat40 = max(x_1113, 1.17549435e-37f);
    let x_1115 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1115);
    let x_1117 : f32 = u_xlat40;
    let x_1119 : vec4<f32> = u_xlat9;
    let x_1121 : vec3<f32> = (vec3<f32>(x_1117, x_1117, x_1117) * vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
    let x_1122 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
    let x_1124 : vec4<f32> = u_xlat4;
    let x_1126 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1124.x, x_1124.y, x_1124.z), vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
    let x_1129 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1129, 0.0f, 1.0f);
    let x_1131 : vec3<f32> = u_xlat10;
    let x_1132 : vec4<f32> = u_xlat9;
    u_xlat43 = dot(x_1131, vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
    let x_1135 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1135, 0.0f, 1.0f);
    let x_1137 : f32 = u_xlat40;
    let x_1138 : f32 = u_xlat40;
    u_xlat40 = (x_1137 * x_1138);
    let x_1140 : f32 = u_xlat40;
    let x_1142 : f32 = u_xlat31.x;
    u_xlat40 = ((x_1140 * x_1142) + 1.000010014f);
    let x_1145 : f32 = u_xlat43;
    let x_1146 : f32 = u_xlat43;
    u_xlat43 = (x_1145 * x_1146);
    let x_1148 : f32 = u_xlat40;
    let x_1149 : f32 = u_xlat40;
    u_xlat40 = (x_1148 * x_1149);
    let x_1151 : f32 = u_xlat43;
    u_xlat43 = max(x_1151, 0.100000001f);
    let x_1153 : f32 = u_xlat40;
    let x_1154 : f32 = u_xlat43;
    u_xlat40 = (x_1153 * x_1154);
    let x_1156 : f32 = u_xlat42;
    let x_1157 : f32 = u_xlat40;
    u_xlat40 = (x_1156 * x_1157);
    let x_1159 : f32 = u_xlat41;
    let x_1160 : f32 = u_xlat40;
    u_xlat40 = (x_1159 / x_1160);
    let x_1162 : vec4<f32> = u_xlat0;
    let x_1164 : f32 = u_xlat40;
    let x_1167 : vec3<f32> = u_xlat13;
    let x_1168 : vec3<f32> = ((vec3<f32>(x_1162.x, x_1162.y, x_1162.z) * vec3<f32>(x_1164, x_1164, x_1164)) + x_1167);
    let x_1169 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
    let x_1171 : vec4<f32> = u_xlat9;
    let x_1173 : vec3<f32> = u_xlat11;
    let x_1175 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1171.x, x_1171.y, x_1171.z) * x_1173) + x_1175);

    continuing {
      let x_1177 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1177 + bitcast<u32>(1i));
    }
  }
  let x_1179 : vec4<f32> = u_xlat6;
  let x_1181 : vec4<f32> = u_xlat7;
  let x_1184 : vec4<f32> = u_xlat5;
  let x_1186 : vec3<f32> = ((vec3<f32>(x_1179.x, x_1179.y, x_1179.z) * vec3<f32>(x_1181.x, x_1181.x, x_1181.x)) + vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1189 : vec3<f32> = u_xlat8;
  let x_1190 : vec4<f32> = u_xlat0;
  let x_1192 : vec3<f32> = (x_1189 + vec3<f32>(x_1190.x, x_1190.y, x_1190.z));
  let x_1193 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
  let x_1195 : vec3<f32> = u_xlat2;
  let x_1197 : vec4<f32> = x_57.x_EmissionColor;
  let x_1200 : vec4<f32> = u_xlat0;
  let x_1202 : vec3<f32> = ((x_1195 * vec3<f32>(x_1197.x, x_1197.y, x_1197.z)) + vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
  let x_1203 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1203.w);
  let x_1205 : f32 = u_xlat36;
  let x_1206 : f32 = u_xlat36;
  u_xlat36 = (x_1205 * -(x_1206));
  let x_1209 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1209);
  let x_1211 : vec4<f32> = u_xlat0;
  let x_1215 : vec4<f32> = x_44.unity_FogColor;
  let x_1218 : vec3<f32> = (vec3<f32>(x_1211.x, x_1211.y, x_1211.z) + -(vec3<f32>(x_1215.x, x_1215.y, x_1215.z)));
  let x_1219 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
  let x_1223 : f32 = u_xlat36;
  let x_1225 : vec4<f32> = u_xlat0;
  let x_1229 : vec4<f32> = x_44.unity_FogColor;
  let x_1231 : vec3<f32> = ((vec3<f32>(x_1223, x_1223, x_1223) * vec3<f32>(x_1225.x, x_1225.y, x_1225.z)) + vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
  let x_1232 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
  let x_1237 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1237 == 1.0f);
  let x_1239 : bool = u_xlatb0;
  if (x_1239) {
    let x_1244 : f32 = u_xlat1.x;
    x_1240 = x_1244;
  } else {
    x_1240 = 1.0f;
  }
  let x_1246 : f32 = x_1240;
  SV_Target0.w = x_1246;
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

