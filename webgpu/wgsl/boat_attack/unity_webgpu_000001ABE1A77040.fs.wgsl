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

@group(1) @binding(3) var<uniform> x_319 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1031 : AdditionalLights;

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
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var u_xlat15 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb28 : bool;
  var x_683 : f32;
  var u_xlat28 : f32;
  var u_xlat42 : f32;
  var u_xlat43 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
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
  let x_314 : vec3<f32> = vs_INTERP0;
  let x_321 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres0;
  let x_324 : vec3<f32> = (x_314 + -(vec3<f32>(x_321.x, x_321.y, x_321.z)));
  let x_325 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_328 : vec3<f32> = vs_INTERP0;
  let x_330 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres1;
  let x_333 : vec3<f32> = (x_328 + -(vec3<f32>(x_330.x, x_330.y, x_330.z)));
  let x_334 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_337 : vec3<f32> = vs_INTERP0;
  let x_339 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres2;
  let x_342 : vec3<f32> = (x_337 + -(vec3<f32>(x_339.x, x_339.y, x_339.z)));
  let x_343 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_346 : vec3<f32> = vs_INTERP0;
  let x_349 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_346 + -(vec3<f32>(x_349.x, x_349.y, x_349.z)));
  let x_353 : vec4<f32> = u_xlat4;
  let x_355 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_353.x, x_353.y, x_353.z), vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_359 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = u_xlat6;
  u_xlat4.y = dot(vec3<f32>(x_359.x, x_359.y, x_359.z), vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_365 : vec4<f32> = u_xlat7;
  let x_367 : vec4<f32> = u_xlat7;
  u_xlat4.z = dot(vec3<f32>(x_365.x, x_365.y, x_365.z), vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_371 : vec3<f32> = u_xlat8;
  let x_372 : vec3<f32> = u_xlat8;
  u_xlat4.w = dot(x_371, x_372);
  let x_378 : vec4<f32> = u_xlat4;
  let x_381 : vec4<f32> = x_319.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_378 < x_381);
  let x_384 : bool = u_xlatb4.x;
  u_xlat6.x = select(0.0f, 1.0f, x_384);
  let x_388 : bool = u_xlatb4.y;
  u_xlat6.y = select(0.0f, 1.0f, x_388);
  let x_392 : bool = u_xlatb4.z;
  u_xlat6.z = select(0.0f, 1.0f, x_392);
  let x_396 : bool = u_xlatb4.w;
  u_xlat6.w = select(0.0f, 1.0f, x_396);
  let x_400 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_400);
  let x_405 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_405);
  let x_409 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_409);
  let x_412 : vec4<f32> = u_xlat4;
  let x_414 : vec4<f32> = u_xlat6;
  let x_416 : vec3<f32> = (vec3<f32>(x_412.x, x_412.y, x_412.z) + vec3<f32>(x_414.y, x_414.z, x_414.w));
  let x_417 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat4;
  let x_422 : vec3<f32> = max(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_423 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_423.x, x_422.x, x_422.y, x_422.z);
  let x_425 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_425, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_430 : f32 = u_xlat36;
  u_xlat36 = (-(x_430) + 4.0f);
  let x_435 : f32 = u_xlat36;
  u_xlatu36 = u32(x_435);
  let x_439 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_439) << bitcast<u32>(2i));
  let x_442 : vec3<f32> = vs_INTERP0;
  let x_444 : i32 = u_xlati36;
  let x_447 : i32 = u_xlati36;
  let x_451 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_444 + 1i) / 4i)][((x_447 + 1i) % 4i)];
  let x_453 : vec3<f32> = (vec3<f32>(x_442.y, x_442.y, x_442.y) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : i32 = u_xlati36;
  let x_458 : i32 = u_xlati36;
  let x_461 : vec4<f32> = x_319.x_MainLightWorldToShadow[(x_456 / 4i)][(x_458 % 4i)];
  let x_463 : vec3<f32> = vs_INTERP0;
  let x_466 : vec4<f32> = u_xlat4;
  let x_468 : vec3<f32> = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_463.x, x_463.x, x_463.x)) + vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : i32 = u_xlati36;
  let x_474 : i32 = u_xlati36;
  let x_478 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_471 + 2i) / 4i)][((x_474 + 2i) % 4i)];
  let x_480 : vec3<f32> = vs_INTERP0;
  let x_483 : vec4<f32> = u_xlat4;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480.z, x_480.z, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec4<f32> = u_xlat4;
  let x_490 : i32 = u_xlati36;
  let x_493 : i32 = u_xlati36;
  let x_497 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_490 + 3i) / 4i)][((x_493 + 3i) % 4i)];
  let x_499 : vec3<f32> = (vec3<f32>(x_488.x, x_488.y, x_488.z) + vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_509 : vec2<f32> = vs_INTERP4;
  let x_511 : f32 = x_45.x_GlobalMipBias.x;
  let x_512 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_509, x_511);
  let x_513 : vec3<f32> = vec3<f32>(x_512.x, x_512.y, x_512.z);
  let x_514 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_518 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_519 : vec2<f32> = vec2<f32>(x_518.x, x_518.y);
  let x_523 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_519.x, x_519.y));
  let x_524 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat7;
  let x_528 : vec4<f32> = hlslcc_FragCoord;
  let x_530 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_528.x, x_528.y));
  let x_531 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
  let x_534 : f32 = u_xlat7.y;
  let x_537 : f32 = x_45.x_ScaleBiasRt.x;
  let x_540 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat36 = ((x_534 * x_537) + x_540);
  let x_542 : f32 = u_xlat36;
  u_xlat7.z = (-(x_542) + 1.0f);
  let x_546 : vec3<f32> = u_xlat3;
  let x_547 : vec2<f32> = vec2<f32>(x_546.x, x_546.y);
  let x_548 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_547.x, x_547.y, x_548.z);
  let x_550 : vec3<f32> = u_xlat3;
  let x_554 : vec2<f32> = clamp(vec2<f32>(x_550.x, x_550.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_555 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_554.x, x_554.y, x_555.z);
  let x_558 : f32 = u_xlat3.x;
  u_xlat36 = ((-(x_558) * 0.959999979f) + 0.959999979f);
  let x_563 : f32 = u_xlat36;
  let x_566 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_563) + x_566);
  let x_568 : f32 = u_xlat36;
  let x_570 : vec3<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_568, x_568, x_568) * x_570);
  let x_572 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_572 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_576 : vec3<f32> = u_xlat3;
  let x_578 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_576.x, x_576.x, x_576.x) * x_578) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_584 : f32 = u_xlat3.y;
  u_xlat36 = (-(x_584) + 1.0f);
  let x_587 : f32 = u_xlat36;
  let x_588 : f32 = u_xlat36;
  u_xlat3.x = (x_587 * x_588);
  let x_592 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_592, 0.0078125f);
  let x_598 : f32 = u_xlat3.x;
  let x_600 : f32 = u_xlat3.x;
  u_xlat15 = (x_598 * x_600);
  let x_602 : f32 = u_xlat38;
  u_xlat38 = (x_602 + 1.0f);
  let x_604 : f32 = u_xlat38;
  u_xlat38 = min(x_604, 1.0f);
  let x_608 : f32 = u_xlat3.x;
  u_xlat39 = ((x_608 * 4.0f) + 2.0f);
  let x_617 : vec4<f32> = u_xlat7;
  let x_620 : f32 = x_45.x_GlobalMipBias.x;
  let x_621 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_617.x, x_617.z), x_620);
  u_xlat40 = x_621.x;
  let x_624 : f32 = u_xlat40;
  u_xlat41 = (x_624 + -1.0f);
  let x_627 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_628 : f32 = u_xlat41;
  u_xlat41 = ((x_627 * x_628) + 1.0f);
  let x_633 : f32 = u_xlat3.z;
  let x_634 : f32 = u_xlat40;
  u_xlat27 = min(x_633, x_634);
  let x_637 : vec4<f32> = u_xlat4;
  let x_638 : vec2<f32> = vec2<f32>(x_637.x, x_637.y);
  let x_640 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_638.x, x_638.y, x_640);
  let x_652 : vec3<f32> = txVec0;
  let x_654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_652.xy, x_652.z);
  u_xlat4.x = x_654;
  let x_658 : f32 = x_319.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_658) + 1.0f);
  let x_663 : f32 = u_xlat4.x;
  let x_665 : f32 = x_319.x_MainLightShadowParams.x;
  let x_668 : f32 = u_xlat16.x;
  u_xlat4.x = ((x_663 * x_665) + x_668);
  let x_673 : f32 = u_xlat4.z;
  u_xlatb16 = (0.0f >= x_673);
  let x_677 : f32 = u_xlat4.z;
  u_xlatb28 = (x_677 >= 1.0f);
  let x_679 : bool = u_xlatb28;
  let x_680 : bool = u_xlatb16;
  u_xlatb16 = (x_679 | x_680);
  let x_682 : bool = u_xlatb16;
  if (x_682) {
    x_683 = 1.0f;
  } else {
    let x_688 : f32 = u_xlat4.x;
    x_683 = x_688;
  }
  let x_689 : f32 = x_683;
  u_xlat4.x = x_689;
  let x_691 : vec3<f32> = vs_INTERP0;
  let x_693 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat16 = (x_691 + -(x_693));
  let x_696 : vec3<f32> = u_xlat16;
  let x_697 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_696, x_697);
  let x_701 : f32 = u_xlat16.x;
  let x_703 : f32 = x_319.x_MainLightShadowParams.z;
  let x_706 : f32 = x_319.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_701 * x_703) + x_706);
  let x_710 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_710, 0.0f, 1.0f);
  let x_715 : f32 = u_xlat4.x;
  u_xlat28 = (-(x_715) + 1.0f);
  let x_719 : f32 = u_xlat16.x;
  let x_720 : f32 = u_xlat28;
  let x_723 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_719 * x_720) + x_723);
  let x_726 : f32 = u_xlat41;
  let x_729 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_726, x_726, x_726) * vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_733 : vec3<f32> = u_xlat5;
  let x_735 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(-(x_733), vec3<f32>(x_735.x, x_735.y, x_735.w));
  let x_738 : f32 = u_xlat42;
  let x_739 : f32 = u_xlat42;
  u_xlat42 = (x_738 + x_739);
  let x_741 : vec4<f32> = u_xlat1;
  let x_743 : f32 = u_xlat42;
  let x_747 : vec3<f32> = u_xlat5;
  let x_749 : vec3<f32> = ((vec3<f32>(x_741.x, x_741.y, x_741.w) * -(vec3<f32>(x_743, x_743, x_743))) + -(x_747));
  let x_750 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec4<f32> = u_xlat1;
  let x_754 : vec3<f32> = u_xlat5;
  u_xlat42 = dot(vec3<f32>(x_752.x, x_752.y, x_752.w), x_754);
  let x_756 : f32 = u_xlat42;
  u_xlat42 = clamp(x_756, 0.0f, 1.0f);
  let x_758 : f32 = u_xlat42;
  u_xlat42 = (-(x_758) + 1.0f);
  let x_761 : f32 = u_xlat42;
  let x_762 : f32 = u_xlat42;
  u_xlat42 = (x_761 * x_762);
  let x_764 : f32 = u_xlat42;
  let x_765 : f32 = u_xlat42;
  u_xlat42 = (x_764 * x_765);
  let x_768 : f32 = u_xlat36;
  u_xlat43 = ((-(x_768) * 0.699999988f) + 1.700000048f);
  let x_774 : f32 = u_xlat36;
  let x_775 : f32 = u_xlat43;
  u_xlat36 = (x_774 * x_775);
  let x_777 : f32 = u_xlat36;
  u_xlat36 = (x_777 * 6.0f);
  let x_788 : vec4<f32> = u_xlat7;
  let x_790 : f32 = u_xlat36;
  let x_791 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_788.x, x_788.y, x_788.z), x_790);
  u_xlat7 = x_791;
  let x_793 : f32 = u_xlat7.w;
  u_xlat36 = (x_793 + -1.0f);
  let x_796 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_797 : f32 = u_xlat36;
  u_xlat36 = ((x_796 * x_797) + 1.0f);
  let x_800 : f32 = u_xlat36;
  u_xlat36 = max(x_800, 0.0f);
  let x_802 : f32 = u_xlat36;
  u_xlat36 = log2(x_802);
  let x_804 : f32 = u_xlat36;
  let x_806 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_804 * x_806);
  let x_808 : f32 = u_xlat36;
  u_xlat36 = exp2(x_808);
  let x_810 : f32 = u_xlat36;
  let x_812 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_810 * x_812);
  let x_814 : vec4<f32> = u_xlat7;
  let x_816 : f32 = u_xlat36;
  let x_818 : vec3<f32> = (vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(x_816, x_816, x_816));
  let x_819 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_823 : vec3<f32> = u_xlat3;
  let x_825 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_823.x, x_823.x) * vec2<f32>(x_825.x, x_825.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_831 : f32 = u_xlat9.y;
  u_xlat36 = (1.0f / x_831);
  let x_834 : vec3<f32> = u_xlat0;
  let x_836 : f32 = u_xlat38;
  u_xlat21 = (-(x_834) + vec3<f32>(x_836, x_836, x_836));
  let x_839 : f32 = u_xlat42;
  let x_841 : vec3<f32> = u_xlat21;
  let x_843 : vec3<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_839, x_839, x_839) * x_841) + x_843);
  let x_845 : f32 = u_xlat36;
  let x_847 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_845, x_845, x_845) * x_847);
  let x_849 : vec4<f32> = u_xlat7;
  let x_851 : vec3<f32> = u_xlat21;
  let x_852 : vec3<f32> = (vec3<f32>(x_849.x, x_849.y, x_849.z) * x_851);
  let x_853 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec4<f32> = u_xlat6;
  let x_857 : vec3<f32> = u_xlat8;
  let x_859 : vec4<f32> = u_xlat7;
  let x_861 : vec3<f32> = ((vec3<f32>(x_855.x, x_855.y, x_855.z) * x_857) + vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_865 : f32 = u_xlat4.x;
  let x_867 : f32 = x_122.unity_LightData.z;
  u_xlat36 = (x_865 * x_867);
  let x_869 : vec4<f32> = u_xlat1;
  let x_872 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_869.x, x_869.y, x_869.w), vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : f32 = u_xlat38;
  u_xlat38 = clamp(x_875, 0.0f, 1.0f);
  let x_877 : f32 = u_xlat36;
  let x_878 : f32 = u_xlat38;
  u_xlat36 = (x_877 * x_878);
  let x_880 : f32 = u_xlat36;
  let x_882 : vec3<f32> = u_xlat16;
  let x_883 : vec3<f32> = (vec3<f32>(x_880, x_880, x_880) * x_882);
  let x_884 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec3<f32> = u_xlat5;
  let x_888 : vec4<f32> = x_45.x_MainLightPosition;
  let x_890 : vec3<f32> = (x_886 + vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_893 : vec4<f32> = u_xlat7;
  let x_895 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_893.x, x_893.y, x_893.z), vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : f32 = u_xlat36;
  u_xlat36 = max(x_898, 1.17549435e-37f);
  let x_901 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_901);
  let x_903 : f32 = u_xlat36;
  let x_905 : vec4<f32> = u_xlat7;
  let x_907 : vec3<f32> = (vec3<f32>(x_903, x_903, x_903) * vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : vec4<f32> = u_xlat1;
  let x_912 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_910.x, x_910.y, x_910.w), vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_915 : f32 = u_xlat36;
  u_xlat36 = clamp(x_915, 0.0f, 1.0f);
  let x_918 : vec4<f32> = x_45.x_MainLightPosition;
  let x_920 : vec4<f32> = u_xlat7;
  u_xlat38 = dot(vec3<f32>(x_918.x, x_918.y, x_918.z), vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_923 : f32 = u_xlat38;
  u_xlat38 = clamp(x_923, 0.0f, 1.0f);
  let x_925 : f32 = u_xlat36;
  let x_926 : f32 = u_xlat36;
  u_xlat36 = (x_925 * x_926);
  let x_928 : f32 = u_xlat36;
  let x_930 : f32 = u_xlat9.x;
  u_xlat36 = ((x_928 * x_930) + 1.000010014f);
  let x_934 : f32 = u_xlat38;
  let x_935 : f32 = u_xlat38;
  u_xlat38 = (x_934 * x_935);
  let x_937 : f32 = u_xlat36;
  let x_938 : f32 = u_xlat36;
  u_xlat36 = (x_937 * x_938);
  let x_940 : f32 = u_xlat38;
  u_xlat38 = max(x_940, 0.100000001f);
  let x_943 : f32 = u_xlat36;
  let x_944 : f32 = u_xlat38;
  u_xlat36 = (x_943 * x_944);
  let x_946 : f32 = u_xlat39;
  let x_947 : f32 = u_xlat36;
  u_xlat36 = (x_946 * x_947);
  let x_949 : f32 = u_xlat15;
  let x_950 : f32 = u_xlat36;
  u_xlat36 = (x_949 / x_950);
  let x_952 : vec3<f32> = u_xlat0;
  let x_953 : f32 = u_xlat36;
  let x_956 : vec3<f32> = u_xlat8;
  let x_957 : vec3<f32> = ((x_952 * vec3<f32>(x_953, x_953, x_953)) + x_956);
  let x_958 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
  let x_960 : vec4<f32> = u_xlat4;
  let x_962 : vec4<f32> = u_xlat7;
  let x_964 : vec3<f32> = (vec3<f32>(x_960.x, x_960.y, x_960.z) * vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_968 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_970 : f32 = x_122.unity_LightData.y;
  u_xlat36 = min(x_968, x_970);
  let x_972 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_972));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_984 : u32 = u_xlatu_loop_1;
    let x_985 : u32 = u_xlatu36;
    if ((x_984 < x_985)) {
    } else {
      break;
    }
    let x_988 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_988 >> 2u);
    let x_991 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_991 & 3u));
    let x_994 : u32 = u_xlatu3;
    let x_997 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_994)];
    let x_1007 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1012 : vec4<u32> = indexable[x_1007];
    u_xlat3.x = dot(x_997, bitcast<vec4<f32>>(x_1012));
    let x_1018 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_1018);
    let x_1020 : vec3<f32> = vs_INTERP0;
    let x_1032 : i32 = u_xlati3;
    let x_1034 : vec4<f32> = x_1031.x_AdditionalLightsPosition[x_1032];
    let x_1037 : i32 = u_xlati3;
    let x_1039 : vec4<f32> = x_1031.x_AdditionalLightsPosition[x_1037];
    u_xlat21 = ((-(x_1020) * vec3<f32>(x_1034.w, x_1034.w, x_1034.w)) + vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
    let x_1042 : vec3<f32> = u_xlat21;
    let x_1043 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(x_1042, x_1043);
    let x_1045 : f32 = u_xlat40;
    u_xlat40 = max(x_1045, 6.10351562e-05f);
    let x_1048 : f32 = u_xlat40;
    u_xlat42 = inverseSqrt(x_1048);
    let x_1051 : f32 = u_xlat42;
    let x_1053 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1051, x_1051, x_1051) * x_1053);
    let x_1055 : f32 = u_xlat40;
    u_xlat43 = (1.0f / x_1055);
    let x_1057 : f32 = u_xlat40;
    let x_1058 : i32 = u_xlati3;
    let x_1060 : f32 = x_1031.x_AdditionalLightsAttenuation[x_1058].x;
    u_xlat40 = (x_1057 * x_1060);
    let x_1062 : f32 = u_xlat40;
    let x_1064 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1062) * x_1064) + 1.0f);
    let x_1067 : f32 = u_xlat40;
    u_xlat40 = max(x_1067, 0.0f);
    let x_1069 : f32 = u_xlat40;
    let x_1070 : f32 = u_xlat40;
    u_xlat40 = (x_1069 * x_1070);
    let x_1072 : f32 = u_xlat40;
    let x_1073 : f32 = u_xlat43;
    u_xlat40 = (x_1072 * x_1073);
    let x_1075 : i32 = u_xlati3;
    let x_1077 : vec4<f32> = x_1031.x_AdditionalLightsSpotDir[x_1075];
    let x_1079 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1077.x, x_1077.y, x_1077.z), x_1079);
    let x_1081 : f32 = u_xlat43;
    let x_1082 : i32 = u_xlati3;
    let x_1084 : f32 = x_1031.x_AdditionalLightsAttenuation[x_1082].z;
    let x_1086 : i32 = u_xlati3;
    let x_1088 : f32 = x_1031.x_AdditionalLightsAttenuation[x_1086].w;
    u_xlat43 = ((x_1081 * x_1084) + x_1088);
    let x_1090 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1090, 0.0f, 1.0f);
    let x_1092 : f32 = u_xlat43;
    let x_1093 : f32 = u_xlat43;
    u_xlat43 = (x_1092 * x_1093);
    let x_1095 : f32 = u_xlat40;
    let x_1096 : f32 = u_xlat43;
    u_xlat40 = (x_1095 * x_1096);
    let x_1099 : f32 = u_xlat41;
    let x_1101 : i32 = u_xlati3;
    let x_1103 : vec4<f32> = x_1031.x_AdditionalLightsColor[x_1101];
    u_xlat11 = (vec3<f32>(x_1099, x_1099, x_1099) * vec3<f32>(x_1103.x, x_1103.y, x_1103.z));
    let x_1106 : vec4<f32> = u_xlat1;
    let x_1108 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_1106.x, x_1106.y, x_1106.w), x_1108);
    let x_1112 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1112, 0.0f, 1.0f);
    let x_1116 : f32 = u_xlat3.x;
    let x_1117 : f32 = u_xlat40;
    u_xlat3.x = (x_1116 * x_1117);
    let x_1120 : vec3<f32> = u_xlat3;
    let x_1122 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1120.x, x_1120.x, x_1120.x) * x_1122);
    let x_1124 : vec3<f32> = u_xlat21;
    let x_1125 : f32 = u_xlat42;
    let x_1128 : vec3<f32> = u_xlat5;
    u_xlat21 = ((x_1124 * vec3<f32>(x_1125, x_1125, x_1125)) + x_1128);
    let x_1130 : vec3<f32> = u_xlat21;
    let x_1131 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_1130, x_1131);
    let x_1135 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1135, 1.17549435e-37f);
    let x_1139 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1139);
    let x_1142 : vec3<f32> = u_xlat3;
    let x_1144 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1142.x, x_1142.x, x_1142.x) * x_1144);
    let x_1146 : vec4<f32> = u_xlat1;
    let x_1148 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(vec3<f32>(x_1146.x, x_1146.y, x_1146.w), x_1148);
    let x_1152 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1152, 0.0f, 1.0f);
    let x_1155 : vec3<f32> = u_xlat10;
    let x_1156 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(x_1155, x_1156);
    let x_1158 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1158, 0.0f, 1.0f);
    let x_1161 : f32 = u_xlat3.x;
    let x_1163 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1161 * x_1163);
    let x_1167 : f32 = u_xlat3.x;
    let x_1169 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_1167 * x_1169) + 1.000010014f);
    let x_1173 : f32 = u_xlat40;
    let x_1174 : f32 = u_xlat40;
    u_xlat40 = (x_1173 * x_1174);
    let x_1177 : f32 = u_xlat3.x;
    let x_1179 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1177 * x_1179);
    let x_1182 : f32 = u_xlat40;
    u_xlat40 = max(x_1182, 0.100000001f);
    let x_1185 : f32 = u_xlat3.x;
    let x_1186 : f32 = u_xlat40;
    u_xlat3.x = (x_1185 * x_1186);
    let x_1189 : f32 = u_xlat39;
    let x_1191 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1189 * x_1191);
    let x_1194 : f32 = u_xlat15;
    let x_1196 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1194 / x_1196);
    let x_1199 : vec3<f32> = u_xlat0;
    let x_1200 : vec3<f32> = u_xlat3;
    let x_1203 : vec3<f32> = u_xlat8;
    u_xlat21 = ((x_1199 * vec3<f32>(x_1200.x, x_1200.x, x_1200.x)) + x_1203);
    let x_1205 : vec3<f32> = u_xlat21;
    let x_1206 : vec3<f32> = u_xlat11;
    let x_1208 : vec4<f32> = u_xlat7;
    let x_1210 : vec3<f32> = ((x_1205 * x_1206) + vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
    let x_1211 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);

    continuing {
      let x_1213 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1213 + bitcast<u32>(1i));
    }
  }
  let x_1215 : vec4<f32> = u_xlat6;
  let x_1217 : f32 = u_xlat27;
  let x_1220 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_1215.x, x_1215.y, x_1215.z) * vec3<f32>(x_1217, x_1217, x_1217)) + vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
  let x_1223 : vec4<f32> = u_xlat7;
  let x_1225 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1223.x, x_1223.y, x_1223.z) + x_1225);
  let x_1229 : vec3<f32> = u_xlat2;
  let x_1230 : f32 = u_xlat25;
  let x_1233 : vec3<f32> = u_xlat0;
  let x_1234 : vec3<f32> = ((x_1229 * vec3<f32>(x_1230, x_1230, x_1230)) + x_1233);
  let x_1235 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0);
}

