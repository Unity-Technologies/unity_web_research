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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(6) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(8) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(9) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(19) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_120 : UnityPerDraw;

@group(0) @binding(7) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_458 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1763 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2207 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2320 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatb28 : vec2<bool>;
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
  var x_1846 : f32;
  var x_1857 : vec3<f32>;
  var u_xlat74 : f32;
  var u_xlatu68 : u32;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu73 : u32;
  var u_xlati74 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat32 : vec3<f32>;
  var u_xlatu11 : u32;
  var u_xlati33 : i32;
  var u_xlati11 : i32;
  var u_xlati55 : i32;
  var u_xlat33 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlatb56 : vec2<bool>;
  var u_xlat56 : vec2<f32>;
  var x_2640 : f32;
  var x_2653 : f32;
  var u_xlat77 : f32;
  var x_2715 : f32;
  var x_2726 : vec3<f32>;
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
      let x_560 : f32 = x_458.x_MainLightShadowParams.y;
      u_xlatb28.x = (x_560 == 2.0f);
      let x_564 : bool = u_xlatb28.x;
      if (x_564) {
        let x_568 : vec4<f32> = vs_INTERP8;
        let x_571 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_576 : vec2<f32> = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(x_571.z, x_571.w)) + vec2<f32>(0.5f, 0.5f));
        let x_577 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_576.x, x_576.y, x_577.z);
        let x_579 : vec3<f32> = u_xlat28;
        let x_581 : vec2<f32> = floor(vec2<f32>(x_579.x, x_579.y));
        let x_582 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_581.x, x_581.y, x_582.z);
        let x_584 : vec4<f32> = vs_INTERP8;
        let x_587 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_590 : vec3<f32> = u_xlat28;
        let x_593 : vec2<f32> = ((vec2<f32>(x_584.x, x_584.y) * vec2<f32>(x_587.z, x_587.w)) + -(vec2<f32>(x_590.x, x_590.y)));
        let x_594 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
        let x_596 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_596.x, x_596.x, x_596.y, x_596.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_601 : vec4<f32> = u_xlat9;
        let x_603 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_601.x, x_601.x, x_601.z, x_601.z) * vec4<f32>(x_603.x, x_603.x, x_603.z, x_603.z));
        let x_608 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_608.y, x_608.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_613 : vec4<f32> = u_xlat10;
        let x_616 : vec4<f32> = u_xlat8;
        let x_619 : vec2<f32> = ((vec2<f32>(x_613.x, x_613.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_616.x, x_616.y)));
        let x_620 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_619.x, x_620.y, x_619.y, x_620.w);
        let x_622 : vec4<f32> = u_xlat8;
        let x_625 : vec2<f32> = (-(vec2<f32>(x_622.x, x_622.y)) + vec2<f32>(1.0f, 1.0f));
        let x_626 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
        let x_629 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_629.x, x_629.y), vec2<f32>(0.0f, 0.0f));
        let x_633 : vec2<f32> = u_xlat54;
        let x_635 : vec2<f32> = u_xlat54;
        let x_637 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_633) * x_635) + vec2<f32>(x_637.x, x_637.y));
        let x_640 : vec4<f32> = u_xlat8;
        let x_642 : vec2<f32> = max(vec2<f32>(x_640.x, x_640.y), vec2<f32>(0.0f, 0.0f));
        let x_643 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
        let x_645 : vec4<f32> = u_xlat8;
        let x_648 : vec4<f32> = u_xlat8;
        let x_651 : vec4<f32> = u_xlat9;
        let x_653 : vec2<f32> = ((-(vec2<f32>(x_645.x, x_645.y)) * vec2<f32>(x_648.x, x_648.y)) + vec2<f32>(x_651.y, x_651.w));
        let x_654 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_653.x, x_653.y, x_654.z, x_654.w);
        let x_656 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_656 + vec2<f32>(1.0f, 1.0f));
        let x_658 : vec4<f32> = u_xlat8;
        let x_660 : vec2<f32> = (vec2<f32>(x_658.x, x_658.y) + vec2<f32>(1.0f, 1.0f));
        let x_661 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_660.x, x_660.y, x_661.z, x_661.w);
        let x_664 : vec4<f32> = u_xlat9;
        let x_668 : vec2<f32> = (vec2<f32>(x_664.x, x_664.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_669 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_672 : vec4<f32> = u_xlat10;
        let x_674 : vec2<f32> = (vec2<f32>(x_672.x, x_672.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_675 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
        let x_677 : vec2<f32> = u_xlat54;
        let x_678 : vec2<f32> = (x_677 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_679 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_682 : vec4<f32> = u_xlat8;
        let x_684 : vec2<f32> = (vec2<f32>(x_682.x, x_682.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_685 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
        let x_687 : vec4<f32> = u_xlat9;
        let x_689 : vec2<f32> = (vec2<f32>(x_687.y, x_687.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_690 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
        let x_693 : f32 = u_xlat10.x;
        u_xlat11.z = x_693;
        let x_696 : f32 = u_xlat8.x;
        u_xlat11.w = x_696;
        let x_699 : f32 = u_xlat13.x;
        u_xlat12.z = x_699;
        let x_702 : f32 = u_xlat52.x;
        u_xlat12.w = x_702;
        let x_704 : vec4<f32> = u_xlat11;
        let x_706 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_704.z, x_704.w, x_704.x, x_704.z) + vec4<f32>(x_706.z, x_706.w, x_706.x, x_706.z));
        let x_710 : f32 = u_xlat11.y;
        u_xlat10.z = x_710;
        let x_713 : f32 = u_xlat8.y;
        u_xlat10.w = x_713;
        let x_716 : f32 = u_xlat12.y;
        u_xlat13.z = x_716;
        let x_719 : f32 = u_xlat52.y;
        u_xlat13.w = x_719;
        let x_721 : vec4<f32> = u_xlat10;
        let x_723 : vec4<f32> = u_xlat13;
        let x_725 : vec3<f32> = (vec3<f32>(x_721.z, x_721.y, x_721.w) + vec3<f32>(x_723.z, x_723.y, x_723.w));
        let x_726 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat12;
        let x_730 : vec4<f32> = u_xlat9;
        let x_732 : vec3<f32> = (vec3<f32>(x_728.x, x_728.z, x_728.w) / vec3<f32>(x_730.z, x_730.w, x_730.y));
        let x_733 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
        let x_735 : vec4<f32> = u_xlat10;
        let x_741 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_742 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
        let x_744 : vec4<f32> = u_xlat13;
        let x_746 : vec4<f32> = u_xlat8;
        let x_748 : vec3<f32> = (vec3<f32>(x_744.z, x_744.y, x_744.w) / vec3<f32>(x_746.x, x_746.y, x_746.z));
        let x_749 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
        let x_751 : vec4<f32> = u_xlat11;
        let x_753 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_754 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
        let x_756 : vec4<f32> = u_xlat10;
        let x_759 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_761 : vec3<f32> = (vec3<f32>(x_756.y, x_756.x, x_756.z) * vec3<f32>(x_759.x, x_759.x, x_759.x));
        let x_762 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
        let x_764 : vec4<f32> = u_xlat11;
        let x_767 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_769 : vec3<f32> = (vec3<f32>(x_764.x, x_764.y, x_764.z) * vec3<f32>(x_767.y, x_767.y, x_767.y));
        let x_770 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
        let x_773 : f32 = u_xlat11.x;
        u_xlat10.w = x_773;
        let x_775 : vec3<f32> = u_xlat28;
        let x_778 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_781 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_775.x, x_775.y, x_775.x, x_775.y) * vec4<f32>(x_778.x, x_778.y, x_778.x, x_778.y)) + vec4<f32>(x_781.y, x_781.w, x_781.x, x_781.w));
        let x_784 : vec3<f32> = u_xlat28;
        let x_787 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_790 : vec4<f32> = u_xlat10;
        let x_792 : vec2<f32> = ((vec2<f32>(x_784.x, x_784.y) * vec2<f32>(x_787.x, x_787.y)) + vec2<f32>(x_790.z, x_790.w));
        let x_793 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_792.x, x_792.y, x_793.z, x_793.w);
        let x_796 : f32 = u_xlat10.y;
        u_xlat11.w = x_796;
        let x_798 : vec4<f32> = u_xlat11;
        let x_799 : vec2<f32> = vec2<f32>(x_798.y, x_798.z);
        let x_800 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_800.x, x_799.x, x_800.z, x_799.y);
        let x_803 : vec3<f32> = u_xlat28;
        let x_806 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_809 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_803.x, x_803.y, x_803.x, x_803.y) * vec4<f32>(x_806.x, x_806.y, x_806.x, x_806.y)) + vec4<f32>(x_809.x, x_809.y, x_809.z, x_809.y));
        let x_812 : vec3<f32> = u_xlat28;
        let x_815 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_818 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_812.x, x_812.y, x_812.x, x_812.y) * vec4<f32>(x_815.x, x_815.y, x_815.x, x_815.y)) + vec4<f32>(x_818.w, x_818.y, x_818.w, x_818.z));
        let x_821 : vec3<f32> = u_xlat28;
        let x_824 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_827 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_821.x, x_821.y, x_821.x, x_821.y) * vec4<f32>(x_824.x, x_824.y, x_824.x, x_824.y)) + vec4<f32>(x_827.x, x_827.w, x_827.z, x_827.w));
        let x_831 : vec4<f32> = u_xlat8;
        let x_833 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_831.x, x_831.x, x_831.x, x_831.y) * vec4<f32>(x_833.z, x_833.w, x_833.y, x_833.z));
        let x_837 : vec4<f32> = u_xlat8;
        let x_839 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_837.y, x_837.y, x_837.z, x_837.z) * x_839);
        let x_842 : f32 = u_xlat8.z;
        let x_844 : f32 = u_xlat9.y;
        u_xlat28.x = (x_842 * x_844);
        let x_848 : vec4<f32> = u_xlat12;
        let x_849 : vec2<f32> = vec2<f32>(x_848.x, x_848.y);
        let x_851 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_849.x, x_849.y, x_851);
        let x_859 : vec3<f32> = txVec4;
        let x_861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_859.xy, x_859.z);
        u_xlat50 = x_861;
        let x_863 : vec4<f32> = u_xlat12;
        let x_864 : vec2<f32> = vec2<f32>(x_863.z, x_863.w);
        let x_866 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_864.x, x_864.y, x_866);
        let x_874 : vec3<f32> = txVec5;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_874.xy, x_874.z);
        u_xlat72 = x_876;
        let x_877 : f32 = u_xlat72;
        let x_879 : f32 = u_xlat15.y;
        u_xlat72 = (x_877 * x_879);
        let x_882 : f32 = u_xlat15.x;
        let x_883 : f32 = u_xlat50;
        let x_885 : f32 = u_xlat72;
        u_xlat50 = ((x_882 * x_883) + x_885);
        let x_888 : vec4<f32> = u_xlat13;
        let x_889 : vec2<f32> = vec2<f32>(x_888.x, x_888.y);
        let x_891 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec6;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_898.xy, x_898.z);
        u_xlat72 = x_900;
        let x_902 : f32 = u_xlat15.z;
        let x_903 : f32 = u_xlat72;
        let x_905 : f32 = u_xlat50;
        u_xlat50 = ((x_902 * x_903) + x_905);
        let x_908 : vec4<f32> = u_xlat11;
        let x_909 : vec2<f32> = vec2<f32>(x_908.x, x_908.y);
        let x_911 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_909.x, x_909.y, x_911);
        let x_918 : vec3<f32> = txVec7;
        let x_920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_918.xy, x_918.z);
        u_xlat72 = x_920;
        let x_922 : f32 = u_xlat15.w;
        let x_923 : f32 = u_xlat72;
        let x_925 : f32 = u_xlat50;
        u_xlat50 = ((x_922 * x_923) + x_925);
        let x_928 : vec4<f32> = u_xlat14;
        let x_929 : vec2<f32> = vec2<f32>(x_928.x, x_928.y);
        let x_931 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_929.x, x_929.y, x_931);
        let x_938 : vec3<f32> = txVec8;
        let x_940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_938.xy, x_938.z);
        u_xlat72 = x_940;
        let x_942 : f32 = u_xlat16.x;
        let x_943 : f32 = u_xlat72;
        let x_945 : f32 = u_xlat50;
        u_xlat50 = ((x_942 * x_943) + x_945);
        let x_948 : vec4<f32> = u_xlat14;
        let x_949 : vec2<f32> = vec2<f32>(x_948.z, x_948.w);
        let x_951 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_949.x, x_949.y, x_951);
        let x_958 : vec3<f32> = txVec9;
        let x_960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_958.xy, x_958.z);
        u_xlat72 = x_960;
        let x_962 : f32 = u_xlat16.y;
        let x_963 : f32 = u_xlat72;
        let x_965 : f32 = u_xlat50;
        u_xlat50 = ((x_962 * x_963) + x_965);
        let x_968 : vec4<f32> = u_xlat11;
        let x_969 : vec2<f32> = vec2<f32>(x_968.z, x_968.w);
        let x_971 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_978 : vec3<f32> = txVec10;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_978.xy, x_978.z);
        u_xlat72 = x_980;
        let x_982 : f32 = u_xlat16.z;
        let x_983 : f32 = u_xlat72;
        let x_985 : f32 = u_xlat50;
        u_xlat50 = ((x_982 * x_983) + x_985);
        let x_988 : vec4<f32> = u_xlat10;
        let x_989 : vec2<f32> = vec2<f32>(x_988.x, x_988.y);
        let x_991 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_989.x, x_989.y, x_991);
        let x_998 : vec3<f32> = txVec11;
        let x_1000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_998.xy, x_998.z);
        u_xlat72 = x_1000;
        let x_1002 : f32 = u_xlat16.w;
        let x_1003 : f32 = u_xlat72;
        let x_1005 : f32 = u_xlat50;
        u_xlat50 = ((x_1002 * x_1003) + x_1005);
        let x_1008 : vec4<f32> = u_xlat10;
        let x_1009 : vec2<f32> = vec2<f32>(x_1008.z, x_1008.w);
        let x_1011 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1009.x, x_1009.y, x_1011);
        let x_1018 : vec3<f32> = txVec12;
        let x_1020 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1018.xy, x_1018.z);
        u_xlat72 = x_1020;
        let x_1022 : f32 = u_xlat28.x;
        let x_1023 : f32 = u_xlat72;
        let x_1025 : f32 = u_xlat50;
        u_xlat71 = ((x_1022 * x_1023) + x_1025);
      } else {
        let x_1028 : vec4<f32> = vs_INTERP8;
        let x_1031 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1034 : vec2<f32> = ((vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(x_1031.z, x_1031.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1035 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1034.x, x_1034.y, x_1035.z);
        let x_1037 : vec3<f32> = u_xlat28;
        let x_1039 : vec2<f32> = floor(vec2<f32>(x_1037.x, x_1037.y));
        let x_1040 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1039.x, x_1039.y, x_1040.z);
        let x_1042 : vec4<f32> = vs_INTERP8;
        let x_1045 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1048 : vec3<f32> = u_xlat28;
        let x_1051 : vec2<f32> = ((vec2<f32>(x_1042.x, x_1042.y) * vec2<f32>(x_1045.z, x_1045.w)) + -(vec2<f32>(x_1048.x, x_1048.y)));
        let x_1052 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
        let x_1054 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1054.x, x_1054.x, x_1054.y, x_1054.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1057 : vec4<f32> = u_xlat9;
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1057.x, x_1057.x, x_1057.z, x_1057.z) * vec4<f32>(x_1059.x, x_1059.x, x_1059.z, x_1059.z));
        let x_1062 : vec4<f32> = u_xlat10;
        let x_1066 : vec2<f32> = (vec2<f32>(x_1062.y, x_1062.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1067 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1067.x, x_1066.x, x_1067.z, x_1066.y);
        let x_1069 : vec4<f32> = u_xlat10;
        let x_1072 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1069.x, x_1069.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1072.x, x_1072.y)));
        let x_1076 : vec4<f32> = u_xlat8;
        let x_1079 : vec2<f32> = (-(vec2<f32>(x_1076.x, x_1076.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1080 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1079.x, x_1080.y, x_1079.y, x_1080.w);
        let x_1082 : vec4<f32> = u_xlat8;
        let x_1084 : vec2<f32> = min(vec2<f32>(x_1082.x, x_1082.y), vec2<f32>(0.0f, 0.0f));
        let x_1085 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
        let x_1087 : vec4<f32> = u_xlat10;
        let x_1090 : vec4<f32> = u_xlat10;
        let x_1093 : vec4<f32> = u_xlat9;
        let x_1095 : vec2<f32> = ((-(vec2<f32>(x_1087.x, x_1087.y)) * vec2<f32>(x_1090.x, x_1090.y)) + vec2<f32>(x_1093.x, x_1093.z));
        let x_1096 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1095.x, x_1096.y, x_1095.y, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat8;
        let x_1100 : vec2<f32> = max(vec2<f32>(x_1098.x, x_1098.y), vec2<f32>(0.0f, 0.0f));
        let x_1101 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        let x_1103 : vec4<f32> = u_xlat10;
        let x_1106 : vec4<f32> = u_xlat10;
        let x_1109 : vec4<f32> = u_xlat9;
        let x_1111 : vec2<f32> = ((-(vec2<f32>(x_1103.x, x_1103.y)) * vec2<f32>(x_1106.x, x_1106.y)) + vec2<f32>(x_1109.y, x_1109.w));
        let x_1112 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1112.x, x_1111.x, x_1112.z, x_1111.y);
        let x_1114 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1114 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1118 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1118 * 0.081632003f);
        let x_1122 : vec2<f32> = u_xlat52;
        let x_1125 : vec2<f32> = (vec2<f32>(x_1122.y, x_1122.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1126 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1126.w);
        let x_1128 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1128.x, x_1128.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1132 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1132 * 0.081632003f);
        let x_1136 : f32 = u_xlat12.y;
        u_xlat10.x = x_1136;
        let x_1138 : vec4<f32> = u_xlat8;
        let x_1145 : vec2<f32> = ((vec2<f32>(x_1138.x, x_1138.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1146 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1146.x, x_1145.x, x_1146.z, x_1145.y);
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1153 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1152.x, x_1153.y, x_1152.y, x_1153.w);
        let x_1156 : f32 = u_xlat52.x;
        u_xlat9.y = x_1156;
        let x_1159 : f32 = u_xlat11.y;
        u_xlat9.w = x_1159;
        let x_1161 : vec4<f32> = u_xlat9;
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1161 + x_1162);
        let x_1164 : vec4<f32> = u_xlat8;
        let x_1167 : vec2<f32> = ((vec2<f32>(x_1164.y, x_1164.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1168 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1168.x, x_1167.x, x_1168.z, x_1167.y);
        let x_1170 : vec4<f32> = u_xlat8;
        let x_1173 : vec2<f32> = ((vec2<f32>(x_1170.y, x_1170.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1174 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1173.x, x_1174.y, x_1173.y, x_1174.w);
        let x_1177 : f32 = u_xlat52.y;
        u_xlat11.y = x_1177;
        let x_1179 : vec4<f32> = u_xlat11;
        let x_1180 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1179 + x_1180);
        let x_1182 : vec4<f32> = u_xlat9;
        let x_1183 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1182 / x_1183);
        let x_1185 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1185 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1191 : vec4<f32> = u_xlat11;
        let x_1192 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1191 / x_1192);
        let x_1194 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1194 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1196 : vec4<f32> = u_xlat9;
        let x_1199 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1196.w, x_1196.x, x_1196.y, x_1196.z) * vec4<f32>(x_1199.x, x_1199.x, x_1199.x, x_1199.x));
        let x_1202 : vec4<f32> = u_xlat11;
        let x_1205 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1202.x, x_1202.w, x_1202.y, x_1202.z) * vec4<f32>(x_1205.y, x_1205.y, x_1205.y, x_1205.y));
        let x_1208 : vec4<f32> = u_xlat9;
        let x_1209 : vec3<f32> = vec3<f32>(x_1208.y, x_1208.z, x_1208.w);
        let x_1210 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1209.x, x_1210.y, x_1209.y, x_1209.z);
        let x_1213 : f32 = u_xlat11.x;
        u_xlat12.y = x_1213;
        let x_1215 : vec3<f32> = u_xlat28;
        let x_1218 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.y) * vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y)) + vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1221.y));
        let x_1224 : vec3<f32> = u_xlat28;
        let x_1227 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat12;
        let x_1232 : vec2<f32> = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1227.x, x_1227.y)) + vec2<f32>(x_1230.w, x_1230.y));
        let x_1233 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1232.x, x_1232.y, x_1233.z, x_1233.w);
        let x_1236 : f32 = u_xlat12.y;
        u_xlat9.y = x_1236;
        let x_1239 : f32 = u_xlat11.z;
        u_xlat12.y = x_1239;
        let x_1241 : vec3<f32> = u_xlat28;
        let x_1244 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y) * vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y)) + vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1247.y));
        let x_1251 : vec3<f32> = u_xlat28;
        let x_1254 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1257 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1251.x, x_1251.y) * vec2<f32>(x_1254.x, x_1254.y)) + vec2<f32>(x_1257.w, x_1257.y));
        let x_1261 : f32 = u_xlat12.y;
        u_xlat9.z = x_1261;
        let x_1263 : vec3<f32> = u_xlat28;
        let x_1266 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1263.x, x_1263.y, x_1263.x, x_1263.y) * vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y)) + vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.z));
        let x_1273 : f32 = u_xlat11.w;
        u_xlat12.y = x_1273;
        let x_1276 : vec3<f32> = u_xlat28;
        let x_1279 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1276.x, x_1276.y, x_1276.x, x_1276.y) * vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y)) + vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1282.y));
        let x_1286 : vec3<f32> = u_xlat28;
        let x_1289 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1292 : vec4<f32> = u_xlat12;
        let x_1294 : vec2<f32> = ((vec2<f32>(x_1286.x, x_1286.y) * vec2<f32>(x_1289.x, x_1289.y)) + vec2<f32>(x_1292.w, x_1292.y));
        let x_1295 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1294.x, x_1294.y, x_1295.z);
        let x_1298 : f32 = u_xlat12.y;
        u_xlat9.w = x_1298;
        let x_1301 : vec3<f32> = u_xlat28;
        let x_1304 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.x, x_1304.y)) + vec2<f32>(x_1307.x, x_1307.w));
        let x_1310 : vec4<f32> = u_xlat12;
        let x_1311 : vec3<f32> = vec3<f32>(x_1310.x, x_1310.z, x_1310.w);
        let x_1312 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1311.x, x_1312.y, x_1311.y, x_1311.z);
        let x_1314 : vec3<f32> = u_xlat28;
        let x_1317 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y) * vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y)) + vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1320.y));
        let x_1324 : vec3<f32> = u_xlat28;
        let x_1327 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1324.x, x_1324.y) * vec2<f32>(x_1327.x, x_1327.y)) + vec2<f32>(x_1330.w, x_1330.y));
        let x_1334 : f32 = u_xlat9.x;
        u_xlat11.x = x_1334;
        let x_1336 : vec3<f32> = u_xlat28;
        let x_1339 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1342 : vec4<f32> = u_xlat11;
        let x_1344 : vec2<f32> = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1339.x, x_1339.y)) + vec2<f32>(x_1342.x, x_1342.y));
        let x_1345 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1344.x, x_1344.y, x_1345.z);
        let x_1348 : vec4<f32> = u_xlat8;
        let x_1350 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1348.x, x_1348.x, x_1348.x, x_1348.x) * x_1350);
        let x_1353 : vec4<f32> = u_xlat8;
        let x_1355 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1353.y, x_1353.y, x_1353.y, x_1353.y) * x_1355);
        let x_1358 : vec4<f32> = u_xlat8;
        let x_1360 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1358.z, x_1358.z, x_1358.z, x_1358.z) * x_1360);
        let x_1362 : vec4<f32> = u_xlat8;
        let x_1364 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1362.w, x_1362.w, x_1362.w, x_1362.w) * x_1364);
        let x_1367 : vec4<f32> = u_xlat13;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
        let x_1370 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec13;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1377.xy, x_1377.z);
        u_xlat72 = x_1379;
        let x_1381 : vec4<f32> = u_xlat13;
        let x_1382 : vec2<f32> = vec2<f32>(x_1381.z, x_1381.w);
        let x_1384 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1392 : vec3<f32> = txVec14;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1392.xy, x_1392.z);
        u_xlat73 = x_1394;
        let x_1395 : f32 = u_xlat73;
        let x_1397 : f32 = u_xlat19.y;
        u_xlat73 = (x_1395 * x_1397);
        let x_1400 : f32 = u_xlat19.x;
        let x_1401 : f32 = u_xlat72;
        let x_1403 : f32 = u_xlat73;
        u_xlat72 = ((x_1400 * x_1401) + x_1403);
        let x_1406 : vec4<f32> = u_xlat14;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.x, x_1406.y);
        let x_1409 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec15;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1416.xy, x_1416.z);
        u_xlat73 = x_1418;
        let x_1420 : f32 = u_xlat19.z;
        let x_1421 : f32 = u_xlat73;
        let x_1423 : f32 = u_xlat72;
        u_xlat72 = ((x_1420 * x_1421) + x_1423);
        let x_1426 : vec4<f32> = u_xlat16;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec16;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1436.xy, x_1436.z);
        u_xlat73 = x_1438;
        let x_1440 : f32 = u_xlat19.w;
        let x_1441 : f32 = u_xlat73;
        let x_1443 : f32 = u_xlat72;
        u_xlat72 = ((x_1440 * x_1441) + x_1443);
        let x_1446 : vec4<f32> = u_xlat15;
        let x_1447 : vec2<f32> = vec2<f32>(x_1446.x, x_1446.y);
        let x_1449 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec17;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1456.xy, x_1456.z);
        u_xlat73 = x_1458;
        let x_1460 : f32 = u_xlat20.x;
        let x_1461 : f32 = u_xlat73;
        let x_1463 : f32 = u_xlat72;
        u_xlat72 = ((x_1460 * x_1461) + x_1463);
        let x_1466 : vec4<f32> = u_xlat15;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.z, x_1466.w);
        let x_1469 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec18;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1476.xy, x_1476.z);
        u_xlat73 = x_1478;
        let x_1480 : f32 = u_xlat20.y;
        let x_1481 : f32 = u_xlat73;
        let x_1483 : f32 = u_xlat72;
        u_xlat72 = ((x_1480 * x_1481) + x_1483);
        let x_1486 : vec2<f32> = u_xlat58;
        let x_1488 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec19;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1495.xy, x_1495.z);
        u_xlat73 = x_1497;
        let x_1499 : f32 = u_xlat20.z;
        let x_1500 : f32 = u_xlat73;
        let x_1502 : f32 = u_xlat72;
        u_xlat72 = ((x_1499 * x_1500) + x_1502);
        let x_1505 : vec4<f32> = u_xlat16;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.z, x_1505.w);
        let x_1508 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec20;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1515.xy, x_1515.z);
        u_xlat73 = x_1517;
        let x_1519 : f32 = u_xlat20.w;
        let x_1520 : f32 = u_xlat73;
        let x_1522 : f32 = u_xlat72;
        u_xlat72 = ((x_1519 * x_1520) + x_1522);
        let x_1525 : vec4<f32> = u_xlat17;
        let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
        let x_1528 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec21;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1535.xy, x_1535.z);
        u_xlat73 = x_1537;
        let x_1539 : f32 = u_xlat21.x;
        let x_1540 : f32 = u_xlat73;
        let x_1542 : f32 = u_xlat72;
        u_xlat72 = ((x_1539 * x_1540) + x_1542);
        let x_1545 : vec4<f32> = u_xlat17;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.z, x_1545.w);
        let x_1548 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec22;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1555.xy, x_1555.z);
        u_xlat73 = x_1557;
        let x_1559 : f32 = u_xlat21.y;
        let x_1560 : f32 = u_xlat73;
        let x_1562 : f32 = u_xlat72;
        u_xlat72 = ((x_1559 * x_1560) + x_1562);
        let x_1565 : vec3<f32> = u_xlat31;
        let x_1566 : vec2<f32> = vec2<f32>(x_1565.x, x_1565.y);
        let x_1568 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1566.x, x_1566.y, x_1568);
        let x_1575 : vec3<f32> = txVec23;
        let x_1577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1575.xy, x_1575.z);
        u_xlat73 = x_1577;
        let x_1579 : f32 = u_xlat21.z;
        let x_1580 : f32 = u_xlat73;
        let x_1582 : f32 = u_xlat72;
        u_xlat72 = ((x_1579 * x_1580) + x_1582);
        let x_1585 : vec2<f32> = u_xlat18;
        let x_1587 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec24;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1594.xy, x_1594.z);
        u_xlat73 = x_1596;
        let x_1598 : f32 = u_xlat21.w;
        let x_1599 : f32 = u_xlat73;
        let x_1601 : f32 = u_xlat72;
        u_xlat72 = ((x_1598 * x_1599) + x_1601);
        let x_1604 : vec4<f32> = u_xlat12;
        let x_1605 : vec2<f32> = vec2<f32>(x_1604.x, x_1604.y);
        let x_1607 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1605.x, x_1605.y, x_1607);
        let x_1614 : vec3<f32> = txVec25;
        let x_1616 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1614.xy, x_1614.z);
        u_xlat73 = x_1616;
        let x_1618 : f32 = u_xlat8.x;
        let x_1619 : f32 = u_xlat73;
        let x_1621 : f32 = u_xlat72;
        u_xlat72 = ((x_1618 * x_1619) + x_1621);
        let x_1624 : vec4<f32> = u_xlat12;
        let x_1625 : vec2<f32> = vec2<f32>(x_1624.z, x_1624.w);
        let x_1627 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1625.x, x_1625.y, x_1627);
        let x_1634 : vec3<f32> = txVec26;
        let x_1636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1634.xy, x_1634.z);
        u_xlat73 = x_1636;
        let x_1638 : f32 = u_xlat8.y;
        let x_1639 : f32 = u_xlat73;
        let x_1641 : f32 = u_xlat72;
        u_xlat72 = ((x_1638 * x_1639) + x_1641);
        let x_1644 : vec2<f32> = u_xlat55;
        let x_1646 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1644.x, x_1644.y, x_1646);
        let x_1653 : vec3<f32> = txVec27;
        let x_1655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1653.xy, x_1653.z);
        u_xlat73 = x_1655;
        let x_1657 : f32 = u_xlat8.z;
        let x_1658 : f32 = u_xlat73;
        let x_1660 : f32 = u_xlat72;
        u_xlat72 = ((x_1657 * x_1658) + x_1660);
        let x_1663 : vec3<f32> = u_xlat28;
        let x_1664 : vec2<f32> = vec2<f32>(x_1663.x, x_1663.y);
        let x_1666 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1664.x, x_1664.y, x_1666);
        let x_1673 : vec3<f32> = txVec28;
        let x_1675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1673.xy, x_1673.z);
        u_xlat28.x = x_1675;
        let x_1678 : f32 = u_xlat8.w;
        let x_1680 : f32 = u_xlat28.x;
        let x_1682 : f32 = u_xlat72;
        u_xlat71 = ((x_1678 * x_1680) + x_1682);
      }
    }
  } else {
    let x_1686 : vec4<f32> = vs_INTERP8;
    let x_1687 : vec2<f32> = vec2<f32>(x_1686.x, x_1686.y);
    let x_1689 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1687.x, x_1687.y, x_1689);
    let x_1696 : vec3<f32> = txVec29;
    let x_1698 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1696.xy, x_1696.z);
    u_xlat71 = x_1698;
  }
  let x_1700 : f32 = x_458.x_MainLightShadowParams.x;
  u_xlat28.x = (-(x_1700) + 1.0f);
  let x_1704 : f32 = u_xlat71;
  let x_1706 : f32 = x_458.x_MainLightShadowParams.x;
  let x_1709 : f32 = u_xlat28.x;
  u_xlat71 = ((x_1704 * x_1706) + x_1709);
  let x_1712 : f32 = vs_INTERP8.z;
  u_xlatb28.x = (0.0f >= x_1712);
  let x_1717 : f32 = vs_INTERP8.z;
  u_xlatb50 = (x_1717 >= 1.0f);
  let x_1719 : bool = u_xlatb50;
  let x_1721 : bool = u_xlatb28.x;
  u_xlatb28.x = (x_1719 | x_1721);
  let x_1725 : bool = u_xlatb28.x;
  let x_1726 : f32 = u_xlat71;
  u_xlat71 = select(x_1726, 1.0f, x_1725);
  let x_1728 : vec3<f32> = vs_INTERP0;
  let x_1730 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat28 = (x_1728 + -(x_1730));
  let x_1733 : vec3<f32> = u_xlat28;
  let x_1734 : vec3<f32> = u_xlat28;
  u_xlat28.x = dot(x_1733, x_1734);
  let x_1738 : f32 = u_xlat28.x;
  let x_1740 : f32 = x_458.x_MainLightShadowParams.z;
  let x_1743 : f32 = x_458.x_MainLightShadowParams.w;
  u_xlat28.x = ((x_1738 * x_1740) + x_1743);
  let x_1747 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_1747, 0.0f, 1.0f);
  let x_1750 : f32 = u_xlat71;
  u_xlat50 = (-(x_1750) + 1.0f);
  let x_1754 : f32 = u_xlat28.x;
  let x_1755 : f32 = u_xlat50;
  let x_1757 : f32 = u_xlat71;
  u_xlat71 = ((x_1754 * x_1755) + x_1757);
  let x_1765 : f32 = x_1763.x_MainLightCookieTextureFormat;
  u_xlatb28.x = !((x_1765 == -1.0f));
  let x_1769 : bool = u_xlatb28.x;
  if (x_1769) {
    let x_1772 : vec3<f32> = vs_INTERP0;
    let x_1775 : vec4<f32> = x_1763.x_MainLightWorldToLight[1i];
    let x_1777 : vec2<f32> = (vec2<f32>(x_1772.y, x_1772.y) * vec2<f32>(x_1775.x, x_1775.y));
    let x_1778 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1777.x, x_1777.y, x_1778.z);
    let x_1781 : vec4<f32> = x_1763.x_MainLightWorldToLight[0i];
    let x_1783 : vec3<f32> = vs_INTERP0;
    let x_1786 : vec3<f32> = u_xlat28;
    let x_1788 : vec2<f32> = ((vec2<f32>(x_1781.x, x_1781.y) * vec2<f32>(x_1783.x, x_1783.x)) + vec2<f32>(x_1786.x, x_1786.y));
    let x_1789 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1788.x, x_1788.y, x_1789.z);
    let x_1792 : vec4<f32> = x_1763.x_MainLightWorldToLight[2i];
    let x_1794 : vec3<f32> = vs_INTERP0;
    let x_1797 : vec3<f32> = u_xlat28;
    let x_1799 : vec2<f32> = ((vec2<f32>(x_1792.x, x_1792.y) * vec2<f32>(x_1794.z, x_1794.z)) + vec2<f32>(x_1797.x, x_1797.y));
    let x_1800 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1799.x, x_1799.y, x_1800.z);
    let x_1802 : vec3<f32> = u_xlat28;
    let x_1805 : vec4<f32> = x_1763.x_MainLightWorldToLight[3i];
    let x_1807 : vec2<f32> = (vec2<f32>(x_1802.x, x_1802.y) + vec2<f32>(x_1805.x, x_1805.y));
    let x_1808 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1807.x, x_1807.y, x_1808.z);
    let x_1810 : vec3<f32> = u_xlat28;
    let x_1813 : vec2<f32> = ((vec2<f32>(x_1810.x, x_1810.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1814 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1813.x, x_1813.y, x_1814.z);
    let x_1821 : vec3<f32> = u_xlat28;
    let x_1824 : f32 = x_45.x_GlobalMipBias.x;
    let x_1825 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1821.x, x_1821.y), x_1824);
    u_xlat8 = x_1825;
    let x_1827 : f32 = x_1763.x_MainLightCookieTextureFormat;
    let x_1829 : f32 = x_1763.x_MainLightCookieTextureFormat;
    let x_1831 : f32 = x_1763.x_MainLightCookieTextureFormat;
    let x_1833 : f32 = x_1763.x_MainLightCookieTextureFormat;
    let x_1834 : vec4<f32> = vec4<f32>(x_1827, x_1829, x_1831, x_1833);
    let x_1842 : vec4<bool> = (vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1834.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb28 = vec2<bool>(x_1842.x, x_1842.y);
    let x_1845 : bool = u_xlatb28.y;
    if (x_1845) {
      let x_1850 : f32 = u_xlat8.w;
      x_1846 = x_1850;
    } else {
      let x_1853 : f32 = u_xlat8.x;
      x_1846 = x_1853;
    }
    let x_1854 : f32 = x_1846;
    u_xlat50 = x_1854;
    let x_1856 : bool = u_xlatb28.x;
    if (x_1856) {
      let x_1860 : vec4<f32> = u_xlat8;
      x_1857 = vec3<f32>(x_1860.x, x_1860.y, x_1860.z);
    } else {
      let x_1863 : f32 = u_xlat50;
      x_1857 = vec3<f32>(x_1863, x_1863, x_1863);
    }
    let x_1865 : vec3<f32> = x_1857;
    u_xlat28 = x_1865;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_1870 : vec3<f32> = u_xlat28;
  let x_1872 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat28 = (x_1870 * vec3<f32>(x_1872.x, x_1872.y, x_1872.z));
  let x_1875 : vec3<f32> = u_xlat6;
  let x_1877 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1875.x, x_1875.x, x_1875.x) * x_1877);
  let x_1879 : vec3<f32> = u_xlat4;
  let x_1881 : vec4<f32> = u_xlat1;
  u_xlat73 = dot(-(x_1879), vec3<f32>(x_1881.x, x_1881.y, x_1881.w));
  let x_1884 : f32 = u_xlat73;
  let x_1885 : f32 = u_xlat73;
  u_xlat73 = (x_1884 + x_1885);
  let x_1887 : vec4<f32> = u_xlat1;
  let x_1889 : f32 = u_xlat73;
  let x_1893 : vec3<f32> = u_xlat4;
  let x_1895 : vec3<f32> = ((vec3<f32>(x_1887.x, x_1887.y, x_1887.w) * -(vec3<f32>(x_1889, x_1889, x_1889))) + -(x_1893));
  let x_1896 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
  let x_1898 : vec4<f32> = u_xlat1;
  let x_1900 : vec3<f32> = u_xlat4;
  u_xlat73 = dot(vec3<f32>(x_1898.x, x_1898.y, x_1898.w), x_1900);
  let x_1902 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1902, 0.0f, 1.0f);
  let x_1904 : f32 = u_xlat73;
  u_xlat73 = (-(x_1904) + 1.0f);
  let x_1907 : f32 = u_xlat73;
  let x_1908 : f32 = u_xlat73;
  u_xlat73 = (x_1907 * x_1908);
  let x_1910 : f32 = u_xlat73;
  let x_1911 : f32 = u_xlat73;
  u_xlat73 = (x_1910 * x_1911);
  let x_1914 : f32 = u_xlat68;
  u_xlat74 = ((-(x_1914) * 0.699999988f) + 1.700000048f);
  let x_1920 : f32 = u_xlat68;
  let x_1921 : f32 = u_xlat74;
  u_xlat2.w = (x_1920 * x_1921);
  let x_1924 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1924 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_1937 : vec4<f32> = u_xlat8;
  let x_1940 : f32 = u_xlat2.w;
  let x_1941 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1937.x, x_1937.y, x_1937.z), x_1940);
  u_xlat8 = x_1941;
  let x_1943 : f32 = u_xlat8.w;
  u_xlat68 = (x_1943 + -1.0f);
  let x_1946 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_1947 : f32 = u_xlat68;
  u_xlat68 = ((x_1946 * x_1947) + 1.0f);
  let x_1950 : f32 = u_xlat68;
  u_xlat68 = max(x_1950, 0.0f);
  let x_1952 : f32 = u_xlat68;
  u_xlat68 = log2(x_1952);
  let x_1954 : f32 = u_xlat68;
  let x_1956 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat68 = (x_1954 * x_1956);
  let x_1958 : f32 = u_xlat68;
  u_xlat68 = exp2(x_1958);
  let x_1960 : f32 = u_xlat68;
  let x_1962 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat68 = (x_1960 * x_1962);
  let x_1964 : vec4<f32> = u_xlat8;
  let x_1966 : f32 = u_xlat68;
  let x_1968 : vec3<f32> = (vec3<f32>(x_1964.x, x_1964.y, x_1964.z) * vec3<f32>(x_1966, x_1966, x_1966));
  let x_1969 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1968.x, x_1968.y, x_1968.z, x_1969.w);
  let x_1971 : vec3<f32> = u_xlat3;
  let x_1973 : vec3<f32> = u_xlat3;
  let x_1977 : vec2<f32> = ((vec2<f32>(x_1971.x, x_1971.x) * vec2<f32>(x_1973.x, x_1973.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1978 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1977.x, x_1977.y, x_1978.z, x_1978.w);
  let x_1981 : f32 = u_xlat9.y;
  u_xlat68 = (1.0f / x_1981);
  let x_1983 : vec3<f32> = u_xlat0;
  let x_1985 : f32 = u_xlat69;
  u_xlat31 = (-(x_1983) + vec3<f32>(x_1985, x_1985, x_1985));
  let x_1988 : f32 = u_xlat73;
  let x_1990 : vec3<f32> = u_xlat31;
  let x_1992 : vec3<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_1988, x_1988, x_1988) * x_1990) + x_1992);
  let x_1994 : f32 = u_xlat68;
  let x_1996 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1994, x_1994, x_1994) * x_1996);
  let x_1998 : vec4<f32> = u_xlat8;
  let x_2000 : vec3<f32> = u_xlat31;
  let x_2001 : vec3<f32> = (vec3<f32>(x_1998.x, x_1998.y, x_1998.z) * x_2000);
  let x_2002 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2001.x, x_2001.y, x_2001.z, x_2002.w);
  let x_2004 : vec3<f32> = u_xlat5;
  let x_2005 : vec3<f32> = u_xlat7;
  let x_2007 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_2004 * x_2005) + vec3<f32>(x_2007.x, x_2007.y, x_2007.z));
  let x_2010 : f32 = u_xlat71;
  let x_2013 : f32 = x_120.unity_LightData.z;
  u_xlat68 = (x_2010 * x_2013);
  let x_2015 : vec4<f32> = u_xlat1;
  let x_2018 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2015.x, x_2015.y, x_2015.w), vec3<f32>(x_2018.x, x_2018.y, x_2018.z));
  let x_2023 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2023, 0.0f, 1.0f);
  let x_2026 : f32 = u_xlat68;
  let x_2028 : f32 = u_xlat3.x;
  u_xlat68 = (x_2026 * x_2028);
  let x_2030 : f32 = u_xlat68;
  let x_2032 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2030, x_2030, x_2030) * x_2032);
  let x_2034 : vec3<f32> = u_xlat4;
  let x_2036 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2038 : vec3<f32> = (x_2034 + vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
  let x_2039 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2038.x, x_2038.y, x_2038.z, x_2039.w);
  let x_2041 : vec4<f32> = u_xlat8;
  let x_2043 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2041.x, x_2041.y, x_2041.z), vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
  let x_2046 : f32 = u_xlat68;
  u_xlat68 = max(x_2046, 1.17549435e-37f);
  let x_2049 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_2049);
  let x_2051 : f32 = u_xlat68;
  let x_2053 : vec4<f32> = u_xlat8;
  let x_2055 : vec3<f32> = (vec3<f32>(x_2051, x_2051, x_2051) * vec3<f32>(x_2053.x, x_2053.y, x_2053.z));
  let x_2056 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2055.x, x_2055.y, x_2055.z, x_2056.w);
  let x_2058 : vec4<f32> = u_xlat1;
  let x_2060 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2058.x, x_2058.y, x_2058.w), vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
  let x_2063 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2063, 0.0f, 1.0f);
  let x_2066 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2068 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2066.x, x_2066.y, x_2066.z), vec3<f32>(x_2068.x, x_2068.y, x_2068.z));
  let x_2073 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2073, 0.0f, 1.0f);
  let x_2076 : f32 = u_xlat68;
  let x_2077 : f32 = u_xlat68;
  u_xlat68 = (x_2076 * x_2077);
  let x_2079 : f32 = u_xlat68;
  let x_2081 : f32 = u_xlat9.x;
  u_xlat68 = ((x_2079 * x_2081) + 1.000010014f);
  let x_2086 : f32 = u_xlat3.x;
  let x_2088 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2086 * x_2088);
  let x_2091 : f32 = u_xlat68;
  let x_2092 : f32 = u_xlat68;
  u_xlat68 = (x_2091 * x_2092);
  let x_2095 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2095, 0.100000001f);
  let x_2099 : f32 = u_xlat68;
  let x_2101 : f32 = u_xlat3.x;
  u_xlat68 = (x_2099 * x_2101);
  let x_2103 : f32 = u_xlat70;
  let x_2104 : f32 = u_xlat68;
  u_xlat68 = (x_2103 * x_2104);
  let x_2106 : f32 = u_xlat25;
  let x_2107 : f32 = u_xlat68;
  u_xlat68 = (x_2106 / x_2107);
  let x_2109 : vec3<f32> = u_xlat0;
  let x_2110 : f32 = u_xlat68;
  let x_2113 : vec3<f32> = u_xlat7;
  let x_2114 : vec3<f32> = ((x_2109 * vec3<f32>(x_2110, x_2110, x_2110)) + x_2113);
  let x_2115 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);
  let x_2117 : vec3<f32> = u_xlat28;
  let x_2118 : vec4<f32> = u_xlat8;
  u_xlat28 = (x_2117 * vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
  let x_2122 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2124 : f32 = x_120.unity_LightData.y;
  u_xlat68 = min(x_2122, x_2124);
  let x_2128 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_2128));
  let x_2134 : f32 = x_1763.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2136 : f32 = x_1763.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2138 : f32 = x_1763.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2140 : f32 = x_1763.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2141 : vec4<f32> = vec4<f32>(x_2134, x_2136, x_2138, x_2140);
  let x_2148 : vec4<bool> = (vec4<f32>(x_2141.x, x_2141.y, x_2141.z, x_2141.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2149 : vec2<bool> = vec2<bool>(x_2148.x, x_2148.w);
  let x_2150 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2149.x, x_2150.y, x_2150.z, x_2149.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2161 : u32 = u_xlatu_loop_1;
    let x_2162 : u32 = u_xlatu68;
    if ((x_2161 < x_2162)) {
    } else {
      break;
    }
    let x_2165 : u32 = u_xlatu_loop_1;
    u_xlatu73 = (x_2165 >> 2u);
    let x_2169 : u32 = u_xlatu_loop_1;
    u_xlati74 = bitcast<i32>((x_2169 & 3u));
    let x_2172 : u32 = u_xlatu73;
    let x_2175 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_2172)];
    let x_2185 : i32 = u_xlati74;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2190 : vec4<u32> = indexable[x_2185];
    u_xlat73 = dot(x_2175, bitcast<vec4<f32>>(x_2190));
    let x_2193 : f32 = u_xlat73;
    u_xlatu73 = bitcast<u32>(i32(x_2193));
    let x_2196 : vec3<f32> = vs_INTERP0;
    let x_2208 : u32 = u_xlatu73;
    let x_2211 : vec4<f32> = x_2207.x_AdditionalLightsPosition[bitcast<i32>(x_2208)];
    let x_2214 : u32 = u_xlatu73;
    let x_2217 : vec4<f32> = x_2207.x_AdditionalLightsPosition[bitcast<i32>(x_2214)];
    u_xlat31 = ((-(x_2196) * vec3<f32>(x_2211.w, x_2211.w, x_2211.w)) + vec3<f32>(x_2217.x, x_2217.y, x_2217.z));
    let x_2220 : vec3<f32> = u_xlat31;
    let x_2221 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2220, x_2221);
    let x_2223 : f32 = u_xlat74;
    u_xlat74 = max(x_2223, 6.10351562e-05f);
    let x_2226 : f32 = u_xlat74;
    u_xlat10.x = inverseSqrt(x_2226);
    let x_2230 : vec3<f32> = u_xlat31;
    let x_2231 : vec4<f32> = u_xlat10;
    u_xlat32 = (x_2230 * vec3<f32>(x_2231.x, x_2231.x, x_2231.x));
    let x_2234 : f32 = u_xlat74;
    u_xlat11.x = (1.0f / x_2234);
    let x_2237 : f32 = u_xlat74;
    let x_2238 : u32 = u_xlatu73;
    let x_2241 : f32 = x_2207.x_AdditionalLightsAttenuation[bitcast<i32>(x_2238)].x;
    u_xlat74 = (x_2237 * x_2241);
    let x_2243 : f32 = u_xlat74;
    let x_2245 : f32 = u_xlat74;
    u_xlat74 = ((-(x_2243) * x_2245) + 1.0f);
    let x_2248 : f32 = u_xlat74;
    u_xlat74 = max(x_2248, 0.0f);
    let x_2250 : f32 = u_xlat74;
    let x_2251 : f32 = u_xlat74;
    u_xlat74 = (x_2250 * x_2251);
    let x_2253 : f32 = u_xlat74;
    let x_2255 : f32 = u_xlat11.x;
    u_xlat74 = (x_2253 * x_2255);
    let x_2257 : u32 = u_xlatu73;
    let x_2260 : vec4<f32> = x_2207.x_AdditionalLightsSpotDir[bitcast<i32>(x_2257)];
    let x_2262 : vec3<f32> = u_xlat32;
    u_xlat11.x = dot(vec3<f32>(x_2260.x, x_2260.y, x_2260.z), x_2262);
    let x_2266 : f32 = u_xlat11.x;
    let x_2267 : u32 = u_xlatu73;
    let x_2270 : f32 = x_2207.x_AdditionalLightsAttenuation[bitcast<i32>(x_2267)].z;
    let x_2272 : u32 = u_xlatu73;
    let x_2275 : f32 = x_2207.x_AdditionalLightsAttenuation[bitcast<i32>(x_2272)].w;
    u_xlat11.x = ((x_2266 * x_2270) + x_2275);
    let x_2279 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_2279, 0.0f, 1.0f);
    let x_2283 : f32 = u_xlat11.x;
    let x_2285 : f32 = u_xlat11.x;
    u_xlat11.x = (x_2283 * x_2285);
    let x_2288 : f32 = u_xlat74;
    let x_2290 : f32 = u_xlat11.x;
    u_xlat74 = (x_2288 * x_2290);
    let x_2293 : u32 = u_xlatu73;
    u_xlatu11 = (x_2293 >> 5u);
    let x_2296 : u32 = u_xlatu73;
    u_xlati33 = (1i << bitcast<u32>((bitcast<i32>(x_2296) & 31i)));
    let x_2302 : i32 = u_xlati33;
    let x_2304 : u32 = u_xlatu11;
    let x_2307 : f32 = x_1763.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2304)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_2302) & bitcast<u32>(x_2307)));
    let x_2311 : i32 = u_xlati11;
    if ((x_2311 != 0i)) {
      let x_2321 : u32 = u_xlatu73;
      let x_2324 : f32 = x_2320.x_AdditionalLightsLightTypes[bitcast<i32>(x_2321)].el;
      u_xlati11 = i32(x_2324);
      let x_2326 : i32 = u_xlati11;
      u_xlati33 = select(1i, 0i, (x_2326 != 0i));
      let x_2330 : u32 = u_xlatu73;
      u_xlati55 = (bitcast<i32>(x_2330) << bitcast<u32>(2i));
      let x_2333 : i32 = u_xlati33;
      if ((x_2333 != 0i)) {
        let x_2337 : vec3<f32> = vs_INTERP0;
        let x_2339 : i32 = u_xlati55;
        let x_2342 : i32 = u_xlati55;
        let x_2346 : vec4<f32> = x_2320.x_AdditionalLightsWorldToLights[((x_2339 + 1i) / 4i)][((x_2342 + 1i) % 4i)];
        let x_2348 : vec3<f32> = (vec3<f32>(x_2337.y, x_2337.y, x_2337.y) * vec3<f32>(x_2346.x, x_2346.y, x_2346.w));
        let x_2349 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2348.x, x_2348.y, x_2348.z, x_2349.w);
        let x_2351 : i32 = u_xlati55;
        let x_2353 : i32 = u_xlati55;
        let x_2356 : vec4<f32> = x_2320.x_AdditionalLightsWorldToLights[(x_2351 / 4i)][(x_2353 % 4i)];
        let x_2358 : vec3<f32> = vs_INTERP0;
        let x_2361 : vec4<f32> = u_xlat12;
        let x_2363 : vec3<f32> = ((vec3<f32>(x_2356.x, x_2356.y, x_2356.w) * vec3<f32>(x_2358.x, x_2358.x, x_2358.x)) + vec3<f32>(x_2361.x, x_2361.y, x_2361.z));
        let x_2364 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2363.x, x_2363.y, x_2363.z, x_2364.w);
        let x_2366 : i32 = u_xlati55;
        let x_2369 : i32 = u_xlati55;
        let x_2373 : vec4<f32> = x_2320.x_AdditionalLightsWorldToLights[((x_2366 + 2i) / 4i)][((x_2369 + 2i) % 4i)];
        let x_2375 : vec3<f32> = vs_INTERP0;
        let x_2378 : vec4<f32> = u_xlat12;
        let x_2380 : vec3<f32> = ((vec3<f32>(x_2373.x, x_2373.y, x_2373.w) * vec3<f32>(x_2375.z, x_2375.z, x_2375.z)) + vec3<f32>(x_2378.x, x_2378.y, x_2378.z));
        let x_2381 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
        let x_2383 : vec4<f32> = u_xlat12;
        let x_2385 : i32 = u_xlati55;
        let x_2388 : i32 = u_xlati55;
        let x_2392 : vec4<f32> = x_2320.x_AdditionalLightsWorldToLights[((x_2385 + 3i) / 4i)][((x_2388 + 3i) % 4i)];
        let x_2394 : vec3<f32> = (vec3<f32>(x_2383.x, x_2383.y, x_2383.z) + vec3<f32>(x_2392.x, x_2392.y, x_2392.w));
        let x_2395 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2394.x, x_2394.y, x_2394.z, x_2395.w);
        let x_2398 : vec4<f32> = u_xlat12;
        let x_2400 : vec4<f32> = u_xlat12;
        let x_2402 : vec2<f32> = (vec2<f32>(x_2398.x, x_2398.y) / vec2<f32>(x_2400.z, x_2400.z));
        let x_2403 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2402.x, x_2403.y, x_2402.y);
        let x_2405 : vec3<f32> = u_xlat33;
        let x_2408 : vec2<f32> = ((vec2<f32>(x_2405.x, x_2405.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2409 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2408.x, x_2409.y, x_2408.y);
        let x_2411 : vec3<f32> = u_xlat33;
        let x_2415 : vec2<f32> = clamp(vec2<f32>(x_2411.x, x_2411.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2416 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2415.x, x_2416.y, x_2415.y);
        let x_2418 : u32 = u_xlatu73;
        let x_2421 : vec4<f32> = x_2320.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2418)];
        let x_2423 : vec3<f32> = u_xlat33;
        let x_2426 : u32 = u_xlatu73;
        let x_2429 : vec4<f32> = x_2320.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2426)];
        let x_2431 : vec2<f32> = ((vec2<f32>(x_2421.x, x_2421.y) * vec2<f32>(x_2423.x, x_2423.z)) + vec2<f32>(x_2429.z, x_2429.w));
        let x_2432 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2431.x, x_2432.y, x_2431.y);
      } else {
        let x_2436 : i32 = u_xlati11;
        u_xlatb11 = (x_2436 == 1i);
        let x_2438 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_2438);
        let x_2440 : i32 = u_xlati11;
        if ((x_2440 != 0i)) {
          let x_2444 : vec3<f32> = vs_INTERP0;
          let x_2446 : i32 = u_xlati55;
          let x_2449 : i32 = u_xlati55;
          let x_2453 : vec4<f32> = x_2320.x_AdditionalLightsWorldToLights[((x_2446 + 1i) / 4i)][((x_2449 + 1i) % 4i)];
          let x_2455 : vec2<f32> = (vec2<f32>(x_2444.y, x_2444.y) * vec2<f32>(x_2453.x, x_2453.y));
          let x_2456 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2455.x, x_2455.y, x_2456.z, x_2456.w);
          let x_2458 : i32 = u_xlati55;
          let x_2460 : i32 = u_xlati55;
          let x_2463 : vec4<f32> = x_2320.x_AdditionalLightsWorldToLights[(x_2458 / 4i)][(x_2460 % 4i)];
          let x_2465 : vec3<f32> = vs_INTERP0;
          let x_2468 : vec4<f32> = u_xlat12;
          let x_2470 : vec2<f32> = ((vec2<f32>(x_2463.x, x_2463.y) * vec2<f32>(x_2465.x, x_2465.x)) + vec2<f32>(x_2468.x, x_2468.y));
          let x_2471 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2470.x, x_2470.y, x_2471.z, x_2471.w);
          let x_2473 : i32 = u_xlati55;
          let x_2476 : i32 = u_xlati55;
          let x_2480 : vec4<f32> = x_2320.x_AdditionalLightsWorldToLights[((x_2473 + 2i) / 4i)][((x_2476 + 2i) % 4i)];
          let x_2482 : vec3<f32> = vs_INTERP0;
          let x_2485 : vec4<f32> = u_xlat12;
          let x_2487 : vec2<f32> = ((vec2<f32>(x_2480.x, x_2480.y) * vec2<f32>(x_2482.z, x_2482.z)) + vec2<f32>(x_2485.x, x_2485.y));
          let x_2488 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2487.x, x_2487.y, x_2488.z, x_2488.w);
          let x_2490 : vec4<f32> = u_xlat12;
          let x_2492 : i32 = u_xlati55;
          let x_2495 : i32 = u_xlati55;
          let x_2499 : vec4<f32> = x_2320.x_AdditionalLightsWorldToLights[((x_2492 + 3i) / 4i)][((x_2495 + 3i) % 4i)];
          let x_2501 : vec2<f32> = (vec2<f32>(x_2490.x, x_2490.y) + vec2<f32>(x_2499.x, x_2499.y));
          let x_2502 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2501.x, x_2501.y, x_2502.z, x_2502.w);
          let x_2504 : vec4<f32> = u_xlat12;
          let x_2507 : vec2<f32> = ((vec2<f32>(x_2504.x, x_2504.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2508 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2507.x, x_2507.y, x_2508.z, x_2508.w);
          let x_2510 : vec4<f32> = u_xlat12;
          let x_2512 : vec2<f32> = fract(vec2<f32>(x_2510.x, x_2510.y));
          let x_2513 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2512.x, x_2512.y, x_2513.z, x_2513.w);
          let x_2515 : u32 = u_xlatu73;
          let x_2518 : vec4<f32> = x_2320.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2515)];
          let x_2520 : vec4<f32> = u_xlat12;
          let x_2523 : u32 = u_xlatu73;
          let x_2526 : vec4<f32> = x_2320.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2523)];
          let x_2528 : vec2<f32> = ((vec2<f32>(x_2518.x, x_2518.y) * vec2<f32>(x_2520.x, x_2520.y)) + vec2<f32>(x_2526.z, x_2526.w));
          let x_2529 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2528.x, x_2529.y, x_2528.y);
        } else {
          let x_2532 : vec3<f32> = vs_INTERP0;
          let x_2534 : i32 = u_xlati55;
          let x_2537 : i32 = u_xlati55;
          let x_2541 : vec4<f32> = x_2320.x_AdditionalLightsWorldToLights[((x_2534 + 1i) / 4i)][((x_2537 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2532.y, x_2532.y, x_2532.y, x_2532.y) * x_2541);
          let x_2543 : i32 = u_xlati55;
          let x_2545 : i32 = u_xlati55;
          let x_2548 : vec4<f32> = x_2320.x_AdditionalLightsWorldToLights[(x_2543 / 4i)][(x_2545 % 4i)];
          let x_2549 : vec3<f32> = vs_INTERP0;
          let x_2552 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2548 * vec4<f32>(x_2549.x, x_2549.x, x_2549.x, x_2549.x)) + x_2552);
          let x_2554 : i32 = u_xlati55;
          let x_2557 : i32 = u_xlati55;
          let x_2561 : vec4<f32> = x_2320.x_AdditionalLightsWorldToLights[((x_2554 + 2i) / 4i)][((x_2557 + 2i) % 4i)];
          let x_2562 : vec3<f32> = vs_INTERP0;
          let x_2565 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2561 * vec4<f32>(x_2562.z, x_2562.z, x_2562.z, x_2562.z)) + x_2565);
          let x_2567 : vec4<f32> = u_xlat12;
          let x_2568 : i32 = u_xlati55;
          let x_2571 : i32 = u_xlati55;
          let x_2575 : vec4<f32> = x_2320.x_AdditionalLightsWorldToLights[((x_2568 + 3i) / 4i)][((x_2571 + 3i) % 4i)];
          u_xlat12 = (x_2567 + x_2575);
          let x_2577 : vec4<f32> = u_xlat12;
          let x_2579 : vec4<f32> = u_xlat12;
          let x_2581 : vec3<f32> = (vec3<f32>(x_2577.x, x_2577.y, x_2577.z) / vec3<f32>(x_2579.w, x_2579.w, x_2579.w));
          let x_2582 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
          let x_2584 : vec4<f32> = u_xlat12;
          let x_2586 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_2584.x, x_2584.y, x_2584.z), vec3<f32>(x_2586.x, x_2586.y, x_2586.z));
          let x_2591 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_2591);
          let x_2594 : vec4<f32> = u_xlat11;
          let x_2596 : vec4<f32> = u_xlat12;
          let x_2598 : vec3<f32> = (vec3<f32>(x_2594.x, x_2594.x, x_2594.x) * vec3<f32>(x_2596.x, x_2596.y, x_2596.z));
          let x_2599 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
          let x_2601 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_2601.x, x_2601.y, x_2601.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2608 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_2608, 0.000001f);
          let x_2613 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_2613);
          let x_2616 : vec4<f32> = u_xlat11;
          let x_2618 : vec4<f32> = u_xlat12;
          let x_2620 : vec3<f32> = (vec3<f32>(x_2616.x, x_2616.x, x_2616.x) * vec3<f32>(x_2618.z, x_2618.x, x_2618.y));
          let x_2621 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2620.x, x_2620.y, x_2620.z, x_2621.w);
          let x_2624 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2624);
          let x_2628 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2628, 0.0f, 1.0f);
          let x_2632 : vec4<f32> = u_xlat13;
          let x_2635 : vec4<bool> = (vec4<f32>(x_2632.y, x_2632.z, x_2632.y, x_2632.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb56 = vec2<bool>(x_2635.x, x_2635.y);
          let x_2639 : bool = u_xlatb56.x;
          if (x_2639) {
            let x_2644 : f32 = u_xlat13.x;
            x_2640 = x_2644;
          } else {
            let x_2647 : f32 = u_xlat13.x;
            x_2640 = -(x_2647);
          }
          let x_2649 : f32 = x_2640;
          u_xlat56.x = x_2649;
          let x_2652 : bool = u_xlatb56.y;
          if (x_2652) {
            let x_2657 : f32 = u_xlat13.x;
            x_2653 = x_2657;
          } else {
            let x_2660 : f32 = u_xlat13.x;
            x_2653 = -(x_2660);
          }
          let x_2662 : f32 = x_2653;
          u_xlat56.y = x_2662;
          let x_2664 : vec4<f32> = u_xlat12;
          let x_2666 : vec4<f32> = u_xlat11;
          let x_2669 : vec2<f32> = u_xlat56;
          let x_2670 : vec2<f32> = ((vec2<f32>(x_2664.x, x_2664.y) * vec2<f32>(x_2666.x, x_2666.x)) + x_2669);
          let x_2671 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2670.x, x_2671.y, x_2670.y, x_2671.w);
          let x_2673 : vec4<f32> = u_xlat11;
          let x_2676 : vec2<f32> = ((vec2<f32>(x_2673.x, x_2673.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2677 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2676.x, x_2677.y, x_2676.y, x_2677.w);
          let x_2679 : vec4<f32> = u_xlat11;
          let x_2683 : vec2<f32> = clamp(vec2<f32>(x_2679.x, x_2679.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2684 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2683.x, x_2684.y, x_2683.y, x_2684.w);
          let x_2686 : u32 = u_xlatu73;
          let x_2689 : vec4<f32> = x_2320.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2686)];
          let x_2691 : vec4<f32> = u_xlat11;
          let x_2694 : u32 = u_xlatu73;
          let x_2697 : vec4<f32> = x_2320.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2694)];
          let x_2699 : vec2<f32> = ((vec2<f32>(x_2689.x, x_2689.y) * vec2<f32>(x_2691.x, x_2691.z)) + vec2<f32>(x_2697.z, x_2697.w));
          let x_2700 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2699.x, x_2700.y, x_2699.y);
        }
      }
      let x_2707 : vec3<f32> = u_xlat33;
      let x_2710 : f32 = x_45.x_GlobalMipBias.x;
      let x_2711 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2707.x, x_2707.z), x_2710);
      u_xlat11 = x_2711;
      let x_2714 : bool = u_xlatb3.w;
      if (x_2714) {
        let x_2719 : f32 = u_xlat11.w;
        x_2715 = x_2719;
      } else {
        let x_2722 : f32 = u_xlat11.x;
        x_2715 = x_2722;
      }
      let x_2723 : f32 = x_2715;
      u_xlat77 = x_2723;
      let x_2725 : bool = u_xlatb3.x;
      if (x_2725) {
        let x_2729 : vec4<f32> = u_xlat11;
        x_2726 = vec3<f32>(x_2729.x, x_2729.y, x_2729.z);
      } else {
        let x_2732 : f32 = u_xlat77;
        x_2726 = vec3<f32>(x_2732, x_2732, x_2732);
      }
      let x_2734 : vec3<f32> = x_2726;
      let x_2735 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2741 : vec4<f32> = u_xlat11;
    let x_2743 : u32 = u_xlatu73;
    let x_2746 : vec4<f32> = x_2207.x_AdditionalLightsColor[bitcast<i32>(x_2743)];
    let x_2748 : vec3<f32> = (vec3<f32>(x_2741.x, x_2741.y, x_2741.z) * vec3<f32>(x_2746.x, x_2746.y, x_2746.z));
    let x_2749 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2749.w);
    let x_2751 : vec3<f32> = u_xlat6;
    let x_2753 : vec4<f32> = u_xlat11;
    let x_2755 : vec3<f32> = (vec3<f32>(x_2751.x, x_2751.x, x_2751.x) * vec3<f32>(x_2753.x, x_2753.y, x_2753.z));
    let x_2756 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2755.x, x_2755.y, x_2755.z, x_2756.w);
    let x_2758 : vec4<f32> = u_xlat1;
    let x_2760 : vec3<f32> = u_xlat32;
    u_xlat73 = dot(vec3<f32>(x_2758.x, x_2758.y, x_2758.w), x_2760);
    let x_2762 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2762, 0.0f, 1.0f);
    let x_2764 : f32 = u_xlat73;
    let x_2765 : f32 = u_xlat74;
    u_xlat73 = (x_2764 * x_2765);
    let x_2767 : f32 = u_xlat73;
    let x_2769 : vec4<f32> = u_xlat11;
    let x_2771 : vec3<f32> = (vec3<f32>(x_2767, x_2767, x_2767) * vec3<f32>(x_2769.x, x_2769.y, x_2769.z));
    let x_2772 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2771.x, x_2771.y, x_2771.z, x_2772.w);
    let x_2774 : vec3<f32> = u_xlat31;
    let x_2775 : vec4<f32> = u_xlat10;
    let x_2778 : vec3<f32> = u_xlat4;
    u_xlat31 = ((x_2774 * vec3<f32>(x_2775.x, x_2775.x, x_2775.x)) + x_2778);
    let x_2780 : vec3<f32> = u_xlat31;
    let x_2781 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(x_2780, x_2781);
    let x_2783 : f32 = u_xlat73;
    u_xlat73 = max(x_2783, 1.17549435e-37f);
    let x_2785 : f32 = u_xlat73;
    u_xlat73 = inverseSqrt(x_2785);
    let x_2787 : f32 = u_xlat73;
    let x_2789 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_2787, x_2787, x_2787) * x_2789);
    let x_2791 : vec4<f32> = u_xlat1;
    let x_2793 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(vec3<f32>(x_2791.x, x_2791.y, x_2791.w), x_2793);
    let x_2795 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2795, 0.0f, 1.0f);
    let x_2797 : vec3<f32> = u_xlat32;
    let x_2798 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2797, x_2798);
    let x_2800 : f32 = u_xlat74;
    u_xlat74 = clamp(x_2800, 0.0f, 1.0f);
    let x_2802 : f32 = u_xlat73;
    let x_2803 : f32 = u_xlat73;
    u_xlat73 = (x_2802 * x_2803);
    let x_2805 : f32 = u_xlat73;
    let x_2807 : f32 = u_xlat9.x;
    u_xlat73 = ((x_2805 * x_2807) + 1.000010014f);
    let x_2810 : f32 = u_xlat74;
    let x_2811 : f32 = u_xlat74;
    u_xlat74 = (x_2810 * x_2811);
    let x_2813 : f32 = u_xlat73;
    let x_2814 : f32 = u_xlat73;
    u_xlat73 = (x_2813 * x_2814);
    let x_2816 : f32 = u_xlat74;
    u_xlat74 = max(x_2816, 0.100000001f);
    let x_2818 : f32 = u_xlat73;
    let x_2819 : f32 = u_xlat74;
    u_xlat73 = (x_2818 * x_2819);
    let x_2821 : f32 = u_xlat70;
    let x_2822 : f32 = u_xlat73;
    u_xlat73 = (x_2821 * x_2822);
    let x_2824 : f32 = u_xlat25;
    let x_2825 : f32 = u_xlat73;
    u_xlat73 = (x_2824 / x_2825);
    let x_2827 : vec3<f32> = u_xlat0;
    let x_2828 : f32 = u_xlat73;
    let x_2831 : vec3<f32> = u_xlat7;
    u_xlat31 = ((x_2827 * vec3<f32>(x_2828, x_2828, x_2828)) + x_2831);
    let x_2833 : vec3<f32> = u_xlat31;
    let x_2834 : vec4<f32> = u_xlat11;
    let x_2837 : vec4<f32> = u_xlat8;
    let x_2839 : vec3<f32> = ((x_2833 * vec3<f32>(x_2834.x, x_2834.y, x_2834.z)) + vec3<f32>(x_2837.x, x_2837.y, x_2837.z));
    let x_2840 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2839.x, x_2839.y, x_2839.z, x_2840.w);

    continuing {
      let x_2842 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2842 + bitcast<u32>(1i));
    }
  }
  let x_2844 : vec3<f32> = u_xlat5;
  let x_2845 : f32 = u_xlat47;
  let x_2848 : vec3<f32> = u_xlat28;
  u_xlat0 = ((x_2844 * vec3<f32>(x_2845, x_2845, x_2845)) + x_2848);
  let x_2850 : vec4<f32> = u_xlat8;
  let x_2852 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2850.x, x_2850.y, x_2850.z) + x_2852);
  let x_2854 : vec4<f32> = u_xlat2;
  let x_2856 : f32 = u_xlat45;
  let x_2859 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2854.x, x_2854.y, x_2854.z) * vec3<f32>(x_2856, x_2856, x_2856)) + x_2859);
  let x_2861 : f32 = u_xlat66;
  let x_2862 : f32 = u_xlat66;
  u_xlat66 = (x_2861 * -(x_2862));
  let x_2865 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2865);
  let x_2867 : vec3<f32> = u_xlat0;
  let x_2870 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_2867 + -(vec3<f32>(x_2870.x, x_2870.y, x_2870.z)));
  let x_2876 : f32 = u_xlat66;
  let x_2878 : vec3<f32> = u_xlat0;
  let x_2881 : vec4<f32> = x_45.unity_FogColor;
  let x_2883 : vec3<f32> = ((vec3<f32>(x_2876, x_2876, x_2876) * x_2878) + vec3<f32>(x_2881.x, x_2881.y, x_2881.z));
  let x_2884 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2883.x, x_2883.y, x_2883.z, x_2884.w);
  let x_2889 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_2891 : f32 = x_120.unity_RenderingLayer.x;
  u_xlatu0 = (x_2889 & bitcast<u32>(x_2891));
  let x_2894 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2894);
  let x_2899 : f32 = u_xlat0.x;
  let x_2901 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2899 * x_2901);
  let x_2906 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2906, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2911 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2911.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

