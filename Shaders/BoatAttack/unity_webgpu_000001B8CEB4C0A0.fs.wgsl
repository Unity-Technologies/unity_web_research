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

@group(1) @binding(3) var<uniform> x_319 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1072 : AdditionalLights;

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
  var x_724 : f32;
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
  let x_512 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_509, x_511);
  u_xlat6 = x_512;
  let x_517 : vec2<f32> = vs_INTERP4;
  let x_519 : f32 = x_45.x_GlobalMipBias.x;
  let x_520 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_517, x_519);
  let x_521 : vec3<f32> = vec3<f32>(x_520.x, x_520.y, x_520.z);
  let x_522 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat6;
  let x_528 : vec3<f32> = (vec3<f32>(x_524.x, x_524.y, x_524.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_529 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat1;
  let x_533 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_531.x, x_531.y, x_531.w), vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : f32 = u_xlat36;
  u_xlat36 = (x_536 + 0.5f);
  let x_539 : f32 = u_xlat36;
  let x_541 : vec4<f32> = u_xlat7;
  let x_543 : vec3<f32> = (vec3<f32>(x_539, x_539, x_539) * vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_547 : f32 = u_xlat6.w;
  u_xlat36 = max(x_547, 0.0001f);
  let x_550 : vec4<f32> = u_xlat6;
  let x_552 : f32 = u_xlat36;
  let x_554 : vec3<f32> = (vec3<f32>(x_550.x, x_550.y, x_550.z) / vec3<f32>(x_552, x_552, x_552));
  let x_555 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_559 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_560 : vec2<f32> = vec2<f32>(x_559.x, x_559.y);
  let x_564 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_560.x, x_560.y));
  let x_565 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat7;
  let x_569 : vec4<f32> = hlslcc_FragCoord;
  let x_571 : vec2<f32> = (vec2<f32>(x_567.x, x_567.y) * vec2<f32>(x_569.x, x_569.y));
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
  let x_575 : f32 = u_xlat7.y;
  let x_578 : f32 = x_45.x_ScaleBiasRt.x;
  let x_581 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat36 = ((x_575 * x_578) + x_581);
  let x_583 : f32 = u_xlat36;
  u_xlat7.z = (-(x_583) + 1.0f);
  let x_587 : vec3<f32> = u_xlat3;
  let x_588 : vec2<f32> = vec2<f32>(x_587.x, x_587.y);
  let x_589 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_588.x, x_588.y, x_589.z);
  let x_591 : vec3<f32> = u_xlat3;
  let x_595 : vec2<f32> = clamp(vec2<f32>(x_591.x, x_591.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_596 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_595.x, x_595.y, x_596.z);
  let x_599 : f32 = u_xlat3.x;
  u_xlat36 = ((-(x_599) * 0.959999979f) + 0.959999979f);
  let x_604 : f32 = u_xlat36;
  let x_607 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_604) + x_607);
  let x_609 : f32 = u_xlat36;
  let x_611 : vec3<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_609, x_609, x_609) * x_611);
  let x_613 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_613 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_617 : vec3<f32> = u_xlat3;
  let x_619 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_617.x, x_617.x, x_617.x) * x_619) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_625 : f32 = u_xlat3.y;
  u_xlat36 = (-(x_625) + 1.0f);
  let x_628 : f32 = u_xlat36;
  let x_629 : f32 = u_xlat36;
  u_xlat3.x = (x_628 * x_629);
  let x_633 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_633, 0.0078125f);
  let x_639 : f32 = u_xlat3.x;
  let x_641 : f32 = u_xlat3.x;
  u_xlat15 = (x_639 * x_641);
  let x_643 : f32 = u_xlat38;
  u_xlat38 = (x_643 + 1.0f);
  let x_645 : f32 = u_xlat38;
  u_xlat38 = min(x_645, 1.0f);
  let x_649 : f32 = u_xlat3.x;
  u_xlat39 = ((x_649 * 4.0f) + 2.0f);
  let x_658 : vec4<f32> = u_xlat7;
  let x_661 : f32 = x_45.x_GlobalMipBias.x;
  let x_662 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_658.x, x_658.z), x_661);
  u_xlat40 = x_662.x;
  let x_665 : f32 = u_xlat40;
  u_xlat41 = (x_665 + -1.0f);
  let x_668 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_669 : f32 = u_xlat41;
  u_xlat41 = ((x_668 * x_669) + 1.0f);
  let x_674 : f32 = u_xlat3.z;
  let x_675 : f32 = u_xlat40;
  u_xlat27 = min(x_674, x_675);
  let x_678 : vec4<f32> = u_xlat4;
  let x_679 : vec2<f32> = vec2<f32>(x_678.x, x_678.y);
  let x_681 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_679.x, x_679.y, x_681);
  let x_693 : vec3<f32> = txVec0;
  let x_695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_693.xy, x_693.z);
  u_xlat4.x = x_695;
  let x_699 : f32 = x_319.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_699) + 1.0f);
  let x_704 : f32 = u_xlat4.x;
  let x_706 : f32 = x_319.x_MainLightShadowParams.x;
  let x_709 : f32 = u_xlat16.x;
  u_xlat4.x = ((x_704 * x_706) + x_709);
  let x_714 : f32 = u_xlat4.z;
  u_xlatb16 = (0.0f >= x_714);
  let x_718 : f32 = u_xlat4.z;
  u_xlatb28 = (x_718 >= 1.0f);
  let x_720 : bool = u_xlatb28;
  let x_721 : bool = u_xlatb16;
  u_xlatb16 = (x_720 | x_721);
  let x_723 : bool = u_xlatb16;
  if (x_723) {
    x_724 = 1.0f;
  } else {
    let x_729 : f32 = u_xlat4.x;
    x_724 = x_729;
  }
  let x_730 : f32 = x_724;
  u_xlat4.x = x_730;
  let x_732 : vec3<f32> = vs_INTERP0;
  let x_734 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat16 = (x_732 + -(x_734));
  let x_737 : vec3<f32> = u_xlat16;
  let x_738 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_737, x_738);
  let x_742 : f32 = u_xlat16.x;
  let x_744 : f32 = x_319.x_MainLightShadowParams.z;
  let x_747 : f32 = x_319.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_742 * x_744) + x_747);
  let x_751 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_751, 0.0f, 1.0f);
  let x_756 : f32 = u_xlat4.x;
  u_xlat28 = (-(x_756) + 1.0f);
  let x_760 : f32 = u_xlat16.x;
  let x_761 : f32 = u_xlat28;
  let x_764 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_760 * x_761) + x_764);
  let x_767 : f32 = u_xlat41;
  let x_770 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_767, x_767, x_767) * vec3<f32>(x_770.x, x_770.y, x_770.z));
  let x_774 : vec3<f32> = u_xlat5;
  let x_776 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(-(x_774), vec3<f32>(x_776.x, x_776.y, x_776.w));
  let x_779 : f32 = u_xlat42;
  let x_780 : f32 = u_xlat42;
  u_xlat42 = (x_779 + x_780);
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : f32 = u_xlat42;
  let x_788 : vec3<f32> = u_xlat5;
  let x_790 : vec3<f32> = ((vec3<f32>(x_782.x, x_782.y, x_782.w) * -(vec3<f32>(x_784, x_784, x_784))) + -(x_788));
  let x_791 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat1;
  let x_795 : vec3<f32> = u_xlat5;
  u_xlat42 = dot(vec3<f32>(x_793.x, x_793.y, x_793.w), x_795);
  let x_797 : f32 = u_xlat42;
  u_xlat42 = clamp(x_797, 0.0f, 1.0f);
  let x_799 : f32 = u_xlat42;
  u_xlat42 = (-(x_799) + 1.0f);
  let x_802 : f32 = u_xlat42;
  let x_803 : f32 = u_xlat42;
  u_xlat42 = (x_802 * x_803);
  let x_805 : f32 = u_xlat42;
  let x_806 : f32 = u_xlat42;
  u_xlat42 = (x_805 * x_806);
  let x_809 : f32 = u_xlat36;
  u_xlat43 = ((-(x_809) * 0.699999988f) + 1.700000048f);
  let x_815 : f32 = u_xlat36;
  let x_816 : f32 = u_xlat43;
  u_xlat36 = (x_815 * x_816);
  let x_818 : f32 = u_xlat36;
  u_xlat36 = (x_818 * 6.0f);
  let x_829 : vec4<f32> = u_xlat7;
  let x_831 : f32 = u_xlat36;
  let x_832 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_829.x, x_829.y, x_829.z), x_831);
  u_xlat7 = x_832;
  let x_834 : f32 = u_xlat7.w;
  u_xlat36 = (x_834 + -1.0f);
  let x_837 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_838 : f32 = u_xlat36;
  u_xlat36 = ((x_837 * x_838) + 1.0f);
  let x_841 : f32 = u_xlat36;
  u_xlat36 = max(x_841, 0.0f);
  let x_843 : f32 = u_xlat36;
  u_xlat36 = log2(x_843);
  let x_845 : f32 = u_xlat36;
  let x_847 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_845 * x_847);
  let x_849 : f32 = u_xlat36;
  u_xlat36 = exp2(x_849);
  let x_851 : f32 = u_xlat36;
  let x_853 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_851 * x_853);
  let x_855 : vec4<f32> = u_xlat7;
  let x_857 : f32 = u_xlat36;
  let x_859 : vec3<f32> = (vec3<f32>(x_855.x, x_855.y, x_855.z) * vec3<f32>(x_857, x_857, x_857));
  let x_860 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_864 : vec3<f32> = u_xlat3;
  let x_866 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_864.x, x_864.x) * vec2<f32>(x_866.x, x_866.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_872 : f32 = u_xlat9.y;
  u_xlat36 = (1.0f / x_872);
  let x_875 : vec3<f32> = u_xlat0;
  let x_877 : f32 = u_xlat38;
  u_xlat21 = (-(x_875) + vec3<f32>(x_877, x_877, x_877));
  let x_880 : f32 = u_xlat42;
  let x_882 : vec3<f32> = u_xlat21;
  let x_884 : vec3<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_880, x_880, x_880) * x_882) + x_884);
  let x_886 : f32 = u_xlat36;
  let x_888 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_886, x_886, x_886) * x_888);
  let x_890 : vec4<f32> = u_xlat7;
  let x_892 : vec3<f32> = u_xlat21;
  let x_893 : vec3<f32> = (vec3<f32>(x_890.x, x_890.y, x_890.z) * x_892);
  let x_894 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_896 : vec4<f32> = u_xlat6;
  let x_898 : vec3<f32> = u_xlat8;
  let x_900 : vec4<f32> = u_xlat7;
  let x_902 : vec3<f32> = ((vec3<f32>(x_896.x, x_896.y, x_896.z) * x_898) + vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_906 : f32 = u_xlat4.x;
  let x_908 : f32 = x_122.unity_LightData.z;
  u_xlat36 = (x_906 * x_908);
  let x_910 : vec4<f32> = u_xlat1;
  let x_913 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_910.x, x_910.y, x_910.w), vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : f32 = u_xlat38;
  u_xlat38 = clamp(x_916, 0.0f, 1.0f);
  let x_918 : f32 = u_xlat36;
  let x_919 : f32 = u_xlat38;
  u_xlat36 = (x_918 * x_919);
  let x_921 : f32 = u_xlat36;
  let x_923 : vec3<f32> = u_xlat16;
  let x_924 : vec3<f32> = (vec3<f32>(x_921, x_921, x_921) * x_923);
  let x_925 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_927 : vec3<f32> = u_xlat5;
  let x_929 : vec4<f32> = x_45.x_MainLightPosition;
  let x_931 : vec3<f32> = (x_927 + vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec4<f32> = u_xlat7;
  let x_936 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_934.x, x_934.y, x_934.z), vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : f32 = u_xlat36;
  u_xlat36 = max(x_939, 1.17549435e-37f);
  let x_942 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_942);
  let x_944 : f32 = u_xlat36;
  let x_946 : vec4<f32> = u_xlat7;
  let x_948 : vec3<f32> = (vec3<f32>(x_944, x_944, x_944) * vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec4<f32> = u_xlat1;
  let x_953 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_951.x, x_951.y, x_951.w), vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : f32 = u_xlat36;
  u_xlat36 = clamp(x_956, 0.0f, 1.0f);
  let x_959 : vec4<f32> = x_45.x_MainLightPosition;
  let x_961 : vec4<f32> = u_xlat7;
  u_xlat38 = dot(vec3<f32>(x_959.x, x_959.y, x_959.z), vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_964 : f32 = u_xlat38;
  u_xlat38 = clamp(x_964, 0.0f, 1.0f);
  let x_966 : f32 = u_xlat36;
  let x_967 : f32 = u_xlat36;
  u_xlat36 = (x_966 * x_967);
  let x_969 : f32 = u_xlat36;
  let x_971 : f32 = u_xlat9.x;
  u_xlat36 = ((x_969 * x_971) + 1.000010014f);
  let x_975 : f32 = u_xlat38;
  let x_976 : f32 = u_xlat38;
  u_xlat38 = (x_975 * x_976);
  let x_978 : f32 = u_xlat36;
  let x_979 : f32 = u_xlat36;
  u_xlat36 = (x_978 * x_979);
  let x_981 : f32 = u_xlat38;
  u_xlat38 = max(x_981, 0.100000001f);
  let x_984 : f32 = u_xlat36;
  let x_985 : f32 = u_xlat38;
  u_xlat36 = (x_984 * x_985);
  let x_987 : f32 = u_xlat39;
  let x_988 : f32 = u_xlat36;
  u_xlat36 = (x_987 * x_988);
  let x_990 : f32 = u_xlat15;
  let x_991 : f32 = u_xlat36;
  u_xlat36 = (x_990 / x_991);
  let x_993 : vec3<f32> = u_xlat0;
  let x_994 : f32 = u_xlat36;
  let x_997 : vec3<f32> = u_xlat8;
  let x_998 : vec3<f32> = ((x_993 * vec3<f32>(x_994, x_994, x_994)) + x_997);
  let x_999 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat4;
  let x_1003 : vec4<f32> = u_xlat7;
  let x_1005 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1009 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1011 : f32 = x_122.unity_LightData.y;
  u_xlat36 = min(x_1009, x_1011);
  let x_1013 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1013));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1025 : u32 = u_xlatu_loop_1;
    let x_1026 : u32 = u_xlatu36;
    if ((x_1025 < x_1026)) {
    } else {
      break;
    }
    let x_1029 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1029 >> 2u);
    let x_1032 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1032 & 3u));
    let x_1035 : u32 = u_xlatu3;
    let x_1038 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_1035)];
    let x_1048 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1053 : vec4<u32> = indexable[x_1048];
    u_xlat3.x = dot(x_1038, bitcast<vec4<f32>>(x_1053));
    let x_1059 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_1059);
    let x_1061 : vec3<f32> = vs_INTERP0;
    let x_1073 : i32 = u_xlati3;
    let x_1075 : vec4<f32> = x_1072.x_AdditionalLightsPosition[x_1073];
    let x_1078 : i32 = u_xlati3;
    let x_1080 : vec4<f32> = x_1072.x_AdditionalLightsPosition[x_1078];
    u_xlat21 = ((-(x_1061) * vec3<f32>(x_1075.w, x_1075.w, x_1075.w)) + vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
    let x_1083 : vec3<f32> = u_xlat21;
    let x_1084 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(x_1083, x_1084);
    let x_1086 : f32 = u_xlat40;
    u_xlat40 = max(x_1086, 6.10351562e-05f);
    let x_1089 : f32 = u_xlat40;
    u_xlat42 = inverseSqrt(x_1089);
    let x_1092 : f32 = u_xlat42;
    let x_1094 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1092, x_1092, x_1092) * x_1094);
    let x_1096 : f32 = u_xlat40;
    u_xlat43 = (1.0f / x_1096);
    let x_1098 : f32 = u_xlat40;
    let x_1099 : i32 = u_xlati3;
    let x_1101 : f32 = x_1072.x_AdditionalLightsAttenuation[x_1099].x;
    u_xlat40 = (x_1098 * x_1101);
    let x_1103 : f32 = u_xlat40;
    let x_1105 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1103) * x_1105) + 1.0f);
    let x_1108 : f32 = u_xlat40;
    u_xlat40 = max(x_1108, 0.0f);
    let x_1110 : f32 = u_xlat40;
    let x_1111 : f32 = u_xlat40;
    u_xlat40 = (x_1110 * x_1111);
    let x_1113 : f32 = u_xlat40;
    let x_1114 : f32 = u_xlat43;
    u_xlat40 = (x_1113 * x_1114);
    let x_1116 : i32 = u_xlati3;
    let x_1118 : vec4<f32> = x_1072.x_AdditionalLightsSpotDir[x_1116];
    let x_1120 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1118.x, x_1118.y, x_1118.z), x_1120);
    let x_1122 : f32 = u_xlat43;
    let x_1123 : i32 = u_xlati3;
    let x_1125 : f32 = x_1072.x_AdditionalLightsAttenuation[x_1123].z;
    let x_1127 : i32 = u_xlati3;
    let x_1129 : f32 = x_1072.x_AdditionalLightsAttenuation[x_1127].w;
    u_xlat43 = ((x_1122 * x_1125) + x_1129);
    let x_1131 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1131, 0.0f, 1.0f);
    let x_1133 : f32 = u_xlat43;
    let x_1134 : f32 = u_xlat43;
    u_xlat43 = (x_1133 * x_1134);
    let x_1136 : f32 = u_xlat40;
    let x_1137 : f32 = u_xlat43;
    u_xlat40 = (x_1136 * x_1137);
    let x_1140 : f32 = u_xlat41;
    let x_1142 : i32 = u_xlati3;
    let x_1144 : vec4<f32> = x_1072.x_AdditionalLightsColor[x_1142];
    u_xlat11 = (vec3<f32>(x_1140, x_1140, x_1140) * vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
    let x_1147 : vec4<f32> = u_xlat1;
    let x_1149 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_1147.x, x_1147.y, x_1147.w), x_1149);
    let x_1153 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1153, 0.0f, 1.0f);
    let x_1157 : f32 = u_xlat3.x;
    let x_1158 : f32 = u_xlat40;
    u_xlat3.x = (x_1157 * x_1158);
    let x_1161 : vec3<f32> = u_xlat3;
    let x_1163 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1161.x, x_1161.x, x_1161.x) * x_1163);
    let x_1165 : vec3<f32> = u_xlat21;
    let x_1166 : f32 = u_xlat42;
    let x_1169 : vec3<f32> = u_xlat5;
    u_xlat21 = ((x_1165 * vec3<f32>(x_1166, x_1166, x_1166)) + x_1169);
    let x_1171 : vec3<f32> = u_xlat21;
    let x_1172 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_1171, x_1172);
    let x_1176 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1176, 1.17549435e-37f);
    let x_1180 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1180);
    let x_1183 : vec3<f32> = u_xlat3;
    let x_1185 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1183.x, x_1183.x, x_1183.x) * x_1185);
    let x_1187 : vec4<f32> = u_xlat1;
    let x_1189 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(vec3<f32>(x_1187.x, x_1187.y, x_1187.w), x_1189);
    let x_1193 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1193, 0.0f, 1.0f);
    let x_1196 : vec3<f32> = u_xlat10;
    let x_1197 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(x_1196, x_1197);
    let x_1199 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1199, 0.0f, 1.0f);
    let x_1202 : f32 = u_xlat3.x;
    let x_1204 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1202 * x_1204);
    let x_1208 : f32 = u_xlat3.x;
    let x_1210 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_1208 * x_1210) + 1.000010014f);
    let x_1214 : f32 = u_xlat40;
    let x_1215 : f32 = u_xlat40;
    u_xlat40 = (x_1214 * x_1215);
    let x_1218 : f32 = u_xlat3.x;
    let x_1220 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1218 * x_1220);
    let x_1223 : f32 = u_xlat40;
    u_xlat40 = max(x_1223, 0.100000001f);
    let x_1226 : f32 = u_xlat3.x;
    let x_1227 : f32 = u_xlat40;
    u_xlat3.x = (x_1226 * x_1227);
    let x_1230 : f32 = u_xlat39;
    let x_1232 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1230 * x_1232);
    let x_1235 : f32 = u_xlat15;
    let x_1237 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1235 / x_1237);
    let x_1240 : vec3<f32> = u_xlat0;
    let x_1241 : vec3<f32> = u_xlat3;
    let x_1244 : vec3<f32> = u_xlat8;
    u_xlat21 = ((x_1240 * vec3<f32>(x_1241.x, x_1241.x, x_1241.x)) + x_1244);
    let x_1246 : vec3<f32> = u_xlat21;
    let x_1247 : vec3<f32> = u_xlat11;
    let x_1249 : vec4<f32> = u_xlat7;
    let x_1251 : vec3<f32> = ((x_1246 * x_1247) + vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
    let x_1252 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);

    continuing {
      let x_1254 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1254 + bitcast<u32>(1i));
    }
  }
  let x_1256 : vec4<f32> = u_xlat6;
  let x_1258 : f32 = u_xlat27;
  let x_1261 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_1256.x, x_1256.y, x_1256.z) * vec3<f32>(x_1258, x_1258, x_1258)) + vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
  let x_1264 : vec4<f32> = u_xlat7;
  let x_1266 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1264.x, x_1264.y, x_1264.z) + x_1266);
  let x_1270 : vec3<f32> = u_xlat2;
  let x_1271 : f32 = u_xlat25;
  let x_1274 : vec3<f32> = u_xlat0;
  let x_1275 : vec3<f32> = ((x_1270 * vec3<f32>(x_1271, x_1271, x_1271)) + x_1274);
  let x_1276 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
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

