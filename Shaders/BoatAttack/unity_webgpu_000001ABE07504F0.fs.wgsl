struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_NightFade : f32,
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

@group(0) @binding(4) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(6) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(7) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_122 : UnityPerDraw;

@group(0) @binding(5) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_455 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_816 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlatb25 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlatb37 : bool;
  var u_xlat37 : f32;
  var u_xlatb38 : bool;
  var u_xlat38 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb36 : bool;
  var u_xlat5 : vec3<f32>;
  var x_260 : f32;
  var x_272 : f32;
  var x_284 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb18 : bool;
  var u_xlat18 : f32;
  var u_xlat42 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu36 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati3 : i32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec4<f32> = vs_INTERP3;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(Texture2D_52571568, samplerTexture2D_52571568, vec2<f32>(x_40.x, x_40.y), x_51);
  u_xlat0 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_60 : vec4<f32> = vs_INTERP3;
  let x_63 : f32 = x_45.x_GlobalMipBias.x;
  let x_64 : vec4<f32> = textureSampleBias(Texture2D_8BA53EED, samplerTexture2D_8BA53EED, vec2<f32>(x_60.x, x_60.y), x_63);
  let x_65 : vec3<f32> = vec3<f32>(x_64.x, x_64.y, x_64.w);
  let x_66 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_65.x, x_65.y, x_65.z, x_66.w);
  let x_70 : f32 = u_xlat1.x;
  let x_73 : f32 = u_xlat1.z;
  u_xlat1.x = (x_70 * x_73);
  let x_76 : vec4<f32> = u_xlat1;
  let x_83 : vec2<f32> = ((vec2<f32>(x_76.x, x_76.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_87 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec2<f32>(x_87.x, x_87.y), vec2<f32>(x_89.x, x_89.y));
  let x_92 : f32 = u_xlat36;
  u_xlat36 = min(x_92, 1.0f);
  let x_94 : f32 = u_xlat36;
  u_xlat36 = (-(x_94) + 1.0f);
  let x_97 : f32 = u_xlat36;
  u_xlat36 = sqrt(x_97);
  let x_99 : f32 = u_xlat36;
  u_xlat36 = max(x_99, 1.00000002e-16f);
  let x_108 : vec4<f32> = vs_INTERP3;
  let x_111 : f32 = x_45.x_GlobalMipBias.x;
  let x_112 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_108.x, x_108.y), x_111);
  u_xlat2 = vec3<f32>(x_112.x, x_112.y, x_112.z);
  let x_114 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_114 * vec3<f32>(14.0f, 14.0f, 14.0f));
  let x_127 : vec4<f32> = x_122.unity_ObjectToWorld[3i];
  let x_130 : vec4<f32> = x_122.unity_ObjectToWorld[3i];
  u_xlat25 = dot(vec3<f32>(x_127.x, x_127.y, x_127.z), vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_133);
  let x_135 : f32 = u_xlat25;
  u_xlat25 = fract(x_135);
  let x_137 : f32 = u_xlat25;
  let x_140 : f32 = x_45.x_NightFade;
  u_xlat25 = (x_137 + x_140);
  let x_145 : f32 = u_xlat25;
  u_xlatb25 = (x_145 >= 1.0f);
  let x_147 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_147);
  let x_156 : vec4<f32> = vs_INTERP3;
  let x_159 : f32 = x_45.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_156.x, x_156.y), x_159);
  u_xlat3 = vec3<f32>(x_160.x, x_160.w, x_160.y);
  let x_165 : f32 = vs_INTERP2.w;
  u_xlatb37 = (0.0f < x_165);
  let x_168 : bool = u_xlatb37;
  u_xlat37 = select(-1.0f, 1.0f, x_168);
  let x_172 : f32 = x_122.unity_WorldTransformParams.w;
  u_xlatb38 = (x_172 >= 0.0f);
  let x_175 : bool = u_xlatb38;
  u_xlat38 = select(-1.0f, 1.0f, x_175);
  let x_177 : f32 = u_xlat37;
  let x_178 : f32 = u_xlat38;
  u_xlat37 = (x_177 * x_178);
  let x_183 : vec3<f32> = vs_INTERP1;
  let x_185 : vec4<f32> = vs_INTERP2;
  u_xlat4 = (vec3<f32>(x_183.z, x_183.x, x_183.y) * vec3<f32>(x_185.y, x_185.z, x_185.x));
  let x_188 : vec3<f32> = vs_INTERP1;
  let x_190 : vec4<f32> = vs_INTERP2;
  let x_193 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_188.y, x_188.z, x_188.x) * vec3<f32>(x_190.z, x_190.x, x_190.y)) + -(x_193));
  let x_196 : f32 = u_xlat37;
  let x_198 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_196, x_196, x_196) * x_198);
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_200.y, x_200.y, x_200.y) * x_202);
  let x_204 : vec4<f32> = u_xlat1;
  let x_206 : vec4<f32> = vs_INTERP2;
  let x_209 : vec3<f32> = u_xlat4;
  let x_210 : vec3<f32> = ((vec3<f32>(x_204.x, x_204.x, x_204.x) * vec3<f32>(x_206.x, x_206.y, x_206.z)) + x_209);
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_211.z, x_210.z);
  let x_213 : f32 = u_xlat36;
  let x_215 : vec3<f32> = vs_INTERP1;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = ((vec3<f32>(x_213, x_213, x_213) * x_215) + vec3<f32>(x_217.x, x_217.y, x_217.w));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_219.z);
  let x_222 : vec4<f32> = u_xlat1;
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec3<f32>(x_222.x, x_222.y, x_222.w), vec3<f32>(x_224.x, x_224.y, x_224.w));
  let x_227 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_227);
  let x_229 : f32 = u_xlat36;
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = (vec3<f32>(x_229, x_229, x_229) * vec3<f32>(x_231.x, x_231.y, x_231.w));
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_233.x, x_233.y, x_234.z, x_233.z);
  let x_239 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb36 = (x_239 == 0.0f);
  let x_242 : vec3<f32> = vs_INTERP0;
  let x_247 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_242) + x_247);
  let x_249 : vec3<f32> = u_xlat4;
  let x_250 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(x_249, x_250);
  let x_252 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_252);
  let x_254 : f32 = u_xlat38;
  let x_256 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_254, x_254, x_254) * x_256);
  let x_259 : bool = u_xlatb36;
  if (x_259) {
    let x_264 : f32 = u_xlat4.x;
    x_260 = x_264;
  } else {
    let x_268 : f32 = x_45.unity_MatrixV[0i].z;
    x_260 = x_268;
  }
  let x_269 : f32 = x_260;
  u_xlat5.x = x_269;
  let x_271 : bool = u_xlatb36;
  if (x_271) {
    let x_277 : f32 = u_xlat4.y;
    x_272 = x_277;
  } else {
    let x_280 : f32 = x_45.unity_MatrixV[1i].z;
    x_272 = x_280;
  }
  let x_281 : f32 = x_272;
  u_xlat5.y = x_281;
  let x_283 : bool = u_xlatb36;
  if (x_283) {
    let x_288 : f32 = u_xlat4.z;
    x_284 = x_288;
  } else {
    let x_292 : f32 = x_45.unity_MatrixV[2i].z;
    x_284 = x_292;
  }
  let x_293 : f32 = x_284;
  u_xlat5.z = x_293;
  let x_302 : vec2<f32> = vs_INTERP4;
  let x_304 : f32 = x_45.x_GlobalMipBias.x;
  let x_305 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_302, x_304);
  u_xlat4 = vec3<f32>(x_305.x, x_305.y, x_305.z);
  let x_310 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_311 : vec2<f32> = vec2<f32>(x_310.x, x_310.y);
  let x_315 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_311.x, x_311.y));
  let x_316 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_315.x, x_315.y, x_316.z);
  let x_318 : vec3<f32> = u_xlat6;
  let x_320 : vec4<f32> = hlslcc_FragCoord;
  let x_322 : vec2<f32> = (vec2<f32>(x_318.x, x_318.y) * vec2<f32>(x_320.x, x_320.y));
  let x_323 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_322.x, x_322.y, x_323.z);
  let x_326 : f32 = u_xlat6.y;
  let x_329 : f32 = x_45.x_ScaleBiasRt.x;
  let x_332 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat36 = ((x_326 * x_329) + x_332);
  let x_334 : f32 = u_xlat36;
  u_xlat6.z = (-(x_334) + 1.0f);
  let x_338 : vec3<f32> = u_xlat3;
  let x_339 : vec2<f32> = vec2<f32>(x_338.x, x_338.y);
  let x_340 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_339.x, x_339.y, x_340.z);
  let x_342 : vec3<f32> = u_xlat3;
  let x_346 : vec2<f32> = clamp(vec2<f32>(x_342.x, x_342.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_347 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_346.x, x_346.y, x_347.z);
  let x_350 : f32 = u_xlat3.x;
  u_xlat36 = ((-(x_350) * 0.959999979f) + 0.959999979f);
  let x_355 : f32 = u_xlat36;
  let x_358 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_355) + x_358);
  let x_361 : f32 = u_xlat36;
  let x_363 : vec3<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_361, x_361, x_361) * x_363);
  let x_365 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_365 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_369 : vec3<f32> = u_xlat3;
  let x_371 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_369.x, x_369.x, x_369.x) * x_371) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_377 : f32 = u_xlat3.y;
  u_xlat36 = (-(x_377) + 1.0f);
  let x_380 : f32 = u_xlat36;
  let x_381 : f32 = u_xlat36;
  u_xlat3.x = (x_380 * x_381);
  let x_385 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_385, 0.0078125f);
  let x_391 : f32 = u_xlat3.x;
  let x_393 : f32 = u_xlat3.x;
  u_xlat15 = (x_391 * x_393);
  let x_395 : f32 = u_xlat38;
  u_xlat38 = (x_395 + 1.0f);
  let x_397 : f32 = u_xlat38;
  u_xlat38 = min(x_397, 1.0f);
  let x_401 : f32 = u_xlat3.x;
  u_xlat39 = ((x_401 * 4.0f) + 2.0f);
  let x_411 : vec3<f32> = u_xlat6;
  let x_414 : f32 = x_45.x_GlobalMipBias.x;
  let x_415 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_411.x, x_411.z), x_414);
  u_xlat40 = x_415.x;
  let x_418 : f32 = u_xlat40;
  u_xlat41 = (x_418 + -1.0f);
  let x_422 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_423 : f32 = u_xlat41;
  u_xlat41 = ((x_422 * x_423) + 1.0f);
  let x_428 : f32 = u_xlat3.z;
  let x_429 : f32 = u_xlat40;
  u_xlat27 = min(x_428, x_429);
  let x_433 : vec4<f32> = vs_INTERP8;
  let x_434 : vec2<f32> = vec2<f32>(x_433.x, x_433.y);
  let x_436 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_434.x, x_434.y, x_436);
  let x_448 : vec3<f32> = txVec0;
  let x_450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_448.xy, x_448.z);
  u_xlat40 = x_450;
  let x_457 : f32 = x_455.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_457) + 1.0f);
  let x_461 : f32 = u_xlat40;
  let x_463 : f32 = x_455.x_MainLightShadowParams.x;
  let x_466 : f32 = u_xlat6.x;
  u_xlat40 = ((x_461 * x_463) + x_466);
  let x_470 : f32 = vs_INTERP8.z;
  u_xlatb6 = (0.0f >= x_470);
  let x_474 : f32 = vs_INTERP8.z;
  u_xlatb18 = (x_474 >= 1.0f);
  let x_476 : bool = u_xlatb18;
  let x_477 : bool = u_xlatb6;
  u_xlatb6 = (x_476 | x_477);
  let x_479 : bool = u_xlatb6;
  let x_480 : f32 = u_xlat40;
  u_xlat40 = select(x_480, 1.0f, x_479);
  let x_482 : vec3<f32> = vs_INTERP0;
  let x_484 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat6 = (x_482 + -(x_484));
  let x_487 : vec3<f32> = u_xlat6;
  let x_488 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_487, x_488);
  let x_492 : f32 = u_xlat6.x;
  let x_494 : f32 = x_455.x_MainLightShadowParams.z;
  let x_497 : f32 = x_455.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_492 * x_494) + x_497);
  let x_501 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_501, 0.0f, 1.0f);
  let x_505 : f32 = u_xlat40;
  u_xlat18 = (-(x_505) + 1.0f);
  let x_509 : f32 = u_xlat6.x;
  let x_510 : f32 = u_xlat18;
  let x_512 : f32 = u_xlat40;
  u_xlat40 = ((x_509 * x_510) + x_512);
  let x_514 : f32 = u_xlat41;
  let x_517 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_514, x_514, x_514) * vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_521 : vec3<f32> = u_xlat5;
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(-(x_521), vec3<f32>(x_523.x, x_523.y, x_523.w));
  let x_526 : f32 = u_xlat42;
  let x_527 : f32 = u_xlat42;
  u_xlat42 = (x_526 + x_527);
  let x_530 : vec4<f32> = u_xlat1;
  let x_532 : f32 = u_xlat42;
  let x_536 : vec3<f32> = u_xlat5;
  let x_538 : vec3<f32> = ((vec3<f32>(x_530.x, x_530.y, x_530.w) * -(vec3<f32>(x_532, x_532, x_532))) + -(x_536));
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat1;
  let x_543 : vec3<f32> = u_xlat5;
  u_xlat42 = dot(vec3<f32>(x_541.x, x_541.y, x_541.w), x_543);
  let x_545 : f32 = u_xlat42;
  u_xlat42 = clamp(x_545, 0.0f, 1.0f);
  let x_547 : f32 = u_xlat42;
  u_xlat42 = (-(x_547) + 1.0f);
  let x_550 : f32 = u_xlat42;
  let x_551 : f32 = u_xlat42;
  u_xlat42 = (x_550 * x_551);
  let x_553 : f32 = u_xlat42;
  let x_554 : f32 = u_xlat42;
  u_xlat42 = (x_553 * x_554);
  let x_557 : f32 = u_xlat36;
  u_xlat43 = ((-(x_557) * 0.699999988f) + 1.700000048f);
  let x_563 : f32 = u_xlat36;
  let x_564 : f32 = u_xlat43;
  u_xlat36 = (x_563 * x_564);
  let x_566 : f32 = u_xlat36;
  u_xlat36 = (x_566 * 6.0f);
  let x_577 : vec4<f32> = u_xlat8;
  let x_579 : f32 = u_xlat36;
  let x_580 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_577.x, x_577.y, x_577.z), x_579);
  u_xlat8 = x_580;
  let x_582 : f32 = u_xlat8.w;
  u_xlat36 = (x_582 + -1.0f);
  let x_585 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_586 : f32 = u_xlat36;
  u_xlat36 = ((x_585 * x_586) + 1.0f);
  let x_589 : f32 = u_xlat36;
  u_xlat36 = max(x_589, 0.0f);
  let x_591 : f32 = u_xlat36;
  u_xlat36 = log2(x_591);
  let x_593 : f32 = u_xlat36;
  let x_595 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_593 * x_595);
  let x_597 : f32 = u_xlat36;
  u_xlat36 = exp2(x_597);
  let x_599 : f32 = u_xlat36;
  let x_601 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_599 * x_601);
  let x_603 : vec4<f32> = u_xlat8;
  let x_605 : f32 = u_xlat36;
  let x_607 : vec3<f32> = (vec3<f32>(x_603.x, x_603.y, x_603.z) * vec3<f32>(x_605, x_605, x_605));
  let x_608 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_612 : vec3<f32> = u_xlat3;
  let x_614 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_612.x, x_612.x) * vec2<f32>(x_614.x, x_614.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_620 : f32 = u_xlat9.y;
  u_xlat36 = (1.0f / x_620);
  let x_623 : vec3<f32> = u_xlat0;
  let x_625 : f32 = u_xlat38;
  u_xlat21 = (-(x_623) + vec3<f32>(x_625, x_625, x_625));
  let x_628 : f32 = u_xlat42;
  let x_630 : vec3<f32> = u_xlat21;
  let x_632 : vec3<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_628, x_628, x_628) * x_630) + x_632);
  let x_634 : f32 = u_xlat36;
  let x_636 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_634, x_634, x_634) * x_636);
  let x_638 : vec4<f32> = u_xlat8;
  let x_640 : vec3<f32> = u_xlat21;
  let x_641 : vec3<f32> = (vec3<f32>(x_638.x, x_638.y, x_638.z) * x_640);
  let x_642 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : vec3<f32> = u_xlat4;
  let x_645 : vec3<f32> = u_xlat7;
  let x_647 : vec4<f32> = u_xlat8;
  u_xlat4 = ((x_644 * x_645) + vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : f32 = u_xlat40;
  let x_653 : f32 = x_122.unity_LightData.z;
  u_xlat36 = (x_650 * x_653);
  let x_655 : vec4<f32> = u_xlat1;
  let x_658 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_655.x, x_655.y, x_655.w), vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : f32 = u_xlat38;
  u_xlat38 = clamp(x_661, 0.0f, 1.0f);
  let x_663 : f32 = u_xlat36;
  let x_664 : f32 = u_xlat38;
  u_xlat36 = (x_663 * x_664);
  let x_666 : f32 = u_xlat36;
  let x_668 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_666, x_666, x_666) * x_668);
  let x_670 : vec3<f32> = u_xlat5;
  let x_672 : vec4<f32> = x_45.x_MainLightPosition;
  let x_674 : vec3<f32> = (x_670 + vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_675 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec4<f32> = u_xlat8;
  let x_679 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_677.x, x_677.y, x_677.z), vec3<f32>(x_679.x, x_679.y, x_679.z));
  let x_682 : f32 = u_xlat36;
  u_xlat36 = max(x_682, 1.17549435e-37f);
  let x_685 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_685);
  let x_687 : f32 = u_xlat36;
  let x_689 : vec4<f32> = u_xlat8;
  let x_691 : vec3<f32> = (vec3<f32>(x_687, x_687, x_687) * vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat1;
  let x_696 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_694.x, x_694.y, x_694.w), vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : f32 = u_xlat36;
  u_xlat36 = clamp(x_699, 0.0f, 1.0f);
  let x_702 : vec4<f32> = x_45.x_MainLightPosition;
  let x_704 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_702.x, x_702.y, x_702.z), vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : f32 = u_xlat38;
  u_xlat38 = clamp(x_707, 0.0f, 1.0f);
  let x_709 : f32 = u_xlat36;
  let x_710 : f32 = u_xlat36;
  u_xlat36 = (x_709 * x_710);
  let x_712 : f32 = u_xlat36;
  let x_714 : f32 = u_xlat9.x;
  u_xlat36 = ((x_712 * x_714) + 1.000010014f);
  let x_718 : f32 = u_xlat38;
  let x_719 : f32 = u_xlat38;
  u_xlat38 = (x_718 * x_719);
  let x_721 : f32 = u_xlat36;
  let x_722 : f32 = u_xlat36;
  u_xlat36 = (x_721 * x_722);
  let x_724 : f32 = u_xlat38;
  u_xlat38 = max(x_724, 0.100000001f);
  let x_727 : f32 = u_xlat36;
  let x_728 : f32 = u_xlat38;
  u_xlat36 = (x_727 * x_728);
  let x_730 : f32 = u_xlat39;
  let x_731 : f32 = u_xlat36;
  u_xlat36 = (x_730 * x_731);
  let x_733 : f32 = u_xlat15;
  let x_734 : f32 = u_xlat36;
  u_xlat36 = (x_733 / x_734);
  let x_736 : vec3<f32> = u_xlat0;
  let x_737 : f32 = u_xlat36;
  let x_740 : vec3<f32> = u_xlat7;
  let x_741 : vec3<f32> = ((x_736 * vec3<f32>(x_737, x_737, x_737)) + x_740);
  let x_742 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec3<f32> = u_xlat6;
  let x_745 : vec4<f32> = u_xlat8;
  u_xlat6 = (x_744 * vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_749 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_751 : f32 = x_122.unity_LightData.y;
  u_xlat36 = min(x_749, x_751);
  let x_755 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_755));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_767 : u32 = u_xlatu_loop_1;
    let x_768 : u32 = u_xlatu36;
    if ((x_767 < x_768)) {
    } else {
      break;
    }
    let x_771 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_771 >> 2u);
    let x_775 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_775 & 3u));
    let x_779 : u32 = u_xlatu3;
    let x_782 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_779)];
    let x_792 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_797 : vec4<u32> = indexable[x_792];
    u_xlat3.x = dot(x_782, bitcast<vec4<f32>>(x_797));
    let x_803 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_803);
    let x_805 : vec3<f32> = vs_INTERP0;
    let x_817 : i32 = u_xlati3;
    let x_819 : vec4<f32> = x_816.x_AdditionalLightsPosition[x_817];
    let x_822 : i32 = u_xlati3;
    let x_824 : vec4<f32> = x_816.x_AdditionalLightsPosition[x_822];
    u_xlat21 = ((-(x_805) * vec3<f32>(x_819.w, x_819.w, x_819.w)) + vec3<f32>(x_824.x, x_824.y, x_824.z));
    let x_827 : vec3<f32> = u_xlat21;
    let x_828 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(x_827, x_828);
    let x_830 : f32 = u_xlat40;
    u_xlat40 = max(x_830, 6.10351562e-05f);
    let x_833 : f32 = u_xlat40;
    u_xlat42 = inverseSqrt(x_833);
    let x_836 : f32 = u_xlat42;
    let x_838 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_836, x_836, x_836) * x_838);
    let x_840 : f32 = u_xlat40;
    u_xlat43 = (1.0f / x_840);
    let x_842 : f32 = u_xlat40;
    let x_843 : i32 = u_xlati3;
    let x_845 : f32 = x_816.x_AdditionalLightsAttenuation[x_843].x;
    u_xlat40 = (x_842 * x_845);
    let x_847 : f32 = u_xlat40;
    let x_849 : f32 = u_xlat40;
    u_xlat40 = ((-(x_847) * x_849) + 1.0f);
    let x_852 : f32 = u_xlat40;
    u_xlat40 = max(x_852, 0.0f);
    let x_854 : f32 = u_xlat40;
    let x_855 : f32 = u_xlat40;
    u_xlat40 = (x_854 * x_855);
    let x_857 : f32 = u_xlat40;
    let x_858 : f32 = u_xlat43;
    u_xlat40 = (x_857 * x_858);
    let x_860 : i32 = u_xlati3;
    let x_862 : vec4<f32> = x_816.x_AdditionalLightsSpotDir[x_860];
    let x_864 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_862.x, x_862.y, x_862.z), x_864);
    let x_866 : f32 = u_xlat43;
    let x_867 : i32 = u_xlati3;
    let x_869 : f32 = x_816.x_AdditionalLightsAttenuation[x_867].z;
    let x_871 : i32 = u_xlati3;
    let x_873 : f32 = x_816.x_AdditionalLightsAttenuation[x_871].w;
    u_xlat43 = ((x_866 * x_869) + x_873);
    let x_875 : f32 = u_xlat43;
    u_xlat43 = clamp(x_875, 0.0f, 1.0f);
    let x_877 : f32 = u_xlat43;
    let x_878 : f32 = u_xlat43;
    u_xlat43 = (x_877 * x_878);
    let x_880 : f32 = u_xlat40;
    let x_881 : f32 = u_xlat43;
    u_xlat40 = (x_880 * x_881);
    let x_884 : f32 = u_xlat41;
    let x_886 : i32 = u_xlati3;
    let x_888 : vec4<f32> = x_816.x_AdditionalLightsColor[x_886];
    u_xlat11 = (vec3<f32>(x_884, x_884, x_884) * vec3<f32>(x_888.x, x_888.y, x_888.z));
    let x_891 : vec4<f32> = u_xlat1;
    let x_893 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_891.x, x_891.y, x_891.w), x_893);
    let x_897 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_897, 0.0f, 1.0f);
    let x_901 : f32 = u_xlat3.x;
    let x_902 : f32 = u_xlat40;
    u_xlat3.x = (x_901 * x_902);
    let x_905 : vec3<f32> = u_xlat3;
    let x_907 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_905.x, x_905.x, x_905.x) * x_907);
    let x_909 : vec3<f32> = u_xlat21;
    let x_910 : f32 = u_xlat42;
    let x_913 : vec3<f32> = u_xlat5;
    u_xlat21 = ((x_909 * vec3<f32>(x_910, x_910, x_910)) + x_913);
    let x_915 : vec3<f32> = u_xlat21;
    let x_916 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_915, x_916);
    let x_920 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_920, 1.17549435e-37f);
    let x_924 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_924);
    let x_927 : vec3<f32> = u_xlat3;
    let x_929 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_927.x, x_927.x, x_927.x) * x_929);
    let x_931 : vec4<f32> = u_xlat1;
    let x_933 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(vec3<f32>(x_931.x, x_931.y, x_931.w), x_933);
    let x_937 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_937, 0.0f, 1.0f);
    let x_940 : vec3<f32> = u_xlat10;
    let x_941 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(x_940, x_941);
    let x_943 : f32 = u_xlat40;
    u_xlat40 = clamp(x_943, 0.0f, 1.0f);
    let x_946 : f32 = u_xlat3.x;
    let x_948 : f32 = u_xlat3.x;
    u_xlat3.x = (x_946 * x_948);
    let x_952 : f32 = u_xlat3.x;
    let x_954 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_952 * x_954) + 1.000010014f);
    let x_958 : f32 = u_xlat40;
    let x_959 : f32 = u_xlat40;
    u_xlat40 = (x_958 * x_959);
    let x_962 : f32 = u_xlat3.x;
    let x_964 : f32 = u_xlat3.x;
    u_xlat3.x = (x_962 * x_964);
    let x_967 : f32 = u_xlat40;
    u_xlat40 = max(x_967, 0.100000001f);
    let x_970 : f32 = u_xlat3.x;
    let x_971 : f32 = u_xlat40;
    u_xlat3.x = (x_970 * x_971);
    let x_974 : f32 = u_xlat39;
    let x_976 : f32 = u_xlat3.x;
    u_xlat3.x = (x_974 * x_976);
    let x_979 : f32 = u_xlat15;
    let x_981 : f32 = u_xlat3.x;
    u_xlat3.x = (x_979 / x_981);
    let x_984 : vec3<f32> = u_xlat0;
    let x_985 : vec3<f32> = u_xlat3;
    let x_988 : vec3<f32> = u_xlat7;
    u_xlat21 = ((x_984 * vec3<f32>(x_985.x, x_985.x, x_985.x)) + x_988);
    let x_990 : vec3<f32> = u_xlat21;
    let x_991 : vec3<f32> = u_xlat11;
    let x_993 : vec4<f32> = u_xlat8;
    let x_995 : vec3<f32> = ((x_990 * x_991) + vec3<f32>(x_993.x, x_993.y, x_993.z));
    let x_996 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);

    continuing {
      let x_998 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_998 + bitcast<u32>(1i));
    }
  }
  let x_1000 : vec3<f32> = u_xlat4;
  let x_1001 : f32 = u_xlat27;
  let x_1004 : vec3<f32> = u_xlat6;
  u_xlat0 = ((x_1000 * vec3<f32>(x_1001, x_1001, x_1001)) + x_1004);
  let x_1006 : vec4<f32> = u_xlat8;
  let x_1008 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1006.x, x_1006.y, x_1006.z) + x_1008);
  let x_1012 : vec3<f32> = u_xlat2;
  let x_1013 : f32 = u_xlat25;
  let x_1016 : vec3<f32> = u_xlat0;
  let x_1017 : vec3<f32> = ((x_1012 * vec3<f32>(x_1013, x_1013, x_1013)) + x_1016);
  let x_1018 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1023 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_1025 : f32 = x_122.unity_RenderingLayer.x;
  u_xlatu0 = (x_1023 & bitcast<u32>(x_1025));
  let x_1028 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1028);
  let x_1033 : f32 = u_xlat0.x;
  let x_1036 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1033 * x_1036);
  let x_1041 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1041, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1046 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1046.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>, @location(5) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

