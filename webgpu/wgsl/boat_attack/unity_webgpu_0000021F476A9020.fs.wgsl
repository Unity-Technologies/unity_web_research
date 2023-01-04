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

@group(1) @binding(2) var<uniform> x_120 : UnityPerDraw;

@group(0) @binding(5) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_283 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1029 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

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
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var u_xlat39 : f32;
  var u_xlat15 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb29 : bool;
  var x_681 : f32;
  var u_xlat29 : f32;
  var u_xlat43 : f32;
  var u_xlat44 : f32;
  var u_xlat9 : vec4<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu38 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati41 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati39 : i32;
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
  let x_278 : vec3<f32> = vs_INTERP0;
  let x_285 : vec4<f32> = x_283.x_CascadeShadowSplitSpheres0;
  let x_288 : vec3<f32> = (x_278 + -(vec3<f32>(x_285.x, x_285.y, x_285.z)));
  let x_289 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_292 : vec3<f32> = vs_INTERP0;
  let x_294 : vec4<f32> = x_283.x_CascadeShadowSplitSpheres1;
  let x_297 : vec3<f32> = (x_292 + -(vec3<f32>(x_294.x, x_294.y, x_294.z)));
  let x_298 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_301 : vec3<f32> = vs_INTERP0;
  let x_303 : vec4<f32> = x_283.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_301 + -(vec3<f32>(x_303.x, x_303.y, x_303.z)));
  let x_308 : vec3<f32> = vs_INTERP0;
  let x_311 : vec4<f32> = x_283.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_308 + -(vec3<f32>(x_311.x, x_311.y, x_311.z)));
  let x_315 : vec4<f32> = u_xlat5;
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_315.x, x_315.y, x_315.z), vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_321 : vec4<f32> = u_xlat6;
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_321.x, x_321.y, x_321.z), vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_327 : vec3<f32> = u_xlat7;
  let x_328 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_327, x_328);
  let x_331 : vec3<f32> = u_xlat8;
  let x_332 : vec3<f32> = u_xlat8;
  u_xlat5.w = dot(x_331, x_332);
  let x_338 : vec4<f32> = u_xlat5;
  let x_341 : vec4<f32> = x_283.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_338 < x_341);
  let x_344 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_344);
  let x_348 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_348);
  let x_352 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_352);
  let x_356 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_356);
  let x_360 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_360);
  let x_365 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_365);
  let x_369 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_369);
  let x_372 : vec4<f32> = u_xlat5;
  let x_374 : vec4<f32> = u_xlat6;
  let x_376 : vec3<f32> = (vec3<f32>(x_372.x, x_372.y, x_372.z) + vec3<f32>(x_374.y, x_374.z, x_374.w));
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat5;
  let x_382 : vec3<f32> = max(vec3<f32>(x_379.x, x_379.y, x_379.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_383.x, x_382.x, x_382.y, x_382.z);
  let x_385 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_385, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_390 : f32 = u_xlat36;
  u_xlat36 = (-(x_390) + 4.0f);
  let x_395 : f32 = u_xlat36;
  u_xlatu36 = u32(x_395);
  let x_399 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_399) << bitcast<u32>(2i));
  let x_402 : vec3<f32> = vs_INTERP0;
  let x_404 : i32 = u_xlati36;
  let x_407 : i32 = u_xlati36;
  let x_411 : vec4<f32> = x_283.x_MainLightWorldToShadow[((x_404 + 1i) / 4i)][((x_407 + 1i) % 4i)];
  let x_413 : vec3<f32> = (vec3<f32>(x_402.y, x_402.y, x_402.y) * vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : i32 = u_xlati36;
  let x_418 : i32 = u_xlati36;
  let x_421 : vec4<f32> = x_283.x_MainLightWorldToShadow[(x_416 / 4i)][(x_418 % 4i)];
  let x_423 : vec3<f32> = vs_INTERP0;
  let x_426 : vec4<f32> = u_xlat5;
  let x_428 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(x_423.x, x_423.x, x_423.x)) + vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : i32 = u_xlati36;
  let x_434 : i32 = u_xlati36;
  let x_438 : vec4<f32> = x_283.x_MainLightWorldToShadow[((x_431 + 2i) / 4i)][((x_434 + 2i) % 4i)];
  let x_440 : vec3<f32> = vs_INTERP0;
  let x_443 : vec4<f32> = u_xlat5;
  let x_445 : vec3<f32> = ((vec3<f32>(x_438.x, x_438.y, x_438.z) * vec3<f32>(x_440.z, x_440.z, x_440.z)) + vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_446 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_448 : vec4<f32> = u_xlat5;
  let x_450 : i32 = u_xlati36;
  let x_453 : i32 = u_xlati36;
  let x_457 : vec4<f32> = x_283.x_MainLightWorldToShadow[((x_450 + 3i) / 4i)][((x_453 + 3i) % 4i)];
  let x_459 : vec3<f32> = (vec3<f32>(x_448.x, x_448.y, x_448.z) + vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_463 : f32 = vs_INTERP0.y;
  let x_465 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat36 = (x_463 * x_465);
  let x_468 : f32 = x_45.unity_MatrixV[0i].z;
  let x_470 : f32 = vs_INTERP0.x;
  let x_472 : f32 = u_xlat36;
  u_xlat36 = ((x_468 * x_470) + x_472);
  let x_475 : f32 = x_45.unity_MatrixV[2i].z;
  let x_477 : f32 = vs_INTERP0.z;
  let x_479 : f32 = u_xlat36;
  u_xlat36 = ((x_475 * x_477) + x_479);
  let x_481 : f32 = u_xlat36;
  let x_483 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat36 = (x_481 + x_483);
  let x_485 : f32 = u_xlat36;
  let x_489 : f32 = x_45.x_ProjectionParams.y;
  u_xlat36 = (-(x_485) + -(x_489));
  let x_492 : f32 = u_xlat36;
  u_xlat36 = max(x_492, 0.0f);
  let x_494 : f32 = u_xlat36;
  let x_497 : f32 = x_45.unity_FogParams.x;
  u_xlat36 = (x_494 * x_497);
  let x_506 : vec2<f32> = vs_INTERP4;
  let x_508 : f32 = x_45.x_GlobalMipBias.x;
  let x_509 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_506, x_508);
  let x_510 : vec3<f32> = vec3<f32>(x_509.x, x_509.y, x_509.z);
  let x_511 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_515 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_516 : vec2<f32> = vec2<f32>(x_515.x, x_515.y);
  let x_520 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_516.x, x_516.y));
  let x_521 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_520.x, x_520.y, x_521.z);
  let x_523 : vec3<f32> = u_xlat7;
  let x_525 : vec4<f32> = hlslcc_FragCoord;
  let x_527 : vec2<f32> = (vec2<f32>(x_523.x, x_523.y) * vec2<f32>(x_525.x, x_525.y));
  let x_528 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_527.x, x_527.y, x_528.z);
  let x_531 : f32 = u_xlat7.y;
  let x_534 : f32 = x_45.x_ScaleBiasRt.x;
  let x_537 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat38 = ((x_531 * x_534) + x_537);
  let x_539 : f32 = u_xlat38;
  u_xlat7.z = (-(x_539) + 1.0f);
  let x_543 : vec3<f32> = u_xlat3;
  let x_544 : vec2<f32> = vec2<f32>(x_543.x, x_543.y);
  let x_545 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_544.x, x_544.y, x_545.z);
  let x_547 : vec3<f32> = u_xlat3;
  let x_551 : vec2<f32> = clamp(vec2<f32>(x_547.x, x_547.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_552 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_551.x, x_551.y, x_552.z);
  let x_555 : f32 = u_xlat3.x;
  u_xlat38 = ((-(x_555) * 0.959999979f) + 0.959999979f);
  let x_561 : f32 = u_xlat38;
  let x_564 : f32 = u_xlat3.y;
  u_xlat39 = (-(x_561) + x_564);
  let x_566 : vec3<f32> = u_xlat0;
  let x_567 : f32 = u_xlat38;
  u_xlat8 = (x_566 * vec3<f32>(x_567, x_567, x_567));
  let x_570 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_570 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_574 : vec3<f32> = u_xlat3;
  let x_576 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_574.x, x_574.x, x_574.x) * x_576) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_582 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat38;
  let x_586 : f32 = u_xlat38;
  u_xlat3.x = (x_585 * x_586);
  let x_590 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_590, 0.0078125f);
  let x_596 : f32 = u_xlat3.x;
  let x_598 : f32 = u_xlat3.x;
  u_xlat15 = (x_596 * x_598);
  let x_600 : f32 = u_xlat39;
  u_xlat39 = (x_600 + 1.0f);
  let x_602 : f32 = u_xlat39;
  u_xlat39 = min(x_602, 1.0f);
  let x_606 : f32 = u_xlat3.x;
  u_xlat40 = ((x_606 * 4.0f) + 2.0f);
  let x_615 : vec3<f32> = u_xlat7;
  let x_618 : f32 = x_45.x_GlobalMipBias.x;
  let x_619 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_615.x, x_615.z), x_618);
  u_xlat41 = x_619.x;
  let x_622 : f32 = u_xlat41;
  u_xlat42 = (x_622 + -1.0f);
  let x_625 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_626 : f32 = u_xlat42;
  u_xlat42 = ((x_625 * x_626) + 1.0f);
  let x_631 : f32 = u_xlat3.z;
  let x_632 : f32 = u_xlat41;
  u_xlat27 = min(x_631, x_632);
  let x_635 : vec4<f32> = u_xlat5;
  let x_636 : vec2<f32> = vec2<f32>(x_635.x, x_635.y);
  let x_638 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_636.x, x_636.y, x_638);
  let x_650 : vec3<f32> = txVec0;
  let x_652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_650.xy, x_650.z);
  u_xlat5.x = x_652;
  let x_656 : f32 = x_283.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_656) + 1.0f);
  let x_661 : f32 = u_xlat5.x;
  let x_663 : f32 = x_283.x_MainLightShadowParams.x;
  let x_666 : f32 = u_xlat17.x;
  u_xlat5.x = ((x_661 * x_663) + x_666);
  let x_671 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_671);
  let x_675 : f32 = u_xlat5.z;
  u_xlatb29 = (x_675 >= 1.0f);
  let x_677 : bool = u_xlatb29;
  let x_678 : bool = u_xlatb17;
  u_xlatb17 = (x_677 | x_678);
  let x_680 : bool = u_xlatb17;
  if (x_680) {
    x_681 = 1.0f;
  } else {
    let x_686 : f32 = u_xlat5.x;
    x_681 = x_686;
  }
  let x_687 : f32 = x_681;
  u_xlat5.x = x_687;
  let x_689 : vec3<f32> = vs_INTERP0;
  let x_691 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat17 = (x_689 + -(x_691));
  let x_694 : vec3<f32> = u_xlat17;
  let x_695 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_694, x_695);
  let x_699 : f32 = u_xlat17.x;
  let x_701 : f32 = x_283.x_MainLightShadowParams.z;
  let x_704 : f32 = x_283.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_699 * x_701) + x_704);
  let x_708 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_708, 0.0f, 1.0f);
  let x_713 : f32 = u_xlat5.x;
  u_xlat29 = (-(x_713) + 1.0f);
  let x_717 : f32 = u_xlat17.x;
  let x_718 : f32 = u_xlat29;
  let x_721 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_717 * x_718) + x_721);
  let x_724 : f32 = u_xlat42;
  let x_727 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_724, x_724, x_724) * vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec3<f32> = u_xlat4;
  let x_732 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_730), vec3<f32>(x_732.x, x_732.y, x_732.w));
  let x_737 : f32 = u_xlat7.x;
  let x_739 : f32 = u_xlat7.x;
  u_xlat7.x = (x_737 + x_739);
  let x_742 : vec4<f32> = u_xlat1;
  let x_744 : vec3<f32> = u_xlat7;
  let x_748 : vec3<f32> = u_xlat4;
  u_xlat7 = ((vec3<f32>(x_742.x, x_742.y, x_742.w) * -(vec3<f32>(x_744.x, x_744.x, x_744.x))) + -(x_748));
  let x_752 : vec4<f32> = u_xlat1;
  let x_754 : vec3<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_752.x, x_752.y, x_752.w), x_754);
  let x_756 : f32 = u_xlat43;
  u_xlat43 = clamp(x_756, 0.0f, 1.0f);
  let x_758 : f32 = u_xlat43;
  u_xlat43 = (-(x_758) + 1.0f);
  let x_761 : f32 = u_xlat43;
  let x_762 : f32 = u_xlat43;
  u_xlat43 = (x_761 * x_762);
  let x_764 : f32 = u_xlat43;
  let x_765 : f32 = u_xlat43;
  u_xlat43 = (x_764 * x_765);
  let x_768 : f32 = u_xlat38;
  u_xlat44 = ((-(x_768) * 0.699999988f) + 1.700000048f);
  let x_774 : f32 = u_xlat38;
  let x_775 : f32 = u_xlat44;
  u_xlat2.w = (x_774 * x_775);
  let x_778 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_778 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_792 : vec3<f32> = u_xlat7;
  let x_794 : f32 = u_xlat2.w;
  let x_795 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_792, x_794);
  u_xlat9 = x_795;
  let x_797 : f32 = u_xlat9.w;
  u_xlat38 = (x_797 + -1.0f);
  let x_800 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_801 : f32 = u_xlat38;
  u_xlat38 = ((x_800 * x_801) + 1.0f);
  let x_804 : f32 = u_xlat38;
  u_xlat38 = max(x_804, 0.0f);
  let x_806 : f32 = u_xlat38;
  u_xlat38 = log2(x_806);
  let x_808 : f32 = u_xlat38;
  let x_810 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_808 * x_810);
  let x_812 : f32 = u_xlat38;
  u_xlat38 = exp2(x_812);
  let x_814 : f32 = u_xlat38;
  let x_816 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_814 * x_816);
  let x_818 : vec4<f32> = u_xlat9;
  let x_820 : f32 = u_xlat38;
  u_xlat7 = (vec3<f32>(x_818.x, x_818.y, x_818.z) * vec3<f32>(x_820, x_820, x_820));
  let x_823 : vec3<f32> = u_xlat3;
  let x_825 : vec3<f32> = u_xlat3;
  let x_829 : vec2<f32> = ((vec2<f32>(x_823.x, x_823.x) * vec2<f32>(x_825.x, x_825.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_830 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_829.x, x_829.y, x_830.z, x_830.w);
  let x_833 : f32 = u_xlat9.y;
  u_xlat38 = (1.0f / x_833);
  let x_836 : vec3<f32> = u_xlat0;
  let x_838 : f32 = u_xlat39;
  u_xlat21 = (-(x_836) + vec3<f32>(x_838, x_838, x_838));
  let x_841 : f32 = u_xlat43;
  let x_843 : vec3<f32> = u_xlat21;
  let x_845 : vec3<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_841, x_841, x_841) * x_843) + x_845);
  let x_847 : f32 = u_xlat38;
  let x_849 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_847, x_847, x_847) * x_849);
  let x_851 : vec3<f32> = u_xlat7;
  let x_852 : vec3<f32> = u_xlat21;
  u_xlat7 = (x_851 * x_852);
  let x_854 : vec4<f32> = u_xlat6;
  let x_856 : vec3<f32> = u_xlat8;
  let x_858 : vec3<f32> = u_xlat7;
  let x_859 : vec3<f32> = ((vec3<f32>(x_854.x, x_854.y, x_854.z) * x_856) + x_858);
  let x_860 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_863 : f32 = u_xlat5.x;
  let x_865 : f32 = x_120.unity_LightData.z;
  u_xlat38 = (x_863 * x_865);
  let x_867 : vec4<f32> = u_xlat1;
  let x_870 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_867.x, x_867.y, x_867.w), vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_875 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_875, 0.0f, 1.0f);
  let x_878 : f32 = u_xlat38;
  let x_880 : f32 = u_xlat3.x;
  u_xlat38 = (x_878 * x_880);
  let x_882 : f32 = u_xlat38;
  let x_884 : vec3<f32> = u_xlat17;
  let x_885 : vec3<f32> = (vec3<f32>(x_882, x_882, x_882) * x_884);
  let x_886 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_888 : vec3<f32> = u_xlat4;
  let x_890 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat7 = (x_888 + vec3<f32>(x_890.x, x_890.y, x_890.z));
  let x_893 : vec3<f32> = u_xlat7;
  let x_894 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_893, x_894);
  let x_896 : f32 = u_xlat38;
  u_xlat38 = max(x_896, 1.17549435e-37f);
  let x_899 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_899);
  let x_901 : f32 = u_xlat38;
  let x_903 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_901, x_901, x_901) * x_903);
  let x_905 : vec4<f32> = u_xlat1;
  let x_907 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(vec3<f32>(x_905.x, x_905.y, x_905.w), x_907);
  let x_909 : f32 = u_xlat38;
  u_xlat38 = clamp(x_909, 0.0f, 1.0f);
  let x_912 : vec4<f32> = x_45.x_MainLightPosition;
  let x_914 : vec3<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_912.x, x_912.y, x_912.z), x_914);
  let x_918 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_918, 0.0f, 1.0f);
  let x_921 : f32 = u_xlat38;
  let x_922 : f32 = u_xlat38;
  u_xlat38 = (x_921 * x_922);
  let x_924 : f32 = u_xlat38;
  let x_926 : f32 = u_xlat9.x;
  u_xlat38 = ((x_924 * x_926) + 1.000010014f);
  let x_931 : f32 = u_xlat3.x;
  let x_933 : f32 = u_xlat3.x;
  u_xlat3.x = (x_931 * x_933);
  let x_936 : f32 = u_xlat38;
  let x_937 : f32 = u_xlat38;
  u_xlat38 = (x_936 * x_937);
  let x_940 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_940, 0.100000001f);
  let x_944 : f32 = u_xlat38;
  let x_946 : f32 = u_xlat3.x;
  u_xlat38 = (x_944 * x_946);
  let x_948 : f32 = u_xlat40;
  let x_949 : f32 = u_xlat38;
  u_xlat38 = (x_948 * x_949);
  let x_951 : f32 = u_xlat15;
  let x_952 : f32 = u_xlat38;
  u_xlat38 = (x_951 / x_952);
  let x_954 : vec3<f32> = u_xlat0;
  let x_955 : f32 = u_xlat38;
  let x_958 : vec3<f32> = u_xlat8;
  u_xlat7 = ((x_954 * vec3<f32>(x_955, x_955, x_955)) + x_958);
  let x_960 : vec4<f32> = u_xlat5;
  let x_962 : vec3<f32> = u_xlat7;
  let x_963 : vec3<f32> = (vec3<f32>(x_960.x, x_960.y, x_960.z) * x_962);
  let x_964 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_967 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_969 : f32 = x_120.unity_LightData.y;
  u_xlat38 = min(x_967, x_969);
  let x_972 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_972));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_984 : u32 = u_xlatu_loop_1;
    let x_985 : u32 = u_xlatu38;
    if ((x_984 < x_985)) {
    } else {
      break;
    }
    let x_988 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_988 >> 2u);
    let x_991 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_991 & 3u));
    let x_994 : u32 = u_xlatu39;
    let x_997 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_994)];
    let x_1007 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1012 : vec4<u32> = indexable[x_1007];
    u_xlat39 = dot(x_997, bitcast<vec4<f32>>(x_1012));
    let x_1016 : f32 = u_xlat39;
    u_xlati39 = i32(x_1016);
    let x_1018 : vec3<f32> = vs_INTERP0;
    let x_1030 : i32 = u_xlati39;
    let x_1032 : vec4<f32> = x_1029.x_AdditionalLightsPosition[x_1030];
    let x_1035 : i32 = u_xlati39;
    let x_1037 : vec4<f32> = x_1029.x_AdditionalLightsPosition[x_1035];
    u_xlat21 = ((-(x_1018) * vec3<f32>(x_1032.w, x_1032.w, x_1032.w)) + vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
    let x_1040 : vec3<f32> = u_xlat21;
    let x_1041 : vec3<f32> = u_xlat21;
    u_xlat41 = dot(x_1040, x_1041);
    let x_1043 : f32 = u_xlat41;
    u_xlat41 = max(x_1043, 6.10351562e-05f);
    let x_1046 : f32 = u_xlat41;
    u_xlat43 = inverseSqrt(x_1046);
    let x_1049 : f32 = u_xlat43;
    let x_1051 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1049, x_1049, x_1049) * x_1051);
    let x_1053 : f32 = u_xlat41;
    u_xlat44 = (1.0f / x_1053);
    let x_1055 : f32 = u_xlat41;
    let x_1056 : i32 = u_xlati39;
    let x_1058 : f32 = x_1029.x_AdditionalLightsAttenuation[x_1056].x;
    u_xlat41 = (x_1055 * x_1058);
    let x_1060 : f32 = u_xlat41;
    let x_1062 : f32 = u_xlat41;
    u_xlat41 = ((-(x_1060) * x_1062) + 1.0f);
    let x_1065 : f32 = u_xlat41;
    u_xlat41 = max(x_1065, 0.0f);
    let x_1067 : f32 = u_xlat41;
    let x_1068 : f32 = u_xlat41;
    u_xlat41 = (x_1067 * x_1068);
    let x_1070 : f32 = u_xlat41;
    let x_1071 : f32 = u_xlat44;
    u_xlat41 = (x_1070 * x_1071);
    let x_1073 : i32 = u_xlati39;
    let x_1075 : vec4<f32> = x_1029.x_AdditionalLightsSpotDir[x_1073];
    let x_1077 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_1075.x, x_1075.y, x_1075.z), x_1077);
    let x_1079 : f32 = u_xlat44;
    let x_1080 : i32 = u_xlati39;
    let x_1082 : f32 = x_1029.x_AdditionalLightsAttenuation[x_1080].z;
    let x_1084 : i32 = u_xlati39;
    let x_1086 : f32 = x_1029.x_AdditionalLightsAttenuation[x_1084].w;
    u_xlat44 = ((x_1079 * x_1082) + x_1086);
    let x_1088 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1088, 0.0f, 1.0f);
    let x_1090 : f32 = u_xlat44;
    let x_1091 : f32 = u_xlat44;
    u_xlat44 = (x_1090 * x_1091);
    let x_1093 : f32 = u_xlat41;
    let x_1094 : f32 = u_xlat44;
    u_xlat41 = (x_1093 * x_1094);
    let x_1097 : f32 = u_xlat42;
    let x_1099 : i32 = u_xlati39;
    let x_1101 : vec4<f32> = x_1029.x_AdditionalLightsColor[x_1099];
    u_xlat11 = (vec3<f32>(x_1097, x_1097, x_1097) * vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
    let x_1104 : vec4<f32> = u_xlat1;
    let x_1106 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(vec3<f32>(x_1104.x, x_1104.y, x_1104.w), x_1106);
    let x_1108 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1108, 0.0f, 1.0f);
    let x_1110 : f32 = u_xlat39;
    let x_1111 : f32 = u_xlat41;
    u_xlat39 = (x_1110 * x_1111);
    let x_1113 : f32 = u_xlat39;
    let x_1115 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1113, x_1113, x_1113) * x_1115);
    let x_1117 : vec3<f32> = u_xlat21;
    let x_1118 : f32 = u_xlat43;
    let x_1121 : vec3<f32> = u_xlat4;
    u_xlat21 = ((x_1117 * vec3<f32>(x_1118, x_1118, x_1118)) + x_1121);
    let x_1123 : vec3<f32> = u_xlat21;
    let x_1124 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(x_1123, x_1124);
    let x_1126 : f32 = u_xlat39;
    u_xlat39 = max(x_1126, 1.17549435e-37f);
    let x_1128 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1128);
    let x_1130 : f32 = u_xlat39;
    let x_1132 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1130, x_1130, x_1130) * x_1132);
    let x_1134 : vec4<f32> = u_xlat1;
    let x_1136 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(vec3<f32>(x_1134.x, x_1134.y, x_1134.w), x_1136);
    let x_1138 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1138, 0.0f, 1.0f);
    let x_1140 : vec3<f32> = u_xlat10;
    let x_1141 : vec3<f32> = u_xlat21;
    u_xlat41 = dot(x_1140, x_1141);
    let x_1143 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1143, 0.0f, 1.0f);
    let x_1145 : f32 = u_xlat39;
    let x_1146 : f32 = u_xlat39;
    u_xlat39 = (x_1145 * x_1146);
    let x_1148 : f32 = u_xlat39;
    let x_1150 : f32 = u_xlat9.x;
    u_xlat39 = ((x_1148 * x_1150) + 1.000010014f);
    let x_1153 : f32 = u_xlat41;
    let x_1154 : f32 = u_xlat41;
    u_xlat41 = (x_1153 * x_1154);
    let x_1156 : f32 = u_xlat39;
    let x_1157 : f32 = u_xlat39;
    u_xlat39 = (x_1156 * x_1157);
    let x_1159 : f32 = u_xlat41;
    u_xlat41 = max(x_1159, 0.100000001f);
    let x_1161 : f32 = u_xlat39;
    let x_1162 : f32 = u_xlat41;
    u_xlat39 = (x_1161 * x_1162);
    let x_1164 : f32 = u_xlat40;
    let x_1165 : f32 = u_xlat39;
    u_xlat39 = (x_1164 * x_1165);
    let x_1167 : f32 = u_xlat15;
    let x_1168 : f32 = u_xlat39;
    u_xlat39 = (x_1167 / x_1168);
    let x_1170 : vec3<f32> = u_xlat0;
    let x_1171 : f32 = u_xlat39;
    let x_1174 : vec3<f32> = u_xlat8;
    u_xlat21 = ((x_1170 * vec3<f32>(x_1171, x_1171, x_1171)) + x_1174);
    let x_1176 : vec3<f32> = u_xlat21;
    let x_1177 : vec3<f32> = u_xlat11;
    let x_1179 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1176 * x_1177) + x_1179);

    continuing {
      let x_1181 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1181 + bitcast<u32>(1i));
    }
  }
  let x_1183 : vec4<f32> = u_xlat6;
  let x_1185 : f32 = u_xlat27;
  let x_1188 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1183.x, x_1183.y, x_1183.z) * vec3<f32>(x_1185, x_1185, x_1185)) + vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
  let x_1191 : vec3<f32> = u_xlat7;
  let x_1192 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1191 + x_1192);
  let x_1194 : vec4<f32> = u_xlat2;
  let x_1196 : f32 = u_xlat25;
  let x_1199 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1194.x, x_1194.y, x_1194.z) * vec3<f32>(x_1196, x_1196, x_1196)) + x_1199);
  let x_1201 : f32 = u_xlat36;
  let x_1202 : f32 = u_xlat36;
  u_xlat36 = (x_1201 * -(x_1202));
  let x_1205 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1205);
  let x_1207 : vec3<f32> = u_xlat0;
  let x_1210 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1207 + -(vec3<f32>(x_1210.x, x_1210.y, x_1210.z)));
  let x_1216 : f32 = u_xlat36;
  let x_1218 : vec3<f32> = u_xlat0;
  let x_1221 : vec4<f32> = x_45.unity_FogColor;
  let x_1223 : vec3<f32> = ((vec3<f32>(x_1216, x_1216, x_1216) * x_1218) + vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
  let x_1224 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
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

