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

@group(0) @binding(5) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(7) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(8) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_122 : UnityPerDraw;

@group(0) @binding(6) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_514 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_877 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

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
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_246.z, x_245.z);
  let x_251 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb36 = (x_251 == 0.0f);
  let x_254 : vec3<f32> = vs_INTERP0;
  let x_259 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_260 : vec3<f32> = (-(x_254) + x_259);
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat4;
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat38 = dot(vec3<f32>(x_263.x, x_263.y, x_263.z), vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_268);
  let x_270 : f32 = u_xlat38;
  let x_272 : vec4<f32> = u_xlat4;
  let x_274 : vec3<f32> = (vec3<f32>(x_270, x_270, x_270) * vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : bool = u_xlatb36;
  if (x_278) {
    let x_283 : f32 = u_xlat4.x;
    x_279 = x_283;
  } else {
    let x_287 : f32 = x_45.unity_MatrixV[0i].z;
    x_279 = x_287;
  }
  let x_288 : f32 = x_279;
  u_xlat5.x = x_288;
  let x_290 : bool = u_xlatb36;
  if (x_290) {
    let x_296 : f32 = u_xlat4.y;
    x_291 = x_296;
  } else {
    let x_299 : f32 = x_45.unity_MatrixV[1i].z;
    x_291 = x_299;
  }
  let x_300 : f32 = x_291;
  u_xlat5.y = x_300;
  let x_302 : bool = u_xlatb36;
  if (x_302) {
    let x_307 : f32 = u_xlat4.z;
    x_303 = x_307;
  } else {
    let x_311 : f32 = x_45.unity_MatrixV[2i].z;
    x_303 = x_311;
  }
  let x_312 : f32 = x_303;
  u_xlat5.z = x_312;
  let x_321 : vec2<f32> = vs_INTERP4;
  let x_323 : f32 = x_45.x_GlobalMipBias.x;
  let x_324 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_321, x_323);
  u_xlat4 = x_324;
  let x_330 : vec2<f32> = vs_INTERP4;
  let x_332 : f32 = x_45.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_330, x_332);
  u_xlat6 = vec3<f32>(x_333.x, x_333.y, x_333.z);
  let x_335 : vec4<f32> = u_xlat4;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat1;
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(vec3<f32>(x_342.x, x_342.y, x_342.w), vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : f32 = u_xlat36;
  u_xlat36 = (x_347 + 0.5f);
  let x_350 : f32 = u_xlat36;
  let x_352 : vec3<f32> = u_xlat6;
  let x_353 : vec3<f32> = (vec3<f32>(x_350, x_350, x_350) * x_352);
  let x_354 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : f32 = u_xlat4.w;
  u_xlat36 = max(x_357, 0.0001f);
  let x_360 : vec4<f32> = u_xlat4;
  let x_362 : f32 = u_xlat36;
  let x_364 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) / vec3<f32>(x_362, x_362, x_362));
  let x_365 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_369 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_370 : vec2<f32> = vec2<f32>(x_369.x, x_369.y);
  let x_374 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_370.x, x_370.y));
  let x_375 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_374.x, x_374.y, x_375.z);
  let x_377 : vec3<f32> = u_xlat6;
  let x_379 : vec4<f32> = hlslcc_FragCoord;
  let x_381 : vec2<f32> = (vec2<f32>(x_377.x, x_377.y) * vec2<f32>(x_379.x, x_379.y));
  let x_382 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_381.x, x_381.y, x_382.z);
  let x_385 : f32 = u_xlat6.y;
  let x_388 : f32 = x_45.x_ScaleBiasRt.x;
  let x_391 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat36 = ((x_385 * x_388) + x_391);
  let x_393 : f32 = u_xlat36;
  u_xlat6.z = (-(x_393) + 1.0f);
  let x_397 : vec3<f32> = u_xlat3;
  let x_398 : vec2<f32> = vec2<f32>(x_397.x, x_397.y);
  let x_399 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_398.x, x_398.y, x_399.z);
  let x_401 : vec3<f32> = u_xlat3;
  let x_405 : vec2<f32> = clamp(vec2<f32>(x_401.x, x_401.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_406 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_405.x, x_405.y, x_406.z);
  let x_409 : f32 = u_xlat3.x;
  u_xlat36 = ((-(x_409) * 0.959999979f) + 0.959999979f);
  let x_414 : f32 = u_xlat36;
  let x_417 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_414) + x_417);
  let x_420 : f32 = u_xlat36;
  let x_422 : vec3<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_420, x_420, x_420) * x_422);
  let x_424 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_424 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_428 : vec3<f32> = u_xlat3;
  let x_430 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_428.x, x_428.x, x_428.x) * x_430) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_436 : f32 = u_xlat3.y;
  u_xlat36 = (-(x_436) + 1.0f);
  let x_439 : f32 = u_xlat36;
  let x_440 : f32 = u_xlat36;
  u_xlat3.x = (x_439 * x_440);
  let x_444 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_444, 0.0078125f);
  let x_450 : f32 = u_xlat3.x;
  let x_452 : f32 = u_xlat3.x;
  u_xlat15 = (x_450 * x_452);
  let x_454 : f32 = u_xlat38;
  u_xlat38 = (x_454 + 1.0f);
  let x_456 : f32 = u_xlat38;
  u_xlat38 = min(x_456, 1.0f);
  let x_460 : f32 = u_xlat3.x;
  u_xlat39 = ((x_460 * 4.0f) + 2.0f);
  let x_470 : vec3<f32> = u_xlat6;
  let x_473 : f32 = x_45.x_GlobalMipBias.x;
  let x_474 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_470.x, x_470.z), x_473);
  u_xlat40 = x_474.x;
  let x_477 : f32 = u_xlat40;
  u_xlat41 = (x_477 + -1.0f);
  let x_481 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_482 : f32 = u_xlat41;
  u_xlat41 = ((x_481 * x_482) + 1.0f);
  let x_487 : f32 = u_xlat3.z;
  let x_488 : f32 = u_xlat40;
  u_xlat27 = min(x_487, x_488);
  let x_492 : vec4<f32> = vs_INTERP8;
  let x_493 : vec2<f32> = vec2<f32>(x_492.x, x_492.y);
  let x_495 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_493.x, x_493.y, x_495);
  let x_507 : vec3<f32> = txVec0;
  let x_509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_507.xy, x_507.z);
  u_xlat40 = x_509;
  let x_516 : f32 = x_514.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_516) + 1.0f);
  let x_520 : f32 = u_xlat40;
  let x_522 : f32 = x_514.x_MainLightShadowParams.x;
  let x_525 : f32 = u_xlat6.x;
  u_xlat40 = ((x_520 * x_522) + x_525);
  let x_529 : f32 = vs_INTERP8.z;
  u_xlatb6 = (0.0f >= x_529);
  let x_533 : f32 = vs_INTERP8.z;
  u_xlatb18 = (x_533 >= 1.0f);
  let x_535 : bool = u_xlatb18;
  let x_536 : bool = u_xlatb6;
  u_xlatb6 = (x_535 | x_536);
  let x_538 : bool = u_xlatb6;
  let x_539 : f32 = u_xlat40;
  u_xlat40 = select(x_539, 1.0f, x_538);
  let x_541 : vec3<f32> = vs_INTERP0;
  let x_543 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat6 = (x_541 + -(x_543));
  let x_546 : vec3<f32> = u_xlat6;
  let x_547 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_546, x_547);
  let x_551 : f32 = u_xlat6.x;
  let x_553 : f32 = x_514.x_MainLightShadowParams.z;
  let x_556 : f32 = x_514.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_551 * x_553) + x_556);
  let x_560 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_560, 0.0f, 1.0f);
  let x_564 : f32 = u_xlat40;
  u_xlat18 = (-(x_564) + 1.0f);
  let x_568 : f32 = u_xlat6.x;
  let x_569 : f32 = u_xlat18;
  let x_571 : f32 = u_xlat40;
  u_xlat40 = ((x_568 * x_569) + x_571);
  let x_573 : f32 = u_xlat41;
  let x_576 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_573, x_573, x_573) * vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_580 : vec3<f32> = u_xlat5;
  let x_582 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(-(x_580), vec3<f32>(x_582.x, x_582.y, x_582.w));
  let x_585 : f32 = u_xlat42;
  let x_586 : f32 = u_xlat42;
  u_xlat42 = (x_585 + x_586);
  let x_589 : vec4<f32> = u_xlat1;
  let x_591 : f32 = u_xlat42;
  let x_595 : vec3<f32> = u_xlat5;
  let x_597 : vec3<f32> = ((vec3<f32>(x_589.x, x_589.y, x_589.w) * -(vec3<f32>(x_591, x_591, x_591))) + -(x_595));
  let x_598 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec4<f32> = u_xlat1;
  let x_602 : vec3<f32> = u_xlat5;
  u_xlat42 = dot(vec3<f32>(x_600.x, x_600.y, x_600.w), x_602);
  let x_604 : f32 = u_xlat42;
  u_xlat42 = clamp(x_604, 0.0f, 1.0f);
  let x_606 : f32 = u_xlat42;
  u_xlat42 = (-(x_606) + 1.0f);
  let x_609 : f32 = u_xlat42;
  let x_610 : f32 = u_xlat42;
  u_xlat42 = (x_609 * x_610);
  let x_612 : f32 = u_xlat42;
  let x_613 : f32 = u_xlat42;
  u_xlat42 = (x_612 * x_613);
  let x_616 : f32 = u_xlat36;
  u_xlat43 = ((-(x_616) * 0.699999988f) + 1.700000048f);
  let x_622 : f32 = u_xlat36;
  let x_623 : f32 = u_xlat43;
  u_xlat36 = (x_622 * x_623);
  let x_625 : f32 = u_xlat36;
  u_xlat36 = (x_625 * 6.0f);
  let x_636 : vec4<f32> = u_xlat8;
  let x_638 : f32 = u_xlat36;
  let x_639 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_636.x, x_636.y, x_636.z), x_638);
  u_xlat8 = x_639;
  let x_641 : f32 = u_xlat8.w;
  u_xlat36 = (x_641 + -1.0f);
  let x_644 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_645 : f32 = u_xlat36;
  u_xlat36 = ((x_644 * x_645) + 1.0f);
  let x_648 : f32 = u_xlat36;
  u_xlat36 = max(x_648, 0.0f);
  let x_650 : f32 = u_xlat36;
  u_xlat36 = log2(x_650);
  let x_652 : f32 = u_xlat36;
  let x_654 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_652 * x_654);
  let x_656 : f32 = u_xlat36;
  u_xlat36 = exp2(x_656);
  let x_658 : f32 = u_xlat36;
  let x_660 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_658 * x_660);
  let x_662 : vec4<f32> = u_xlat8;
  let x_664 : f32 = u_xlat36;
  let x_666 : vec3<f32> = (vec3<f32>(x_662.x, x_662.y, x_662.z) * vec3<f32>(x_664, x_664, x_664));
  let x_667 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_671 : vec3<f32> = u_xlat3;
  let x_673 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_671.x, x_671.x) * vec2<f32>(x_673.x, x_673.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_679 : f32 = u_xlat9.y;
  u_xlat36 = (1.0f / x_679);
  let x_682 : vec3<f32> = u_xlat0;
  let x_684 : f32 = u_xlat38;
  u_xlat21 = (-(x_682) + vec3<f32>(x_684, x_684, x_684));
  let x_687 : f32 = u_xlat42;
  let x_689 : vec3<f32> = u_xlat21;
  let x_691 : vec3<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_687, x_687, x_687) * x_689) + x_691);
  let x_693 : f32 = u_xlat36;
  let x_695 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_693, x_693, x_693) * x_695);
  let x_697 : vec4<f32> = u_xlat8;
  let x_699 : vec3<f32> = u_xlat21;
  let x_700 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) * x_699);
  let x_701 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec4<f32> = u_xlat4;
  let x_705 : vec3<f32> = u_xlat7;
  let x_707 : vec4<f32> = u_xlat8;
  let x_709 : vec3<f32> = ((vec3<f32>(x_703.x, x_703.y, x_703.z) * x_705) + vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_710 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : f32 = u_xlat40;
  let x_715 : f32 = x_122.unity_LightData.z;
  u_xlat36 = (x_712 * x_715);
  let x_717 : vec4<f32> = u_xlat1;
  let x_720 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_717.x, x_717.y, x_717.w), vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : f32 = u_xlat38;
  u_xlat38 = clamp(x_723, 0.0f, 1.0f);
  let x_725 : f32 = u_xlat36;
  let x_726 : f32 = u_xlat38;
  u_xlat36 = (x_725 * x_726);
  let x_728 : f32 = u_xlat36;
  let x_730 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_728, x_728, x_728) * x_730);
  let x_732 : vec3<f32> = u_xlat5;
  let x_734 : vec4<f32> = x_45.x_MainLightPosition;
  let x_736 : vec3<f32> = (x_732 + vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat8;
  let x_741 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_739.x, x_739.y, x_739.z), vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : f32 = u_xlat36;
  u_xlat36 = max(x_744, 1.17549435e-37f);
  let x_747 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_747);
  let x_749 : f32 = u_xlat36;
  let x_751 : vec4<f32> = u_xlat8;
  let x_753 : vec3<f32> = (vec3<f32>(x_749, x_749, x_749) * vec3<f32>(x_751.x, x_751.y, x_751.z));
  let x_754 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : vec4<f32> = u_xlat1;
  let x_758 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_756.x, x_756.y, x_756.w), vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : f32 = u_xlat36;
  u_xlat36 = clamp(x_761, 0.0f, 1.0f);
  let x_764 : vec4<f32> = x_45.x_MainLightPosition;
  let x_766 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_764.x, x_764.y, x_764.z), vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : f32 = u_xlat38;
  u_xlat38 = clamp(x_769, 0.0f, 1.0f);
  let x_771 : f32 = u_xlat36;
  let x_772 : f32 = u_xlat36;
  u_xlat36 = (x_771 * x_772);
  let x_774 : f32 = u_xlat36;
  let x_776 : f32 = u_xlat9.x;
  u_xlat36 = ((x_774 * x_776) + 1.000010014f);
  let x_780 : f32 = u_xlat38;
  let x_781 : f32 = u_xlat38;
  u_xlat38 = (x_780 * x_781);
  let x_783 : f32 = u_xlat36;
  let x_784 : f32 = u_xlat36;
  u_xlat36 = (x_783 * x_784);
  let x_786 : f32 = u_xlat38;
  u_xlat38 = max(x_786, 0.100000001f);
  let x_789 : f32 = u_xlat36;
  let x_790 : f32 = u_xlat38;
  u_xlat36 = (x_789 * x_790);
  let x_792 : f32 = u_xlat39;
  let x_793 : f32 = u_xlat36;
  u_xlat36 = (x_792 * x_793);
  let x_795 : f32 = u_xlat15;
  let x_796 : f32 = u_xlat36;
  u_xlat36 = (x_795 / x_796);
  let x_798 : vec3<f32> = u_xlat0;
  let x_799 : f32 = u_xlat36;
  let x_802 : vec3<f32> = u_xlat7;
  let x_803 : vec3<f32> = ((x_798 * vec3<f32>(x_799, x_799, x_799)) + x_802);
  let x_804 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec3<f32> = u_xlat6;
  let x_807 : vec4<f32> = u_xlat8;
  u_xlat6 = (x_806 * vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_811 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_813 : f32 = x_122.unity_LightData.y;
  u_xlat36 = min(x_811, x_813);
  let x_817 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_817));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_829 : u32 = u_xlatu_loop_1;
    let x_830 : u32 = u_xlatu36;
    if ((x_829 < x_830)) {
    } else {
      break;
    }
    let x_833 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_833 >> 2u);
    let x_837 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_837 & 3u));
    let x_840 : u32 = u_xlatu3;
    let x_843 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_840)];
    let x_853 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_858 : vec4<u32> = indexable[x_853];
    u_xlat3.x = dot(x_843, bitcast<vec4<f32>>(x_858));
    let x_864 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_864);
    let x_866 : vec3<f32> = vs_INTERP0;
    let x_878 : i32 = u_xlati3;
    let x_880 : vec4<f32> = x_877.x_AdditionalLightsPosition[x_878];
    let x_883 : i32 = u_xlati3;
    let x_885 : vec4<f32> = x_877.x_AdditionalLightsPosition[x_883];
    u_xlat21 = ((-(x_866) * vec3<f32>(x_880.w, x_880.w, x_880.w)) + vec3<f32>(x_885.x, x_885.y, x_885.z));
    let x_888 : vec3<f32> = u_xlat21;
    let x_889 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(x_888, x_889);
    let x_891 : f32 = u_xlat40;
    u_xlat40 = max(x_891, 6.10351562e-05f);
    let x_894 : f32 = u_xlat40;
    u_xlat42 = inverseSqrt(x_894);
    let x_897 : f32 = u_xlat42;
    let x_899 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_897, x_897, x_897) * x_899);
    let x_901 : f32 = u_xlat40;
    u_xlat43 = (1.0f / x_901);
    let x_903 : f32 = u_xlat40;
    let x_904 : i32 = u_xlati3;
    let x_906 : f32 = x_877.x_AdditionalLightsAttenuation[x_904].x;
    u_xlat40 = (x_903 * x_906);
    let x_908 : f32 = u_xlat40;
    let x_910 : f32 = u_xlat40;
    u_xlat40 = ((-(x_908) * x_910) + 1.0f);
    let x_913 : f32 = u_xlat40;
    u_xlat40 = max(x_913, 0.0f);
    let x_915 : f32 = u_xlat40;
    let x_916 : f32 = u_xlat40;
    u_xlat40 = (x_915 * x_916);
    let x_918 : f32 = u_xlat40;
    let x_919 : f32 = u_xlat43;
    u_xlat40 = (x_918 * x_919);
    let x_921 : i32 = u_xlati3;
    let x_923 : vec4<f32> = x_877.x_AdditionalLightsSpotDir[x_921];
    let x_925 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_923.x, x_923.y, x_923.z), x_925);
    let x_927 : f32 = u_xlat43;
    let x_928 : i32 = u_xlati3;
    let x_930 : f32 = x_877.x_AdditionalLightsAttenuation[x_928].z;
    let x_932 : i32 = u_xlati3;
    let x_934 : f32 = x_877.x_AdditionalLightsAttenuation[x_932].w;
    u_xlat43 = ((x_927 * x_930) + x_934);
    let x_936 : f32 = u_xlat43;
    u_xlat43 = clamp(x_936, 0.0f, 1.0f);
    let x_938 : f32 = u_xlat43;
    let x_939 : f32 = u_xlat43;
    u_xlat43 = (x_938 * x_939);
    let x_941 : f32 = u_xlat40;
    let x_942 : f32 = u_xlat43;
    u_xlat40 = (x_941 * x_942);
    let x_945 : f32 = u_xlat41;
    let x_947 : i32 = u_xlati3;
    let x_949 : vec4<f32> = x_877.x_AdditionalLightsColor[x_947];
    u_xlat11 = (vec3<f32>(x_945, x_945, x_945) * vec3<f32>(x_949.x, x_949.y, x_949.z));
    let x_952 : vec4<f32> = u_xlat1;
    let x_954 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_952.x, x_952.y, x_952.w), x_954);
    let x_958 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_958, 0.0f, 1.0f);
    let x_962 : f32 = u_xlat3.x;
    let x_963 : f32 = u_xlat40;
    u_xlat3.x = (x_962 * x_963);
    let x_966 : vec3<f32> = u_xlat3;
    let x_968 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_966.x, x_966.x, x_966.x) * x_968);
    let x_970 : vec3<f32> = u_xlat21;
    let x_971 : f32 = u_xlat42;
    let x_974 : vec3<f32> = u_xlat5;
    u_xlat21 = ((x_970 * vec3<f32>(x_971, x_971, x_971)) + x_974);
    let x_976 : vec3<f32> = u_xlat21;
    let x_977 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_976, x_977);
    let x_981 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_981, 1.17549435e-37f);
    let x_985 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_985);
    let x_988 : vec3<f32> = u_xlat3;
    let x_990 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_988.x, x_988.x, x_988.x) * x_990);
    let x_992 : vec4<f32> = u_xlat1;
    let x_994 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(vec3<f32>(x_992.x, x_992.y, x_992.w), x_994);
    let x_998 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_998, 0.0f, 1.0f);
    let x_1001 : vec3<f32> = u_xlat10;
    let x_1002 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(x_1001, x_1002);
    let x_1004 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1004, 0.0f, 1.0f);
    let x_1007 : f32 = u_xlat3.x;
    let x_1009 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1007 * x_1009);
    let x_1013 : f32 = u_xlat3.x;
    let x_1015 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_1013 * x_1015) + 1.000010014f);
    let x_1019 : f32 = u_xlat40;
    let x_1020 : f32 = u_xlat40;
    u_xlat40 = (x_1019 * x_1020);
    let x_1023 : f32 = u_xlat3.x;
    let x_1025 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1023 * x_1025);
    let x_1028 : f32 = u_xlat40;
    u_xlat40 = max(x_1028, 0.100000001f);
    let x_1031 : f32 = u_xlat3.x;
    let x_1032 : f32 = u_xlat40;
    u_xlat3.x = (x_1031 * x_1032);
    let x_1035 : f32 = u_xlat39;
    let x_1037 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1035 * x_1037);
    let x_1040 : f32 = u_xlat15;
    let x_1042 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1040 / x_1042);
    let x_1045 : vec3<f32> = u_xlat0;
    let x_1046 : vec3<f32> = u_xlat3;
    let x_1049 : vec3<f32> = u_xlat7;
    u_xlat21 = ((x_1045 * vec3<f32>(x_1046.x, x_1046.x, x_1046.x)) + x_1049);
    let x_1051 : vec3<f32> = u_xlat21;
    let x_1052 : vec3<f32> = u_xlat11;
    let x_1054 : vec4<f32> = u_xlat8;
    let x_1056 : vec3<f32> = ((x_1051 * x_1052) + vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
    let x_1057 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);

    continuing {
      let x_1059 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1059 + bitcast<u32>(1i));
    }
  }
  let x_1061 : vec4<f32> = u_xlat4;
  let x_1063 : f32 = u_xlat27;
  let x_1066 : vec3<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1061.x, x_1061.y, x_1061.z) * vec3<f32>(x_1063, x_1063, x_1063)) + x_1066);
  let x_1068 : vec4<f32> = u_xlat8;
  let x_1070 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1068.x, x_1068.y, x_1068.z) + x_1070);
  let x_1074 : vec3<f32> = u_xlat2;
  let x_1075 : f32 = u_xlat25;
  let x_1078 : vec3<f32> = u_xlat0;
  let x_1079 : vec3<f32> = ((x_1074 * vec3<f32>(x_1075, x_1075, x_1075)) + x_1078);
  let x_1080 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

