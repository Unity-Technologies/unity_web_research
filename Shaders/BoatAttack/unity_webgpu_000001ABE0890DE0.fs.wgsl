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

@group(0) @binding(3) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(5) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(6) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_122 : UnityPerDraw;

@group(0) @binding(4) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_319 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1083 : AdditionalLights;

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
  var u_xlat4 : vec4<f32>;
  var u_xlatb36 : bool;
  var u_xlat5 : vec3<f32>;
  var x_279 : f32;
  var x_291 : f32;
  var x_303 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var u_xlat39 : f32;
  var u_xlat15 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : f32;
  var u_xlatb13 : bool;
  var x_735 : f32;
  var u_xlat10 : vec2<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati3 : i32;
  var u_xlat42 : f32;
  var u_xlat43 : f32;
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
  let x_187 : vec3<f32> = (vec3<f32>(x_183.z, x_183.x, x_183.y) * vec3<f32>(x_185.y, x_185.z, x_185.x));
  let x_188 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_190 : vec3<f32> = vs_INTERP1;
  let x_192 : vec4<f32> = vs_INTERP2;
  let x_195 : vec4<f32> = u_xlat4;
  let x_198 : vec3<f32> = ((vec3<f32>(x_190.y, x_190.z, x_190.x) * vec3<f32>(x_192.z, x_192.x, x_192.y)) + -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : f32 = u_xlat37;
  let x_203 : vec4<f32> = u_xlat4;
  let x_205 : vec3<f32> = (vec3<f32>(x_201, x_201, x_201) * vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec4<f32> = u_xlat4;
  let x_212 : vec3<f32> = (vec3<f32>(x_208.y, x_208.y, x_208.y) * vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec4<f32> = vs_INTERP2;
  let x_220 : vec4<f32> = u_xlat4;
  let x_222 : vec3<f32> = ((vec3<f32>(x_215.x, x_215.x, x_215.x) * vec3<f32>(x_217.x, x_217.y, x_217.z)) + vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_222.x, x_222.y, x_223.z, x_222.z);
  let x_225 : f32 = u_xlat36;
  let x_227 : vec3<f32> = vs_INTERP1;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = ((vec3<f32>(x_225, x_225, x_225) * x_227) + vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_231.z);
  let x_234 : vec4<f32> = u_xlat1;
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec3<f32>(x_234.x, x_234.y, x_234.w), vec3<f32>(x_236.x, x_236.y, x_236.w));
  let x_239 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_239);
  let x_241 : f32 = u_xlat36;
  let x_243 : vec4<f32> = u_xlat1;
  let x_245 : vec3<f32> = (vec3<f32>(x_241, x_241, x_241) * vec3<f32>(x_243.x, x_243.y, x_243.w));
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_251 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb36 = (x_251 == 0.0f);
  let x_254 : vec3<f32> = vs_INTERP0;
  let x_259 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_260 : vec3<f32> = (-(x_254) + x_259);
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_260.z);
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat38 = dot(vec3<f32>(x_263.x, x_263.y, x_263.w), vec3<f32>(x_265.x, x_265.y, x_265.w));
  let x_268 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_268);
  let x_270 : vec4<f32> = u_xlat1;
  let x_272 : f32 = u_xlat38;
  let x_274 : vec3<f32> = (vec3<f32>(x_270.x, x_270.y, x_270.w) * vec3<f32>(x_272, x_272, x_272));
  let x_275 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_274.x, x_274.y, x_275.z, x_274.z);
  let x_278 : bool = u_xlatb36;
  if (x_278) {
    let x_283 : f32 = u_xlat1.x;
    x_279 = x_283;
  } else {
    let x_287 : f32 = x_45.unity_MatrixV[0i].z;
    x_279 = x_287;
  }
  let x_288 : f32 = x_279;
  u_xlat5.x = x_288;
  let x_290 : bool = u_xlatb36;
  if (x_290) {
    let x_296 : f32 = u_xlat1.y;
    x_291 = x_296;
  } else {
    let x_299 : f32 = x_45.unity_MatrixV[1i].z;
    x_291 = x_299;
  }
  let x_300 : f32 = x_291;
  u_xlat5.y = x_300;
  let x_302 : bool = u_xlatb36;
  if (x_302) {
    let x_307 : f32 = u_xlat1.w;
    x_303 = x_307;
  } else {
    let x_311 : f32 = x_45.unity_MatrixV[2i].z;
    x_303 = x_311;
  }
  let x_312 : f32 = x_303;
  u_xlat5.z = x_312;
  let x_314 : vec3<f32> = vs_INTERP0;
  let x_321 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres0;
  let x_324 : vec3<f32> = (x_314 + -(vec3<f32>(x_321.x, x_321.y, x_321.z)));
  let x_325 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_324.x, x_324.y, x_325.z, x_324.z);
  let x_328 : vec3<f32> = vs_INTERP0;
  let x_330 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres1;
  u_xlat6 = (x_328 + -(vec3<f32>(x_330.x, x_330.y, x_330.z)));
  let x_335 : vec3<f32> = vs_INTERP0;
  let x_337 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres2;
  let x_340 : vec3<f32> = (x_335 + -(vec3<f32>(x_337.x, x_337.y, x_337.z)));
  let x_341 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_344 : vec3<f32> = vs_INTERP0;
  let x_347 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_344 + -(vec3<f32>(x_347.x, x_347.y, x_347.z)));
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat9.x = dot(vec3<f32>(x_352.x, x_352.y, x_352.w), vec3<f32>(x_354.x, x_354.y, x_354.w));
  let x_358 : vec3<f32> = u_xlat6;
  let x_359 : vec3<f32> = u_xlat6;
  u_xlat9.y = dot(x_358, x_359);
  let x_362 : vec4<f32> = u_xlat7;
  let x_364 : vec4<f32> = u_xlat7;
  u_xlat9.z = dot(vec3<f32>(x_362.x, x_362.y, x_362.z), vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_368 : vec3<f32> = u_xlat8;
  let x_369 : vec3<f32> = u_xlat8;
  u_xlat9.w = dot(x_368, x_369);
  let x_375 : vec4<f32> = u_xlat9;
  let x_378 : vec4<f32> = x_319.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_375 < x_378);
  let x_381 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_381);
  let x_385 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_385);
  let x_389 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_389);
  let x_393 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_393);
  let x_397 : bool = u_xlatb6.x;
  u_xlat1.x = select(-0.0f, -1.0f, x_397);
  let x_402 : bool = u_xlatb6.y;
  u_xlat1.y = select(-0.0f, -1.0f, x_402);
  let x_406 : bool = u_xlatb6.z;
  u_xlat1.w = select(-0.0f, -1.0f, x_406);
  let x_409 : vec4<f32> = u_xlat1;
  let x_411 : vec4<f32> = u_xlat7;
  let x_413 : vec3<f32> = (vec3<f32>(x_409.x, x_409.y, x_409.w) + vec3<f32>(x_411.y, x_411.z, x_411.w));
  let x_414 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_413.z);
  let x_416 : vec4<f32> = u_xlat1;
  let x_419 : vec3<f32> = max(vec3<f32>(x_416.x, x_416.y, x_416.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_420 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_420.x, x_419.x, x_419.y, x_419.z);
  let x_422 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(x_422, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_427 : f32 = u_xlat36;
  u_xlat36 = (-(x_427) + 4.0f);
  let x_432 : f32 = u_xlat36;
  u_xlatu36 = u32(x_432);
  let x_436 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_436) << bitcast<u32>(2i));
  let x_439 : vec3<f32> = vs_INTERP0;
  let x_441 : i32 = u_xlati36;
  let x_444 : i32 = u_xlati36;
  let x_448 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_441 + 1i) / 4i)][((x_444 + 1i) % 4i)];
  let x_450 : vec3<f32> = (vec3<f32>(x_439.y, x_439.y, x_439.y) * vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_450.z);
  let x_453 : i32 = u_xlati36;
  let x_455 : i32 = u_xlati36;
  let x_458 : vec4<f32> = x_319.x_MainLightWorldToShadow[(x_453 / 4i)][(x_455 % 4i)];
  let x_460 : vec3<f32> = vs_INTERP0;
  let x_463 : vec4<f32> = u_xlat1;
  let x_465 : vec3<f32> = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(x_460.x, x_460.x, x_460.x)) + vec3<f32>(x_463.x, x_463.y, x_463.w));
  let x_466 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_465.z);
  let x_468 : i32 = u_xlati36;
  let x_471 : i32 = u_xlati36;
  let x_475 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_468 + 2i) / 4i)][((x_471 + 2i) % 4i)];
  let x_477 : vec3<f32> = vs_INTERP0;
  let x_480 : vec4<f32> = u_xlat1;
  let x_482 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(x_477.z, x_477.z, x_477.z)) + vec3<f32>(x_480.x, x_480.y, x_480.w));
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_482.z);
  let x_485 : vec4<f32> = u_xlat1;
  let x_487 : i32 = u_xlati36;
  let x_490 : i32 = u_xlati36;
  let x_494 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_487 + 3i) / 4i)][((x_490 + 3i) % 4i)];
  let x_496 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.w) + vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_496.z);
  u_xlat4.w = 1.0f;
  let x_502 : vec4<f32> = x_122.unity_SHAr;
  let x_503 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_502, x_503);
  let x_508 : vec4<f32> = x_122.unity_SHAg;
  let x_509 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_508, x_509);
  let x_514 : vec4<f32> = x_122.unity_SHAb;
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_514, x_515);
  let x_518 : vec4<f32> = u_xlat4;
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_518.y, x_518.z, x_518.z, x_518.x) * vec4<f32>(x_520.x, x_520.y, x_520.z, x_520.z));
  let x_525 : vec4<f32> = x_122.unity_SHBr;
  let x_526 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_525, x_526);
  let x_531 : vec4<f32> = x_122.unity_SHBg;
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_531, x_532);
  let x_537 : vec4<f32> = x_122.unity_SHBb;
  let x_538 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_537, x_538);
  let x_542 : f32 = u_xlat4.y;
  let x_544 : f32 = u_xlat4.y;
  u_xlat36 = (x_542 * x_544);
  let x_547 : f32 = u_xlat4.x;
  let x_549 : f32 = u_xlat4.x;
  let x_551 : f32 = u_xlat36;
  u_xlat36 = ((x_547 * x_549) + -(x_551));
  let x_556 : vec4<f32> = x_122.unity_SHC;
  let x_558 : f32 = u_xlat36;
  let x_561 : vec3<f32> = u_xlat8;
  let x_562 : vec3<f32> = ((vec3<f32>(x_556.x, x_556.y, x_556.z) * vec3<f32>(x_558, x_558, x_558)) + x_561);
  let x_563 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_565 : vec3<f32> = u_xlat6;
  let x_566 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_565 + vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_569, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_573 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_574 : vec2<f32> = vec2<f32>(x_573.x, x_573.y);
  let x_578 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_574.x, x_574.y));
  let x_579 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat7;
  let x_583 : vec4<f32> = hlslcc_FragCoord;
  let x_585 : vec2<f32> = (vec2<f32>(x_581.x, x_581.y) * vec2<f32>(x_583.x, x_583.y));
  let x_586 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
  let x_589 : f32 = u_xlat7.y;
  let x_592 : f32 = x_45.x_ScaleBiasRt.x;
  let x_595 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat36 = ((x_589 * x_592) + x_595);
  let x_597 : f32 = u_xlat36;
  u_xlat7.z = (-(x_597) + 1.0f);
  let x_601 : vec3<f32> = u_xlat3;
  let x_602 : vec2<f32> = vec2<f32>(x_601.x, x_601.y);
  let x_603 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_602.x, x_602.y, x_603.z);
  let x_605 : vec3<f32> = u_xlat3;
  let x_609 : vec2<f32> = clamp(vec2<f32>(x_605.x, x_605.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_610 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_609.x, x_609.y, x_610.z);
  let x_613 : f32 = u_xlat3.x;
  u_xlat36 = ((-(x_613) * 0.959999979f) + 0.959999979f);
  let x_618 : f32 = u_xlat36;
  u_xlat38 = (-(x_618) + 1.0f);
  let x_621 : f32 = u_xlat36;
  let x_623 : vec3<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_621, x_621, x_621) * x_623);
  let x_625 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_625 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_629 : vec3<f32> = u_xlat3;
  let x_631 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_629.x, x_629.x, x_629.x) * x_631) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_637 : f32 = u_xlat3.y;
  u_xlat36 = (-(x_637) + 1.0f);
  let x_640 : f32 = u_xlat36;
  let x_641 : f32 = u_xlat36;
  u_xlat3.x = (x_640 * x_641);
  let x_645 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_645, 0.0078125f);
  let x_651 : f32 = u_xlat3.x;
  let x_653 : f32 = u_xlat3.x;
  u_xlat39 = (x_651 * x_653);
  let x_655 : f32 = u_xlat38;
  let x_657 : f32 = u_xlat3.y;
  u_xlat38 = (x_655 + x_657);
  let x_659 : f32 = u_xlat38;
  u_xlat38 = min(x_659, 1.0f);
  let x_663 : f32 = u_xlat3.x;
  u_xlat15 = ((x_663 * 4.0f) + 2.0f);
  let x_672 : vec4<f32> = u_xlat7;
  let x_675 : f32 = x_45.x_GlobalMipBias.x;
  let x_676 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_672.x, x_672.z), x_675);
  u_xlat40 = x_676.x;
  let x_679 : f32 = u_xlat40;
  u_xlat41 = (x_679 + -1.0f);
  let x_682 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_683 : f32 = u_xlat41;
  u_xlat41 = ((x_682 * x_683) + 1.0f);
  let x_688 : f32 = u_xlat3.z;
  let x_689 : f32 = u_xlat40;
  u_xlat27 = min(x_688, x_689);
  let x_692 : vec4<f32> = u_xlat1;
  let x_693 : vec2<f32> = vec2<f32>(x_692.x, x_692.y);
  let x_695 : f32 = u_xlat1.w;
  txVec0 = vec3<f32>(x_693.x, x_693.y, x_695);
  let x_707 : vec3<f32> = txVec0;
  let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_707.xy, x_707.z);
  u_xlat1.x = x_709;
  let x_713 : f32 = x_319.x_MainLightShadowParams.x;
  u_xlat13 = (-(x_713) + 1.0f);
  let x_717 : f32 = u_xlat1.x;
  let x_719 : f32 = x_319.x_MainLightShadowParams.x;
  let x_721 : f32 = u_xlat13;
  u_xlat1.x = ((x_717 * x_719) + x_721);
  let x_726 : f32 = u_xlat1.w;
  u_xlatb13 = (0.0f >= x_726);
  let x_729 : f32 = u_xlat1.w;
  u_xlatb37 = (x_729 >= 1.0f);
  let x_731 : bool = u_xlatb37;
  let x_732 : bool = u_xlatb13;
  u_xlatb13 = (x_731 | x_732);
  let x_734 : bool = u_xlatb13;
  if (x_734) {
    x_735 = 1.0f;
  } else {
    let x_740 : f32 = u_xlat1.x;
    x_735 = x_740;
  }
  let x_741 : f32 = x_735;
  u_xlat1.x = x_741;
  let x_743 : vec3<f32> = vs_INTERP0;
  let x_745 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_747 : vec3<f32> = (x_743 + -(x_745));
  let x_748 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : vec4<f32> = u_xlat7;
  let x_752 : vec4<f32> = u_xlat7;
  u_xlat13 = dot(vec3<f32>(x_750.x, x_750.y, x_750.z), vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : f32 = u_xlat13;
  let x_757 : f32 = x_319.x_MainLightShadowParams.z;
  let x_760 : f32 = x_319.x_MainLightShadowParams.w;
  u_xlat13 = ((x_755 * x_757) + x_760);
  let x_762 : f32 = u_xlat13;
  u_xlat13 = clamp(x_762, 0.0f, 1.0f);
  let x_765 : f32 = u_xlat1.x;
  u_xlat37 = (-(x_765) + 1.0f);
  let x_768 : f32 = u_xlat13;
  let x_769 : f32 = u_xlat37;
  let x_772 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_768 * x_769) + x_772);
  let x_775 : f32 = u_xlat41;
  let x_778 : vec4<f32> = x_45.x_MainLightColor;
  let x_780 : vec3<f32> = (vec3<f32>(x_775, x_775, x_775) * vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec3<f32> = u_xlat5;
  let x_785 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(-(x_783), vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : f32 = u_xlat13;
  let x_789 : f32 = u_xlat13;
  u_xlat13 = (x_788 + x_789);
  let x_791 : vec4<f32> = u_xlat4;
  let x_793 : f32 = u_xlat13;
  let x_797 : vec3<f32> = u_xlat5;
  let x_799 : vec3<f32> = ((vec3<f32>(x_791.x, x_791.y, x_791.z) * -(vec3<f32>(x_793, x_793, x_793))) + -(x_797));
  let x_800 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat4;
  let x_804 : vec3<f32> = u_xlat5;
  u_xlat13 = dot(vec3<f32>(x_802.x, x_802.y, x_802.z), x_804);
  let x_806 : f32 = u_xlat13;
  u_xlat13 = clamp(x_806, 0.0f, 1.0f);
  let x_808 : f32 = u_xlat13;
  u_xlat13 = (-(x_808) + 1.0f);
  let x_811 : f32 = u_xlat13;
  let x_812 : f32 = u_xlat13;
  u_xlat13 = (x_811 * x_812);
  let x_814 : f32 = u_xlat13;
  let x_815 : f32 = u_xlat13;
  u_xlat13 = (x_814 * x_815);
  let x_817 : f32 = u_xlat36;
  u_xlat37 = ((-(x_817) * 0.699999988f) + 1.700000048f);
  let x_823 : f32 = u_xlat36;
  let x_824 : f32 = u_xlat37;
  u_xlat36 = (x_823 * x_824);
  let x_826 : f32 = u_xlat36;
  u_xlat36 = (x_826 * 6.0f);
  let x_837 : vec4<f32> = u_xlat9;
  let x_839 : f32 = u_xlat36;
  let x_840 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_837.x, x_837.y, x_837.z), x_839);
  u_xlat9 = x_840;
  let x_842 : f32 = u_xlat9.w;
  u_xlat36 = (x_842 + -1.0f);
  let x_845 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_846 : f32 = u_xlat36;
  u_xlat36 = ((x_845 * x_846) + 1.0f);
  let x_849 : f32 = u_xlat36;
  u_xlat36 = max(x_849, 0.0f);
  let x_851 : f32 = u_xlat36;
  u_xlat36 = log2(x_851);
  let x_853 : f32 = u_xlat36;
  let x_855 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_853 * x_855);
  let x_857 : f32 = u_xlat36;
  u_xlat36 = exp2(x_857);
  let x_859 : f32 = u_xlat36;
  let x_861 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_859 * x_861);
  let x_863 : vec4<f32> = u_xlat9;
  let x_865 : f32 = u_xlat36;
  let x_867 : vec3<f32> = (vec3<f32>(x_863.x, x_863.y, x_863.z) * vec3<f32>(x_865, x_865, x_865));
  let x_868 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_872 : vec3<f32> = u_xlat3;
  let x_874 : vec3<f32> = u_xlat3;
  u_xlat10 = ((vec2<f32>(x_872.x, x_872.x) * vec2<f32>(x_874.x, x_874.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_880 : f32 = u_xlat10.y;
  u_xlat36 = (1.0f / x_880);
  let x_883 : vec3<f32> = u_xlat0;
  let x_885 : f32 = u_xlat38;
  u_xlat22 = (-(x_883) + vec3<f32>(x_885, x_885, x_885));
  let x_888 : f32 = u_xlat13;
  let x_890 : vec3<f32> = u_xlat22;
  let x_892 : vec3<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_888, x_888, x_888) * x_890) + x_892);
  let x_894 : f32 = u_xlat36;
  let x_896 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_894, x_894, x_894) * x_896);
  let x_898 : vec4<f32> = u_xlat9;
  let x_900 : vec3<f32> = u_xlat22;
  let x_901 : vec3<f32> = (vec3<f32>(x_898.x, x_898.y, x_898.z) * x_900);
  let x_902 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec3<f32> = u_xlat6;
  let x_905 : vec3<f32> = u_xlat8;
  let x_907 : vec4<f32> = u_xlat9;
  u_xlat6 = ((x_904 * x_905) + vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_911 : f32 = u_xlat1.x;
  let x_913 : f32 = x_122.unity_LightData.z;
  u_xlat36 = (x_911 * x_913);
  let x_915 : vec4<f32> = u_xlat4;
  let x_918 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_915.x, x_915.y, x_915.z), vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_923 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_923, 0.0f, 1.0f);
  let x_926 : f32 = u_xlat36;
  let x_928 : f32 = u_xlat1.x;
  u_xlat36 = (x_926 * x_928);
  let x_930 : f32 = u_xlat36;
  let x_932 : vec4<f32> = u_xlat7;
  let x_934 : vec3<f32> = (vec3<f32>(x_930, x_930, x_930) * vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_934.x, x_934.y, x_935.z, x_934.z);
  let x_937 : vec3<f32> = u_xlat5;
  let x_939 : vec4<f32> = x_45.x_MainLightPosition;
  let x_941 : vec3<f32> = (x_937 + vec3<f32>(x_939.x, x_939.y, x_939.z));
  let x_942 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  let x_944 : vec4<f32> = u_xlat7;
  let x_946 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_944.x, x_944.y, x_944.z), vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : f32 = u_xlat36;
  u_xlat36 = max(x_949, 1.17549435e-37f);
  let x_952 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_952);
  let x_954 : f32 = u_xlat36;
  let x_956 : vec4<f32> = u_xlat7;
  let x_958 : vec3<f32> = (vec3<f32>(x_954, x_954, x_954) * vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_961 : vec4<f32> = u_xlat4;
  let x_963 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_961.x, x_961.y, x_961.z), vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : f32 = u_xlat36;
  u_xlat36 = clamp(x_966, 0.0f, 1.0f);
  let x_969 : vec4<f32> = x_45.x_MainLightPosition;
  let x_971 : vec4<f32> = u_xlat7;
  u_xlat38 = dot(vec3<f32>(x_969.x, x_969.y, x_969.z), vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : f32 = u_xlat38;
  u_xlat38 = clamp(x_974, 0.0f, 1.0f);
  let x_976 : f32 = u_xlat36;
  let x_977 : f32 = u_xlat36;
  u_xlat36 = (x_976 * x_977);
  let x_979 : f32 = u_xlat36;
  let x_981 : f32 = u_xlat10.x;
  u_xlat36 = ((x_979 * x_981) + 1.000010014f);
  let x_985 : f32 = u_xlat38;
  let x_986 : f32 = u_xlat38;
  u_xlat38 = (x_985 * x_986);
  let x_988 : f32 = u_xlat36;
  let x_989 : f32 = u_xlat36;
  u_xlat36 = (x_988 * x_989);
  let x_991 : f32 = u_xlat38;
  u_xlat38 = max(x_991, 0.100000001f);
  let x_994 : f32 = u_xlat36;
  let x_995 : f32 = u_xlat38;
  u_xlat36 = (x_994 * x_995);
  let x_997 : f32 = u_xlat15;
  let x_998 : f32 = u_xlat36;
  u_xlat36 = (x_997 * x_998);
  let x_1000 : f32 = u_xlat39;
  let x_1001 : f32 = u_xlat36;
  u_xlat36 = (x_1000 / x_1001);
  let x_1003 : vec3<f32> = u_xlat0;
  let x_1004 : f32 = u_xlat36;
  let x_1007 : vec3<f32> = u_xlat8;
  let x_1008 : vec3<f32> = ((x_1003 * vec3<f32>(x_1004, x_1004, x_1004)) + x_1007);
  let x_1009 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat1;
  let x_1013 : vec4<f32> = u_xlat7;
  let x_1015 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.w) * vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1015.z);
  let x_1019 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1021 : f32 = x_122.unity_LightData.y;
  u_xlat36 = min(x_1019, x_1021);
  let x_1023 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1023));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1035 : u32 = u_xlatu_loop_1;
    let x_1036 : u32 = u_xlatu36;
    if ((x_1035 < x_1036)) {
    } else {
      break;
    }
    let x_1039 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1039 >> 2u);
    let x_1042 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1042 & 3u));
    let x_1046 : u32 = u_xlatu3;
    let x_1049 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_1046)];
    let x_1059 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1064 : vec4<u32> = indexable[x_1059];
    u_xlat3.x = dot(x_1049, bitcast<vec4<f32>>(x_1064));
    let x_1070 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_1070);
    let x_1072 : vec3<f32> = vs_INTERP0;
    let x_1084 : i32 = u_xlati3;
    let x_1086 : vec4<f32> = x_1083.x_AdditionalLightsPosition[x_1084];
    let x_1089 : i32 = u_xlati3;
    let x_1091 : vec4<f32> = x_1083.x_AdditionalLightsPosition[x_1089];
    let x_1093 : vec3<f32> = ((-(x_1072) * vec3<f32>(x_1086.w, x_1086.w, x_1086.w)) + vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
    let x_1094 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
    let x_1096 : vec4<f32> = u_xlat9;
    let x_1098 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1096.x, x_1096.y, x_1096.z), vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
    let x_1101 : f32 = u_xlat40;
    u_xlat40 = max(x_1101, 6.10351562e-05f);
    let x_1105 : f32 = u_xlat40;
    u_xlat42 = inverseSqrt(x_1105);
    let x_1107 : f32 = u_xlat42;
    let x_1109 : vec4<f32> = u_xlat9;
    u_xlat22 = (vec3<f32>(x_1107, x_1107, x_1107) * vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
    let x_1113 : f32 = u_xlat40;
    u_xlat43 = (1.0f / x_1113);
    let x_1115 : f32 = u_xlat40;
    let x_1116 : i32 = u_xlati3;
    let x_1118 : f32 = x_1083.x_AdditionalLightsAttenuation[x_1116].x;
    u_xlat40 = (x_1115 * x_1118);
    let x_1120 : f32 = u_xlat40;
    let x_1122 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1120) * x_1122) + 1.0f);
    let x_1125 : f32 = u_xlat40;
    u_xlat40 = max(x_1125, 0.0f);
    let x_1127 : f32 = u_xlat40;
    let x_1128 : f32 = u_xlat40;
    u_xlat40 = (x_1127 * x_1128);
    let x_1130 : f32 = u_xlat40;
    let x_1131 : f32 = u_xlat43;
    u_xlat40 = (x_1130 * x_1131);
    let x_1133 : i32 = u_xlati3;
    let x_1135 : vec4<f32> = x_1083.x_AdditionalLightsSpotDir[x_1133];
    let x_1137 : vec3<f32> = u_xlat22;
    u_xlat43 = dot(vec3<f32>(x_1135.x, x_1135.y, x_1135.z), x_1137);
    let x_1139 : f32 = u_xlat43;
    let x_1140 : i32 = u_xlati3;
    let x_1142 : f32 = x_1083.x_AdditionalLightsAttenuation[x_1140].z;
    let x_1144 : i32 = u_xlati3;
    let x_1146 : f32 = x_1083.x_AdditionalLightsAttenuation[x_1144].w;
    u_xlat43 = ((x_1139 * x_1142) + x_1146);
    let x_1148 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1148, 0.0f, 1.0f);
    let x_1150 : f32 = u_xlat43;
    let x_1151 : f32 = u_xlat43;
    u_xlat43 = (x_1150 * x_1151);
    let x_1153 : f32 = u_xlat40;
    let x_1154 : f32 = u_xlat43;
    u_xlat40 = (x_1153 * x_1154);
    let x_1157 : f32 = u_xlat41;
    let x_1159 : i32 = u_xlati3;
    let x_1161 : vec4<f32> = x_1083.x_AdditionalLightsColor[x_1159];
    u_xlat11 = (vec3<f32>(x_1157, x_1157, x_1157) * vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
    let x_1164 : vec4<f32> = u_xlat4;
    let x_1166 : vec3<f32> = u_xlat22;
    u_xlat3.x = dot(vec3<f32>(x_1164.x, x_1164.y, x_1164.z), x_1166);
    let x_1170 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1170, 0.0f, 1.0f);
    let x_1174 : f32 = u_xlat3.x;
    let x_1175 : f32 = u_xlat40;
    u_xlat3.x = (x_1174 * x_1175);
    let x_1178 : vec3<f32> = u_xlat3;
    let x_1180 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1178.x, x_1178.x, x_1178.x) * x_1180);
    let x_1182 : vec4<f32> = u_xlat9;
    let x_1184 : f32 = u_xlat42;
    let x_1187 : vec3<f32> = u_xlat5;
    let x_1188 : vec3<f32> = ((vec3<f32>(x_1182.x, x_1182.y, x_1182.z) * vec3<f32>(x_1184, x_1184, x_1184)) + x_1187);
    let x_1189 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
    let x_1191 : vec4<f32> = u_xlat9;
    let x_1193 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_1191.x, x_1191.y, x_1191.z), vec3<f32>(x_1193.x, x_1193.y, x_1193.z));
    let x_1198 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1198, 1.17549435e-37f);
    let x_1202 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1202);
    let x_1205 : vec3<f32> = u_xlat3;
    let x_1207 : vec4<f32> = u_xlat9;
    let x_1209 : vec3<f32> = (vec3<f32>(x_1205.x, x_1205.x, x_1205.x) * vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
    let x_1210 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
    let x_1212 : vec4<f32> = u_xlat4;
    let x_1214 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_1212.x, x_1212.y, x_1212.z), vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
    let x_1219 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1219, 0.0f, 1.0f);
    let x_1222 : vec3<f32> = u_xlat22;
    let x_1223 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(x_1222, vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
    let x_1226 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1226, 0.0f, 1.0f);
    let x_1229 : f32 = u_xlat3.x;
    let x_1231 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1229 * x_1231);
    let x_1235 : f32 = u_xlat3.x;
    let x_1237 : f32 = u_xlat10.x;
    u_xlat3.x = ((x_1235 * x_1237) + 1.000010014f);
    let x_1241 : f32 = u_xlat40;
    let x_1242 : f32 = u_xlat40;
    u_xlat40 = (x_1241 * x_1242);
    let x_1245 : f32 = u_xlat3.x;
    let x_1247 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1245 * x_1247);
    let x_1250 : f32 = u_xlat40;
    u_xlat40 = max(x_1250, 0.100000001f);
    let x_1253 : f32 = u_xlat3.x;
    let x_1254 : f32 = u_xlat40;
    u_xlat3.x = (x_1253 * x_1254);
    let x_1257 : f32 = u_xlat15;
    let x_1259 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1257 * x_1259);
    let x_1262 : f32 = u_xlat39;
    let x_1264 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1262 / x_1264);
    let x_1267 : vec3<f32> = u_xlat0;
    let x_1268 : vec3<f32> = u_xlat3;
    let x_1271 : vec3<f32> = u_xlat8;
    let x_1272 : vec3<f32> = ((x_1267 * vec3<f32>(x_1268.x, x_1268.x, x_1268.x)) + x_1271);
    let x_1273 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1273.w);
    let x_1275 : vec4<f32> = u_xlat9;
    let x_1277 : vec3<f32> = u_xlat11;
    let x_1279 : vec4<f32> = u_xlat7;
    let x_1281 : vec3<f32> = ((vec3<f32>(x_1275.x, x_1275.y, x_1275.z) * x_1277) + vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
    let x_1282 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);

    continuing {
      let x_1284 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1284 + bitcast<u32>(1i));
    }
  }
  let x_1286 : vec3<f32> = u_xlat6;
  let x_1287 : f32 = u_xlat27;
  let x_1290 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_1286 * vec3<f32>(x_1287, x_1287, x_1287)) + vec3<f32>(x_1290.x, x_1290.y, x_1290.w));
  let x_1293 : vec4<f32> = u_xlat7;
  let x_1295 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1293.x, x_1293.y, x_1293.z) + x_1295);
  let x_1299 : vec3<f32> = u_xlat2;
  let x_1300 : f32 = u_xlat25;
  let x_1303 : vec3<f32> = u_xlat0;
  let x_1304 : vec3<f32> = ((x_1299 * vec3<f32>(x_1300, x_1300, x_1300)) + x_1303);
  let x_1305 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1305.w);
  let x_1310 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_1312 : f32 = x_122.unity_RenderingLayer.x;
  u_xlatu0 = (x_1310 & bitcast<u32>(x_1312));
  let x_1315 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1315);
  let x_1320 : f32 = u_xlat0.x;
  let x_1323 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1320 * x_1323);
  let x_1328 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1328, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1332 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1332.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

