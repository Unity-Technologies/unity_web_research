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

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_436 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2062 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat63 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb43 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlatb64 : bool;
  var u_xlat64 : f32;
  var u_xlatb65 : bool;
  var u_xlat65 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb63 : bool;
  var u_xlat5 : vec3<f32>;
  var x_260 : f32;
  var x_272 : f32;
  var x_284 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat45 : f32;
  var u_xlatb67 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat27 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat70 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec3<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb27 : bool;
  var u_xlatu63 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati67 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati3 : i32;
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
  u_xlat63 = dot(vec2<f32>(x_87.x, x_87.y), vec2<f32>(x_89.x, x_89.y));
  let x_92 : f32 = u_xlat63;
  u_xlat63 = min(x_92, 1.0f);
  let x_94 : f32 = u_xlat63;
  u_xlat63 = (-(x_94) + 1.0f);
  let x_97 : f32 = u_xlat63;
  u_xlat63 = sqrt(x_97);
  let x_99 : f32 = u_xlat63;
  u_xlat63 = max(x_99, 1.00000002e-16f);
  let x_108 : vec4<f32> = vs_INTERP3;
  let x_111 : f32 = x_45.x_GlobalMipBias.x;
  let x_112 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_108.x, x_108.y), x_111);
  u_xlat2 = vec3<f32>(x_112.x, x_112.y, x_112.z);
  let x_114 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_114 * vec3<f32>(14.0f, 14.0f, 14.0f));
  let x_127 : vec4<f32> = x_122.unity_ObjectToWorld[3i];
  let x_130 : vec4<f32> = x_122.unity_ObjectToWorld[3i];
  u_xlat43 = dot(vec3<f32>(x_127.x, x_127.y, x_127.z), vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_133);
  let x_135 : f32 = u_xlat43;
  u_xlat43 = fract(x_135);
  let x_137 : f32 = u_xlat43;
  let x_140 : f32 = x_45.x_NightFade;
  u_xlat43 = (x_137 + x_140);
  let x_145 : f32 = u_xlat43;
  u_xlatb43 = (x_145 >= 1.0f);
  let x_147 : bool = u_xlatb43;
  u_xlat43 = select(0.0f, 1.0f, x_147);
  let x_156 : vec4<f32> = vs_INTERP3;
  let x_159 : f32 = x_45.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_156.x, x_156.y), x_159);
  u_xlat3 = vec3<f32>(x_160.x, x_160.w, x_160.y);
  let x_165 : f32 = vs_INTERP2.w;
  u_xlatb64 = (0.0f < x_165);
  let x_168 : bool = u_xlatb64;
  u_xlat64 = select(-1.0f, 1.0f, x_168);
  let x_172 : f32 = x_122.unity_WorldTransformParams.w;
  u_xlatb65 = (x_172 >= 0.0f);
  let x_175 : bool = u_xlatb65;
  u_xlat65 = select(-1.0f, 1.0f, x_175);
  let x_177 : f32 = u_xlat64;
  let x_178 : f32 = u_xlat65;
  u_xlat64 = (x_177 * x_178);
  let x_183 : vec3<f32> = vs_INTERP1;
  let x_185 : vec4<f32> = vs_INTERP2;
  u_xlat4 = (vec3<f32>(x_183.z, x_183.x, x_183.y) * vec3<f32>(x_185.y, x_185.z, x_185.x));
  let x_188 : vec3<f32> = vs_INTERP1;
  let x_190 : vec4<f32> = vs_INTERP2;
  let x_193 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_188.y, x_188.z, x_188.x) * vec3<f32>(x_190.z, x_190.x, x_190.y)) + -(x_193));
  let x_196 : f32 = u_xlat64;
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
  let x_213 : f32 = u_xlat63;
  let x_215 : vec3<f32> = vs_INTERP1;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = ((vec3<f32>(x_213, x_213, x_213) * x_215) + vec3<f32>(x_217.x, x_217.y, x_217.w));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_219.z);
  let x_222 : vec4<f32> = u_xlat1;
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat63 = dot(vec3<f32>(x_222.x, x_222.y, x_222.w), vec3<f32>(x_224.x, x_224.y, x_224.w));
  let x_227 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_227);
  let x_229 : f32 = u_xlat63;
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = (vec3<f32>(x_229, x_229, x_229) * vec3<f32>(x_231.x, x_231.y, x_231.w));
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_233.x, x_233.y, x_234.z, x_233.z);
  let x_239 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb63 = (x_239 == 0.0f);
  let x_242 : vec3<f32> = vs_INTERP0;
  let x_247 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_242) + x_247);
  let x_249 : vec3<f32> = u_xlat4;
  let x_250 : vec3<f32> = u_xlat4;
  u_xlat65 = dot(x_249, x_250);
  let x_252 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_252);
  let x_254 : f32 = u_xlat65;
  let x_256 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_254, x_254, x_254) * x_256);
  let x_259 : bool = u_xlatb63;
  if (x_259) {
    let x_264 : f32 = u_xlat4.x;
    x_260 = x_264;
  } else {
    let x_268 : f32 = x_45.unity_MatrixV[0i].z;
    x_260 = x_268;
  }
  let x_269 : f32 = x_260;
  u_xlat5.x = x_269;
  let x_271 : bool = u_xlatb63;
  if (x_271) {
    let x_277 : f32 = u_xlat4.y;
    x_272 = x_277;
  } else {
    let x_280 : f32 = x_45.unity_MatrixV[1i].z;
    x_272 = x_280;
  }
  let x_281 : f32 = x_272;
  u_xlat5.y = x_281;
  let x_283 : bool = u_xlatb63;
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
  let x_316 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_315.x, x_315.y, x_316.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat6;
  let x_320 : vec4<f32> = hlslcc_FragCoord;
  let x_322 : vec2<f32> = (vec2<f32>(x_318.x, x_318.y) * vec2<f32>(x_320.x, x_320.y));
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_323.z, x_323.w);
  let x_326 : f32 = u_xlat6.y;
  let x_329 : f32 = x_45.x_ScaleBiasRt.x;
  let x_332 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat63 = ((x_326 * x_329) + x_332);
  let x_334 : f32 = u_xlat63;
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
  u_xlat63 = ((-(x_350) * 0.959999979f) + 0.959999979f);
  let x_355 : f32 = u_xlat63;
  let x_358 : f32 = u_xlat3.y;
  u_xlat65 = (-(x_355) + x_358);
  let x_361 : f32 = u_xlat63;
  let x_363 : vec3<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_361, x_361, x_361) * x_363);
  let x_365 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_365 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_369 : vec3<f32> = u_xlat3;
  let x_371 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_369.x, x_369.x, x_369.x) * x_371) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_377 : f32 = u_xlat3.y;
  u_xlat63 = (-(x_377) + 1.0f);
  let x_380 : f32 = u_xlat63;
  let x_381 : f32 = u_xlat63;
  u_xlat3.x = (x_380 * x_381);
  let x_385 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_385, 0.0078125f);
  let x_391 : f32 = u_xlat3.x;
  let x_393 : f32 = u_xlat3.x;
  u_xlat24 = (x_391 * x_393);
  let x_395 : f32 = u_xlat65;
  u_xlat65 = (x_395 + 1.0f);
  let x_397 : f32 = u_xlat65;
  u_xlat65 = min(x_397, 1.0f);
  let x_401 : f32 = u_xlat3.x;
  u_xlat66 = ((x_401 * 4.0f) + 2.0f);
  let x_411 : vec4<f32> = u_xlat6;
  let x_414 : f32 = x_45.x_GlobalMipBias.x;
  let x_415 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_411.x, x_411.z), x_414);
  u_xlat67 = x_415.x;
  let x_418 : f32 = u_xlat67;
  u_xlat68 = (x_418 + -1.0f);
  let x_422 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_423 : f32 = u_xlat68;
  u_xlat68 = ((x_422 * x_423) + 1.0f);
  let x_428 : f32 = u_xlat3.z;
  let x_429 : f32 = u_xlat67;
  u_xlat45 = min(x_428, x_429);
  let x_438 : f32 = x_436.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_438);
  let x_440 : bool = u_xlatb67;
  if (x_440) {
    let x_444 : f32 = x_436.x_MainLightShadowParams.y;
    u_xlatb67 = (x_444 == 1.0f);
    let x_446 : bool = u_xlatb67;
    if (x_446) {
      let x_450 : vec4<f32> = vs_INTERP8;
      let x_453 : vec4<f32> = x_436.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_450.x, x_450.y, x_450.x, x_450.y) + x_453);
      let x_456 : vec4<f32> = u_xlat6;
      let x_457 : vec2<f32> = vec2<f32>(x_456.x, x_456.y);
      let x_459 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_457.x, x_457.y, x_459);
      let x_472 : vec3<f32> = txVec0;
      let x_474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_472.xy, x_472.z);
      u_xlat8.x = x_474;
      let x_477 : vec4<f32> = u_xlat6;
      let x_478 : vec2<f32> = vec2<f32>(x_477.z, x_477.w);
      let x_480 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_478.x, x_478.y, x_480);
      let x_487 : vec3<f32> = txVec1;
      let x_489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_487.xy, x_487.z);
      u_xlat8.y = x_489;
      let x_491 : vec4<f32> = vs_INTERP8;
      let x_494 : vec4<f32> = x_436.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_491.x, x_491.y, x_491.x, x_491.y) + x_494);
      let x_497 : vec4<f32> = u_xlat6;
      let x_498 : vec2<f32> = vec2<f32>(x_497.x, x_497.y);
      let x_500 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_498.x, x_498.y, x_500);
      let x_507 : vec3<f32> = txVec2;
      let x_509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_507.xy, x_507.z);
      u_xlat8.z = x_509;
      let x_512 : vec4<f32> = u_xlat6;
      let x_513 : vec2<f32> = vec2<f32>(x_512.z, x_512.w);
      let x_515 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_513.x, x_513.y, x_515);
      let x_522 : vec3<f32> = txVec3;
      let x_524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_522.xy, x_522.z);
      u_xlat8.w = x_524;
      let x_526 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_526, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_533 : f32 = x_436.x_MainLightShadowParams.y;
      u_xlatb6 = (x_533 == 2.0f);
      let x_535 : bool = u_xlatb6;
      if (x_535) {
        let x_538 : vec4<f32> = vs_INTERP8;
        let x_541 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_546 : vec2<f32> = ((vec2<f32>(x_538.x, x_538.y) * vec2<f32>(x_541.z, x_541.w)) + vec2<f32>(0.5f, 0.5f));
        let x_547 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
        let x_549 : vec4<f32> = u_xlat6;
        let x_551 : vec2<f32> = floor(vec2<f32>(x_549.x, x_549.y));
        let x_552 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
        let x_556 : vec4<f32> = vs_INTERP8;
        let x_559 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_562 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(x_559.z, x_559.w)) + -(vec2<f32>(x_562.x, x_562.y)));
        let x_566 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_566.x, x_566.x, x_566.y, x_566.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_571 : vec4<f32> = u_xlat8;
        let x_573 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_571.x, x_571.x, x_571.z, x_571.z) * vec4<f32>(x_573.x, x_573.x, x_573.z, x_573.z));
        let x_576 : vec4<f32> = u_xlat9;
        let x_580 : vec2<f32> = (vec2<f32>(x_576.y, x_576.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_581 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_580.x, x_581.y, x_580.y, x_581.w);
        let x_583 : vec4<f32> = u_xlat9;
        let x_586 : vec2<f32> = u_xlat48;
        let x_588 : vec2<f32> = ((vec2<f32>(x_583.x, x_583.z) * vec2<f32>(0.5f, 0.5f)) + -(x_586));
        let x_589 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
        let x_592 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_592) + vec2<f32>(1.0f, 1.0f));
        let x_596 : vec2<f32> = u_xlat48;
        let x_598 : vec2<f32> = min(x_596, vec2<f32>(0.0f, 0.0f));
        let x_599 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_601 : vec4<f32> = u_xlat10;
        let x_604 : vec4<f32> = u_xlat10;
        let x_607 : vec2<f32> = u_xlat51;
        let x_608 : vec2<f32> = ((-(vec2<f32>(x_601.x, x_601.y)) * vec2<f32>(x_604.x, x_604.y)) + x_607);
        let x_609 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
        let x_611 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_611, vec2<f32>(0.0f, 0.0f));
        let x_613 : vec2<f32> = u_xlat48;
        let x_615 : vec2<f32> = u_xlat48;
        let x_617 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_613) * x_615) + vec2<f32>(x_617.y, x_617.w));
        let x_620 : vec4<f32> = u_xlat10;
        let x_622 : vec2<f32> = (vec2<f32>(x_620.x, x_620.y) + vec2<f32>(1.0f, 1.0f));
        let x_623 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
        let x_625 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_625 + vec2<f32>(1.0f, 1.0f));
        let x_628 : vec4<f32> = u_xlat9;
        let x_632 : vec2<f32> = (vec2<f32>(x_628.x, x_628.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_633 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
        let x_635 : vec2<f32> = u_xlat51;
        let x_636 : vec2<f32> = (x_635 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_637 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
        let x_639 : vec4<f32> = u_xlat10;
        let x_641 : vec2<f32> = (vec2<f32>(x_639.x, x_639.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_642 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
        let x_645 : vec2<f32> = u_xlat48;
        let x_646 : vec2<f32> = (x_645 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_647 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
        let x_649 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_649.y, x_649.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_653 : f32 = u_xlat10.x;
        u_xlat11.z = x_653;
        let x_656 : f32 = u_xlat48.x;
        u_xlat11.w = x_656;
        let x_659 : f32 = u_xlat12.x;
        u_xlat9.z = x_659;
        let x_662 : f32 = u_xlat8.x;
        u_xlat9.w = x_662;
        let x_665 : vec4<f32> = u_xlat9;
        let x_667 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_665.z, x_665.w, x_665.x, x_665.z) + vec4<f32>(x_667.z, x_667.w, x_667.x, x_667.z));
        let x_671 : f32 = u_xlat11.y;
        u_xlat10.z = x_671;
        let x_674 : f32 = u_xlat48.y;
        u_xlat10.w = x_674;
        let x_677 : f32 = u_xlat9.y;
        u_xlat12.z = x_677;
        let x_680 : f32 = u_xlat8.z;
        u_xlat12.w = x_680;
        let x_682 : vec4<f32> = u_xlat10;
        let x_684 : vec4<f32> = u_xlat12;
        let x_686 : vec3<f32> = (vec3<f32>(x_682.z, x_682.y, x_682.w) + vec3<f32>(x_684.z, x_684.y, x_684.w));
        let x_687 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
        let x_689 : vec4<f32> = u_xlat9;
        let x_691 : vec4<f32> = u_xlat13;
        let x_693 : vec3<f32> = (vec3<f32>(x_689.x, x_689.z, x_689.w) / vec3<f32>(x_691.z, x_691.w, x_691.y));
        let x_694 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat9;
        let x_702 : vec3<f32> = (vec3<f32>(x_696.x, x_696.y, x_696.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_703 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat12;
        let x_707 : vec4<f32> = u_xlat8;
        let x_709 : vec3<f32> = (vec3<f32>(x_705.z, x_705.y, x_705.w) / vec3<f32>(x_707.x, x_707.y, x_707.z));
        let x_710 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
        let x_712 : vec4<f32> = u_xlat10;
        let x_714 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_715 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
        let x_717 : vec4<f32> = u_xlat9;
        let x_720 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_722 : vec3<f32> = (vec3<f32>(x_717.y, x_717.x, x_717.z) * vec3<f32>(x_720.x, x_720.x, x_720.x));
        let x_723 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
        let x_725 : vec4<f32> = u_xlat10;
        let x_728 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_730 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(x_728.y, x_728.y, x_728.y));
        let x_731 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
        let x_734 : f32 = u_xlat10.x;
        u_xlat9.w = x_734;
        let x_736 : vec4<f32> = u_xlat6;
        let x_739 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_742 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_736.x, x_736.y, x_736.x, x_736.y) * vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y)) + vec4<f32>(x_742.y, x_742.w, x_742.x, x_742.w));
        let x_745 : vec4<f32> = u_xlat6;
        let x_748 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_751 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_745.x, x_745.y) * vec2<f32>(x_748.x, x_748.y)) + vec2<f32>(x_751.z, x_751.w));
        let x_755 : f32 = u_xlat9.y;
        u_xlat10.w = x_755;
        let x_757 : vec4<f32> = u_xlat10;
        let x_758 : vec2<f32> = vec2<f32>(x_757.y, x_757.z);
        let x_759 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_759.x, x_758.x, x_759.z, x_758.y);
        let x_761 : vec4<f32> = u_xlat6;
        let x_764 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_767 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_761.x, x_761.y, x_761.x, x_761.y) * vec4<f32>(x_764.x, x_764.y, x_764.x, x_764.y)) + vec4<f32>(x_767.x, x_767.y, x_767.z, x_767.y));
        let x_770 : vec4<f32> = u_xlat6;
        let x_773 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_776 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_770.x, x_770.y, x_770.x, x_770.y) * vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y)) + vec4<f32>(x_776.w, x_776.y, x_776.w, x_776.z));
        let x_779 : vec4<f32> = u_xlat6;
        let x_782 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_785 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_779.x, x_779.y, x_779.x, x_779.y) * vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y)) + vec4<f32>(x_785.x, x_785.w, x_785.z, x_785.w));
        let x_789 : vec4<f32> = u_xlat8;
        let x_791 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_789.x, x_789.x, x_789.x, x_789.y) * vec4<f32>(x_791.z, x_791.w, x_791.y, x_791.z));
        let x_795 : vec4<f32> = u_xlat8;
        let x_797 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_795.y, x_795.y, x_795.z, x_795.z) * x_797);
        let x_800 : f32 = u_xlat8.z;
        let x_802 : f32 = u_xlat13.y;
        u_xlat6.x = (x_800 * x_802);
        let x_806 : vec4<f32> = u_xlat11;
        let x_807 : vec2<f32> = vec2<f32>(x_806.x, x_806.y);
        let x_809 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_807.x, x_807.y, x_809);
        let x_817 : vec3<f32> = txVec4;
        let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_817.xy, x_817.z);
        u_xlat27 = x_819;
        let x_821 : vec4<f32> = u_xlat11;
        let x_822 : vec2<f32> = vec2<f32>(x_821.z, x_821.w);
        let x_824 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_822.x, x_822.y, x_824);
        let x_832 : vec3<f32> = txVec5;
        let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_832.xy, x_832.z);
        u_xlat70 = x_834;
        let x_835 : f32 = u_xlat70;
        let x_837 : f32 = u_xlat14.y;
        u_xlat70 = (x_835 * x_837);
        let x_840 : f32 = u_xlat14.x;
        let x_841 : f32 = u_xlat27;
        let x_843 : f32 = u_xlat70;
        u_xlat27 = ((x_840 * x_841) + x_843);
        let x_846 : vec2<f32> = u_xlat48;
        let x_848 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_846.x, x_846.y, x_848);
        let x_855 : vec3<f32> = txVec6;
        let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_855.xy, x_855.z);
        u_xlat48.x = x_857;
        let x_860 : f32 = u_xlat14.z;
        let x_862 : f32 = u_xlat48.x;
        let x_864 : f32 = u_xlat27;
        u_xlat27 = ((x_860 * x_862) + x_864);
        let x_867 : vec4<f32> = u_xlat10;
        let x_868 : vec2<f32> = vec2<f32>(x_867.x, x_867.y);
        let x_870 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_868.x, x_868.y, x_870);
        let x_877 : vec3<f32> = txVec7;
        let x_879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_877.xy, x_877.z);
        u_xlat48.x = x_879;
        let x_882 : f32 = u_xlat14.w;
        let x_884 : f32 = u_xlat48.x;
        let x_886 : f32 = u_xlat27;
        u_xlat27 = ((x_882 * x_884) + x_886);
        let x_889 : vec4<f32> = u_xlat12;
        let x_890 : vec2<f32> = vec2<f32>(x_889.x, x_889.y);
        let x_892 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_890.x, x_890.y, x_892);
        let x_899 : vec3<f32> = txVec8;
        let x_901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_899.xy, x_899.z);
        u_xlat48.x = x_901;
        let x_904 : f32 = u_xlat15.x;
        let x_906 : f32 = u_xlat48.x;
        let x_908 : f32 = u_xlat27;
        u_xlat27 = ((x_904 * x_906) + x_908);
        let x_911 : vec4<f32> = u_xlat12;
        let x_912 : vec2<f32> = vec2<f32>(x_911.z, x_911.w);
        let x_914 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_912.x, x_912.y, x_914);
        let x_921 : vec3<f32> = txVec9;
        let x_923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_921.xy, x_921.z);
        u_xlat48.x = x_923;
        let x_926 : f32 = u_xlat15.y;
        let x_928 : f32 = u_xlat48.x;
        let x_930 : f32 = u_xlat27;
        u_xlat27 = ((x_926 * x_928) + x_930);
        let x_933 : vec4<f32> = u_xlat10;
        let x_934 : vec2<f32> = vec2<f32>(x_933.z, x_933.w);
        let x_936 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_934.x, x_934.y, x_936);
        let x_943 : vec3<f32> = txVec10;
        let x_945 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_943.xy, x_943.z);
        u_xlat48.x = x_945;
        let x_948 : f32 = u_xlat15.z;
        let x_950 : f32 = u_xlat48.x;
        let x_952 : f32 = u_xlat27;
        u_xlat27 = ((x_948 * x_950) + x_952);
        let x_955 : vec4<f32> = u_xlat9;
        let x_956 : vec2<f32> = vec2<f32>(x_955.x, x_955.y);
        let x_958 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_956.x, x_956.y, x_958);
        let x_965 : vec3<f32> = txVec11;
        let x_967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_965.xy, x_965.z);
        u_xlat48.x = x_967;
        let x_970 : f32 = u_xlat15.w;
        let x_972 : f32 = u_xlat48.x;
        let x_974 : f32 = u_xlat27;
        u_xlat27 = ((x_970 * x_972) + x_974);
        let x_977 : vec4<f32> = u_xlat9;
        let x_978 : vec2<f32> = vec2<f32>(x_977.z, x_977.w);
        let x_980 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_978.x, x_978.y, x_980);
        let x_987 : vec3<f32> = txVec12;
        let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_987.xy, x_987.z);
        u_xlat48.x = x_989;
        let x_992 : f32 = u_xlat6.x;
        let x_994 : f32 = u_xlat48.x;
        let x_996 : f32 = u_xlat27;
        u_xlat67 = ((x_992 * x_994) + x_996);
      } else {
        let x_999 : vec4<f32> = vs_INTERP8;
        let x_1002 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1005 : vec2<f32> = ((vec2<f32>(x_999.x, x_999.y) * vec2<f32>(x_1002.z, x_1002.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1006 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1005.x, x_1005.y, x_1006.z, x_1006.w);
        let x_1008 : vec4<f32> = u_xlat6;
        let x_1010 : vec2<f32> = floor(vec2<f32>(x_1008.x, x_1008.y));
        let x_1011 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1013 : vec4<f32> = vs_INTERP8;
        let x_1016 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1019 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(x_1016.z, x_1016.w)) + -(vec2<f32>(x_1019.x, x_1019.y)));
        let x_1023 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1023.x, x_1023.x, x_1023.y, x_1023.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1026 : vec4<f32> = u_xlat8;
        let x_1028 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1026.x, x_1026.x, x_1026.z, x_1026.z) * vec4<f32>(x_1028.x, x_1028.x, x_1028.z, x_1028.z));
        let x_1031 : vec4<f32> = u_xlat9;
        let x_1035 : vec2<f32> = (vec2<f32>(x_1031.y, x_1031.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1036 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1036.x, x_1035.x, x_1036.z, x_1035.y);
        let x_1038 : vec4<f32> = u_xlat9;
        let x_1041 : vec2<f32> = u_xlat48;
        let x_1043 : vec2<f32> = ((vec2<f32>(x_1038.x, x_1038.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1041));
        let x_1044 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1043.x, x_1044.y, x_1043.y, x_1044.w);
        let x_1046 : vec2<f32> = u_xlat48;
        let x_1048 : vec2<f32> = (-(x_1046) + vec2<f32>(1.0f, 1.0f));
        let x_1049 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
        let x_1051 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1051, vec2<f32>(0.0f, 0.0f));
        let x_1053 : vec2<f32> = u_xlat51;
        let x_1055 : vec2<f32> = u_xlat51;
        let x_1057 : vec4<f32> = u_xlat9;
        let x_1059 : vec2<f32> = ((-(x_1053) * x_1055) + vec2<f32>(x_1057.x, x_1057.y));
        let x_1060 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1059.x, x_1059.y, x_1060.z, x_1060.w);
        let x_1062 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1062, vec2<f32>(0.0f, 0.0f));
        let x_1065 : vec2<f32> = u_xlat51;
        let x_1067 : vec2<f32> = u_xlat51;
        let x_1069 : vec4<f32> = u_xlat8;
        let x_1071 : vec2<f32> = ((-(x_1065) * x_1067) + vec2<f32>(x_1069.y, x_1069.w));
        let x_1072 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1071.x, x_1072.y, x_1071.y);
        let x_1074 : vec4<f32> = u_xlat9;
        let x_1076 : vec2<f32> = (vec2<f32>(x_1074.x, x_1074.y) + vec2<f32>(2.0f, 2.0f));
        let x_1077 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        let x_1079 : vec3<f32> = u_xlat29;
        let x_1081 : vec2<f32> = (vec2<f32>(x_1079.x, x_1079.z) + vec2<f32>(2.0f, 2.0f));
        let x_1082 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1082.x, x_1081.x, x_1082.z, x_1081.y);
        let x_1085 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1085 * 0.081632003f);
        let x_1089 : vec4<f32> = u_xlat8;
        let x_1092 : vec3<f32> = (vec3<f32>(x_1089.z, x_1089.x, x_1089.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1093 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
        let x_1095 : vec4<f32> = u_xlat9;
        let x_1098 : vec2<f32> = (vec2<f32>(x_1095.x, x_1095.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1099 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1102 : f32 = u_xlat12.y;
        u_xlat11.x = x_1102;
        let x_1104 : vec2<f32> = u_xlat48;
        let x_1111 : vec2<f32> = ((vec2<f32>(x_1104.x, x_1104.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1112 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1112.x, x_1111.x, x_1112.z, x_1111.y);
        let x_1114 : vec2<f32> = u_xlat48;
        let x_1118 : vec2<f32> = ((vec2<f32>(x_1114.x, x_1114.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1119 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1118.x, x_1119.y, x_1118.y, x_1119.w);
        let x_1122 : f32 = u_xlat8.x;
        u_xlat9.y = x_1122;
        let x_1125 : f32 = u_xlat10.y;
        u_xlat9.w = x_1125;
        let x_1127 : vec4<f32> = u_xlat9;
        let x_1128 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1127 + x_1128);
        let x_1130 : vec2<f32> = u_xlat48;
        let x_1133 : vec2<f32> = ((vec2<f32>(x_1130.y, x_1130.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1134 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1134.x, x_1133.x, x_1134.z, x_1133.y);
        let x_1136 : vec2<f32> = u_xlat48;
        let x_1139 : vec2<f32> = ((vec2<f32>(x_1136.y, x_1136.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1140 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1139.x, x_1140.y, x_1139.y, x_1140.w);
        let x_1143 : f32 = u_xlat8.y;
        u_xlat10.y = x_1143;
        let x_1145 : vec4<f32> = u_xlat10;
        let x_1146 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1145 + x_1146);
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1149 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1148 / x_1149);
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1151 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1157 : vec4<f32> = u_xlat10;
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1157 / x_1158);
        let x_1160 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1160 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1162 : vec4<f32> = u_xlat9;
        let x_1165 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1162.w, x_1162.x, x_1162.y, x_1162.z) * vec4<f32>(x_1165.x, x_1165.x, x_1165.x, x_1165.x));
        let x_1168 : vec4<f32> = u_xlat10;
        let x_1171 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1168.x, x_1168.w, x_1168.y, x_1168.z) * vec4<f32>(x_1171.y, x_1171.y, x_1171.y, x_1171.y));
        let x_1174 : vec4<f32> = u_xlat9;
        let x_1175 : vec3<f32> = vec3<f32>(x_1174.y, x_1174.z, x_1174.w);
        let x_1176 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1175.x, x_1176.y, x_1175.y, x_1175.z);
        let x_1179 : f32 = u_xlat10.x;
        u_xlat12.y = x_1179;
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1184 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1187 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y) * vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.y)) + vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1187.y));
        let x_1190 : vec4<f32> = u_xlat6;
        let x_1193 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1196 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1190.x, x_1190.y) * vec2<f32>(x_1193.x, x_1193.y)) + vec2<f32>(x_1196.w, x_1196.y));
        let x_1200 : f32 = u_xlat12.y;
        u_xlat9.y = x_1200;
        let x_1203 : f32 = u_xlat10.z;
        u_xlat12.y = x_1203;
        let x_1205 : vec4<f32> = u_xlat6;
        let x_1208 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1211 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1205.x, x_1205.y, x_1205.x, x_1205.y) * vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y)) + vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1211.y));
        let x_1214 : vec4<f32> = u_xlat6;
        let x_1217 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat12;
        let x_1222 : vec2<f32> = ((vec2<f32>(x_1214.x, x_1214.y) * vec2<f32>(x_1217.x, x_1217.y)) + vec2<f32>(x_1220.w, x_1220.y));
        let x_1223 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1222.x, x_1222.y, x_1223.z, x_1223.w);
        let x_1226 : f32 = u_xlat12.y;
        u_xlat9.z = x_1226;
        let x_1229 : vec4<f32> = u_xlat6;
        let x_1232 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y) * vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y)) + vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.z));
        let x_1239 : f32 = u_xlat10.w;
        u_xlat12.y = x_1239;
        let x_1242 : vec4<f32> = u_xlat6;
        let x_1245 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y) * vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y)) + vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1248.y));
        let x_1252 : vec4<f32> = u_xlat6;
        let x_1255 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat12;
        let x_1260 : vec2<f32> = ((vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(x_1255.x, x_1255.y)) + vec2<f32>(x_1258.w, x_1258.y));
        let x_1261 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1260.x, x_1260.y, x_1261.z);
        let x_1264 : f32 = u_xlat12.y;
        u_xlat9.w = x_1264;
        let x_1267 : vec4<f32> = u_xlat6;
        let x_1270 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1267.x, x_1267.y) * vec2<f32>(x_1270.x, x_1270.y)) + vec2<f32>(x_1273.x, x_1273.w));
        let x_1276 : vec4<f32> = u_xlat12;
        let x_1277 : vec3<f32> = vec3<f32>(x_1276.x, x_1276.z, x_1276.w);
        let x_1278 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1277.x, x_1278.y, x_1277.y, x_1277.z);
        let x_1280 : vec4<f32> = u_xlat6;
        let x_1283 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y) * vec4<f32>(x_1283.x, x_1283.y, x_1283.x, x_1283.y)) + vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1286.y));
        let x_1290 : vec4<f32> = u_xlat6;
        let x_1293 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1290.x, x_1290.y) * vec2<f32>(x_1293.x, x_1293.y)) + vec2<f32>(x_1296.w, x_1296.y));
        let x_1300 : f32 = u_xlat9.x;
        u_xlat10.x = x_1300;
        let x_1302 : vec4<f32> = u_xlat6;
        let x_1305 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat10;
        let x_1310 : vec2<f32> = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(x_1305.x, x_1305.y)) + vec2<f32>(x_1308.x, x_1308.y));
        let x_1311 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1310.x, x_1310.y, x_1311.z, x_1311.w);
        let x_1314 : vec4<f32> = u_xlat8;
        let x_1316 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1314.x, x_1314.x, x_1314.x, x_1314.x) * x_1316);
        let x_1319 : vec4<f32> = u_xlat8;
        let x_1321 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1319.y, x_1319.y, x_1319.y, x_1319.y) * x_1321);
        let x_1324 : vec4<f32> = u_xlat8;
        let x_1326 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1324.z, x_1324.z, x_1324.z, x_1324.z) * x_1326);
        let x_1328 : vec4<f32> = u_xlat8;
        let x_1330 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1328.w, x_1328.w, x_1328.w, x_1328.w) * x_1330);
        let x_1333 : vec4<f32> = u_xlat13;
        let x_1334 : vec2<f32> = vec2<f32>(x_1333.x, x_1333.y);
        let x_1336 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1334.x, x_1334.y, x_1336);
        let x_1343 : vec3<f32> = txVec13;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1343.xy, x_1343.z);
        u_xlat70 = x_1345;
        let x_1347 : vec4<f32> = u_xlat13;
        let x_1348 : vec2<f32> = vec2<f32>(x_1347.z, x_1347.w);
        let x_1350 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
        let x_1357 : vec3<f32> = txVec14;
        let x_1359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1357.xy, x_1357.z);
        u_xlat9.x = x_1359;
        let x_1362 : f32 = u_xlat9.x;
        let x_1364 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1362 * x_1364);
        let x_1368 : f32 = u_xlat18.x;
        let x_1369 : f32 = u_xlat70;
        let x_1372 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1368 * x_1369) + x_1372);
        let x_1375 : vec2<f32> = u_xlat48;
        let x_1377 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec15;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1384.xy, x_1384.z);
        u_xlat48.x = x_1386;
        let x_1389 : f32 = u_xlat18.z;
        let x_1391 : f32 = u_xlat48.x;
        let x_1393 : f32 = u_xlat70;
        u_xlat48.x = ((x_1389 * x_1391) + x_1393);
        let x_1397 : vec4<f32> = u_xlat16;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.x, x_1397.y);
        let x_1400 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1408 : vec3<f32> = txVec16;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1408.xy, x_1408.z);
        u_xlat69 = x_1410;
        let x_1412 : f32 = u_xlat18.w;
        let x_1413 : f32 = u_xlat69;
        let x_1416 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1412 * x_1413) + x_1416);
        let x_1420 : vec4<f32> = u_xlat14;
        let x_1421 : vec2<f32> = vec2<f32>(x_1420.x, x_1420.y);
        let x_1423 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1421.x, x_1421.y, x_1423);
        let x_1430 : vec3<f32> = txVec17;
        let x_1432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1430.xy, x_1430.z);
        u_xlat69 = x_1432;
        let x_1434 : f32 = u_xlat19.x;
        let x_1435 : f32 = u_xlat69;
        let x_1438 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1434 * x_1435) + x_1438);
        let x_1442 : vec4<f32> = u_xlat14;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.z, x_1442.w);
        let x_1445 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec18;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1452.xy, x_1452.z);
        u_xlat69 = x_1454;
        let x_1456 : f32 = u_xlat19.y;
        let x_1457 : f32 = u_xlat69;
        let x_1460 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1456 * x_1457) + x_1460);
        let x_1464 : vec4<f32> = u_xlat15;
        let x_1465 : vec2<f32> = vec2<f32>(x_1464.x, x_1464.y);
        let x_1467 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1474 : vec3<f32> = txVec19;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1474.xy, x_1474.z);
        u_xlat69 = x_1476;
        let x_1478 : f32 = u_xlat19.z;
        let x_1479 : f32 = u_xlat69;
        let x_1482 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1478 * x_1479) + x_1482);
        let x_1486 : vec4<f32> = u_xlat16;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.z, x_1486.w);
        let x_1489 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec20;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1496.xy, x_1496.z);
        u_xlat69 = x_1498;
        let x_1500 : f32 = u_xlat19.w;
        let x_1501 : f32 = u_xlat69;
        let x_1504 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1500 * x_1501) + x_1504);
        let x_1508 : vec4<f32> = u_xlat17;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.x, x_1508.y);
        let x_1511 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec21;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1518.xy, x_1518.z);
        u_xlat69 = x_1520;
        let x_1522 : f32 = u_xlat20.x;
        let x_1523 : f32 = u_xlat69;
        let x_1526 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1522 * x_1523) + x_1526);
        let x_1530 : vec4<f32> = u_xlat17;
        let x_1531 : vec2<f32> = vec2<f32>(x_1530.z, x_1530.w);
        let x_1533 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec22;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1540.xy, x_1540.z);
        u_xlat69 = x_1542;
        let x_1544 : f32 = u_xlat20.y;
        let x_1545 : f32 = u_xlat69;
        let x_1548 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1544 * x_1545) + x_1548);
        let x_1552 : vec3<f32> = u_xlat30;
        let x_1553 : vec2<f32> = vec2<f32>(x_1552.x, x_1552.y);
        let x_1555 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1553.x, x_1553.y, x_1555);
        let x_1562 : vec3<f32> = txVec23;
        let x_1564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1562.xy, x_1562.z);
        u_xlat69 = x_1564;
        let x_1566 : f32 = u_xlat20.z;
        let x_1567 : f32 = u_xlat69;
        let x_1570 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1566 * x_1567) + x_1570);
        let x_1574 : vec2<f32> = u_xlat57;
        let x_1576 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
        let x_1583 : vec3<f32> = txVec24;
        let x_1585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1583.xy, x_1583.z);
        u_xlat69 = x_1585;
        let x_1587 : f32 = u_xlat20.w;
        let x_1588 : f32 = u_xlat69;
        let x_1591 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1587 * x_1588) + x_1591);
        let x_1595 : vec4<f32> = u_xlat12;
        let x_1596 : vec2<f32> = vec2<f32>(x_1595.x, x_1595.y);
        let x_1598 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
        let x_1605 : vec3<f32> = txVec25;
        let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1605.xy, x_1605.z);
        u_xlat69 = x_1607;
        let x_1609 : f32 = u_xlat8.x;
        let x_1610 : f32 = u_xlat69;
        let x_1613 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1609 * x_1610) + x_1613);
        let x_1617 : vec4<f32> = u_xlat12;
        let x_1618 : vec2<f32> = vec2<f32>(x_1617.z, x_1617.w);
        let x_1620 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1618.x, x_1618.y, x_1620);
        let x_1627 : vec3<f32> = txVec26;
        let x_1629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1627.xy, x_1627.z);
        u_xlat69 = x_1629;
        let x_1631 : f32 = u_xlat8.y;
        let x_1632 : f32 = u_xlat69;
        let x_1635 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1631 * x_1632) + x_1635);
        let x_1639 : vec2<f32> = u_xlat52;
        let x_1641 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
        let x_1648 : vec3<f32> = txVec27;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1648.xy, x_1648.z);
        u_xlat69 = x_1650;
        let x_1652 : f32 = u_xlat8.z;
        let x_1653 : f32 = u_xlat69;
        let x_1656 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1652 * x_1653) + x_1656);
        let x_1660 : vec4<f32> = u_xlat6;
        let x_1661 : vec2<f32> = vec2<f32>(x_1660.x, x_1660.y);
        let x_1663 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1661.x, x_1661.y, x_1663);
        let x_1670 : vec3<f32> = txVec28;
        let x_1672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1670.xy, x_1670.z);
        u_xlat6.x = x_1672;
        let x_1675 : f32 = u_xlat8.w;
        let x_1677 : f32 = u_xlat6.x;
        let x_1680 : f32 = u_xlat48.x;
        u_xlat67 = ((x_1675 * x_1677) + x_1680);
      }
    }
  } else {
    let x_1684 : vec4<f32> = vs_INTERP8;
    let x_1685 : vec2<f32> = vec2<f32>(x_1684.x, x_1684.y);
    let x_1687 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
    let x_1694 : vec3<f32> = txVec29;
    let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1694.xy, x_1694.z);
    u_xlat67 = x_1696;
  }
  let x_1698 : f32 = x_436.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1698) + 1.0f);
  let x_1702 : f32 = u_xlat67;
  let x_1704 : f32 = x_436.x_MainLightShadowParams.x;
  let x_1707 : f32 = u_xlat6.x;
  u_xlat67 = ((x_1702 * x_1704) + x_1707);
  let x_1710 : f32 = vs_INTERP8.z;
  u_xlatb6 = (0.0f >= x_1710);
  let x_1714 : f32 = vs_INTERP8.z;
  u_xlatb27 = (x_1714 >= 1.0f);
  let x_1716 : bool = u_xlatb27;
  let x_1717 : bool = u_xlatb6;
  u_xlatb6 = (x_1716 | x_1717);
  let x_1719 : bool = u_xlatb6;
  let x_1720 : f32 = u_xlat67;
  u_xlat67 = select(x_1720, 1.0f, x_1719);
  let x_1722 : vec3<f32> = vs_INTERP0;
  let x_1724 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1726 : vec3<f32> = (x_1722 + -(x_1724));
  let x_1727 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1726.x, x_1726.y, x_1726.z, x_1727.w);
  let x_1729 : vec4<f32> = u_xlat6;
  let x_1731 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1729.x, x_1729.y, x_1729.z), vec3<f32>(x_1731.x, x_1731.y, x_1731.z));
  let x_1736 : f32 = u_xlat6.x;
  let x_1738 : f32 = x_436.x_MainLightShadowParams.z;
  let x_1741 : f32 = x_436.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1736 * x_1738) + x_1741);
  let x_1745 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1745, 0.0f, 1.0f);
  let x_1748 : f32 = u_xlat67;
  u_xlat27 = (-(x_1748) + 1.0f);
  let x_1752 : f32 = u_xlat6.x;
  let x_1753 : f32 = u_xlat27;
  let x_1755 : f32 = u_xlat67;
  u_xlat67 = ((x_1752 * x_1753) + x_1755);
  let x_1757 : f32 = u_xlat68;
  let x_1760 : vec4<f32> = x_45.x_MainLightColor;
  let x_1762 : vec3<f32> = (vec3<f32>(x_1757, x_1757, x_1757) * vec3<f32>(x_1760.x, x_1760.y, x_1760.z));
  let x_1763 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1762.x, x_1762.y, x_1762.z, x_1763.w);
  let x_1765 : vec3<f32> = u_xlat5;
  let x_1767 : vec4<f32> = u_xlat1;
  u_xlat69 = dot(-(x_1765), vec3<f32>(x_1767.x, x_1767.y, x_1767.w));
  let x_1770 : f32 = u_xlat69;
  let x_1771 : f32 = u_xlat69;
  u_xlat69 = (x_1770 + x_1771);
  let x_1773 : vec4<f32> = u_xlat1;
  let x_1775 : f32 = u_xlat69;
  let x_1779 : vec3<f32> = u_xlat5;
  let x_1781 : vec3<f32> = ((vec3<f32>(x_1773.x, x_1773.y, x_1773.w) * -(vec3<f32>(x_1775, x_1775, x_1775))) + -(x_1779));
  let x_1782 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
  let x_1784 : vec4<f32> = u_xlat1;
  let x_1786 : vec3<f32> = u_xlat5;
  u_xlat69 = dot(vec3<f32>(x_1784.x, x_1784.y, x_1784.w), x_1786);
  let x_1788 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1788, 0.0f, 1.0f);
  let x_1790 : f32 = u_xlat69;
  u_xlat69 = (-(x_1790) + 1.0f);
  let x_1793 : f32 = u_xlat69;
  let x_1794 : f32 = u_xlat69;
  u_xlat69 = (x_1793 * x_1794);
  let x_1796 : f32 = u_xlat69;
  let x_1797 : f32 = u_xlat69;
  u_xlat69 = (x_1796 * x_1797);
  let x_1799 : f32 = u_xlat63;
  u_xlat70 = ((-(x_1799) * 0.699999988f) + 1.700000048f);
  let x_1805 : f32 = u_xlat63;
  let x_1806 : f32 = u_xlat70;
  u_xlat63 = (x_1805 * x_1806);
  let x_1808 : f32 = u_xlat63;
  u_xlat63 = (x_1808 * 6.0f);
  let x_1819 : vec4<f32> = u_xlat8;
  let x_1821 : f32 = u_xlat63;
  let x_1822 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1819.x, x_1819.y, x_1819.z), x_1821);
  u_xlat8 = x_1822;
  let x_1824 : f32 = u_xlat8.w;
  u_xlat63 = (x_1824 + -1.0f);
  let x_1827 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_1828 : f32 = u_xlat63;
  u_xlat63 = ((x_1827 * x_1828) + 1.0f);
  let x_1831 : f32 = u_xlat63;
  u_xlat63 = max(x_1831, 0.0f);
  let x_1833 : f32 = u_xlat63;
  u_xlat63 = log2(x_1833);
  let x_1835 : f32 = u_xlat63;
  let x_1837 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_1835 * x_1837);
  let x_1839 : f32 = u_xlat63;
  u_xlat63 = exp2(x_1839);
  let x_1841 : f32 = u_xlat63;
  let x_1843 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_1841 * x_1843);
  let x_1845 : vec4<f32> = u_xlat8;
  let x_1847 : f32 = u_xlat63;
  let x_1849 : vec3<f32> = (vec3<f32>(x_1845.x, x_1845.y, x_1845.z) * vec3<f32>(x_1847, x_1847, x_1847));
  let x_1850 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
  let x_1852 : vec3<f32> = u_xlat3;
  let x_1854 : vec3<f32> = u_xlat3;
  let x_1858 : vec2<f32> = ((vec2<f32>(x_1852.x, x_1852.x) * vec2<f32>(x_1854.x, x_1854.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1859 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1858.x, x_1858.y, x_1859.z, x_1859.w);
  let x_1862 : f32 = u_xlat9.y;
  u_xlat63 = (1.0f / x_1862);
  let x_1864 : vec3<f32> = u_xlat0;
  let x_1866 : f32 = u_xlat65;
  u_xlat30 = (-(x_1864) + vec3<f32>(x_1866, x_1866, x_1866));
  let x_1869 : f32 = u_xlat69;
  let x_1871 : vec3<f32> = u_xlat30;
  let x_1873 : vec3<f32> = u_xlat0;
  u_xlat30 = ((vec3<f32>(x_1869, x_1869, x_1869) * x_1871) + x_1873);
  let x_1875 : f32 = u_xlat63;
  let x_1877 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1875, x_1875, x_1875) * x_1877);
  let x_1879 : vec4<f32> = u_xlat8;
  let x_1881 : vec3<f32> = u_xlat30;
  let x_1882 : vec3<f32> = (vec3<f32>(x_1879.x, x_1879.y, x_1879.z) * x_1881);
  let x_1883 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1882.x, x_1882.y, x_1882.z, x_1883.w);
  let x_1885 : vec3<f32> = u_xlat4;
  let x_1886 : vec3<f32> = u_xlat7;
  let x_1888 : vec4<f32> = u_xlat8;
  u_xlat4 = ((x_1885 * x_1886) + vec3<f32>(x_1888.x, x_1888.y, x_1888.z));
  let x_1891 : f32 = u_xlat67;
  let x_1894 : f32 = x_122.unity_LightData.z;
  u_xlat63 = (x_1891 * x_1894);
  let x_1896 : vec4<f32> = u_xlat1;
  let x_1899 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_1896.x, x_1896.y, x_1896.w), vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
  let x_1902 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1902, 0.0f, 1.0f);
  let x_1904 : f32 = u_xlat63;
  let x_1905 : f32 = u_xlat65;
  u_xlat63 = (x_1904 * x_1905);
  let x_1907 : f32 = u_xlat63;
  let x_1909 : vec4<f32> = u_xlat6;
  let x_1911 : vec3<f32> = (vec3<f32>(x_1907, x_1907, x_1907) * vec3<f32>(x_1909.x, x_1909.y, x_1909.z));
  let x_1912 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1911.x, x_1911.y, x_1911.z, x_1912.w);
  let x_1914 : vec3<f32> = u_xlat5;
  let x_1916 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1918 : vec3<f32> = (x_1914 + vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
  let x_1919 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1918.x, x_1918.y, x_1918.z, x_1919.w);
  let x_1921 : vec4<f32> = u_xlat8;
  let x_1923 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_1921.x, x_1921.y, x_1921.z), vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
  let x_1926 : f32 = u_xlat63;
  u_xlat63 = max(x_1926, 1.17549435e-37f);
  let x_1929 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_1929);
  let x_1931 : f32 = u_xlat63;
  let x_1933 : vec4<f32> = u_xlat8;
  let x_1935 : vec3<f32> = (vec3<f32>(x_1931, x_1931, x_1931) * vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
  let x_1936 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);
  let x_1938 : vec4<f32> = u_xlat1;
  let x_1940 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_1938.x, x_1938.y, x_1938.w), vec3<f32>(x_1940.x, x_1940.y, x_1940.z));
  let x_1943 : f32 = u_xlat63;
  u_xlat63 = clamp(x_1943, 0.0f, 1.0f);
  let x_1946 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1948 : vec4<f32> = u_xlat8;
  u_xlat65 = dot(vec3<f32>(x_1946.x, x_1946.y, x_1946.z), vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
  let x_1951 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1951, 0.0f, 1.0f);
  let x_1953 : f32 = u_xlat63;
  let x_1954 : f32 = u_xlat63;
  u_xlat63 = (x_1953 * x_1954);
  let x_1956 : f32 = u_xlat63;
  let x_1958 : f32 = u_xlat9.x;
  u_xlat63 = ((x_1956 * x_1958) + 1.000010014f);
  let x_1962 : f32 = u_xlat65;
  let x_1963 : f32 = u_xlat65;
  u_xlat65 = (x_1962 * x_1963);
  let x_1965 : f32 = u_xlat63;
  let x_1966 : f32 = u_xlat63;
  u_xlat63 = (x_1965 * x_1966);
  let x_1968 : f32 = u_xlat65;
  u_xlat65 = max(x_1968, 0.100000001f);
  let x_1971 : f32 = u_xlat63;
  let x_1972 : f32 = u_xlat65;
  u_xlat63 = (x_1971 * x_1972);
  let x_1974 : f32 = u_xlat66;
  let x_1975 : f32 = u_xlat63;
  u_xlat63 = (x_1974 * x_1975);
  let x_1977 : f32 = u_xlat24;
  let x_1978 : f32 = u_xlat63;
  u_xlat63 = (x_1977 / x_1978);
  let x_1980 : vec3<f32> = u_xlat0;
  let x_1981 : f32 = u_xlat63;
  let x_1984 : vec3<f32> = u_xlat7;
  let x_1985 : vec3<f32> = ((x_1980 * vec3<f32>(x_1981, x_1981, x_1981)) + x_1984);
  let x_1986 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1985.x, x_1985.y, x_1985.z, x_1986.w);
  let x_1988 : vec4<f32> = u_xlat6;
  let x_1990 : vec4<f32> = u_xlat8;
  let x_1992 : vec3<f32> = (vec3<f32>(x_1988.x, x_1988.y, x_1988.z) * vec3<f32>(x_1990.x, x_1990.y, x_1990.z));
  let x_1993 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
  let x_1996 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1998 : f32 = x_122.unity_LightData.y;
  u_xlat63 = min(x_1996, x_1998);
  let x_2002 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2002));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2014 : u32 = u_xlatu_loop_1;
    let x_2015 : u32 = u_xlatu63;
    if ((x_2014 < x_2015)) {
    } else {
      break;
    }
    let x_2018 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_2018 >> 2u);
    let x_2022 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2022 & 3u));
    let x_2025 : u32 = u_xlatu3;
    let x_2028 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_2025)];
    let x_2038 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2043 : vec4<u32> = indexable[x_2038];
    u_xlat3.x = dot(x_2028, bitcast<vec4<f32>>(x_2043));
    let x_2049 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_2049);
    let x_2051 : vec3<f32> = vs_INTERP0;
    let x_2063 : i32 = u_xlati3;
    let x_2065 : vec4<f32> = x_2062.x_AdditionalLightsPosition[x_2063];
    let x_2068 : i32 = u_xlati3;
    let x_2070 : vec4<f32> = x_2062.x_AdditionalLightsPosition[x_2068];
    u_xlat30 = ((-(x_2051) * vec3<f32>(x_2065.w, x_2065.w, x_2065.w)) + vec3<f32>(x_2070.x, x_2070.y, x_2070.z));
    let x_2073 : vec3<f32> = u_xlat30;
    let x_2074 : vec3<f32> = u_xlat30;
    u_xlat67 = dot(x_2073, x_2074);
    let x_2076 : f32 = u_xlat67;
    u_xlat67 = max(x_2076, 6.10351562e-05f);
    let x_2079 : f32 = u_xlat67;
    u_xlat69 = inverseSqrt(x_2079);
    let x_2081 : f32 = u_xlat69;
    let x_2083 : vec3<f32> = u_xlat30;
    let x_2084 : vec3<f32> = (vec3<f32>(x_2081, x_2081, x_2081) * x_2083);
    let x_2085 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2084.x, x_2084.y, x_2084.z, x_2085.w);
    let x_2087 : f32 = u_xlat67;
    u_xlat70 = (1.0f / x_2087);
    let x_2089 : f32 = u_xlat67;
    let x_2090 : i32 = u_xlati3;
    let x_2092 : f32 = x_2062.x_AdditionalLightsAttenuation[x_2090].x;
    u_xlat67 = (x_2089 * x_2092);
    let x_2094 : f32 = u_xlat67;
    let x_2096 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2094) * x_2096) + 1.0f);
    let x_2099 : f32 = u_xlat67;
    u_xlat67 = max(x_2099, 0.0f);
    let x_2101 : f32 = u_xlat67;
    let x_2102 : f32 = u_xlat67;
    u_xlat67 = (x_2101 * x_2102);
    let x_2104 : f32 = u_xlat67;
    let x_2105 : f32 = u_xlat70;
    u_xlat67 = (x_2104 * x_2105);
    let x_2107 : i32 = u_xlati3;
    let x_2109 : vec4<f32> = x_2062.x_AdditionalLightsSpotDir[x_2107];
    let x_2111 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2109.x, x_2109.y, x_2109.z), vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
    let x_2114 : f32 = u_xlat70;
    let x_2115 : i32 = u_xlati3;
    let x_2117 : f32 = x_2062.x_AdditionalLightsAttenuation[x_2115].z;
    let x_2119 : i32 = u_xlati3;
    let x_2121 : f32 = x_2062.x_AdditionalLightsAttenuation[x_2119].w;
    u_xlat70 = ((x_2114 * x_2117) + x_2121);
    let x_2123 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2123, 0.0f, 1.0f);
    let x_2125 : f32 = u_xlat70;
    let x_2126 : f32 = u_xlat70;
    u_xlat70 = (x_2125 * x_2126);
    let x_2128 : f32 = u_xlat67;
    let x_2129 : f32 = u_xlat70;
    u_xlat67 = (x_2128 * x_2129);
    let x_2131 : f32 = u_xlat68;
    let x_2133 : i32 = u_xlati3;
    let x_2135 : vec4<f32> = x_2062.x_AdditionalLightsColor[x_2133];
    let x_2137 : vec3<f32> = (vec3<f32>(x_2131, x_2131, x_2131) * vec3<f32>(x_2135.x, x_2135.y, x_2135.z));
    let x_2138 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2137.x, x_2137.y, x_2137.z, x_2138.w);
    let x_2140 : vec4<f32> = u_xlat1;
    let x_2142 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2140.x, x_2140.y, x_2140.w), vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
    let x_2147 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2147, 0.0f, 1.0f);
    let x_2151 : f32 = u_xlat3.x;
    let x_2152 : f32 = u_xlat67;
    u_xlat3.x = (x_2151 * x_2152);
    let x_2155 : vec3<f32> = u_xlat3;
    let x_2157 : vec4<f32> = u_xlat11;
    let x_2159 : vec3<f32> = (vec3<f32>(x_2155.x, x_2155.x, x_2155.x) * vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
    let x_2160 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
    let x_2162 : vec3<f32> = u_xlat30;
    let x_2163 : f32 = u_xlat69;
    let x_2166 : vec3<f32> = u_xlat5;
    u_xlat30 = ((x_2162 * vec3<f32>(x_2163, x_2163, x_2163)) + x_2166);
    let x_2168 : vec3<f32> = u_xlat30;
    let x_2169 : vec3<f32> = u_xlat30;
    u_xlat3.x = dot(x_2168, x_2169);
    let x_2173 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_2173, 1.17549435e-37f);
    let x_2177 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_2177);
    let x_2180 : vec3<f32> = u_xlat3;
    let x_2182 : vec3<f32> = u_xlat30;
    u_xlat30 = (vec3<f32>(x_2180.x, x_2180.x, x_2180.x) * x_2182);
    let x_2184 : vec4<f32> = u_xlat1;
    let x_2186 : vec3<f32> = u_xlat30;
    u_xlat3.x = dot(vec3<f32>(x_2184.x, x_2184.y, x_2184.w), x_2186);
    let x_2190 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2190, 0.0f, 1.0f);
    let x_2193 : vec4<f32> = u_xlat10;
    let x_2195 : vec3<f32> = u_xlat30;
    u_xlat67 = dot(vec3<f32>(x_2193.x, x_2193.y, x_2193.z), x_2195);
    let x_2197 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2197, 0.0f, 1.0f);
    let x_2200 : f32 = u_xlat3.x;
    let x_2202 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2200 * x_2202);
    let x_2206 : f32 = u_xlat3.x;
    let x_2208 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_2206 * x_2208) + 1.000010014f);
    let x_2212 : f32 = u_xlat67;
    let x_2213 : f32 = u_xlat67;
    u_xlat67 = (x_2212 * x_2213);
    let x_2216 : f32 = u_xlat3.x;
    let x_2218 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2216 * x_2218);
    let x_2221 : f32 = u_xlat67;
    u_xlat67 = max(x_2221, 0.100000001f);
    let x_2224 : f32 = u_xlat3.x;
    let x_2225 : f32 = u_xlat67;
    u_xlat3.x = (x_2224 * x_2225);
    let x_2228 : f32 = u_xlat66;
    let x_2230 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2228 * x_2230);
    let x_2233 : f32 = u_xlat24;
    let x_2235 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2233 / x_2235);
    let x_2238 : vec3<f32> = u_xlat0;
    let x_2239 : vec3<f32> = u_xlat3;
    let x_2242 : vec3<f32> = u_xlat7;
    u_xlat30 = ((x_2238 * vec3<f32>(x_2239.x, x_2239.x, x_2239.x)) + x_2242);
    let x_2244 : vec3<f32> = u_xlat30;
    let x_2245 : vec4<f32> = u_xlat11;
    let x_2248 : vec4<f32> = u_xlat8;
    let x_2250 : vec3<f32> = ((x_2244 * vec3<f32>(x_2245.x, x_2245.y, x_2245.z)) + vec3<f32>(x_2248.x, x_2248.y, x_2248.z));
    let x_2251 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);

    continuing {
      let x_2253 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2253 + bitcast<u32>(1i));
    }
  }
  let x_2255 : vec3<f32> = u_xlat4;
  let x_2256 : f32 = u_xlat45;
  let x_2259 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_2255 * vec3<f32>(x_2256, x_2256, x_2256)) + vec3<f32>(x_2259.x, x_2259.y, x_2259.z));
  let x_2262 : vec4<f32> = u_xlat8;
  let x_2264 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2262.x, x_2262.y, x_2262.z) + x_2264);
  let x_2268 : vec3<f32> = u_xlat2;
  let x_2269 : f32 = u_xlat43;
  let x_2272 : vec3<f32> = u_xlat0;
  let x_2273 : vec3<f32> = ((x_2268 * vec3<f32>(x_2269, x_2269, x_2269)) + x_2272);
  let x_2274 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2274.w);
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

