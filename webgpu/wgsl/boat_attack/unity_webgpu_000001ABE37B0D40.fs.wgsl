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

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_458 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2064 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat66 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat45 : f32;
  var u_xlatb45 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlatb67 : bool;
  var u_xlat67 : f32;
  var u_xlatb68 : bool;
  var u_xlat68 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb66 : bool;
  var u_xlat5 : vec3<f32>;
  var x_270 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat69 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlat47 : f32;
  var u_xlatb71 : bool;
  var u_xlat8 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb28 : bool;
  var u_xlat28 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat50 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat72 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat58 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat31 : vec3<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var u_xlat21 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat73 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
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
  var u_xlatb50 : bool;
  var u_xlat74 : f32;
  var u_xlatu68 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu69 : u32;
  var u_xlati71 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati69 : i32;
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
  u_xlat66 = dot(vec2<f32>(x_87.x, x_87.y), vec2<f32>(x_89.x, x_89.y));
  let x_92 : f32 = u_xlat66;
  u_xlat66 = min(x_92, 1.0f);
  let x_94 : f32 = u_xlat66;
  u_xlat66 = (-(x_94) + 1.0f);
  let x_97 : f32 = u_xlat66;
  u_xlat66 = sqrt(x_97);
  let x_99 : f32 = u_xlat66;
  u_xlat66 = max(x_99, 1.00000002e-16f);
  let x_108 : vec4<f32> = vs_INTERP3;
  let x_111 : f32 = x_45.x_GlobalMipBias.x;
  let x_112 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_108.x, x_108.y), x_111);
  let x_113 : vec3<f32> = vec3<f32>(x_112.x, x_112.y, x_112.z);
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_125 : vec4<f32> = x_120.unity_ObjectToWorld[3i];
  let x_128 : vec4<f32> = x_120.unity_ObjectToWorld[3i];
  u_xlat45 = dot(vec3<f32>(x_125.x, x_125.y, x_125.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : f32 = u_xlat45;
  u_xlat45 = sqrt(x_131);
  let x_133 : f32 = u_xlat45;
  u_xlat45 = fract(x_133);
  let x_135 : f32 = u_xlat45;
  let x_138 : f32 = x_45.x_NightFade;
  u_xlat45 = (x_135 + x_138);
  let x_143 : f32 = u_xlat45;
  u_xlatb45 = (x_143 >= 1.0f);
  let x_145 : bool = u_xlatb45;
  u_xlat45 = select(0.0f, 1.0f, x_145);
  let x_154 : vec4<f32> = vs_INTERP3;
  let x_157 : f32 = x_45.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat3 = vec3<f32>(x_158.x, x_158.w, x_158.y);
  let x_163 : f32 = vs_INTERP2.w;
  u_xlatb67 = (0.0f < x_163);
  let x_166 : bool = u_xlatb67;
  u_xlat67 = select(-1.0f, 1.0f, x_166);
  let x_170 : f32 = x_120.unity_WorldTransformParams.w;
  u_xlatb68 = (x_170 >= 0.0f);
  let x_173 : bool = u_xlatb68;
  u_xlat68 = select(-1.0f, 1.0f, x_173);
  let x_175 : f32 = u_xlat67;
  let x_176 : f32 = u_xlat68;
  u_xlat67 = (x_175 * x_176);
  let x_181 : vec3<f32> = vs_INTERP1;
  let x_183 : vec4<f32> = vs_INTERP2;
  u_xlat4 = (vec3<f32>(x_181.z, x_181.x, x_181.y) * vec3<f32>(x_183.y, x_183.z, x_183.x));
  let x_186 : vec3<f32> = vs_INTERP1;
  let x_188 : vec4<f32> = vs_INTERP2;
  let x_191 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_186.y, x_186.z, x_186.x) * vec3<f32>(x_188.z, x_188.x, x_188.y)) + -(x_191));
  let x_194 : f32 = u_xlat67;
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
  let x_211 : f32 = u_xlat66;
  let x_213 : vec3<f32> = vs_INTERP1;
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_211, x_211, x_211) * x_213) + vec3<f32>(x_215.x, x_215.y, x_215.w));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_217.z);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat66 = dot(vec3<f32>(x_220.x, x_220.y, x_220.w), vec3<f32>(x_222.x, x_222.y, x_222.w));
  let x_225 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat66;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_231.z);
  let x_237 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb66 = (x_237 == 0.0f);
  let x_240 : vec3<f32> = vs_INTERP0;
  let x_245 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_240) + x_245);
  let x_247 : vec3<f32> = u_xlat4;
  let x_248 : vec3<f32> = u_xlat4;
  u_xlat68 = dot(x_247, x_248);
  let x_250 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_250);
  let x_252 : f32 = u_xlat68;
  let x_254 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_252, x_252, x_252) * x_254);
  let x_259 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_259;
  let x_262 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_262;
  let x_267 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_267;
  let x_269 : bool = u_xlatb66;
  if (x_269) {
    let x_273 : vec3<f32> = u_xlat4;
    x_270 = x_273;
  } else {
    let x_275 : vec3<f32> = u_xlat5;
    x_270 = x_275;
  }
  let x_276 : vec3<f32> = x_270;
  u_xlat4 = x_276;
  let x_278 : f32 = vs_INTERP0.y;
  let x_280 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat66 = (x_278 * x_280);
  let x_283 : f32 = x_45.unity_MatrixV[0i].z;
  let x_285 : f32 = vs_INTERP0.x;
  let x_287 : f32 = u_xlat66;
  u_xlat66 = ((x_283 * x_285) + x_287);
  let x_290 : f32 = x_45.unity_MatrixV[2i].z;
  let x_292 : f32 = vs_INTERP0.z;
  let x_294 : f32 = u_xlat66;
  u_xlat66 = ((x_290 * x_292) + x_294);
  let x_296 : f32 = u_xlat66;
  let x_298 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat66 = (x_296 + x_298);
  let x_300 : f32 = u_xlat66;
  let x_304 : f32 = x_45.x_ProjectionParams.y;
  u_xlat66 = (-(x_300) + -(x_304));
  let x_307 : f32 = u_xlat66;
  u_xlat66 = max(x_307, 0.0f);
  let x_309 : f32 = u_xlat66;
  let x_312 : f32 = x_45.unity_FogParams.x;
  u_xlat66 = (x_309 * x_312);
  let x_321 : vec2<f32> = vs_INTERP4;
  let x_323 : f32 = x_45.x_GlobalMipBias.x;
  let x_324 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_321, x_323);
  u_xlat5 = vec3<f32>(x_324.x, x_324.y, x_324.z);
  let x_329 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_330 : vec2<f32> = vec2<f32>(x_329.x, x_329.y);
  let x_334 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_330.x, x_330.y));
  let x_335 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_334.x, x_334.y, x_335.z);
  let x_337 : vec3<f32> = u_xlat6;
  let x_339 : vec4<f32> = hlslcc_FragCoord;
  let x_341 : vec2<f32> = (vec2<f32>(x_337.x, x_337.y) * vec2<f32>(x_339.x, x_339.y));
  let x_342 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_341.x, x_341.y, x_342.z);
  let x_345 : f32 = u_xlat6.y;
  let x_348 : f32 = x_45.x_ScaleBiasRt.x;
  let x_351 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat68 = ((x_345 * x_348) + x_351);
  let x_353 : f32 = u_xlat68;
  u_xlat6.z = (-(x_353) + 1.0f);
  let x_357 : vec3<f32> = u_xlat3;
  let x_358 : vec2<f32> = vec2<f32>(x_357.x, x_357.y);
  let x_359 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_358.x, x_358.y, x_359.z);
  let x_361 : vec3<f32> = u_xlat3;
  let x_365 : vec2<f32> = clamp(vec2<f32>(x_361.x, x_361.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_366 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_365.x, x_365.y, x_366.z);
  let x_369 : f32 = u_xlat3.x;
  u_xlat68 = ((-(x_369) * 0.959999979f) + 0.959999979f);
  let x_375 : f32 = u_xlat68;
  let x_378 : f32 = u_xlat3.y;
  u_xlat69 = (-(x_375) + x_378);
  let x_381 : vec3<f32> = u_xlat0;
  let x_382 : f32 = u_xlat68;
  u_xlat7 = (x_381 * vec3<f32>(x_382, x_382, x_382));
  let x_385 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_385 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_389 : vec3<f32> = u_xlat3;
  let x_391 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_389.x, x_389.x, x_389.x) * x_391) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_397 : f32 = u_xlat3.y;
  u_xlat68 = (-(x_397) + 1.0f);
  let x_400 : f32 = u_xlat68;
  let x_401 : f32 = u_xlat68;
  u_xlat3.x = (x_400 * x_401);
  let x_405 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_405, 0.0078125f);
  let x_411 : f32 = u_xlat3.x;
  let x_413 : f32 = u_xlat3.x;
  u_xlat25 = (x_411 * x_413);
  let x_415 : f32 = u_xlat69;
  u_xlat69 = (x_415 + 1.0f);
  let x_417 : f32 = u_xlat69;
  u_xlat69 = min(x_417, 1.0f);
  let x_421 : f32 = u_xlat3.x;
  u_xlat70 = ((x_421 * 4.0f) + 2.0f);
  let x_431 : vec3<f32> = u_xlat6;
  let x_434 : f32 = x_45.x_GlobalMipBias.x;
  let x_435 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_431.x, x_431.z), x_434);
  u_xlat71 = x_435.x;
  let x_437 : f32 = u_xlat71;
  u_xlat6.x = (x_437 + -1.0f);
  let x_442 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_444 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_442 * x_444) + 1.0f);
  let x_450 : f32 = u_xlat3.z;
  let x_451 : f32 = u_xlat71;
  u_xlat47 = min(x_450, x_451);
  let x_460 : f32 = x_458.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_460);
  let x_462 : bool = u_xlatb71;
  if (x_462) {
    let x_466 : f32 = x_458.x_MainLightShadowParams.y;
    u_xlatb71 = (x_466 == 1.0f);
    let x_468 : bool = u_xlatb71;
    if (x_468) {
      let x_473 : vec4<f32> = vs_INTERP8;
      let x_477 : vec4<f32> = x_458.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_473.x, x_473.y, x_473.x, x_473.y) + x_477);
      let x_480 : vec4<f32> = u_xlat8;
      let x_481 : vec2<f32> = vec2<f32>(x_480.x, x_480.y);
      let x_483 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_481.x, x_481.y, x_483);
      let x_496 : vec3<f32> = txVec0;
      let x_498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_496.xy, x_496.z);
      u_xlat9.x = x_498;
      let x_501 : vec4<f32> = u_xlat8;
      let x_502 : vec2<f32> = vec2<f32>(x_501.z, x_501.w);
      let x_504 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_502.x, x_502.y, x_504);
      let x_511 : vec3<f32> = txVec1;
      let x_513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_511.xy, x_511.z);
      u_xlat9.y = x_513;
      let x_515 : vec4<f32> = vs_INTERP8;
      let x_519 : vec4<f32> = x_458.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_515.x, x_515.y, x_515.x, x_515.y) + x_519);
      let x_522 : vec4<f32> = u_xlat8;
      let x_523 : vec2<f32> = vec2<f32>(x_522.x, x_522.y);
      let x_525 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_523.x, x_523.y, x_525);
      let x_532 : vec3<f32> = txVec2;
      let x_534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_532.xy, x_532.z);
      u_xlat9.z = x_534;
      let x_537 : vec4<f32> = u_xlat8;
      let x_538 : vec2<f32> = vec2<f32>(x_537.z, x_537.w);
      let x_540 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_538.x, x_538.y, x_540);
      let x_547 : vec3<f32> = txVec3;
      let x_549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_547.xy, x_547.z);
      u_xlat9.w = x_549;
      let x_551 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_551, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_558 : f32 = x_458.x_MainLightShadowParams.y;
      u_xlatb28 = (x_558 == 2.0f);
      let x_560 : bool = u_xlatb28;
      if (x_560) {
        let x_564 : vec4<f32> = vs_INTERP8;
        let x_567 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_572 : vec2<f32> = ((vec2<f32>(x_564.x, x_564.y) * vec2<f32>(x_567.z, x_567.w)) + vec2<f32>(0.5f, 0.5f));
        let x_573 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_572.x, x_572.y, x_573.z);
        let x_575 : vec3<f32> = u_xlat28;
        let x_577 : vec2<f32> = floor(vec2<f32>(x_575.x, x_575.y));
        let x_578 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_577.x, x_577.y, x_578.z);
        let x_580 : vec4<f32> = vs_INTERP8;
        let x_583 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_586 : vec3<f32> = u_xlat28;
        let x_589 : vec2<f32> = ((vec2<f32>(x_580.x, x_580.y) * vec2<f32>(x_583.z, x_583.w)) + -(vec2<f32>(x_586.x, x_586.y)));
        let x_590 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
        let x_592 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_592.x, x_592.x, x_592.y, x_592.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_597 : vec4<f32> = u_xlat9;
        let x_599 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_597.x, x_597.x, x_597.z, x_597.z) * vec4<f32>(x_599.x, x_599.x, x_599.z, x_599.z));
        let x_604 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_604.y, x_604.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_609 : vec4<f32> = u_xlat10;
        let x_612 : vec4<f32> = u_xlat8;
        let x_615 : vec2<f32> = ((vec2<f32>(x_609.x, x_609.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_612.x, x_612.y)));
        let x_616 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_615.x, x_616.y, x_615.y, x_616.w);
        let x_618 : vec4<f32> = u_xlat8;
        let x_621 : vec2<f32> = (-(vec2<f32>(x_618.x, x_618.y)) + vec2<f32>(1.0f, 1.0f));
        let x_622 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
        let x_625 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_625.x, x_625.y), vec2<f32>(0.0f, 0.0f));
        let x_629 : vec2<f32> = u_xlat54;
        let x_631 : vec2<f32> = u_xlat54;
        let x_633 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_629) * x_631) + vec2<f32>(x_633.x, x_633.y));
        let x_636 : vec4<f32> = u_xlat8;
        let x_638 : vec2<f32> = max(vec2<f32>(x_636.x, x_636.y), vec2<f32>(0.0f, 0.0f));
        let x_639 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
        let x_641 : vec4<f32> = u_xlat8;
        let x_644 : vec4<f32> = u_xlat8;
        let x_647 : vec4<f32> = u_xlat9;
        let x_649 : vec2<f32> = ((-(vec2<f32>(x_641.x, x_641.y)) * vec2<f32>(x_644.x, x_644.y)) + vec2<f32>(x_647.y, x_647.w));
        let x_650 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_649.x, x_649.y, x_650.z, x_650.w);
        let x_652 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_652 + vec2<f32>(1.0f, 1.0f));
        let x_654 : vec4<f32> = u_xlat8;
        let x_656 : vec2<f32> = (vec2<f32>(x_654.x, x_654.y) + vec2<f32>(1.0f, 1.0f));
        let x_657 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
        let x_660 : vec4<f32> = u_xlat9;
        let x_664 : vec2<f32> = (vec2<f32>(x_660.x, x_660.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_665 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_668 : vec4<f32> = u_xlat10;
        let x_670 : vec2<f32> = (vec2<f32>(x_668.x, x_668.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_671 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_671.w);
        let x_673 : vec2<f32> = u_xlat54;
        let x_674 : vec2<f32> = (x_673 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_675 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
        let x_678 : vec4<f32> = u_xlat8;
        let x_680 : vec2<f32> = (vec2<f32>(x_678.x, x_678.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_681 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
        let x_683 : vec4<f32> = u_xlat9;
        let x_685 : vec2<f32> = (vec2<f32>(x_683.y, x_683.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_686 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_685.x, x_685.y, x_686.z, x_686.w);
        let x_689 : f32 = u_xlat10.x;
        u_xlat11.z = x_689;
        let x_692 : f32 = u_xlat8.x;
        u_xlat11.w = x_692;
        let x_695 : f32 = u_xlat13.x;
        u_xlat12.z = x_695;
        let x_698 : f32 = u_xlat52.x;
        u_xlat12.w = x_698;
        let x_700 : vec4<f32> = u_xlat11;
        let x_702 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_700.z, x_700.w, x_700.x, x_700.z) + vec4<f32>(x_702.z, x_702.w, x_702.x, x_702.z));
        let x_706 : f32 = u_xlat11.y;
        u_xlat10.z = x_706;
        let x_709 : f32 = u_xlat8.y;
        u_xlat10.w = x_709;
        let x_712 : f32 = u_xlat12.y;
        u_xlat13.z = x_712;
        let x_715 : f32 = u_xlat52.y;
        u_xlat13.w = x_715;
        let x_717 : vec4<f32> = u_xlat10;
        let x_719 : vec4<f32> = u_xlat13;
        let x_721 : vec3<f32> = (vec3<f32>(x_717.z, x_717.y, x_717.w) + vec3<f32>(x_719.z, x_719.y, x_719.w));
        let x_722 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
        let x_724 : vec4<f32> = u_xlat12;
        let x_726 : vec4<f32> = u_xlat9;
        let x_728 : vec3<f32> = (vec3<f32>(x_724.x, x_724.z, x_724.w) / vec3<f32>(x_726.z, x_726.w, x_726.y));
        let x_729 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
        let x_731 : vec4<f32> = u_xlat10;
        let x_737 : vec3<f32> = (vec3<f32>(x_731.x, x_731.y, x_731.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_738 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
        let x_740 : vec4<f32> = u_xlat13;
        let x_742 : vec4<f32> = u_xlat8;
        let x_744 : vec3<f32> = (vec3<f32>(x_740.z, x_740.y, x_740.w) / vec3<f32>(x_742.x, x_742.y, x_742.z));
        let x_745 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
        let x_747 : vec4<f32> = u_xlat11;
        let x_749 : vec3<f32> = (vec3<f32>(x_747.x, x_747.y, x_747.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_750 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
        let x_752 : vec4<f32> = u_xlat10;
        let x_755 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_757 : vec3<f32> = (vec3<f32>(x_752.y, x_752.x, x_752.z) * vec3<f32>(x_755.x, x_755.x, x_755.x));
        let x_758 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
        let x_760 : vec4<f32> = u_xlat11;
        let x_763 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_765 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_763.y, x_763.y, x_763.y));
        let x_766 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
        let x_769 : f32 = u_xlat11.x;
        u_xlat10.w = x_769;
        let x_771 : vec3<f32> = u_xlat28;
        let x_774 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_777 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_771.x, x_771.y, x_771.x, x_771.y) * vec4<f32>(x_774.x, x_774.y, x_774.x, x_774.y)) + vec4<f32>(x_777.y, x_777.w, x_777.x, x_777.w));
        let x_780 : vec3<f32> = u_xlat28;
        let x_783 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_786 : vec4<f32> = u_xlat10;
        let x_788 : vec2<f32> = ((vec2<f32>(x_780.x, x_780.y) * vec2<f32>(x_783.x, x_783.y)) + vec2<f32>(x_786.z, x_786.w));
        let x_789 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_788.x, x_788.y, x_789.z, x_789.w);
        let x_792 : f32 = u_xlat10.y;
        u_xlat11.w = x_792;
        let x_794 : vec4<f32> = u_xlat11;
        let x_795 : vec2<f32> = vec2<f32>(x_794.y, x_794.z);
        let x_796 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_796.x, x_795.x, x_796.z, x_795.y);
        let x_799 : vec3<f32> = u_xlat28;
        let x_802 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_805 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_799.x, x_799.y, x_799.x, x_799.y) * vec4<f32>(x_802.x, x_802.y, x_802.x, x_802.y)) + vec4<f32>(x_805.x, x_805.y, x_805.z, x_805.y));
        let x_808 : vec3<f32> = u_xlat28;
        let x_811 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_814 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_808.x, x_808.y, x_808.x, x_808.y) * vec4<f32>(x_811.x, x_811.y, x_811.x, x_811.y)) + vec4<f32>(x_814.w, x_814.y, x_814.w, x_814.z));
        let x_817 : vec3<f32> = u_xlat28;
        let x_820 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_823 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_817.x, x_817.y, x_817.x, x_817.y) * vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y)) + vec4<f32>(x_823.x, x_823.w, x_823.z, x_823.w));
        let x_827 : vec4<f32> = u_xlat8;
        let x_829 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_827.x, x_827.x, x_827.x, x_827.y) * vec4<f32>(x_829.z, x_829.w, x_829.y, x_829.z));
        let x_833 : vec4<f32> = u_xlat8;
        let x_835 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_833.y, x_833.y, x_833.z, x_833.z) * x_835);
        let x_838 : f32 = u_xlat8.z;
        let x_840 : f32 = u_xlat9.y;
        u_xlat28.x = (x_838 * x_840);
        let x_844 : vec4<f32> = u_xlat12;
        let x_845 : vec2<f32> = vec2<f32>(x_844.x, x_844.y);
        let x_847 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_845.x, x_845.y, x_847);
        let x_855 : vec3<f32> = txVec4;
        let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_855.xy, x_855.z);
        u_xlat50 = x_857;
        let x_859 : vec4<f32> = u_xlat12;
        let x_860 : vec2<f32> = vec2<f32>(x_859.z, x_859.w);
        let x_862 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_860.x, x_860.y, x_862);
        let x_870 : vec3<f32> = txVec5;
        let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_870.xy, x_870.z);
        u_xlat72 = x_872;
        let x_873 : f32 = u_xlat72;
        let x_875 : f32 = u_xlat15.y;
        u_xlat72 = (x_873 * x_875);
        let x_878 : f32 = u_xlat15.x;
        let x_879 : f32 = u_xlat50;
        let x_881 : f32 = u_xlat72;
        u_xlat50 = ((x_878 * x_879) + x_881);
        let x_884 : vec4<f32> = u_xlat13;
        let x_885 : vec2<f32> = vec2<f32>(x_884.x, x_884.y);
        let x_887 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_885.x, x_885.y, x_887);
        let x_894 : vec3<f32> = txVec6;
        let x_896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_894.xy, x_894.z);
        u_xlat72 = x_896;
        let x_898 : f32 = u_xlat15.z;
        let x_899 : f32 = u_xlat72;
        let x_901 : f32 = u_xlat50;
        u_xlat50 = ((x_898 * x_899) + x_901);
        let x_904 : vec4<f32> = u_xlat11;
        let x_905 : vec2<f32> = vec2<f32>(x_904.x, x_904.y);
        let x_907 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_914 : vec3<f32> = txVec7;
        let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_914.xy, x_914.z);
        u_xlat72 = x_916;
        let x_918 : f32 = u_xlat15.w;
        let x_919 : f32 = u_xlat72;
        let x_921 : f32 = u_xlat50;
        u_xlat50 = ((x_918 * x_919) + x_921);
        let x_924 : vec4<f32> = u_xlat14;
        let x_925 : vec2<f32> = vec2<f32>(x_924.x, x_924.y);
        let x_927 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_925.x, x_925.y, x_927);
        let x_934 : vec3<f32> = txVec8;
        let x_936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_934.xy, x_934.z);
        u_xlat72 = x_936;
        let x_938 : f32 = u_xlat16.x;
        let x_939 : f32 = u_xlat72;
        let x_941 : f32 = u_xlat50;
        u_xlat50 = ((x_938 * x_939) + x_941);
        let x_944 : vec4<f32> = u_xlat14;
        let x_945 : vec2<f32> = vec2<f32>(x_944.z, x_944.w);
        let x_947 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_945.x, x_945.y, x_947);
        let x_954 : vec3<f32> = txVec9;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_954.xy, x_954.z);
        u_xlat72 = x_956;
        let x_958 : f32 = u_xlat16.y;
        let x_959 : f32 = u_xlat72;
        let x_961 : f32 = u_xlat50;
        u_xlat50 = ((x_958 * x_959) + x_961);
        let x_964 : vec4<f32> = u_xlat11;
        let x_965 : vec2<f32> = vec2<f32>(x_964.z, x_964.w);
        let x_967 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_965.x, x_965.y, x_967);
        let x_974 : vec3<f32> = txVec10;
        let x_976 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_974.xy, x_974.z);
        u_xlat72 = x_976;
        let x_978 : f32 = u_xlat16.z;
        let x_979 : f32 = u_xlat72;
        let x_981 : f32 = u_xlat50;
        u_xlat50 = ((x_978 * x_979) + x_981);
        let x_984 : vec4<f32> = u_xlat10;
        let x_985 : vec2<f32> = vec2<f32>(x_984.x, x_984.y);
        let x_987 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_985.x, x_985.y, x_987);
        let x_994 : vec3<f32> = txVec11;
        let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_994.xy, x_994.z);
        u_xlat72 = x_996;
        let x_998 : f32 = u_xlat16.w;
        let x_999 : f32 = u_xlat72;
        let x_1001 : f32 = u_xlat50;
        u_xlat50 = ((x_998 * x_999) + x_1001);
        let x_1004 : vec4<f32> = u_xlat10;
        let x_1005 : vec2<f32> = vec2<f32>(x_1004.z, x_1004.w);
        let x_1007 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1005.x, x_1005.y, x_1007);
        let x_1014 : vec3<f32> = txVec12;
        let x_1016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1014.xy, x_1014.z);
        u_xlat72 = x_1016;
        let x_1018 : f32 = u_xlat28.x;
        let x_1019 : f32 = u_xlat72;
        let x_1021 : f32 = u_xlat50;
        u_xlat71 = ((x_1018 * x_1019) + x_1021);
      } else {
        let x_1024 : vec4<f32> = vs_INTERP8;
        let x_1027 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1030 : vec2<f32> = ((vec2<f32>(x_1024.x, x_1024.y) * vec2<f32>(x_1027.z, x_1027.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1031 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1030.x, x_1030.y, x_1031.z);
        let x_1033 : vec3<f32> = u_xlat28;
        let x_1035 : vec2<f32> = floor(vec2<f32>(x_1033.x, x_1033.y));
        let x_1036 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1035.x, x_1035.y, x_1036.z);
        let x_1038 : vec4<f32> = vs_INTERP8;
        let x_1041 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1044 : vec3<f32> = u_xlat28;
        let x_1047 : vec2<f32> = ((vec2<f32>(x_1038.x, x_1038.y) * vec2<f32>(x_1041.z, x_1041.w)) + -(vec2<f32>(x_1044.x, x_1044.y)));
        let x_1048 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1048.w);
        let x_1050 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1050.x, x_1050.x, x_1050.y, x_1050.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1053 : vec4<f32> = u_xlat9;
        let x_1055 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1053.x, x_1053.x, x_1053.z, x_1053.z) * vec4<f32>(x_1055.x, x_1055.x, x_1055.z, x_1055.z));
        let x_1058 : vec4<f32> = u_xlat10;
        let x_1062 : vec2<f32> = (vec2<f32>(x_1058.y, x_1058.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1063 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1063.x, x_1062.x, x_1063.z, x_1062.y);
        let x_1065 : vec4<f32> = u_xlat10;
        let x_1068 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1065.x, x_1065.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1068.x, x_1068.y)));
        let x_1072 : vec4<f32> = u_xlat8;
        let x_1075 : vec2<f32> = (-(vec2<f32>(x_1072.x, x_1072.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1075.x, x_1076.y, x_1075.y, x_1076.w);
        let x_1078 : vec4<f32> = u_xlat8;
        let x_1080 : vec2<f32> = min(vec2<f32>(x_1078.x, x_1078.y), vec2<f32>(0.0f, 0.0f));
        let x_1081 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1080.x, x_1080.y, x_1081.z, x_1081.w);
        let x_1083 : vec4<f32> = u_xlat10;
        let x_1086 : vec4<f32> = u_xlat10;
        let x_1089 : vec4<f32> = u_xlat9;
        let x_1091 : vec2<f32> = ((-(vec2<f32>(x_1083.x, x_1083.y)) * vec2<f32>(x_1086.x, x_1086.y)) + vec2<f32>(x_1089.x, x_1089.z));
        let x_1092 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1091.x, x_1092.y, x_1091.y, x_1092.w);
        let x_1094 : vec4<f32> = u_xlat8;
        let x_1096 : vec2<f32> = max(vec2<f32>(x_1094.x, x_1094.y), vec2<f32>(0.0f, 0.0f));
        let x_1097 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
        let x_1099 : vec4<f32> = u_xlat10;
        let x_1102 : vec4<f32> = u_xlat10;
        let x_1105 : vec4<f32> = u_xlat9;
        let x_1107 : vec2<f32> = ((-(vec2<f32>(x_1099.x, x_1099.y)) * vec2<f32>(x_1102.x, x_1102.y)) + vec2<f32>(x_1105.y, x_1105.w));
        let x_1108 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1108.x, x_1107.x, x_1108.z, x_1107.y);
        let x_1110 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1110 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1114 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1114 * 0.081632003f);
        let x_1118 : vec2<f32> = u_xlat52;
        let x_1121 : vec2<f32> = (vec2<f32>(x_1118.y, x_1118.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1122 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1124.x, x_1124.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1128 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1128 * 0.081632003f);
        let x_1132 : f32 = u_xlat12.y;
        u_xlat10.x = x_1132;
        let x_1134 : vec4<f32> = u_xlat8;
        let x_1141 : vec2<f32> = ((vec2<f32>(x_1134.x, x_1134.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1142 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1142.x, x_1141.x, x_1142.z, x_1141.y);
        let x_1144 : vec4<f32> = u_xlat8;
        let x_1148 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1149 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1148.x, x_1149.y, x_1148.y, x_1149.w);
        let x_1152 : f32 = u_xlat52.x;
        u_xlat9.y = x_1152;
        let x_1155 : f32 = u_xlat11.y;
        u_xlat9.w = x_1155;
        let x_1157 : vec4<f32> = u_xlat9;
        let x_1158 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1157 + x_1158);
        let x_1160 : vec4<f32> = u_xlat8;
        let x_1163 : vec2<f32> = ((vec2<f32>(x_1160.y, x_1160.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1164 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1164.x, x_1163.x, x_1164.z, x_1163.y);
        let x_1166 : vec4<f32> = u_xlat8;
        let x_1169 : vec2<f32> = ((vec2<f32>(x_1166.y, x_1166.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1170 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1169.x, x_1170.y, x_1169.y, x_1170.w);
        let x_1173 : f32 = u_xlat52.y;
        u_xlat11.y = x_1173;
        let x_1175 : vec4<f32> = u_xlat11;
        let x_1176 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1175 + x_1176);
        let x_1178 : vec4<f32> = u_xlat9;
        let x_1179 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1178 / x_1179);
        let x_1181 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1181 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1187 : vec4<f32> = u_xlat11;
        let x_1188 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1187 / x_1188);
        let x_1190 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1190 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1192 : vec4<f32> = u_xlat9;
        let x_1195 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1192.w, x_1192.x, x_1192.y, x_1192.z) * vec4<f32>(x_1195.x, x_1195.x, x_1195.x, x_1195.x));
        let x_1198 : vec4<f32> = u_xlat11;
        let x_1201 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1198.x, x_1198.w, x_1198.y, x_1198.z) * vec4<f32>(x_1201.y, x_1201.y, x_1201.y, x_1201.y));
        let x_1204 : vec4<f32> = u_xlat9;
        let x_1205 : vec3<f32> = vec3<f32>(x_1204.y, x_1204.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1205.x, x_1206.y, x_1205.y, x_1205.z);
        let x_1209 : f32 = u_xlat11.x;
        u_xlat12.y = x_1209;
        let x_1211 : vec3<f32> = u_xlat28;
        let x_1214 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y) * vec4<f32>(x_1214.x, x_1214.y, x_1214.x, x_1214.y)) + vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1217.y));
        let x_1220 : vec3<f32> = u_xlat28;
        let x_1223 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1226 : vec4<f32> = u_xlat12;
        let x_1228 : vec2<f32> = ((vec2<f32>(x_1220.x, x_1220.y) * vec2<f32>(x_1223.x, x_1223.y)) + vec2<f32>(x_1226.w, x_1226.y));
        let x_1229 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1228.x, x_1228.y, x_1229.z, x_1229.w);
        let x_1232 : f32 = u_xlat12.y;
        u_xlat9.y = x_1232;
        let x_1235 : f32 = u_xlat11.z;
        u_xlat12.y = x_1235;
        let x_1237 : vec3<f32> = u_xlat28;
        let x_1240 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1243 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.y) * vec4<f32>(x_1240.x, x_1240.y, x_1240.x, x_1240.y)) + vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1243.y));
        let x_1247 : vec3<f32> = u_xlat28;
        let x_1250 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1253 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1247.x, x_1247.y) * vec2<f32>(x_1250.x, x_1250.y)) + vec2<f32>(x_1253.w, x_1253.y));
        let x_1257 : f32 = u_xlat12.y;
        u_xlat9.z = x_1257;
        let x_1259 : vec3<f32> = u_xlat28;
        let x_1262 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y) * vec4<f32>(x_1262.x, x_1262.y, x_1262.x, x_1262.y)) + vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.z));
        let x_1269 : f32 = u_xlat11.w;
        u_xlat12.y = x_1269;
        let x_1272 : vec3<f32> = u_xlat28;
        let x_1275 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1278 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y) * vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y)) + vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1278.y));
        let x_1282 : vec3<f32> = u_xlat28;
        let x_1285 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat12;
        let x_1290 : vec2<f32> = ((vec2<f32>(x_1282.x, x_1282.y) * vec2<f32>(x_1285.x, x_1285.y)) + vec2<f32>(x_1288.w, x_1288.y));
        let x_1291 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1290.x, x_1290.y, x_1291.z);
        let x_1294 : f32 = u_xlat12.y;
        u_xlat9.w = x_1294;
        let x_1297 : vec3<f32> = u_xlat28;
        let x_1300 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1303 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1297.x, x_1297.y) * vec2<f32>(x_1300.x, x_1300.y)) + vec2<f32>(x_1303.x, x_1303.w));
        let x_1306 : vec4<f32> = u_xlat12;
        let x_1307 : vec3<f32> = vec3<f32>(x_1306.x, x_1306.z, x_1306.w);
        let x_1308 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1307.x, x_1308.y, x_1307.y, x_1307.z);
        let x_1310 : vec3<f32> = u_xlat28;
        let x_1313 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1316 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1310.x, x_1310.y, x_1310.x, x_1310.y) * vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.y)) + vec4<f32>(x_1316.x, x_1316.y, x_1316.z, x_1316.y));
        let x_1320 : vec3<f32> = u_xlat28;
        let x_1323 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1326 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1320.x, x_1320.y) * vec2<f32>(x_1323.x, x_1323.y)) + vec2<f32>(x_1326.w, x_1326.y));
        let x_1330 : f32 = u_xlat9.x;
        u_xlat11.x = x_1330;
        let x_1332 : vec3<f32> = u_xlat28;
        let x_1335 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat11;
        let x_1340 : vec2<f32> = ((vec2<f32>(x_1332.x, x_1332.y) * vec2<f32>(x_1335.x, x_1335.y)) + vec2<f32>(x_1338.x, x_1338.y));
        let x_1341 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1340.x, x_1340.y, x_1341.z);
        let x_1344 : vec4<f32> = u_xlat8;
        let x_1346 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1344.x, x_1344.x, x_1344.x, x_1344.x) * x_1346);
        let x_1349 : vec4<f32> = u_xlat8;
        let x_1351 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1349.y, x_1349.y, x_1349.y, x_1349.y) * x_1351);
        let x_1354 : vec4<f32> = u_xlat8;
        let x_1356 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1354.z, x_1354.z, x_1354.z, x_1354.z) * x_1356);
        let x_1358 : vec4<f32> = u_xlat8;
        let x_1360 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1358.w, x_1358.w, x_1358.w, x_1358.w) * x_1360);
        let x_1363 : vec4<f32> = u_xlat13;
        let x_1364 : vec2<f32> = vec2<f32>(x_1363.x, x_1363.y);
        let x_1366 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec13;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1373.xy, x_1373.z);
        u_xlat72 = x_1375;
        let x_1377 : vec4<f32> = u_xlat13;
        let x_1378 : vec2<f32> = vec2<f32>(x_1377.z, x_1377.w);
        let x_1380 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1388 : vec3<f32> = txVec14;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1388.xy, x_1388.z);
        u_xlat73 = x_1390;
        let x_1391 : f32 = u_xlat73;
        let x_1393 : f32 = u_xlat19.y;
        u_xlat73 = (x_1391 * x_1393);
        let x_1396 : f32 = u_xlat19.x;
        let x_1397 : f32 = u_xlat72;
        let x_1399 : f32 = u_xlat73;
        u_xlat72 = ((x_1396 * x_1397) + x_1399);
        let x_1402 : vec4<f32> = u_xlat14;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.x, x_1402.y);
        let x_1405 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec15;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1412.xy, x_1412.z);
        u_xlat73 = x_1414;
        let x_1416 : f32 = u_xlat19.z;
        let x_1417 : f32 = u_xlat73;
        let x_1419 : f32 = u_xlat72;
        u_xlat72 = ((x_1416 * x_1417) + x_1419);
        let x_1422 : vec4<f32> = u_xlat16;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.x, x_1422.y);
        let x_1425 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec16;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1432.xy, x_1432.z);
        u_xlat73 = x_1434;
        let x_1436 : f32 = u_xlat19.w;
        let x_1437 : f32 = u_xlat73;
        let x_1439 : f32 = u_xlat72;
        u_xlat72 = ((x_1436 * x_1437) + x_1439);
        let x_1442 : vec4<f32> = u_xlat15;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.x, x_1442.y);
        let x_1445 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec17;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1452.xy, x_1452.z);
        u_xlat73 = x_1454;
        let x_1456 : f32 = u_xlat20.x;
        let x_1457 : f32 = u_xlat73;
        let x_1459 : f32 = u_xlat72;
        u_xlat72 = ((x_1456 * x_1457) + x_1459);
        let x_1462 : vec4<f32> = u_xlat15;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.z, x_1462.w);
        let x_1465 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec18;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1472.xy, x_1472.z);
        u_xlat73 = x_1474;
        let x_1476 : f32 = u_xlat20.y;
        let x_1477 : f32 = u_xlat73;
        let x_1479 : f32 = u_xlat72;
        u_xlat72 = ((x_1476 * x_1477) + x_1479);
        let x_1482 : vec2<f32> = u_xlat58;
        let x_1484 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec19;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1491.xy, x_1491.z);
        u_xlat73 = x_1493;
        let x_1495 : f32 = u_xlat20.z;
        let x_1496 : f32 = u_xlat73;
        let x_1498 : f32 = u_xlat72;
        u_xlat72 = ((x_1495 * x_1496) + x_1498);
        let x_1501 : vec4<f32> = u_xlat16;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.z, x_1501.w);
        let x_1504 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec20;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1511.xy, x_1511.z);
        u_xlat73 = x_1513;
        let x_1515 : f32 = u_xlat20.w;
        let x_1516 : f32 = u_xlat73;
        let x_1518 : f32 = u_xlat72;
        u_xlat72 = ((x_1515 * x_1516) + x_1518);
        let x_1521 : vec4<f32> = u_xlat17;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec21;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1531.xy, x_1531.z);
        u_xlat73 = x_1533;
        let x_1535 : f32 = u_xlat21.x;
        let x_1536 : f32 = u_xlat73;
        let x_1538 : f32 = u_xlat72;
        u_xlat72 = ((x_1535 * x_1536) + x_1538);
        let x_1541 : vec4<f32> = u_xlat17;
        let x_1542 : vec2<f32> = vec2<f32>(x_1541.z, x_1541.w);
        let x_1544 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec22;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1551.xy, x_1551.z);
        u_xlat73 = x_1553;
        let x_1555 : f32 = u_xlat21.y;
        let x_1556 : f32 = u_xlat73;
        let x_1558 : f32 = u_xlat72;
        u_xlat72 = ((x_1555 * x_1556) + x_1558);
        let x_1561 : vec3<f32> = u_xlat31;
        let x_1562 : vec2<f32> = vec2<f32>(x_1561.x, x_1561.y);
        let x_1564 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1571 : vec3<f32> = txVec23;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1571.xy, x_1571.z);
        u_xlat73 = x_1573;
        let x_1575 : f32 = u_xlat21.z;
        let x_1576 : f32 = u_xlat73;
        let x_1578 : f32 = u_xlat72;
        u_xlat72 = ((x_1575 * x_1576) + x_1578);
        let x_1581 : vec2<f32> = u_xlat18;
        let x_1583 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1581.x, x_1581.y, x_1583);
        let x_1590 : vec3<f32> = txVec24;
        let x_1592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1590.xy, x_1590.z);
        u_xlat73 = x_1592;
        let x_1594 : f32 = u_xlat21.w;
        let x_1595 : f32 = u_xlat73;
        let x_1597 : f32 = u_xlat72;
        u_xlat72 = ((x_1594 * x_1595) + x_1597);
        let x_1600 : vec4<f32> = u_xlat12;
        let x_1601 : vec2<f32> = vec2<f32>(x_1600.x, x_1600.y);
        let x_1603 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec25;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1610.xy, x_1610.z);
        u_xlat73 = x_1612;
        let x_1614 : f32 = u_xlat8.x;
        let x_1615 : f32 = u_xlat73;
        let x_1617 : f32 = u_xlat72;
        u_xlat72 = ((x_1614 * x_1615) + x_1617);
        let x_1620 : vec4<f32> = u_xlat12;
        let x_1621 : vec2<f32> = vec2<f32>(x_1620.z, x_1620.w);
        let x_1623 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1621.x, x_1621.y, x_1623);
        let x_1630 : vec3<f32> = txVec26;
        let x_1632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1630.xy, x_1630.z);
        u_xlat73 = x_1632;
        let x_1634 : f32 = u_xlat8.y;
        let x_1635 : f32 = u_xlat73;
        let x_1637 : f32 = u_xlat72;
        u_xlat72 = ((x_1634 * x_1635) + x_1637);
        let x_1640 : vec2<f32> = u_xlat55;
        let x_1642 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1640.x, x_1640.y, x_1642);
        let x_1649 : vec3<f32> = txVec27;
        let x_1651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1649.xy, x_1649.z);
        u_xlat73 = x_1651;
        let x_1653 : f32 = u_xlat8.z;
        let x_1654 : f32 = u_xlat73;
        let x_1656 : f32 = u_xlat72;
        u_xlat72 = ((x_1653 * x_1654) + x_1656);
        let x_1659 : vec3<f32> = u_xlat28;
        let x_1660 : vec2<f32> = vec2<f32>(x_1659.x, x_1659.y);
        let x_1662 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1660.x, x_1660.y, x_1662);
        let x_1669 : vec3<f32> = txVec28;
        let x_1671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1669.xy, x_1669.z);
        u_xlat28.x = x_1671;
        let x_1674 : f32 = u_xlat8.w;
        let x_1676 : f32 = u_xlat28.x;
        let x_1678 : f32 = u_xlat72;
        u_xlat71 = ((x_1674 * x_1676) + x_1678);
      }
    }
  } else {
    let x_1682 : vec4<f32> = vs_INTERP8;
    let x_1683 : vec2<f32> = vec2<f32>(x_1682.x, x_1682.y);
    let x_1685 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1683.x, x_1683.y, x_1685);
    let x_1692 : vec3<f32> = txVec29;
    let x_1694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1692.xy, x_1692.z);
    u_xlat71 = x_1694;
  }
  let x_1696 : f32 = x_458.x_MainLightShadowParams.x;
  u_xlat28.x = (-(x_1696) + 1.0f);
  let x_1700 : f32 = u_xlat71;
  let x_1702 : f32 = x_458.x_MainLightShadowParams.x;
  let x_1705 : f32 = u_xlat28.x;
  u_xlat71 = ((x_1700 * x_1702) + x_1705);
  let x_1708 : f32 = vs_INTERP8.z;
  u_xlatb28 = (0.0f >= x_1708);
  let x_1712 : f32 = vs_INTERP8.z;
  u_xlatb50 = (x_1712 >= 1.0f);
  let x_1714 : bool = u_xlatb50;
  let x_1715 : bool = u_xlatb28;
  u_xlatb28 = (x_1714 | x_1715);
  let x_1717 : bool = u_xlatb28;
  let x_1718 : f32 = u_xlat71;
  u_xlat71 = select(x_1718, 1.0f, x_1717);
  let x_1720 : vec3<f32> = vs_INTERP0;
  let x_1722 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat28 = (x_1720 + -(x_1722));
  let x_1725 : vec3<f32> = u_xlat28;
  let x_1726 : vec3<f32> = u_xlat28;
  u_xlat28.x = dot(x_1725, x_1726);
  let x_1730 : f32 = u_xlat28.x;
  let x_1732 : f32 = x_458.x_MainLightShadowParams.z;
  let x_1735 : f32 = x_458.x_MainLightShadowParams.w;
  u_xlat28.x = ((x_1730 * x_1732) + x_1735);
  let x_1739 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_1739, 0.0f, 1.0f);
  let x_1742 : f32 = u_xlat71;
  u_xlat50 = (-(x_1742) + 1.0f);
  let x_1746 : f32 = u_xlat28.x;
  let x_1747 : f32 = u_xlat50;
  let x_1749 : f32 = u_xlat71;
  u_xlat71 = ((x_1746 * x_1747) + x_1749);
  let x_1751 : vec3<f32> = u_xlat6;
  let x_1754 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat28 = (vec3<f32>(x_1751.x, x_1751.x, x_1751.x) * vec3<f32>(x_1754.x, x_1754.y, x_1754.z));
  let x_1757 : vec3<f32> = u_xlat4;
  let x_1759 : vec4<f32> = u_xlat1;
  u_xlat73 = dot(-(x_1757), vec3<f32>(x_1759.x, x_1759.y, x_1759.w));
  let x_1762 : f32 = u_xlat73;
  let x_1763 : f32 = u_xlat73;
  u_xlat73 = (x_1762 + x_1763);
  let x_1765 : vec4<f32> = u_xlat1;
  let x_1767 : f32 = u_xlat73;
  let x_1771 : vec3<f32> = u_xlat4;
  let x_1773 : vec3<f32> = ((vec3<f32>(x_1765.x, x_1765.y, x_1765.w) * -(vec3<f32>(x_1767, x_1767, x_1767))) + -(x_1771));
  let x_1774 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
  let x_1776 : vec4<f32> = u_xlat1;
  let x_1778 : vec3<f32> = u_xlat4;
  u_xlat73 = dot(vec3<f32>(x_1776.x, x_1776.y, x_1776.w), x_1778);
  let x_1780 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1780, 0.0f, 1.0f);
  let x_1782 : f32 = u_xlat73;
  u_xlat73 = (-(x_1782) + 1.0f);
  let x_1785 : f32 = u_xlat73;
  let x_1786 : f32 = u_xlat73;
  u_xlat73 = (x_1785 * x_1786);
  let x_1788 : f32 = u_xlat73;
  let x_1789 : f32 = u_xlat73;
  u_xlat73 = (x_1788 * x_1789);
  let x_1792 : f32 = u_xlat68;
  u_xlat74 = ((-(x_1792) * 0.699999988f) + 1.700000048f);
  let x_1798 : f32 = u_xlat68;
  let x_1799 : f32 = u_xlat74;
  u_xlat2.w = (x_1798 * x_1799);
  let x_1802 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1802 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_1815 : vec4<f32> = u_xlat8;
  let x_1818 : f32 = u_xlat2.w;
  let x_1819 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1815.x, x_1815.y, x_1815.z), x_1818);
  u_xlat8 = x_1819;
  let x_1821 : f32 = u_xlat8.w;
  u_xlat68 = (x_1821 + -1.0f);
  let x_1824 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_1825 : f32 = u_xlat68;
  u_xlat68 = ((x_1824 * x_1825) + 1.0f);
  let x_1828 : f32 = u_xlat68;
  u_xlat68 = max(x_1828, 0.0f);
  let x_1830 : f32 = u_xlat68;
  u_xlat68 = log2(x_1830);
  let x_1832 : f32 = u_xlat68;
  let x_1834 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat68 = (x_1832 * x_1834);
  let x_1836 : f32 = u_xlat68;
  u_xlat68 = exp2(x_1836);
  let x_1838 : f32 = u_xlat68;
  let x_1840 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat68 = (x_1838 * x_1840);
  let x_1842 : vec4<f32> = u_xlat8;
  let x_1844 : f32 = u_xlat68;
  let x_1846 : vec3<f32> = (vec3<f32>(x_1842.x, x_1842.y, x_1842.z) * vec3<f32>(x_1844, x_1844, x_1844));
  let x_1847 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1846.x, x_1846.y, x_1846.z, x_1847.w);
  let x_1849 : vec3<f32> = u_xlat3;
  let x_1851 : vec3<f32> = u_xlat3;
  let x_1855 : vec2<f32> = ((vec2<f32>(x_1849.x, x_1849.x) * vec2<f32>(x_1851.x, x_1851.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1856 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1855.x, x_1855.y, x_1856.z, x_1856.w);
  let x_1859 : f32 = u_xlat9.y;
  u_xlat68 = (1.0f / x_1859);
  let x_1861 : vec3<f32> = u_xlat0;
  let x_1863 : f32 = u_xlat69;
  u_xlat31 = (-(x_1861) + vec3<f32>(x_1863, x_1863, x_1863));
  let x_1866 : f32 = u_xlat73;
  let x_1868 : vec3<f32> = u_xlat31;
  let x_1870 : vec3<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_1866, x_1866, x_1866) * x_1868) + x_1870);
  let x_1872 : f32 = u_xlat68;
  let x_1874 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1872, x_1872, x_1872) * x_1874);
  let x_1876 : vec4<f32> = u_xlat8;
  let x_1878 : vec3<f32> = u_xlat31;
  let x_1879 : vec3<f32> = (vec3<f32>(x_1876.x, x_1876.y, x_1876.z) * x_1878);
  let x_1880 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1879.x, x_1879.y, x_1879.z, x_1880.w);
  let x_1882 : vec3<f32> = u_xlat5;
  let x_1883 : vec3<f32> = u_xlat7;
  let x_1885 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_1882 * x_1883) + vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
  let x_1888 : f32 = u_xlat71;
  let x_1891 : f32 = x_120.unity_LightData.z;
  u_xlat68 = (x_1888 * x_1891);
  let x_1893 : vec4<f32> = u_xlat1;
  let x_1896 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1893.x, x_1893.y, x_1893.w), vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
  let x_1901 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1901, 0.0f, 1.0f);
  let x_1904 : f32 = u_xlat68;
  let x_1906 : f32 = u_xlat3.x;
  u_xlat68 = (x_1904 * x_1906);
  let x_1908 : f32 = u_xlat68;
  let x_1910 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1908, x_1908, x_1908) * x_1910);
  let x_1912 : vec3<f32> = u_xlat4;
  let x_1914 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1916 : vec3<f32> = (x_1912 + vec3<f32>(x_1914.x, x_1914.y, x_1914.z));
  let x_1917 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1916.x, x_1916.y, x_1916.z, x_1917.w);
  let x_1919 : vec4<f32> = u_xlat8;
  let x_1921 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_1919.x, x_1919.y, x_1919.z), vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
  let x_1924 : f32 = u_xlat68;
  u_xlat68 = max(x_1924, 1.17549435e-37f);
  let x_1927 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_1927);
  let x_1929 : f32 = u_xlat68;
  let x_1931 : vec4<f32> = u_xlat8;
  let x_1933 : vec3<f32> = (vec3<f32>(x_1929, x_1929, x_1929) * vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
  let x_1934 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
  let x_1936 : vec4<f32> = u_xlat1;
  let x_1938 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_1936.x, x_1936.y, x_1936.w), vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
  let x_1941 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1941, 0.0f, 1.0f);
  let x_1944 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1946 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1944.x, x_1944.y, x_1944.z), vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
  let x_1951 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1951, 0.0f, 1.0f);
  let x_1954 : f32 = u_xlat68;
  let x_1955 : f32 = u_xlat68;
  u_xlat68 = (x_1954 * x_1955);
  let x_1957 : f32 = u_xlat68;
  let x_1959 : f32 = u_xlat9.x;
  u_xlat68 = ((x_1957 * x_1959) + 1.000010014f);
  let x_1964 : f32 = u_xlat3.x;
  let x_1966 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1964 * x_1966);
  let x_1969 : f32 = u_xlat68;
  let x_1970 : f32 = u_xlat68;
  u_xlat68 = (x_1969 * x_1970);
  let x_1973 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1973, 0.100000001f);
  let x_1977 : f32 = u_xlat68;
  let x_1979 : f32 = u_xlat3.x;
  u_xlat68 = (x_1977 * x_1979);
  let x_1981 : f32 = u_xlat70;
  let x_1982 : f32 = u_xlat68;
  u_xlat68 = (x_1981 * x_1982);
  let x_1984 : f32 = u_xlat25;
  let x_1985 : f32 = u_xlat68;
  u_xlat68 = (x_1984 / x_1985);
  let x_1987 : vec3<f32> = u_xlat0;
  let x_1988 : f32 = u_xlat68;
  let x_1991 : vec3<f32> = u_xlat7;
  let x_1992 : vec3<f32> = ((x_1987 * vec3<f32>(x_1988, x_1988, x_1988)) + x_1991);
  let x_1993 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
  let x_1995 : vec3<f32> = u_xlat28;
  let x_1996 : vec4<f32> = u_xlat8;
  u_xlat28 = (x_1995 * vec3<f32>(x_1996.x, x_1996.y, x_1996.z));
  let x_2000 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2002 : f32 = x_120.unity_LightData.y;
  u_xlat68 = min(x_2000, x_2002);
  let x_2006 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_2006));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2018 : u32 = u_xlatu_loop_1;
    let x_2019 : u32 = u_xlatu68;
    if ((x_2018 < x_2019)) {
    } else {
      break;
    }
    let x_2022 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2022 >> 2u);
    let x_2026 : u32 = u_xlatu_loop_1;
    u_xlati71 = bitcast<i32>((x_2026 & 3u));
    let x_2029 : u32 = u_xlatu69;
    let x_2032 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_2029)];
    let x_2042 : i32 = u_xlati71;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2047 : vec4<u32> = indexable[x_2042];
    u_xlat69 = dot(x_2032, bitcast<vec4<f32>>(x_2047));
    let x_2051 : f32 = u_xlat69;
    u_xlati69 = i32(x_2051);
    let x_2053 : vec3<f32> = vs_INTERP0;
    let x_2065 : i32 = u_xlati69;
    let x_2067 : vec4<f32> = x_2064.x_AdditionalLightsPosition[x_2065];
    let x_2070 : i32 = u_xlati69;
    let x_2072 : vec4<f32> = x_2064.x_AdditionalLightsPosition[x_2070];
    u_xlat31 = ((-(x_2053) * vec3<f32>(x_2067.w, x_2067.w, x_2067.w)) + vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
    let x_2075 : vec3<f32> = u_xlat31;
    let x_2076 : vec3<f32> = u_xlat31;
    u_xlat71 = dot(x_2075, x_2076);
    let x_2078 : f32 = u_xlat71;
    u_xlat71 = max(x_2078, 6.10351562e-05f);
    let x_2081 : f32 = u_xlat71;
    u_xlat73 = inverseSqrt(x_2081);
    let x_2083 : f32 = u_xlat73;
    let x_2085 : vec3<f32> = u_xlat31;
    let x_2086 : vec3<f32> = (vec3<f32>(x_2083, x_2083, x_2083) * x_2085);
    let x_2087 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2086.x, x_2086.y, x_2086.z, x_2087.w);
    let x_2089 : f32 = u_xlat71;
    u_xlat74 = (1.0f / x_2089);
    let x_2091 : f32 = u_xlat71;
    let x_2092 : i32 = u_xlati69;
    let x_2094 : f32 = x_2064.x_AdditionalLightsAttenuation[x_2092].x;
    u_xlat71 = (x_2091 * x_2094);
    let x_2096 : f32 = u_xlat71;
    let x_2098 : f32 = u_xlat71;
    u_xlat71 = ((-(x_2096) * x_2098) + 1.0f);
    let x_2101 : f32 = u_xlat71;
    u_xlat71 = max(x_2101, 0.0f);
    let x_2103 : f32 = u_xlat71;
    let x_2104 : f32 = u_xlat71;
    u_xlat71 = (x_2103 * x_2104);
    let x_2106 : f32 = u_xlat71;
    let x_2107 : f32 = u_xlat74;
    u_xlat71 = (x_2106 * x_2107);
    let x_2109 : i32 = u_xlati69;
    let x_2111 : vec4<f32> = x_2064.x_AdditionalLightsSpotDir[x_2109];
    let x_2113 : vec4<f32> = u_xlat10;
    u_xlat74 = dot(vec3<f32>(x_2111.x, x_2111.y, x_2111.z), vec3<f32>(x_2113.x, x_2113.y, x_2113.z));
    let x_2116 : f32 = u_xlat74;
    let x_2117 : i32 = u_xlati69;
    let x_2119 : f32 = x_2064.x_AdditionalLightsAttenuation[x_2117].z;
    let x_2121 : i32 = u_xlati69;
    let x_2123 : f32 = x_2064.x_AdditionalLightsAttenuation[x_2121].w;
    u_xlat74 = ((x_2116 * x_2119) + x_2123);
    let x_2125 : f32 = u_xlat74;
    u_xlat74 = clamp(x_2125, 0.0f, 1.0f);
    let x_2127 : f32 = u_xlat74;
    let x_2128 : f32 = u_xlat74;
    u_xlat74 = (x_2127 * x_2128);
    let x_2130 : f32 = u_xlat71;
    let x_2131 : f32 = u_xlat74;
    u_xlat71 = (x_2130 * x_2131);
    let x_2133 : vec3<f32> = u_xlat6;
    let x_2135 : i32 = u_xlati69;
    let x_2137 : vec4<f32> = x_2064.x_AdditionalLightsColor[x_2135];
    let x_2139 : vec3<f32> = (vec3<f32>(x_2133.x, x_2133.x, x_2133.x) * vec3<f32>(x_2137.x, x_2137.y, x_2137.z));
    let x_2140 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2139.x, x_2139.y, x_2139.z, x_2140.w);
    let x_2142 : vec4<f32> = u_xlat1;
    let x_2144 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2142.x, x_2142.y, x_2142.w), vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
    let x_2147 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2147, 0.0f, 1.0f);
    let x_2149 : f32 = u_xlat69;
    let x_2150 : f32 = u_xlat71;
    u_xlat69 = (x_2149 * x_2150);
    let x_2152 : f32 = u_xlat69;
    let x_2154 : vec4<f32> = u_xlat11;
    let x_2156 : vec3<f32> = (vec3<f32>(x_2152, x_2152, x_2152) * vec3<f32>(x_2154.x, x_2154.y, x_2154.z));
    let x_2157 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2156.x, x_2156.y, x_2156.z, x_2157.w);
    let x_2159 : vec3<f32> = u_xlat31;
    let x_2160 : f32 = u_xlat73;
    let x_2163 : vec3<f32> = u_xlat4;
    u_xlat31 = ((x_2159 * vec3<f32>(x_2160, x_2160, x_2160)) + x_2163);
    let x_2165 : vec3<f32> = u_xlat31;
    let x_2166 : vec3<f32> = u_xlat31;
    u_xlat69 = dot(x_2165, x_2166);
    let x_2168 : f32 = u_xlat69;
    u_xlat69 = max(x_2168, 1.17549435e-37f);
    let x_2170 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_2170);
    let x_2172 : f32 = u_xlat69;
    let x_2174 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_2172, x_2172, x_2172) * x_2174);
    let x_2176 : vec4<f32> = u_xlat1;
    let x_2178 : vec3<f32> = u_xlat31;
    u_xlat69 = dot(vec3<f32>(x_2176.x, x_2176.y, x_2176.w), x_2178);
    let x_2180 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2180, 0.0f, 1.0f);
    let x_2182 : vec4<f32> = u_xlat10;
    let x_2184 : vec3<f32> = u_xlat31;
    u_xlat71 = dot(vec3<f32>(x_2182.x, x_2182.y, x_2182.z), x_2184);
    let x_2186 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2186, 0.0f, 1.0f);
    let x_2188 : f32 = u_xlat69;
    let x_2189 : f32 = u_xlat69;
    u_xlat69 = (x_2188 * x_2189);
    let x_2191 : f32 = u_xlat69;
    let x_2193 : f32 = u_xlat9.x;
    u_xlat69 = ((x_2191 * x_2193) + 1.000010014f);
    let x_2196 : f32 = u_xlat71;
    let x_2197 : f32 = u_xlat71;
    u_xlat71 = (x_2196 * x_2197);
    let x_2199 : f32 = u_xlat69;
    let x_2200 : f32 = u_xlat69;
    u_xlat69 = (x_2199 * x_2200);
    let x_2202 : f32 = u_xlat71;
    u_xlat71 = max(x_2202, 0.100000001f);
    let x_2204 : f32 = u_xlat69;
    let x_2205 : f32 = u_xlat71;
    u_xlat69 = (x_2204 * x_2205);
    let x_2207 : f32 = u_xlat70;
    let x_2208 : f32 = u_xlat69;
    u_xlat69 = (x_2207 * x_2208);
    let x_2210 : f32 = u_xlat25;
    let x_2211 : f32 = u_xlat69;
    u_xlat69 = (x_2210 / x_2211);
    let x_2213 : vec3<f32> = u_xlat0;
    let x_2214 : f32 = u_xlat69;
    let x_2217 : vec3<f32> = u_xlat7;
    u_xlat31 = ((x_2213 * vec3<f32>(x_2214, x_2214, x_2214)) + x_2217);
    let x_2219 : vec3<f32> = u_xlat31;
    let x_2220 : vec4<f32> = u_xlat11;
    let x_2223 : vec4<f32> = u_xlat8;
    let x_2225 : vec3<f32> = ((x_2219 * vec3<f32>(x_2220.x, x_2220.y, x_2220.z)) + vec3<f32>(x_2223.x, x_2223.y, x_2223.z));
    let x_2226 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);

    continuing {
      let x_2228 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2228 + bitcast<u32>(1i));
    }
  }
  let x_2230 : vec3<f32> = u_xlat5;
  let x_2231 : f32 = u_xlat47;
  let x_2234 : vec3<f32> = u_xlat28;
  u_xlat0 = ((x_2230 * vec3<f32>(x_2231, x_2231, x_2231)) + x_2234);
  let x_2236 : vec4<f32> = u_xlat8;
  let x_2238 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2236.x, x_2236.y, x_2236.z) + x_2238);
  let x_2240 : vec4<f32> = u_xlat2;
  let x_2242 : f32 = u_xlat45;
  let x_2245 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2240.x, x_2240.y, x_2240.z) * vec3<f32>(x_2242, x_2242, x_2242)) + x_2245);
  let x_2247 : f32 = u_xlat66;
  let x_2248 : f32 = u_xlat66;
  u_xlat66 = (x_2247 * -(x_2248));
  let x_2251 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2251);
  let x_2253 : vec3<f32> = u_xlat0;
  let x_2256 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_2253 + -(vec3<f32>(x_2256.x, x_2256.y, x_2256.z)));
  let x_2262 : f32 = u_xlat66;
  let x_2264 : vec3<f32> = u_xlat0;
  let x_2267 : vec4<f32> = x_45.unity_FogColor;
  let x_2269 : vec3<f32> = ((vec3<f32>(x_2262, x_2262, x_2262) * x_2264) + vec3<f32>(x_2267.x, x_2267.y, x_2267.z));
  let x_2270 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2269.x, x_2269.y, x_2269.z, x_2270.w);
  let x_2275 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_2277 : f32 = x_120.unity_RenderingLayer.x;
  u_xlatu0 = (x_2275 & bitcast<u32>(x_2277));
  let x_2280 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2280);
  let x_2285 : f32 = u_xlat0.x;
  let x_2287 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2285 * x_2287);
  let x_2292 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2292, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2297 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2297.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

