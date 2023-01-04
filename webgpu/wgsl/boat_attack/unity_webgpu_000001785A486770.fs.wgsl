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

@group(1) @binding(3) var<uniform> x_283 : MainLightShadows;

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

@group(1) @binding(1) var<uniform> x_1067 : AdditionalLights;

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
  var x_719 : f32;
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
  let x_509 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_506, x_508);
  u_xlat6 = x_509;
  let x_514 : vec2<f32> = vs_INTERP4;
  let x_516 : f32 = x_45.x_GlobalMipBias.x;
  let x_517 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_514, x_516);
  u_xlat7 = vec3<f32>(x_517.x, x_517.y, x_517.z);
  let x_519 : vec4<f32> = u_xlat6;
  let x_523 : vec3<f32> = (vec3<f32>(x_519.x, x_519.y, x_519.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_524 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat1;
  let x_528 : vec4<f32> = u_xlat6;
  u_xlat38 = dot(vec3<f32>(x_526.x, x_526.y, x_526.w), vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : f32 = u_xlat38;
  u_xlat38 = (x_531 + 0.5f);
  let x_534 : f32 = u_xlat38;
  let x_536 : vec3<f32> = u_xlat7;
  let x_537 : vec3<f32> = (vec3<f32>(x_534, x_534, x_534) * x_536);
  let x_538 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_541 : f32 = u_xlat6.w;
  u_xlat38 = max(x_541, 0.0001f);
  let x_544 : vec4<f32> = u_xlat6;
  let x_546 : f32 = u_xlat38;
  let x_548 : vec3<f32> = (vec3<f32>(x_544.x, x_544.y, x_544.z) / vec3<f32>(x_546, x_546, x_546));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_553 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_554 : vec2<f32> = vec2<f32>(x_553.x, x_553.y);
  let x_558 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_554.x, x_554.y));
  let x_559 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_558.x, x_558.y, x_559.z);
  let x_561 : vec3<f32> = u_xlat7;
  let x_563 : vec4<f32> = hlslcc_FragCoord;
  let x_565 : vec2<f32> = (vec2<f32>(x_561.x, x_561.y) * vec2<f32>(x_563.x, x_563.y));
  let x_566 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_565.x, x_565.y, x_566.z);
  let x_569 : f32 = u_xlat7.y;
  let x_572 : f32 = x_45.x_ScaleBiasRt.x;
  let x_575 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat38 = ((x_569 * x_572) + x_575);
  let x_577 : f32 = u_xlat38;
  u_xlat7.z = (-(x_577) + 1.0f);
  let x_581 : vec3<f32> = u_xlat3;
  let x_582 : vec2<f32> = vec2<f32>(x_581.x, x_581.y);
  let x_583 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_582.x, x_582.y, x_583.z);
  let x_585 : vec3<f32> = u_xlat3;
  let x_589 : vec2<f32> = clamp(vec2<f32>(x_585.x, x_585.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_590 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_589.x, x_589.y, x_590.z);
  let x_593 : f32 = u_xlat3.x;
  u_xlat38 = ((-(x_593) * 0.959999979f) + 0.959999979f);
  let x_599 : f32 = u_xlat38;
  let x_602 : f32 = u_xlat3.y;
  u_xlat39 = (-(x_599) + x_602);
  let x_604 : vec3<f32> = u_xlat0;
  let x_605 : f32 = u_xlat38;
  u_xlat8 = (x_604 * vec3<f32>(x_605, x_605, x_605));
  let x_608 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_608 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_612 : vec3<f32> = u_xlat3;
  let x_614 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_612.x, x_612.x, x_612.x) * x_614) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_620 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_620) + 1.0f);
  let x_623 : f32 = u_xlat38;
  let x_624 : f32 = u_xlat38;
  u_xlat3.x = (x_623 * x_624);
  let x_628 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_628, 0.0078125f);
  let x_634 : f32 = u_xlat3.x;
  let x_636 : f32 = u_xlat3.x;
  u_xlat15 = (x_634 * x_636);
  let x_638 : f32 = u_xlat39;
  u_xlat39 = (x_638 + 1.0f);
  let x_640 : f32 = u_xlat39;
  u_xlat39 = min(x_640, 1.0f);
  let x_644 : f32 = u_xlat3.x;
  u_xlat40 = ((x_644 * 4.0f) + 2.0f);
  let x_653 : vec3<f32> = u_xlat7;
  let x_656 : f32 = x_45.x_GlobalMipBias.x;
  let x_657 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_653.x, x_653.z), x_656);
  u_xlat41 = x_657.x;
  let x_660 : f32 = u_xlat41;
  u_xlat42 = (x_660 + -1.0f);
  let x_663 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_664 : f32 = u_xlat42;
  u_xlat42 = ((x_663 * x_664) + 1.0f);
  let x_669 : f32 = u_xlat3.z;
  let x_670 : f32 = u_xlat41;
  u_xlat27 = min(x_669, x_670);
  let x_673 : vec4<f32> = u_xlat5;
  let x_674 : vec2<f32> = vec2<f32>(x_673.x, x_673.y);
  let x_676 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_674.x, x_674.y, x_676);
  let x_688 : vec3<f32> = txVec0;
  let x_690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_688.xy, x_688.z);
  u_xlat5.x = x_690;
  let x_694 : f32 = x_283.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_694) + 1.0f);
  let x_699 : f32 = u_xlat5.x;
  let x_701 : f32 = x_283.x_MainLightShadowParams.x;
  let x_704 : f32 = u_xlat17.x;
  u_xlat5.x = ((x_699 * x_701) + x_704);
  let x_709 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_709);
  let x_713 : f32 = u_xlat5.z;
  u_xlatb29 = (x_713 >= 1.0f);
  let x_715 : bool = u_xlatb29;
  let x_716 : bool = u_xlatb17;
  u_xlatb17 = (x_715 | x_716);
  let x_718 : bool = u_xlatb17;
  if (x_718) {
    x_719 = 1.0f;
  } else {
    let x_724 : f32 = u_xlat5.x;
    x_719 = x_724;
  }
  let x_725 : f32 = x_719;
  u_xlat5.x = x_725;
  let x_727 : vec3<f32> = vs_INTERP0;
  let x_729 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat17 = (x_727 + -(x_729));
  let x_732 : vec3<f32> = u_xlat17;
  let x_733 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_732, x_733);
  let x_737 : f32 = u_xlat17.x;
  let x_739 : f32 = x_283.x_MainLightShadowParams.z;
  let x_742 : f32 = x_283.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_737 * x_739) + x_742);
  let x_746 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_746, 0.0f, 1.0f);
  let x_751 : f32 = u_xlat5.x;
  u_xlat29 = (-(x_751) + 1.0f);
  let x_755 : f32 = u_xlat17.x;
  let x_756 : f32 = u_xlat29;
  let x_759 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_755 * x_756) + x_759);
  let x_762 : f32 = u_xlat42;
  let x_765 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_762, x_762, x_762) * vec3<f32>(x_765.x, x_765.y, x_765.z));
  let x_768 : vec3<f32> = u_xlat4;
  let x_770 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_768), vec3<f32>(x_770.x, x_770.y, x_770.w));
  let x_775 : f32 = u_xlat7.x;
  let x_777 : f32 = u_xlat7.x;
  u_xlat7.x = (x_775 + x_777);
  let x_780 : vec4<f32> = u_xlat1;
  let x_782 : vec3<f32> = u_xlat7;
  let x_786 : vec3<f32> = u_xlat4;
  u_xlat7 = ((vec3<f32>(x_780.x, x_780.y, x_780.w) * -(vec3<f32>(x_782.x, x_782.x, x_782.x))) + -(x_786));
  let x_790 : vec4<f32> = u_xlat1;
  let x_792 : vec3<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_790.x, x_790.y, x_790.w), x_792);
  let x_794 : f32 = u_xlat43;
  u_xlat43 = clamp(x_794, 0.0f, 1.0f);
  let x_796 : f32 = u_xlat43;
  u_xlat43 = (-(x_796) + 1.0f);
  let x_799 : f32 = u_xlat43;
  let x_800 : f32 = u_xlat43;
  u_xlat43 = (x_799 * x_800);
  let x_802 : f32 = u_xlat43;
  let x_803 : f32 = u_xlat43;
  u_xlat43 = (x_802 * x_803);
  let x_806 : f32 = u_xlat38;
  u_xlat44 = ((-(x_806) * 0.699999988f) + 1.700000048f);
  let x_812 : f32 = u_xlat38;
  let x_813 : f32 = u_xlat44;
  u_xlat2.w = (x_812 * x_813);
  let x_816 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_816 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_830 : vec3<f32> = u_xlat7;
  let x_832 : f32 = u_xlat2.w;
  let x_833 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_830, x_832);
  u_xlat9 = x_833;
  let x_835 : f32 = u_xlat9.w;
  u_xlat38 = (x_835 + -1.0f);
  let x_838 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_839 : f32 = u_xlat38;
  u_xlat38 = ((x_838 * x_839) + 1.0f);
  let x_842 : f32 = u_xlat38;
  u_xlat38 = max(x_842, 0.0f);
  let x_844 : f32 = u_xlat38;
  u_xlat38 = log2(x_844);
  let x_846 : f32 = u_xlat38;
  let x_848 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_846 * x_848);
  let x_850 : f32 = u_xlat38;
  u_xlat38 = exp2(x_850);
  let x_852 : f32 = u_xlat38;
  let x_854 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_852 * x_854);
  let x_856 : vec4<f32> = u_xlat9;
  let x_858 : f32 = u_xlat38;
  u_xlat7 = (vec3<f32>(x_856.x, x_856.y, x_856.z) * vec3<f32>(x_858, x_858, x_858));
  let x_861 : vec3<f32> = u_xlat3;
  let x_863 : vec3<f32> = u_xlat3;
  let x_867 : vec2<f32> = ((vec2<f32>(x_861.x, x_861.x) * vec2<f32>(x_863.x, x_863.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_868 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_867.x, x_867.y, x_868.z, x_868.w);
  let x_871 : f32 = u_xlat9.y;
  u_xlat38 = (1.0f / x_871);
  let x_874 : vec3<f32> = u_xlat0;
  let x_876 : f32 = u_xlat39;
  u_xlat21 = (-(x_874) + vec3<f32>(x_876, x_876, x_876));
  let x_879 : f32 = u_xlat43;
  let x_881 : vec3<f32> = u_xlat21;
  let x_883 : vec3<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_879, x_879, x_879) * x_881) + x_883);
  let x_885 : f32 = u_xlat38;
  let x_887 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_885, x_885, x_885) * x_887);
  let x_889 : vec3<f32> = u_xlat7;
  let x_890 : vec3<f32> = u_xlat21;
  u_xlat7 = (x_889 * x_890);
  let x_892 : vec4<f32> = u_xlat6;
  let x_894 : vec3<f32> = u_xlat8;
  let x_896 : vec3<f32> = u_xlat7;
  let x_897 : vec3<f32> = ((vec3<f32>(x_892.x, x_892.y, x_892.z) * x_894) + x_896);
  let x_898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_901 : f32 = u_xlat5.x;
  let x_903 : f32 = x_120.unity_LightData.z;
  u_xlat38 = (x_901 * x_903);
  let x_905 : vec4<f32> = u_xlat1;
  let x_908 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_905.x, x_905.y, x_905.w), vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_913 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_913, 0.0f, 1.0f);
  let x_916 : f32 = u_xlat38;
  let x_918 : f32 = u_xlat3.x;
  u_xlat38 = (x_916 * x_918);
  let x_920 : f32 = u_xlat38;
  let x_922 : vec3<f32> = u_xlat17;
  let x_923 : vec3<f32> = (vec3<f32>(x_920, x_920, x_920) * x_922);
  let x_924 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec3<f32> = u_xlat4;
  let x_928 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat7 = (x_926 + vec3<f32>(x_928.x, x_928.y, x_928.z));
  let x_931 : vec3<f32> = u_xlat7;
  let x_932 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_931, x_932);
  let x_934 : f32 = u_xlat38;
  u_xlat38 = max(x_934, 1.17549435e-37f);
  let x_937 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_937);
  let x_939 : f32 = u_xlat38;
  let x_941 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_939, x_939, x_939) * x_941);
  let x_943 : vec4<f32> = u_xlat1;
  let x_945 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(vec3<f32>(x_943.x, x_943.y, x_943.w), x_945);
  let x_947 : f32 = u_xlat38;
  u_xlat38 = clamp(x_947, 0.0f, 1.0f);
  let x_950 : vec4<f32> = x_45.x_MainLightPosition;
  let x_952 : vec3<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_950.x, x_950.y, x_950.z), x_952);
  let x_956 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_956, 0.0f, 1.0f);
  let x_959 : f32 = u_xlat38;
  let x_960 : f32 = u_xlat38;
  u_xlat38 = (x_959 * x_960);
  let x_962 : f32 = u_xlat38;
  let x_964 : f32 = u_xlat9.x;
  u_xlat38 = ((x_962 * x_964) + 1.000010014f);
  let x_969 : f32 = u_xlat3.x;
  let x_971 : f32 = u_xlat3.x;
  u_xlat3.x = (x_969 * x_971);
  let x_974 : f32 = u_xlat38;
  let x_975 : f32 = u_xlat38;
  u_xlat38 = (x_974 * x_975);
  let x_978 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_978, 0.100000001f);
  let x_982 : f32 = u_xlat38;
  let x_984 : f32 = u_xlat3.x;
  u_xlat38 = (x_982 * x_984);
  let x_986 : f32 = u_xlat40;
  let x_987 : f32 = u_xlat38;
  u_xlat38 = (x_986 * x_987);
  let x_989 : f32 = u_xlat15;
  let x_990 : f32 = u_xlat38;
  u_xlat38 = (x_989 / x_990);
  let x_992 : vec3<f32> = u_xlat0;
  let x_993 : f32 = u_xlat38;
  let x_996 : vec3<f32> = u_xlat8;
  u_xlat7 = ((x_992 * vec3<f32>(x_993, x_993, x_993)) + x_996);
  let x_998 : vec4<f32> = u_xlat5;
  let x_1000 : vec3<f32> = u_xlat7;
  let x_1001 : vec3<f32> = (vec3<f32>(x_998.x, x_998.y, x_998.z) * x_1000);
  let x_1002 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1005 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1007 : f32 = x_120.unity_LightData.y;
  u_xlat38 = min(x_1005, x_1007);
  let x_1010 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_1010));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1022 : u32 = u_xlatu_loop_1;
    let x_1023 : u32 = u_xlatu38;
    if ((x_1022 < x_1023)) {
    } else {
      break;
    }
    let x_1026 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_1026 >> 2u);
    let x_1029 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_1029 & 3u));
    let x_1032 : u32 = u_xlatu39;
    let x_1035 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_1032)];
    let x_1045 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1050 : vec4<u32> = indexable[x_1045];
    u_xlat39 = dot(x_1035, bitcast<vec4<f32>>(x_1050));
    let x_1054 : f32 = u_xlat39;
    u_xlati39 = i32(x_1054);
    let x_1056 : vec3<f32> = vs_INTERP0;
    let x_1068 : i32 = u_xlati39;
    let x_1070 : vec4<f32> = x_1067.x_AdditionalLightsPosition[x_1068];
    let x_1073 : i32 = u_xlati39;
    let x_1075 : vec4<f32> = x_1067.x_AdditionalLightsPosition[x_1073];
    u_xlat21 = ((-(x_1056) * vec3<f32>(x_1070.w, x_1070.w, x_1070.w)) + vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
    let x_1078 : vec3<f32> = u_xlat21;
    let x_1079 : vec3<f32> = u_xlat21;
    u_xlat41 = dot(x_1078, x_1079);
    let x_1081 : f32 = u_xlat41;
    u_xlat41 = max(x_1081, 6.10351562e-05f);
    let x_1084 : f32 = u_xlat41;
    u_xlat43 = inverseSqrt(x_1084);
    let x_1087 : f32 = u_xlat43;
    let x_1089 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1087, x_1087, x_1087) * x_1089);
    let x_1091 : f32 = u_xlat41;
    u_xlat44 = (1.0f / x_1091);
    let x_1093 : f32 = u_xlat41;
    let x_1094 : i32 = u_xlati39;
    let x_1096 : f32 = x_1067.x_AdditionalLightsAttenuation[x_1094].x;
    u_xlat41 = (x_1093 * x_1096);
    let x_1098 : f32 = u_xlat41;
    let x_1100 : f32 = u_xlat41;
    u_xlat41 = ((-(x_1098) * x_1100) + 1.0f);
    let x_1103 : f32 = u_xlat41;
    u_xlat41 = max(x_1103, 0.0f);
    let x_1105 : f32 = u_xlat41;
    let x_1106 : f32 = u_xlat41;
    u_xlat41 = (x_1105 * x_1106);
    let x_1108 : f32 = u_xlat41;
    let x_1109 : f32 = u_xlat44;
    u_xlat41 = (x_1108 * x_1109);
    let x_1111 : i32 = u_xlati39;
    let x_1113 : vec4<f32> = x_1067.x_AdditionalLightsSpotDir[x_1111];
    let x_1115 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_1113.x, x_1113.y, x_1113.z), x_1115);
    let x_1117 : f32 = u_xlat44;
    let x_1118 : i32 = u_xlati39;
    let x_1120 : f32 = x_1067.x_AdditionalLightsAttenuation[x_1118].z;
    let x_1122 : i32 = u_xlati39;
    let x_1124 : f32 = x_1067.x_AdditionalLightsAttenuation[x_1122].w;
    u_xlat44 = ((x_1117 * x_1120) + x_1124);
    let x_1126 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1126, 0.0f, 1.0f);
    let x_1128 : f32 = u_xlat44;
    let x_1129 : f32 = u_xlat44;
    u_xlat44 = (x_1128 * x_1129);
    let x_1131 : f32 = u_xlat41;
    let x_1132 : f32 = u_xlat44;
    u_xlat41 = (x_1131 * x_1132);
    let x_1135 : f32 = u_xlat42;
    let x_1137 : i32 = u_xlati39;
    let x_1139 : vec4<f32> = x_1067.x_AdditionalLightsColor[x_1137];
    u_xlat11 = (vec3<f32>(x_1135, x_1135, x_1135) * vec3<f32>(x_1139.x, x_1139.y, x_1139.z));
    let x_1142 : vec4<f32> = u_xlat1;
    let x_1144 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(vec3<f32>(x_1142.x, x_1142.y, x_1142.w), x_1144);
    let x_1146 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1146, 0.0f, 1.0f);
    let x_1148 : f32 = u_xlat39;
    let x_1149 : f32 = u_xlat41;
    u_xlat39 = (x_1148 * x_1149);
    let x_1151 : f32 = u_xlat39;
    let x_1153 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1151, x_1151, x_1151) * x_1153);
    let x_1155 : vec3<f32> = u_xlat21;
    let x_1156 : f32 = u_xlat43;
    let x_1159 : vec3<f32> = u_xlat4;
    u_xlat21 = ((x_1155 * vec3<f32>(x_1156, x_1156, x_1156)) + x_1159);
    let x_1161 : vec3<f32> = u_xlat21;
    let x_1162 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(x_1161, x_1162);
    let x_1164 : f32 = u_xlat39;
    u_xlat39 = max(x_1164, 1.17549435e-37f);
    let x_1166 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1166);
    let x_1168 : f32 = u_xlat39;
    let x_1170 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1168, x_1168, x_1168) * x_1170);
    let x_1172 : vec4<f32> = u_xlat1;
    let x_1174 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(vec3<f32>(x_1172.x, x_1172.y, x_1172.w), x_1174);
    let x_1176 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1176, 0.0f, 1.0f);
    let x_1178 : vec3<f32> = u_xlat10;
    let x_1179 : vec3<f32> = u_xlat21;
    u_xlat41 = dot(x_1178, x_1179);
    let x_1181 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1181, 0.0f, 1.0f);
    let x_1183 : f32 = u_xlat39;
    let x_1184 : f32 = u_xlat39;
    u_xlat39 = (x_1183 * x_1184);
    let x_1186 : f32 = u_xlat39;
    let x_1188 : f32 = u_xlat9.x;
    u_xlat39 = ((x_1186 * x_1188) + 1.000010014f);
    let x_1191 : f32 = u_xlat41;
    let x_1192 : f32 = u_xlat41;
    u_xlat41 = (x_1191 * x_1192);
    let x_1194 : f32 = u_xlat39;
    let x_1195 : f32 = u_xlat39;
    u_xlat39 = (x_1194 * x_1195);
    let x_1197 : f32 = u_xlat41;
    u_xlat41 = max(x_1197, 0.100000001f);
    let x_1199 : f32 = u_xlat39;
    let x_1200 : f32 = u_xlat41;
    u_xlat39 = (x_1199 * x_1200);
    let x_1202 : f32 = u_xlat40;
    let x_1203 : f32 = u_xlat39;
    u_xlat39 = (x_1202 * x_1203);
    let x_1205 : f32 = u_xlat15;
    let x_1206 : f32 = u_xlat39;
    u_xlat39 = (x_1205 / x_1206);
    let x_1208 : vec3<f32> = u_xlat0;
    let x_1209 : f32 = u_xlat39;
    let x_1212 : vec3<f32> = u_xlat8;
    u_xlat21 = ((x_1208 * vec3<f32>(x_1209, x_1209, x_1209)) + x_1212);
    let x_1214 : vec3<f32> = u_xlat21;
    let x_1215 : vec3<f32> = u_xlat11;
    let x_1217 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1214 * x_1215) + x_1217);

    continuing {
      let x_1219 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1219 + bitcast<u32>(1i));
    }
  }
  let x_1221 : vec4<f32> = u_xlat6;
  let x_1223 : f32 = u_xlat27;
  let x_1226 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1221.x, x_1221.y, x_1221.z) * vec3<f32>(x_1223, x_1223, x_1223)) + vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
  let x_1229 : vec3<f32> = u_xlat7;
  let x_1230 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1229 + x_1230);
  let x_1232 : vec4<f32> = u_xlat2;
  let x_1234 : f32 = u_xlat25;
  let x_1237 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1232.x, x_1232.y, x_1232.z) * vec3<f32>(x_1234, x_1234, x_1234)) + x_1237);
  let x_1239 : f32 = u_xlat36;
  let x_1240 : f32 = u_xlat36;
  u_xlat36 = (x_1239 * -(x_1240));
  let x_1243 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1243);
  let x_1245 : vec3<f32> = u_xlat0;
  let x_1248 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1245 + -(vec3<f32>(x_1248.x, x_1248.y, x_1248.z)));
  let x_1254 : f32 = u_xlat36;
  let x_1256 : vec3<f32> = u_xlat0;
  let x_1259 : vec4<f32> = x_45.unity_FogColor;
  let x_1261 : vec3<f32> = ((vec3<f32>(x_1254, x_1254, x_1254) * x_1256) + vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
  let x_1262 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
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

