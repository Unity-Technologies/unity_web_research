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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_120 : UnityPerDraw;

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

@group(1) @binding(3) var<uniform> x_519 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_898 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlatb25 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlatb37 : bool;
  var u_xlat37 : f32;
  var u_xlatb38 : bool;
  var u_xlat38 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb36 : bool;
  var u_xlat5 : vec4<f32>;
  var x_270 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var u_xlatb30 : bool;
  var u_xlat30 : f32;
  var u_xlat43 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu38 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati41 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati39 : i32;
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
  let x_113 : vec3<f32> = vec3<f32>(x_112.x, x_112.y, x_112.z);
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_125 : vec4<f32> = x_120.unity_ObjectToWorld[3i];
  let x_128 : vec4<f32> = x_120.unity_ObjectToWorld[3i];
  u_xlat25 = dot(vec3<f32>(x_125.x, x_125.y, x_125.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_131);
  let x_133 : f32 = u_xlat25;
  u_xlat25 = fract(x_133);
  let x_135 : f32 = u_xlat25;
  let x_138 : f32 = x_45.x_NightFade;
  u_xlat25 = (x_135 + x_138);
  let x_143 : f32 = u_xlat25;
  u_xlatb25 = (x_143 >= 1.0f);
  let x_145 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_145);
  let x_154 : vec4<f32> = vs_INTERP3;
  let x_157 : f32 = x_45.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat3 = vec3<f32>(x_158.x, x_158.w, x_158.y);
  let x_163 : f32 = vs_INTERP2.w;
  u_xlatb37 = (0.0f < x_163);
  let x_166 : bool = u_xlatb37;
  u_xlat37 = select(-1.0f, 1.0f, x_166);
  let x_170 : f32 = x_120.unity_WorldTransformParams.w;
  u_xlatb38 = (x_170 >= 0.0f);
  let x_173 : bool = u_xlatb38;
  u_xlat38 = select(-1.0f, 1.0f, x_173);
  let x_175 : f32 = u_xlat37;
  let x_176 : f32 = u_xlat38;
  u_xlat37 = (x_175 * x_176);
  let x_181 : vec3<f32> = vs_INTERP1;
  let x_183 : vec4<f32> = vs_INTERP2;
  u_xlat4 = (vec3<f32>(x_181.z, x_181.x, x_181.y) * vec3<f32>(x_183.y, x_183.z, x_183.x));
  let x_186 : vec3<f32> = vs_INTERP1;
  let x_188 : vec4<f32> = vs_INTERP2;
  let x_191 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_186.y, x_186.z, x_186.x) * vec3<f32>(x_188.z, x_188.x, x_188.y)) + -(x_191));
  let x_194 : f32 = u_xlat37;
  let x_196 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_194, x_194, x_194) * x_196);
  let x_198 : vec4<f32> = u_xlat1;
  let x_200 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_198.y, x_198.y, x_198.y) * x_200);
  let x_202 : vec4<f32> = u_xlat1;
  let x_204 : vec4<f32> = vs_INTERP2;
  let x_207 : vec3<f32> = u_xlat4;
  let x_208 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.x, x_202.x) * vec3<f32>(x_204.x, x_204.y, x_204.z)) + x_207);
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_209.z, x_208.z);
  let x_211 : f32 = u_xlat36;
  let x_213 : vec3<f32> = vs_INTERP1;
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_211, x_211, x_211) * x_213) + vec3<f32>(x_215.x, x_215.y, x_215.w));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_217.z);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec3<f32>(x_220.x, x_220.y, x_220.w), vec3<f32>(x_222.x, x_222.y, x_222.w));
  let x_225 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat36;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_231.z);
  let x_237 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb36 = (x_237 == 0.0f);
  let x_240 : vec3<f32> = vs_INTERP0;
  let x_245 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_240) + x_245);
  let x_247 : vec3<f32> = u_xlat4;
  let x_248 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(x_247, x_248);
  let x_250 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_250);
  let x_252 : f32 = u_xlat38;
  let x_254 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_252, x_252, x_252) * x_254);
  let x_259 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_259;
  let x_262 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_262;
  let x_267 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_267;
  let x_269 : bool = u_xlatb36;
  if (x_269) {
    let x_273 : vec3<f32> = u_xlat4;
    x_270 = x_273;
  } else {
    let x_275 : vec4<f32> = u_xlat5;
    x_270 = vec3<f32>(x_275.x, x_275.y, x_275.z);
  }
  let x_277 : vec3<f32> = x_270;
  u_xlat4 = x_277;
  let x_279 : f32 = vs_INTERP0.y;
  let x_281 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat36 = (x_279 * x_281);
  let x_284 : f32 = x_45.unity_MatrixV[0i].z;
  let x_286 : f32 = vs_INTERP0.x;
  let x_288 : f32 = u_xlat36;
  u_xlat36 = ((x_284 * x_286) + x_288);
  let x_291 : f32 = x_45.unity_MatrixV[2i].z;
  let x_293 : f32 = vs_INTERP0.z;
  let x_295 : f32 = u_xlat36;
  u_xlat36 = ((x_291 * x_293) + x_295);
  let x_297 : f32 = u_xlat36;
  let x_299 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat36 = (x_297 + x_299);
  let x_301 : f32 = u_xlat36;
  let x_305 : f32 = x_45.x_ProjectionParams.y;
  u_xlat36 = (-(x_301) + -(x_305));
  let x_308 : f32 = u_xlat36;
  u_xlat36 = max(x_308, 0.0f);
  let x_310 : f32 = u_xlat36;
  let x_313 : f32 = x_45.unity_FogParams.x;
  u_xlat36 = (x_310 * x_313);
  let x_322 : vec2<f32> = vs_INTERP4;
  let x_324 : f32 = x_45.x_GlobalMipBias.x;
  let x_325 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_322, x_324);
  u_xlat5 = x_325;
  let x_331 : vec2<f32> = vs_INTERP4;
  let x_333 : f32 = x_45.x_GlobalMipBias.x;
  let x_334 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_331, x_333);
  u_xlat6 = vec3<f32>(x_334.x, x_334.y, x_334.z);
  let x_336 : vec4<f32> = u_xlat5;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_341 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat38 = dot(vec3<f32>(x_343.x, x_343.y, x_343.w), vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : f32 = u_xlat38;
  u_xlat38 = (x_348 + 0.5f);
  let x_351 : f32 = u_xlat38;
  let x_353 : vec3<f32> = u_xlat6;
  let x_354 : vec3<f32> = (vec3<f32>(x_351, x_351, x_351) * x_353);
  let x_355 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : f32 = u_xlat5.w;
  u_xlat38 = max(x_358, 0.0001f);
  let x_361 : vec4<f32> = u_xlat5;
  let x_363 : f32 = u_xlat38;
  let x_365 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) / vec3<f32>(x_363, x_363, x_363));
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_370 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_371 : vec2<f32> = vec2<f32>(x_370.x, x_370.y);
  let x_375 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_371.x, x_371.y));
  let x_376 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_375.x, x_375.y, x_376.z);
  let x_378 : vec3<f32> = u_xlat6;
  let x_380 : vec4<f32> = hlslcc_FragCoord;
  let x_382 : vec2<f32> = (vec2<f32>(x_378.x, x_378.y) * vec2<f32>(x_380.x, x_380.y));
  let x_383 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_382.x, x_382.y, x_383.z);
  let x_386 : f32 = u_xlat6.y;
  let x_389 : f32 = x_45.x_ScaleBiasRt.x;
  let x_392 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat38 = ((x_386 * x_389) + x_392);
  let x_394 : f32 = u_xlat38;
  u_xlat6.z = (-(x_394) + 1.0f);
  let x_398 : vec3<f32> = u_xlat3;
  let x_399 : vec2<f32> = vec2<f32>(x_398.x, x_398.y);
  let x_400 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_399.x, x_399.y, x_400.z);
  let x_402 : vec3<f32> = u_xlat3;
  let x_406 : vec2<f32> = clamp(vec2<f32>(x_402.x, x_402.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_407 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_406.x, x_406.y, x_407.z);
  let x_410 : f32 = u_xlat3.x;
  u_xlat38 = ((-(x_410) * 0.959999979f) + 0.959999979f);
  let x_416 : f32 = u_xlat38;
  let x_419 : f32 = u_xlat3.y;
  u_xlat39 = (-(x_416) + x_419);
  let x_422 : vec3<f32> = u_xlat0;
  let x_423 : f32 = u_xlat38;
  u_xlat7 = (x_422 * vec3<f32>(x_423, x_423, x_423));
  let x_426 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_426 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_430 : vec3<f32> = u_xlat3;
  let x_432 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_430.x, x_430.x, x_430.x) * x_432) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_438 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_438) + 1.0f);
  let x_441 : f32 = u_xlat38;
  let x_442 : f32 = u_xlat38;
  u_xlat3.x = (x_441 * x_442);
  let x_446 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_446, 0.0078125f);
  let x_452 : f32 = u_xlat3.x;
  let x_454 : f32 = u_xlat3.x;
  u_xlat15 = (x_452 * x_454);
  let x_456 : f32 = u_xlat39;
  u_xlat39 = (x_456 + 1.0f);
  let x_458 : f32 = u_xlat39;
  u_xlat39 = min(x_458, 1.0f);
  let x_462 : f32 = u_xlat3.x;
  u_xlat40 = ((x_462 * 4.0f) + 2.0f);
  let x_472 : vec3<f32> = u_xlat6;
  let x_475 : f32 = x_45.x_GlobalMipBias.x;
  let x_476 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_472.x, x_472.z), x_475);
  u_xlat41 = x_476.x;
  let x_478 : f32 = u_xlat41;
  u_xlat6.x = (x_478 + -1.0f);
  let x_483 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_485 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_483 * x_485) + 1.0f);
  let x_491 : f32 = u_xlat3.z;
  let x_492 : f32 = u_xlat41;
  u_xlat27 = min(x_491, x_492);
  let x_496 : vec4<f32> = vs_INTERP8;
  let x_497 : vec2<f32> = vec2<f32>(x_496.x, x_496.y);
  let x_499 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_497.x, x_497.y, x_499);
  let x_511 : vec3<f32> = txVec0;
  let x_513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_511.xy, x_511.z);
  u_xlat41 = x_513;
  let x_521 : f32 = x_519.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_521) + 1.0f);
  let x_525 : f32 = u_xlat41;
  let x_527 : f32 = x_519.x_MainLightShadowParams.x;
  let x_530 : f32 = u_xlat18.x;
  u_xlat41 = ((x_525 * x_527) + x_530);
  let x_534 : f32 = vs_INTERP8.z;
  u_xlatb18 = (0.0f >= x_534);
  let x_538 : f32 = vs_INTERP8.z;
  u_xlatb30 = (x_538 >= 1.0f);
  let x_540 : bool = u_xlatb30;
  let x_541 : bool = u_xlatb18;
  u_xlatb18 = (x_540 | x_541);
  let x_543 : bool = u_xlatb18;
  let x_544 : f32 = u_xlat41;
  u_xlat41 = select(x_544, 1.0f, x_543);
  let x_546 : vec3<f32> = vs_INTERP0;
  let x_548 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat18 = (x_546 + -(x_548));
  let x_551 : vec3<f32> = u_xlat18;
  let x_552 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_551, x_552);
  let x_556 : f32 = u_xlat18.x;
  let x_558 : f32 = x_519.x_MainLightShadowParams.z;
  let x_561 : f32 = x_519.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_556 * x_558) + x_561);
  let x_565 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_565, 0.0f, 1.0f);
  let x_569 : f32 = u_xlat41;
  u_xlat30 = (-(x_569) + 1.0f);
  let x_573 : f32 = u_xlat18.x;
  let x_574 : f32 = u_xlat30;
  let x_576 : f32 = u_xlat41;
  u_xlat41 = ((x_573 * x_574) + x_576);
  let x_578 : vec3<f32> = u_xlat6;
  let x_581 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_578.x, x_578.x, x_578.x) * vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_585 : vec3<f32> = u_xlat4;
  let x_587 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(-(x_585), vec3<f32>(x_587.x, x_587.y, x_587.w));
  let x_590 : f32 = u_xlat43;
  let x_591 : f32 = u_xlat43;
  u_xlat43 = (x_590 + x_591);
  let x_594 : vec4<f32> = u_xlat1;
  let x_596 : f32 = u_xlat43;
  let x_600 : vec3<f32> = u_xlat4;
  let x_602 : vec3<f32> = ((vec3<f32>(x_594.x, x_594.y, x_594.w) * -(vec3<f32>(x_596, x_596, x_596))) + -(x_600));
  let x_603 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec4<f32> = u_xlat1;
  let x_607 : vec3<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_605.x, x_605.y, x_605.w), x_607);
  let x_609 : f32 = u_xlat43;
  u_xlat43 = clamp(x_609, 0.0f, 1.0f);
  let x_611 : f32 = u_xlat43;
  u_xlat43 = (-(x_611) + 1.0f);
  let x_614 : f32 = u_xlat43;
  let x_615 : f32 = u_xlat43;
  u_xlat43 = (x_614 * x_615);
  let x_617 : f32 = u_xlat43;
  let x_618 : f32 = u_xlat43;
  u_xlat43 = (x_617 * x_618);
  let x_621 : f32 = u_xlat38;
  u_xlat44 = ((-(x_621) * 0.699999988f) + 1.700000048f);
  let x_627 : f32 = u_xlat38;
  let x_628 : f32 = u_xlat44;
  u_xlat2.w = (x_627 * x_628);
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_631 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_644 : vec4<f32> = u_xlat8;
  let x_647 : f32 = u_xlat2.w;
  let x_648 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_644.x, x_644.y, x_644.z), x_647);
  u_xlat8 = x_648;
  let x_650 : f32 = u_xlat8.w;
  u_xlat38 = (x_650 + -1.0f);
  let x_653 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_654 : f32 = u_xlat38;
  u_xlat38 = ((x_653 * x_654) + 1.0f);
  let x_657 : f32 = u_xlat38;
  u_xlat38 = max(x_657, 0.0f);
  let x_659 : f32 = u_xlat38;
  u_xlat38 = log2(x_659);
  let x_661 : f32 = u_xlat38;
  let x_663 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_661 * x_663);
  let x_665 : f32 = u_xlat38;
  u_xlat38 = exp2(x_665);
  let x_667 : f32 = u_xlat38;
  let x_669 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_667 * x_669);
  let x_671 : vec4<f32> = u_xlat8;
  let x_673 : f32 = u_xlat38;
  let x_675 : vec3<f32> = (vec3<f32>(x_671.x, x_671.y, x_671.z) * vec3<f32>(x_673, x_673, x_673));
  let x_676 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  let x_680 : vec3<f32> = u_xlat3;
  let x_682 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_680.x, x_680.x) * vec2<f32>(x_682.x, x_682.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_688 : f32 = u_xlat9.y;
  u_xlat38 = (1.0f / x_688);
  let x_691 : vec3<f32> = u_xlat0;
  let x_693 : f32 = u_xlat39;
  u_xlat21 = (-(x_691) + vec3<f32>(x_693, x_693, x_693));
  let x_696 : f32 = u_xlat43;
  let x_698 : vec3<f32> = u_xlat21;
  let x_700 : vec3<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_696, x_696, x_696) * x_698) + x_700);
  let x_702 : f32 = u_xlat38;
  let x_704 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_702, x_702, x_702) * x_704);
  let x_706 : vec4<f32> = u_xlat8;
  let x_708 : vec3<f32> = u_xlat21;
  let x_709 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) * x_708);
  let x_710 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : vec4<f32> = u_xlat5;
  let x_714 : vec3<f32> = u_xlat7;
  let x_716 : vec4<f32> = u_xlat8;
  let x_718 : vec3<f32> = ((vec3<f32>(x_712.x, x_712.y, x_712.z) * x_714) + vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : f32 = u_xlat41;
  let x_724 : f32 = x_120.unity_LightData.z;
  u_xlat38 = (x_721 * x_724);
  let x_726 : vec4<f32> = u_xlat1;
  let x_729 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_726.x, x_726.y, x_726.w), vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_734 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_734, 0.0f, 1.0f);
  let x_737 : f32 = u_xlat38;
  let x_739 : f32 = u_xlat3.x;
  u_xlat38 = (x_737 * x_739);
  let x_741 : f32 = u_xlat38;
  let x_743 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_741, x_741, x_741) * x_743);
  let x_745 : vec3<f32> = u_xlat4;
  let x_747 : vec4<f32> = x_45.x_MainLightPosition;
  let x_749 : vec3<f32> = (x_745 + vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec4<f32> = u_xlat8;
  let x_754 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_752.x, x_752.y, x_752.z), vec3<f32>(x_754.x, x_754.y, x_754.z));
  let x_757 : f32 = u_xlat38;
  u_xlat38 = max(x_757, 1.17549435e-37f);
  let x_760 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_760);
  let x_762 : f32 = u_xlat38;
  let x_764 : vec4<f32> = u_xlat8;
  let x_766 : vec3<f32> = (vec3<f32>(x_762, x_762, x_762) * vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_769 : vec4<f32> = u_xlat1;
  let x_771 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_769.x, x_769.y, x_769.w), vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : f32 = u_xlat38;
  u_xlat38 = clamp(x_774, 0.0f, 1.0f);
  let x_777 : vec4<f32> = x_45.x_MainLightPosition;
  let x_779 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_777.x, x_777.y, x_777.z), vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_784 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_784, 0.0f, 1.0f);
  let x_787 : f32 = u_xlat38;
  let x_788 : f32 = u_xlat38;
  u_xlat38 = (x_787 * x_788);
  let x_790 : f32 = u_xlat38;
  let x_792 : f32 = u_xlat9.x;
  u_xlat38 = ((x_790 * x_792) + 1.000010014f);
  let x_797 : f32 = u_xlat3.x;
  let x_799 : f32 = u_xlat3.x;
  u_xlat3.x = (x_797 * x_799);
  let x_802 : f32 = u_xlat38;
  let x_803 : f32 = u_xlat38;
  u_xlat38 = (x_802 * x_803);
  let x_806 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_806, 0.100000001f);
  let x_810 : f32 = u_xlat38;
  let x_812 : f32 = u_xlat3.x;
  u_xlat38 = (x_810 * x_812);
  let x_814 : f32 = u_xlat40;
  let x_815 : f32 = u_xlat38;
  u_xlat38 = (x_814 * x_815);
  let x_817 : f32 = u_xlat15;
  let x_818 : f32 = u_xlat38;
  u_xlat38 = (x_817 / x_818);
  let x_820 : vec3<f32> = u_xlat0;
  let x_821 : f32 = u_xlat38;
  let x_824 : vec3<f32> = u_xlat7;
  let x_825 : vec3<f32> = ((x_820 * vec3<f32>(x_821, x_821, x_821)) + x_824);
  let x_826 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : vec3<f32> = u_xlat18;
  let x_829 : vec4<f32> = u_xlat8;
  u_xlat18 = (x_828 * vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_833 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_835 : f32 = x_120.unity_LightData.y;
  u_xlat38 = min(x_833, x_835);
  let x_839 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_839));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_851 : u32 = u_xlatu_loop_1;
    let x_852 : u32 = u_xlatu38;
    if ((x_851 < x_852)) {
    } else {
      break;
    }
    let x_855 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_855 >> 2u);
    let x_859 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_859 & 3u));
    let x_863 : u32 = u_xlatu39;
    let x_866 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_863)];
    let x_876 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_881 : vec4<u32> = indexable[x_876];
    u_xlat39 = dot(x_866, bitcast<vec4<f32>>(x_881));
    let x_885 : f32 = u_xlat39;
    u_xlati39 = i32(x_885);
    let x_887 : vec3<f32> = vs_INTERP0;
    let x_899 : i32 = u_xlati39;
    let x_901 : vec4<f32> = x_898.x_AdditionalLightsPosition[x_899];
    let x_904 : i32 = u_xlati39;
    let x_906 : vec4<f32> = x_898.x_AdditionalLightsPosition[x_904];
    u_xlat21 = ((-(x_887) * vec3<f32>(x_901.w, x_901.w, x_901.w)) + vec3<f32>(x_906.x, x_906.y, x_906.z));
    let x_909 : vec3<f32> = u_xlat21;
    let x_910 : vec3<f32> = u_xlat21;
    u_xlat41 = dot(x_909, x_910);
    let x_912 : f32 = u_xlat41;
    u_xlat41 = max(x_912, 6.10351562e-05f);
    let x_915 : f32 = u_xlat41;
    u_xlat43 = inverseSqrt(x_915);
    let x_918 : f32 = u_xlat43;
    let x_920 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_918, x_918, x_918) * x_920);
    let x_922 : f32 = u_xlat41;
    u_xlat44 = (1.0f / x_922);
    let x_924 : f32 = u_xlat41;
    let x_925 : i32 = u_xlati39;
    let x_927 : f32 = x_898.x_AdditionalLightsAttenuation[x_925].x;
    u_xlat41 = (x_924 * x_927);
    let x_929 : f32 = u_xlat41;
    let x_931 : f32 = u_xlat41;
    u_xlat41 = ((-(x_929) * x_931) + 1.0f);
    let x_934 : f32 = u_xlat41;
    u_xlat41 = max(x_934, 0.0f);
    let x_936 : f32 = u_xlat41;
    let x_937 : f32 = u_xlat41;
    u_xlat41 = (x_936 * x_937);
    let x_939 : f32 = u_xlat41;
    let x_940 : f32 = u_xlat44;
    u_xlat41 = (x_939 * x_940);
    let x_942 : i32 = u_xlati39;
    let x_944 : vec4<f32> = x_898.x_AdditionalLightsSpotDir[x_942];
    let x_946 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_944.x, x_944.y, x_944.z), x_946);
    let x_948 : f32 = u_xlat44;
    let x_949 : i32 = u_xlati39;
    let x_951 : f32 = x_898.x_AdditionalLightsAttenuation[x_949].z;
    let x_953 : i32 = u_xlati39;
    let x_955 : f32 = x_898.x_AdditionalLightsAttenuation[x_953].w;
    u_xlat44 = ((x_948 * x_951) + x_955);
    let x_957 : f32 = u_xlat44;
    u_xlat44 = clamp(x_957, 0.0f, 1.0f);
    let x_959 : f32 = u_xlat44;
    let x_960 : f32 = u_xlat44;
    u_xlat44 = (x_959 * x_960);
    let x_962 : f32 = u_xlat41;
    let x_963 : f32 = u_xlat44;
    u_xlat41 = (x_962 * x_963);
    let x_966 : vec3<f32> = u_xlat6;
    let x_968 : i32 = u_xlati39;
    let x_970 : vec4<f32> = x_898.x_AdditionalLightsColor[x_968];
    u_xlat11 = (vec3<f32>(x_966.x, x_966.x, x_966.x) * vec3<f32>(x_970.x, x_970.y, x_970.z));
    let x_973 : vec4<f32> = u_xlat1;
    let x_975 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(vec3<f32>(x_973.x, x_973.y, x_973.w), x_975);
    let x_977 : f32 = u_xlat39;
    u_xlat39 = clamp(x_977, 0.0f, 1.0f);
    let x_979 : f32 = u_xlat39;
    let x_980 : f32 = u_xlat41;
    u_xlat39 = (x_979 * x_980);
    let x_982 : f32 = u_xlat39;
    let x_984 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_982, x_982, x_982) * x_984);
    let x_986 : vec3<f32> = u_xlat21;
    let x_987 : f32 = u_xlat43;
    let x_990 : vec3<f32> = u_xlat4;
    u_xlat21 = ((x_986 * vec3<f32>(x_987, x_987, x_987)) + x_990);
    let x_992 : vec3<f32> = u_xlat21;
    let x_993 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(x_992, x_993);
    let x_995 : f32 = u_xlat39;
    u_xlat39 = max(x_995, 1.17549435e-37f);
    let x_997 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_997);
    let x_999 : f32 = u_xlat39;
    let x_1001 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_999, x_999, x_999) * x_1001);
    let x_1003 : vec4<f32> = u_xlat1;
    let x_1005 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(vec3<f32>(x_1003.x, x_1003.y, x_1003.w), x_1005);
    let x_1007 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1007, 0.0f, 1.0f);
    let x_1009 : vec3<f32> = u_xlat10;
    let x_1010 : vec3<f32> = u_xlat21;
    u_xlat41 = dot(x_1009, x_1010);
    let x_1012 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1012, 0.0f, 1.0f);
    let x_1014 : f32 = u_xlat39;
    let x_1015 : f32 = u_xlat39;
    u_xlat39 = (x_1014 * x_1015);
    let x_1017 : f32 = u_xlat39;
    let x_1019 : f32 = u_xlat9.x;
    u_xlat39 = ((x_1017 * x_1019) + 1.000010014f);
    let x_1022 : f32 = u_xlat41;
    let x_1023 : f32 = u_xlat41;
    u_xlat41 = (x_1022 * x_1023);
    let x_1025 : f32 = u_xlat39;
    let x_1026 : f32 = u_xlat39;
    u_xlat39 = (x_1025 * x_1026);
    let x_1028 : f32 = u_xlat41;
    u_xlat41 = max(x_1028, 0.100000001f);
    let x_1030 : f32 = u_xlat39;
    let x_1031 : f32 = u_xlat41;
    u_xlat39 = (x_1030 * x_1031);
    let x_1033 : f32 = u_xlat40;
    let x_1034 : f32 = u_xlat39;
    u_xlat39 = (x_1033 * x_1034);
    let x_1036 : f32 = u_xlat15;
    let x_1037 : f32 = u_xlat39;
    u_xlat39 = (x_1036 / x_1037);
    let x_1039 : vec3<f32> = u_xlat0;
    let x_1040 : f32 = u_xlat39;
    let x_1043 : vec3<f32> = u_xlat7;
    u_xlat21 = ((x_1039 * vec3<f32>(x_1040, x_1040, x_1040)) + x_1043);
    let x_1045 : vec3<f32> = u_xlat21;
    let x_1046 : vec3<f32> = u_xlat11;
    let x_1048 : vec4<f32> = u_xlat8;
    let x_1050 : vec3<f32> = ((x_1045 * x_1046) + vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
    let x_1051 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);

    continuing {
      let x_1053 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1053 + bitcast<u32>(1i));
    }
  }
  let x_1055 : vec4<f32> = u_xlat5;
  let x_1057 : f32 = u_xlat27;
  let x_1060 : vec3<f32> = u_xlat18;
  u_xlat0 = ((vec3<f32>(x_1055.x, x_1055.y, x_1055.z) * vec3<f32>(x_1057, x_1057, x_1057)) + x_1060);
  let x_1062 : vec4<f32> = u_xlat8;
  let x_1064 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1062.x, x_1062.y, x_1062.z) + x_1064);
  let x_1066 : vec4<f32> = u_xlat2;
  let x_1068 : f32 = u_xlat25;
  let x_1071 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1066.x, x_1066.y, x_1066.z) * vec3<f32>(x_1068, x_1068, x_1068)) + x_1071);
  let x_1073 : f32 = u_xlat36;
  let x_1074 : f32 = u_xlat36;
  u_xlat36 = (x_1073 * -(x_1074));
  let x_1077 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1077);
  let x_1079 : vec3<f32> = u_xlat0;
  let x_1082 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1079 + -(vec3<f32>(x_1082.x, x_1082.y, x_1082.z)));
  let x_1088 : f32 = u_xlat36;
  let x_1090 : vec3<f32> = u_xlat0;
  let x_1093 : vec4<f32> = x_45.unity_FogColor;
  let x_1095 : vec3<f32> = ((vec3<f32>(x_1088, x_1088, x_1088) * x_1090) + vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1096 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1101 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_1103 : f32 = x_120.unity_RenderingLayer.x;
  u_xlatu0 = (x_1101 & bitcast<u32>(x_1103));
  let x_1106 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1106);
  let x_1111 : f32 = u_xlat0.x;
  let x_1114 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1111 * x_1114);
  let x_1119 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1119, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1124 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1124.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

