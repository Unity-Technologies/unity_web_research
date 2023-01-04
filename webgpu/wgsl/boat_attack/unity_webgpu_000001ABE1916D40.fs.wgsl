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

@group(1) @binding(4) var<uniform> x_1761 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2205 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2318 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var x_1844 : f32;
  var x_1855 : vec3<f32>;
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
  var x_2638 : f32;
  var x_2651 : f32;
  var u_xlat77 : f32;
  var x_2713 : f32;
  var x_2724 : vec3<f32>;
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
      let x_476 : vec4<f32> = x_458.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_473.x, x_473.y, x_473.x, x_473.y) + x_476);
      let x_479 : vec4<f32> = u_xlat8;
      let x_480 : vec2<f32> = vec2<f32>(x_479.x, x_479.y);
      let x_482 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_480.x, x_480.y, x_482);
      let x_495 : vec3<f32> = txVec0;
      let x_497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_495.xy, x_495.z);
      u_xlat9.x = x_497;
      let x_500 : vec4<f32> = u_xlat8;
      let x_501 : vec2<f32> = vec2<f32>(x_500.z, x_500.w);
      let x_503 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_501.x, x_501.y, x_503);
      let x_510 : vec3<f32> = txVec1;
      let x_512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_510.xy, x_510.z);
      u_xlat9.y = x_512;
      let x_514 : vec4<f32> = vs_INTERP8;
      let x_517 : vec4<f32> = x_458.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_514.x, x_514.y, x_514.x, x_514.y) + x_517);
      let x_520 : vec4<f32> = u_xlat8;
      let x_521 : vec2<f32> = vec2<f32>(x_520.x, x_520.y);
      let x_523 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_521.x, x_521.y, x_523);
      let x_530 : vec3<f32> = txVec2;
      let x_532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_530.xy, x_530.z);
      u_xlat9.z = x_532;
      let x_535 : vec4<f32> = u_xlat8;
      let x_536 : vec2<f32> = vec2<f32>(x_535.z, x_535.w);
      let x_538 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_536.x, x_536.y, x_538);
      let x_545 : vec3<f32> = txVec3;
      let x_547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_545.xy, x_545.z);
      u_xlat9.w = x_547;
      let x_549 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_549, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_558 : f32 = x_458.x_MainLightShadowParams.y;
      u_xlatb28.x = (x_558 == 2.0f);
      let x_562 : bool = u_xlatb28.x;
      if (x_562) {
        let x_566 : vec4<f32> = vs_INTERP8;
        let x_569 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_574 : vec2<f32> = ((vec2<f32>(x_566.x, x_566.y) * vec2<f32>(x_569.z, x_569.w)) + vec2<f32>(0.5f, 0.5f));
        let x_575 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_574.x, x_574.y, x_575.z);
        let x_577 : vec3<f32> = u_xlat28;
        let x_579 : vec2<f32> = floor(vec2<f32>(x_577.x, x_577.y));
        let x_580 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_579.x, x_579.y, x_580.z);
        let x_582 : vec4<f32> = vs_INTERP8;
        let x_585 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_588 : vec3<f32> = u_xlat28;
        let x_591 : vec2<f32> = ((vec2<f32>(x_582.x, x_582.y) * vec2<f32>(x_585.z, x_585.w)) + -(vec2<f32>(x_588.x, x_588.y)));
        let x_592 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
        let x_594 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_594.x, x_594.x, x_594.y, x_594.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_599 : vec4<f32> = u_xlat9;
        let x_601 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_599.x, x_599.x, x_599.z, x_599.z) * vec4<f32>(x_601.x, x_601.x, x_601.z, x_601.z));
        let x_606 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_606.y, x_606.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_611 : vec4<f32> = u_xlat10;
        let x_614 : vec4<f32> = u_xlat8;
        let x_617 : vec2<f32> = ((vec2<f32>(x_611.x, x_611.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_614.x, x_614.y)));
        let x_618 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_617.x, x_618.y, x_617.y, x_618.w);
        let x_620 : vec4<f32> = u_xlat8;
        let x_623 : vec2<f32> = (-(vec2<f32>(x_620.x, x_620.y)) + vec2<f32>(1.0f, 1.0f));
        let x_624 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_627 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_627.x, x_627.y), vec2<f32>(0.0f, 0.0f));
        let x_631 : vec2<f32> = u_xlat54;
        let x_633 : vec2<f32> = u_xlat54;
        let x_635 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_631) * x_633) + vec2<f32>(x_635.x, x_635.y));
        let x_638 : vec4<f32> = u_xlat8;
        let x_640 : vec2<f32> = max(vec2<f32>(x_638.x, x_638.y), vec2<f32>(0.0f, 0.0f));
        let x_641 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_643 : vec4<f32> = u_xlat8;
        let x_646 : vec4<f32> = u_xlat8;
        let x_649 : vec4<f32> = u_xlat9;
        let x_651 : vec2<f32> = ((-(vec2<f32>(x_643.x, x_643.y)) * vec2<f32>(x_646.x, x_646.y)) + vec2<f32>(x_649.y, x_649.w));
        let x_652 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
        let x_654 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_654 + vec2<f32>(1.0f, 1.0f));
        let x_656 : vec4<f32> = u_xlat8;
        let x_658 : vec2<f32> = (vec2<f32>(x_656.x, x_656.y) + vec2<f32>(1.0f, 1.0f));
        let x_659 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
        let x_662 : vec4<f32> = u_xlat9;
        let x_666 : vec2<f32> = (vec2<f32>(x_662.x, x_662.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_667 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
        let x_670 : vec4<f32> = u_xlat10;
        let x_672 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_673 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
        let x_675 : vec2<f32> = u_xlat54;
        let x_676 : vec2<f32> = (x_675 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_677 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
        let x_680 : vec4<f32> = u_xlat8;
        let x_682 : vec2<f32> = (vec2<f32>(x_680.x, x_680.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_683 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
        let x_685 : vec4<f32> = u_xlat9;
        let x_687 : vec2<f32> = (vec2<f32>(x_685.y, x_685.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_688 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
        let x_691 : f32 = u_xlat10.x;
        u_xlat11.z = x_691;
        let x_694 : f32 = u_xlat8.x;
        u_xlat11.w = x_694;
        let x_697 : f32 = u_xlat13.x;
        u_xlat12.z = x_697;
        let x_700 : f32 = u_xlat52.x;
        u_xlat12.w = x_700;
        let x_702 : vec4<f32> = u_xlat11;
        let x_704 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_702.z, x_702.w, x_702.x, x_702.z) + vec4<f32>(x_704.z, x_704.w, x_704.x, x_704.z));
        let x_708 : f32 = u_xlat11.y;
        u_xlat10.z = x_708;
        let x_711 : f32 = u_xlat8.y;
        u_xlat10.w = x_711;
        let x_714 : f32 = u_xlat12.y;
        u_xlat13.z = x_714;
        let x_717 : f32 = u_xlat52.y;
        u_xlat13.w = x_717;
        let x_719 : vec4<f32> = u_xlat10;
        let x_721 : vec4<f32> = u_xlat13;
        let x_723 : vec3<f32> = (vec3<f32>(x_719.z, x_719.y, x_719.w) + vec3<f32>(x_721.z, x_721.y, x_721.w));
        let x_724 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
        let x_726 : vec4<f32> = u_xlat12;
        let x_728 : vec4<f32> = u_xlat9;
        let x_730 : vec3<f32> = (vec3<f32>(x_726.x, x_726.z, x_726.w) / vec3<f32>(x_728.z, x_728.w, x_728.y));
        let x_731 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
        let x_733 : vec4<f32> = u_xlat10;
        let x_739 : vec3<f32> = (vec3<f32>(x_733.x, x_733.y, x_733.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_740 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
        let x_742 : vec4<f32> = u_xlat13;
        let x_744 : vec4<f32> = u_xlat8;
        let x_746 : vec3<f32> = (vec3<f32>(x_742.z, x_742.y, x_742.w) / vec3<f32>(x_744.x, x_744.y, x_744.z));
        let x_747 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_749 : vec4<f32> = u_xlat11;
        let x_751 : vec3<f32> = (vec3<f32>(x_749.x, x_749.y, x_749.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_752 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
        let x_754 : vec4<f32> = u_xlat10;
        let x_757 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_759 : vec3<f32> = (vec3<f32>(x_754.y, x_754.x, x_754.z) * vec3<f32>(x_757.x, x_757.x, x_757.x));
        let x_760 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
        let x_762 : vec4<f32> = u_xlat11;
        let x_765 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_767 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(x_765.y, x_765.y, x_765.y));
        let x_768 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
        let x_771 : f32 = u_xlat11.x;
        u_xlat10.w = x_771;
        let x_773 : vec3<f32> = u_xlat28;
        let x_776 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_779 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y) * vec4<f32>(x_776.x, x_776.y, x_776.x, x_776.y)) + vec4<f32>(x_779.y, x_779.w, x_779.x, x_779.w));
        let x_782 : vec3<f32> = u_xlat28;
        let x_785 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_788 : vec4<f32> = u_xlat10;
        let x_790 : vec2<f32> = ((vec2<f32>(x_782.x, x_782.y) * vec2<f32>(x_785.x, x_785.y)) + vec2<f32>(x_788.z, x_788.w));
        let x_791 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
        let x_794 : f32 = u_xlat10.y;
        u_xlat11.w = x_794;
        let x_796 : vec4<f32> = u_xlat11;
        let x_797 : vec2<f32> = vec2<f32>(x_796.y, x_796.z);
        let x_798 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_798.x, x_797.x, x_798.z, x_797.y);
        let x_801 : vec3<f32> = u_xlat28;
        let x_804 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_807 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_801.x, x_801.y, x_801.x, x_801.y) * vec4<f32>(x_804.x, x_804.y, x_804.x, x_804.y)) + vec4<f32>(x_807.x, x_807.y, x_807.z, x_807.y));
        let x_810 : vec3<f32> = u_xlat28;
        let x_813 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_816 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_810.x, x_810.y, x_810.x, x_810.y) * vec4<f32>(x_813.x, x_813.y, x_813.x, x_813.y)) + vec4<f32>(x_816.w, x_816.y, x_816.w, x_816.z));
        let x_819 : vec3<f32> = u_xlat28;
        let x_822 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_825 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_819.x, x_819.y, x_819.x, x_819.y) * vec4<f32>(x_822.x, x_822.y, x_822.x, x_822.y)) + vec4<f32>(x_825.x, x_825.w, x_825.z, x_825.w));
        let x_829 : vec4<f32> = u_xlat8;
        let x_831 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_829.x, x_829.x, x_829.x, x_829.y) * vec4<f32>(x_831.z, x_831.w, x_831.y, x_831.z));
        let x_835 : vec4<f32> = u_xlat8;
        let x_837 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_835.y, x_835.y, x_835.z, x_835.z) * x_837);
        let x_840 : f32 = u_xlat8.z;
        let x_842 : f32 = u_xlat9.y;
        u_xlat28.x = (x_840 * x_842);
        let x_846 : vec4<f32> = u_xlat12;
        let x_847 : vec2<f32> = vec2<f32>(x_846.x, x_846.y);
        let x_849 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_847.x, x_847.y, x_849);
        let x_857 : vec3<f32> = txVec4;
        let x_859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_857.xy, x_857.z);
        u_xlat50 = x_859;
        let x_861 : vec4<f32> = u_xlat12;
        let x_862 : vec2<f32> = vec2<f32>(x_861.z, x_861.w);
        let x_864 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_862.x, x_862.y, x_864);
        let x_872 : vec3<f32> = txVec5;
        let x_874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_872.xy, x_872.z);
        u_xlat72 = x_874;
        let x_875 : f32 = u_xlat72;
        let x_877 : f32 = u_xlat15.y;
        u_xlat72 = (x_875 * x_877);
        let x_880 : f32 = u_xlat15.x;
        let x_881 : f32 = u_xlat50;
        let x_883 : f32 = u_xlat72;
        u_xlat50 = ((x_880 * x_881) + x_883);
        let x_886 : vec4<f32> = u_xlat13;
        let x_887 : vec2<f32> = vec2<f32>(x_886.x, x_886.y);
        let x_889 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_887.x, x_887.y, x_889);
        let x_896 : vec3<f32> = txVec6;
        let x_898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_896.xy, x_896.z);
        u_xlat72 = x_898;
        let x_900 : f32 = u_xlat15.z;
        let x_901 : f32 = u_xlat72;
        let x_903 : f32 = u_xlat50;
        u_xlat50 = ((x_900 * x_901) + x_903);
        let x_906 : vec4<f32> = u_xlat11;
        let x_907 : vec2<f32> = vec2<f32>(x_906.x, x_906.y);
        let x_909 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_907.x, x_907.y, x_909);
        let x_916 : vec3<f32> = txVec7;
        let x_918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_916.xy, x_916.z);
        u_xlat72 = x_918;
        let x_920 : f32 = u_xlat15.w;
        let x_921 : f32 = u_xlat72;
        let x_923 : f32 = u_xlat50;
        u_xlat50 = ((x_920 * x_921) + x_923);
        let x_926 : vec4<f32> = u_xlat14;
        let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
        let x_929 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_927.x, x_927.y, x_929);
        let x_936 : vec3<f32> = txVec8;
        let x_938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_936.xy, x_936.z);
        u_xlat72 = x_938;
        let x_940 : f32 = u_xlat16.x;
        let x_941 : f32 = u_xlat72;
        let x_943 : f32 = u_xlat50;
        u_xlat50 = ((x_940 * x_941) + x_943);
        let x_946 : vec4<f32> = u_xlat14;
        let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
        let x_949 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_947.x, x_947.y, x_949);
        let x_956 : vec3<f32> = txVec9;
        let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_956.xy, x_956.z);
        u_xlat72 = x_958;
        let x_960 : f32 = u_xlat16.y;
        let x_961 : f32 = u_xlat72;
        let x_963 : f32 = u_xlat50;
        u_xlat50 = ((x_960 * x_961) + x_963);
        let x_966 : vec4<f32> = u_xlat11;
        let x_967 : vec2<f32> = vec2<f32>(x_966.z, x_966.w);
        let x_969 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_967.x, x_967.y, x_969);
        let x_976 : vec3<f32> = txVec10;
        let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_976.xy, x_976.z);
        u_xlat72 = x_978;
        let x_980 : f32 = u_xlat16.z;
        let x_981 : f32 = u_xlat72;
        let x_983 : f32 = u_xlat50;
        u_xlat50 = ((x_980 * x_981) + x_983);
        let x_986 : vec4<f32> = u_xlat10;
        let x_987 : vec2<f32> = vec2<f32>(x_986.x, x_986.y);
        let x_989 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_987.x, x_987.y, x_989);
        let x_996 : vec3<f32> = txVec11;
        let x_998 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_996.xy, x_996.z);
        u_xlat72 = x_998;
        let x_1000 : f32 = u_xlat16.w;
        let x_1001 : f32 = u_xlat72;
        let x_1003 : f32 = u_xlat50;
        u_xlat50 = ((x_1000 * x_1001) + x_1003);
        let x_1006 : vec4<f32> = u_xlat10;
        let x_1007 : vec2<f32> = vec2<f32>(x_1006.z, x_1006.w);
        let x_1009 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1007.x, x_1007.y, x_1009);
        let x_1016 : vec3<f32> = txVec12;
        let x_1018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1016.xy, x_1016.z);
        u_xlat72 = x_1018;
        let x_1020 : f32 = u_xlat28.x;
        let x_1021 : f32 = u_xlat72;
        let x_1023 : f32 = u_xlat50;
        u_xlat71 = ((x_1020 * x_1021) + x_1023);
      } else {
        let x_1026 : vec4<f32> = vs_INTERP8;
        let x_1029 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1032 : vec2<f32> = ((vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(x_1029.z, x_1029.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1033 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1032.x, x_1032.y, x_1033.z);
        let x_1035 : vec3<f32> = u_xlat28;
        let x_1037 : vec2<f32> = floor(vec2<f32>(x_1035.x, x_1035.y));
        let x_1038 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1037.x, x_1037.y, x_1038.z);
        let x_1040 : vec4<f32> = vs_INTERP8;
        let x_1043 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1046 : vec3<f32> = u_xlat28;
        let x_1049 : vec2<f32> = ((vec2<f32>(x_1040.x, x_1040.y) * vec2<f32>(x_1043.z, x_1043.w)) + -(vec2<f32>(x_1046.x, x_1046.y)));
        let x_1050 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1052.x, x_1052.x, x_1052.y, x_1052.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1055 : vec4<f32> = u_xlat9;
        let x_1057 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1055.x, x_1055.x, x_1055.z, x_1055.z) * vec4<f32>(x_1057.x, x_1057.x, x_1057.z, x_1057.z));
        let x_1060 : vec4<f32> = u_xlat10;
        let x_1064 : vec2<f32> = (vec2<f32>(x_1060.y, x_1060.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1065 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1065.x, x_1064.x, x_1065.z, x_1064.y);
        let x_1067 : vec4<f32> = u_xlat10;
        let x_1070 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1067.x, x_1067.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1070.x, x_1070.y)));
        let x_1074 : vec4<f32> = u_xlat8;
        let x_1077 : vec2<f32> = (-(vec2<f32>(x_1074.x, x_1074.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1078 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1077.x, x_1078.y, x_1077.y, x_1078.w);
        let x_1080 : vec4<f32> = u_xlat8;
        let x_1082 : vec2<f32> = min(vec2<f32>(x_1080.x, x_1080.y), vec2<f32>(0.0f, 0.0f));
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec4<f32> = u_xlat10;
        let x_1088 : vec4<f32> = u_xlat10;
        let x_1091 : vec4<f32> = u_xlat9;
        let x_1093 : vec2<f32> = ((-(vec2<f32>(x_1085.x, x_1085.y)) * vec2<f32>(x_1088.x, x_1088.y)) + vec2<f32>(x_1091.x, x_1091.z));
        let x_1094 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1093.x, x_1094.y, x_1093.y, x_1094.w);
        let x_1096 : vec4<f32> = u_xlat8;
        let x_1098 : vec2<f32> = max(vec2<f32>(x_1096.x, x_1096.y), vec2<f32>(0.0f, 0.0f));
        let x_1099 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1101 : vec4<f32> = u_xlat10;
        let x_1104 : vec4<f32> = u_xlat10;
        let x_1107 : vec4<f32> = u_xlat9;
        let x_1109 : vec2<f32> = ((-(vec2<f32>(x_1101.x, x_1101.y)) * vec2<f32>(x_1104.x, x_1104.y)) + vec2<f32>(x_1107.y, x_1107.w));
        let x_1110 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1110.x, x_1109.x, x_1110.z, x_1109.y);
        let x_1112 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1112 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1116 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1116 * 0.081632003f);
        let x_1120 : vec2<f32> = u_xlat52;
        let x_1123 : vec2<f32> = (vec2<f32>(x_1120.y, x_1120.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1124 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
        let x_1126 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1126.x, x_1126.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1130 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1130 * 0.081632003f);
        let x_1134 : f32 = u_xlat12.y;
        u_xlat10.x = x_1134;
        let x_1136 : vec4<f32> = u_xlat8;
        let x_1143 : vec2<f32> = ((vec2<f32>(x_1136.x, x_1136.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1144 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1144.x, x_1143.x, x_1144.z, x_1143.y);
        let x_1146 : vec4<f32> = u_xlat8;
        let x_1150 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1150.x, x_1151.y, x_1150.y, x_1151.w);
        let x_1154 : f32 = u_xlat52.x;
        u_xlat9.y = x_1154;
        let x_1157 : f32 = u_xlat11.y;
        u_xlat9.w = x_1157;
        let x_1159 : vec4<f32> = u_xlat9;
        let x_1160 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1159 + x_1160);
        let x_1162 : vec4<f32> = u_xlat8;
        let x_1165 : vec2<f32> = ((vec2<f32>(x_1162.y, x_1162.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1166 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1166.x, x_1165.x, x_1166.z, x_1165.y);
        let x_1168 : vec4<f32> = u_xlat8;
        let x_1171 : vec2<f32> = ((vec2<f32>(x_1168.y, x_1168.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1172 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1172.w);
        let x_1175 : f32 = u_xlat52.y;
        u_xlat11.y = x_1175;
        let x_1177 : vec4<f32> = u_xlat11;
        let x_1178 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1177 + x_1178);
        let x_1180 : vec4<f32> = u_xlat9;
        let x_1181 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1180 / x_1181);
        let x_1183 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1183 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1189 : vec4<f32> = u_xlat11;
        let x_1190 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1189 / x_1190);
        let x_1192 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1192 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1194 : vec4<f32> = u_xlat9;
        let x_1197 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1194.w, x_1194.x, x_1194.y, x_1194.z) * vec4<f32>(x_1197.x, x_1197.x, x_1197.x, x_1197.x));
        let x_1200 : vec4<f32> = u_xlat11;
        let x_1203 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1200.x, x_1200.w, x_1200.y, x_1200.z) * vec4<f32>(x_1203.y, x_1203.y, x_1203.y, x_1203.y));
        let x_1206 : vec4<f32> = u_xlat9;
        let x_1207 : vec3<f32> = vec3<f32>(x_1206.y, x_1206.z, x_1206.w);
        let x_1208 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1207.x, x_1208.y, x_1207.y, x_1207.z);
        let x_1211 : f32 = u_xlat11.x;
        u_xlat12.y = x_1211;
        let x_1213 : vec3<f32> = u_xlat28;
        let x_1216 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1219 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1213.x, x_1213.y, x_1213.x, x_1213.y) * vec4<f32>(x_1216.x, x_1216.y, x_1216.x, x_1216.y)) + vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1219.y));
        let x_1222 : vec3<f32> = u_xlat28;
        let x_1225 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1228 : vec4<f32> = u_xlat12;
        let x_1230 : vec2<f32> = ((vec2<f32>(x_1222.x, x_1222.y) * vec2<f32>(x_1225.x, x_1225.y)) + vec2<f32>(x_1228.w, x_1228.y));
        let x_1231 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1230.x, x_1230.y, x_1231.z, x_1231.w);
        let x_1234 : f32 = u_xlat12.y;
        u_xlat9.y = x_1234;
        let x_1237 : f32 = u_xlat11.z;
        u_xlat12.y = x_1237;
        let x_1239 : vec3<f32> = u_xlat28;
        let x_1242 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1239.x, x_1239.y, x_1239.x, x_1239.y) * vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y)) + vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1245.y));
        let x_1249 : vec3<f32> = u_xlat28;
        let x_1252 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1255 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1249.x, x_1249.y) * vec2<f32>(x_1252.x, x_1252.y)) + vec2<f32>(x_1255.w, x_1255.y));
        let x_1259 : f32 = u_xlat12.y;
        u_xlat9.z = x_1259;
        let x_1261 : vec3<f32> = u_xlat28;
        let x_1264 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1261.x, x_1261.y, x_1261.x, x_1261.y) * vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.y)) + vec4<f32>(x_1267.x, x_1267.y, x_1267.x, x_1267.z));
        let x_1271 : f32 = u_xlat11.w;
        u_xlat12.y = x_1271;
        let x_1274 : vec3<f32> = u_xlat28;
        let x_1277 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1274.x, x_1274.y, x_1274.x, x_1274.y) * vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y)) + vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1280.y));
        let x_1284 : vec3<f32> = u_xlat28;
        let x_1287 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1290 : vec4<f32> = u_xlat12;
        let x_1292 : vec2<f32> = ((vec2<f32>(x_1284.x, x_1284.y) * vec2<f32>(x_1287.x, x_1287.y)) + vec2<f32>(x_1290.w, x_1290.y));
        let x_1293 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1292.x, x_1292.y, x_1293.z);
        let x_1296 : f32 = u_xlat12.y;
        u_xlat9.w = x_1296;
        let x_1299 : vec3<f32> = u_xlat28;
        let x_1302 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(x_1302.x, x_1302.y)) + vec2<f32>(x_1305.x, x_1305.w));
        let x_1308 : vec4<f32> = u_xlat12;
        let x_1309 : vec3<f32> = vec3<f32>(x_1308.x, x_1308.z, x_1308.w);
        let x_1310 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1309.x, x_1310.y, x_1309.y, x_1309.z);
        let x_1312 : vec3<f32> = u_xlat28;
        let x_1315 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1312.x, x_1312.y, x_1312.x, x_1312.y) * vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.y)) + vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1318.y));
        let x_1322 : vec3<f32> = u_xlat28;
        let x_1325 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(x_1325.x, x_1325.y)) + vec2<f32>(x_1328.w, x_1328.y));
        let x_1332 : f32 = u_xlat9.x;
        u_xlat11.x = x_1332;
        let x_1334 : vec3<f32> = u_xlat28;
        let x_1337 : vec4<f32> = x_458.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat11;
        let x_1342 : vec2<f32> = ((vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(x_1337.x, x_1337.y)) + vec2<f32>(x_1340.x, x_1340.y));
        let x_1343 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1342.x, x_1342.y, x_1343.z);
        let x_1346 : vec4<f32> = u_xlat8;
        let x_1348 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1346.x, x_1346.x, x_1346.x, x_1346.x) * x_1348);
        let x_1351 : vec4<f32> = u_xlat8;
        let x_1353 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1351.y, x_1351.y, x_1351.y, x_1351.y) * x_1353);
        let x_1356 : vec4<f32> = u_xlat8;
        let x_1358 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1356.z, x_1356.z, x_1356.z, x_1356.z) * x_1358);
        let x_1360 : vec4<f32> = u_xlat8;
        let x_1362 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1360.w, x_1360.w, x_1360.w, x_1360.w) * x_1362);
        let x_1365 : vec4<f32> = u_xlat13;
        let x_1366 : vec2<f32> = vec2<f32>(x_1365.x, x_1365.y);
        let x_1368 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec13;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1375.xy, x_1375.z);
        u_xlat72 = x_1377;
        let x_1379 : vec4<f32> = u_xlat13;
        let x_1380 : vec2<f32> = vec2<f32>(x_1379.z, x_1379.w);
        let x_1382 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1390 : vec3<f32> = txVec14;
        let x_1392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1390.xy, x_1390.z);
        u_xlat73 = x_1392;
        let x_1393 : f32 = u_xlat73;
        let x_1395 : f32 = u_xlat19.y;
        u_xlat73 = (x_1393 * x_1395);
        let x_1398 : f32 = u_xlat19.x;
        let x_1399 : f32 = u_xlat72;
        let x_1401 : f32 = u_xlat73;
        u_xlat72 = ((x_1398 * x_1399) + x_1401);
        let x_1404 : vec4<f32> = u_xlat14;
        let x_1405 : vec2<f32> = vec2<f32>(x_1404.x, x_1404.y);
        let x_1407 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec15;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1414.xy, x_1414.z);
        u_xlat73 = x_1416;
        let x_1418 : f32 = u_xlat19.z;
        let x_1419 : f32 = u_xlat73;
        let x_1421 : f32 = u_xlat72;
        u_xlat72 = ((x_1418 * x_1419) + x_1421);
        let x_1424 : vec4<f32> = u_xlat16;
        let x_1425 : vec2<f32> = vec2<f32>(x_1424.x, x_1424.y);
        let x_1427 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1434 : vec3<f32> = txVec16;
        let x_1436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1434.xy, x_1434.z);
        u_xlat73 = x_1436;
        let x_1438 : f32 = u_xlat19.w;
        let x_1439 : f32 = u_xlat73;
        let x_1441 : f32 = u_xlat72;
        u_xlat72 = ((x_1438 * x_1439) + x_1441);
        let x_1444 : vec4<f32> = u_xlat15;
        let x_1445 : vec2<f32> = vec2<f32>(x_1444.x, x_1444.y);
        let x_1447 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec17;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1454.xy, x_1454.z);
        u_xlat73 = x_1456;
        let x_1458 : f32 = u_xlat20.x;
        let x_1459 : f32 = u_xlat73;
        let x_1461 : f32 = u_xlat72;
        u_xlat72 = ((x_1458 * x_1459) + x_1461);
        let x_1464 : vec4<f32> = u_xlat15;
        let x_1465 : vec2<f32> = vec2<f32>(x_1464.z, x_1464.w);
        let x_1467 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1474 : vec3<f32> = txVec18;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1474.xy, x_1474.z);
        u_xlat73 = x_1476;
        let x_1478 : f32 = u_xlat20.y;
        let x_1479 : f32 = u_xlat73;
        let x_1481 : f32 = u_xlat72;
        u_xlat72 = ((x_1478 * x_1479) + x_1481);
        let x_1484 : vec2<f32> = u_xlat58;
        let x_1486 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec19;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1493.xy, x_1493.z);
        u_xlat73 = x_1495;
        let x_1497 : f32 = u_xlat20.z;
        let x_1498 : f32 = u_xlat73;
        let x_1500 : f32 = u_xlat72;
        u_xlat72 = ((x_1497 * x_1498) + x_1500);
        let x_1503 : vec4<f32> = u_xlat16;
        let x_1504 : vec2<f32> = vec2<f32>(x_1503.z, x_1503.w);
        let x_1506 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1513 : vec3<f32> = txVec20;
        let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1513.xy, x_1513.z);
        u_xlat73 = x_1515;
        let x_1517 : f32 = u_xlat20.w;
        let x_1518 : f32 = u_xlat73;
        let x_1520 : f32 = u_xlat72;
        u_xlat72 = ((x_1517 * x_1518) + x_1520);
        let x_1523 : vec4<f32> = u_xlat17;
        let x_1524 : vec2<f32> = vec2<f32>(x_1523.x, x_1523.y);
        let x_1526 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1533 : vec3<f32> = txVec21;
        let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1533.xy, x_1533.z);
        u_xlat73 = x_1535;
        let x_1537 : f32 = u_xlat21.x;
        let x_1538 : f32 = u_xlat73;
        let x_1540 : f32 = u_xlat72;
        u_xlat72 = ((x_1537 * x_1538) + x_1540);
        let x_1543 : vec4<f32> = u_xlat17;
        let x_1544 : vec2<f32> = vec2<f32>(x_1543.z, x_1543.w);
        let x_1546 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec22;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1553.xy, x_1553.z);
        u_xlat73 = x_1555;
        let x_1557 : f32 = u_xlat21.y;
        let x_1558 : f32 = u_xlat73;
        let x_1560 : f32 = u_xlat72;
        u_xlat72 = ((x_1557 * x_1558) + x_1560);
        let x_1563 : vec3<f32> = u_xlat31;
        let x_1564 : vec2<f32> = vec2<f32>(x_1563.x, x_1563.y);
        let x_1566 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1564.x, x_1564.y, x_1566);
        let x_1573 : vec3<f32> = txVec23;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1573.xy, x_1573.z);
        u_xlat73 = x_1575;
        let x_1577 : f32 = u_xlat21.z;
        let x_1578 : f32 = u_xlat73;
        let x_1580 : f32 = u_xlat72;
        u_xlat72 = ((x_1577 * x_1578) + x_1580);
        let x_1583 : vec2<f32> = u_xlat18;
        let x_1585 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1583.x, x_1583.y, x_1585);
        let x_1592 : vec3<f32> = txVec24;
        let x_1594 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1592.xy, x_1592.z);
        u_xlat73 = x_1594;
        let x_1596 : f32 = u_xlat21.w;
        let x_1597 : f32 = u_xlat73;
        let x_1599 : f32 = u_xlat72;
        u_xlat72 = ((x_1596 * x_1597) + x_1599);
        let x_1602 : vec4<f32> = u_xlat12;
        let x_1603 : vec2<f32> = vec2<f32>(x_1602.x, x_1602.y);
        let x_1605 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1603.x, x_1603.y, x_1605);
        let x_1612 : vec3<f32> = txVec25;
        let x_1614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1612.xy, x_1612.z);
        u_xlat73 = x_1614;
        let x_1616 : f32 = u_xlat8.x;
        let x_1617 : f32 = u_xlat73;
        let x_1619 : f32 = u_xlat72;
        u_xlat72 = ((x_1616 * x_1617) + x_1619);
        let x_1622 : vec4<f32> = u_xlat12;
        let x_1623 : vec2<f32> = vec2<f32>(x_1622.z, x_1622.w);
        let x_1625 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1623.x, x_1623.y, x_1625);
        let x_1632 : vec3<f32> = txVec26;
        let x_1634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1632.xy, x_1632.z);
        u_xlat73 = x_1634;
        let x_1636 : f32 = u_xlat8.y;
        let x_1637 : f32 = u_xlat73;
        let x_1639 : f32 = u_xlat72;
        u_xlat72 = ((x_1636 * x_1637) + x_1639);
        let x_1642 : vec2<f32> = u_xlat55;
        let x_1644 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec27;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1651.xy, x_1651.z);
        u_xlat73 = x_1653;
        let x_1655 : f32 = u_xlat8.z;
        let x_1656 : f32 = u_xlat73;
        let x_1658 : f32 = u_xlat72;
        u_xlat72 = ((x_1655 * x_1656) + x_1658);
        let x_1661 : vec3<f32> = u_xlat28;
        let x_1662 : vec2<f32> = vec2<f32>(x_1661.x, x_1661.y);
        let x_1664 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1662.x, x_1662.y, x_1664);
        let x_1671 : vec3<f32> = txVec28;
        let x_1673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1671.xy, x_1671.z);
        u_xlat28.x = x_1673;
        let x_1676 : f32 = u_xlat8.w;
        let x_1678 : f32 = u_xlat28.x;
        let x_1680 : f32 = u_xlat72;
        u_xlat71 = ((x_1676 * x_1678) + x_1680);
      }
    }
  } else {
    let x_1684 : vec4<f32> = vs_INTERP8;
    let x_1685 : vec2<f32> = vec2<f32>(x_1684.x, x_1684.y);
    let x_1687 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
    let x_1694 : vec3<f32> = txVec29;
    let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1694.xy, x_1694.z);
    u_xlat71 = x_1696;
  }
  let x_1698 : f32 = x_458.x_MainLightShadowParams.x;
  u_xlat28.x = (-(x_1698) + 1.0f);
  let x_1702 : f32 = u_xlat71;
  let x_1704 : f32 = x_458.x_MainLightShadowParams.x;
  let x_1707 : f32 = u_xlat28.x;
  u_xlat71 = ((x_1702 * x_1704) + x_1707);
  let x_1710 : f32 = vs_INTERP8.z;
  u_xlatb28.x = (0.0f >= x_1710);
  let x_1715 : f32 = vs_INTERP8.z;
  u_xlatb50 = (x_1715 >= 1.0f);
  let x_1717 : bool = u_xlatb50;
  let x_1719 : bool = u_xlatb28.x;
  u_xlatb28.x = (x_1717 | x_1719);
  let x_1723 : bool = u_xlatb28.x;
  let x_1724 : f32 = u_xlat71;
  u_xlat71 = select(x_1724, 1.0f, x_1723);
  let x_1726 : vec3<f32> = vs_INTERP0;
  let x_1728 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat28 = (x_1726 + -(x_1728));
  let x_1731 : vec3<f32> = u_xlat28;
  let x_1732 : vec3<f32> = u_xlat28;
  u_xlat28.x = dot(x_1731, x_1732);
  let x_1736 : f32 = u_xlat28.x;
  let x_1738 : f32 = x_458.x_MainLightShadowParams.z;
  let x_1741 : f32 = x_458.x_MainLightShadowParams.w;
  u_xlat28.x = ((x_1736 * x_1738) + x_1741);
  let x_1745 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_1745, 0.0f, 1.0f);
  let x_1748 : f32 = u_xlat71;
  u_xlat50 = (-(x_1748) + 1.0f);
  let x_1752 : f32 = u_xlat28.x;
  let x_1753 : f32 = u_xlat50;
  let x_1755 : f32 = u_xlat71;
  u_xlat71 = ((x_1752 * x_1753) + x_1755);
  let x_1763 : f32 = x_1761.x_MainLightCookieTextureFormat;
  u_xlatb28.x = !((x_1763 == -1.0f));
  let x_1767 : bool = u_xlatb28.x;
  if (x_1767) {
    let x_1770 : vec3<f32> = vs_INTERP0;
    let x_1773 : vec4<f32> = x_1761.x_MainLightWorldToLight[1i];
    let x_1775 : vec2<f32> = (vec2<f32>(x_1770.y, x_1770.y) * vec2<f32>(x_1773.x, x_1773.y));
    let x_1776 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1775.x, x_1775.y, x_1776.z);
    let x_1779 : vec4<f32> = x_1761.x_MainLightWorldToLight[0i];
    let x_1781 : vec3<f32> = vs_INTERP0;
    let x_1784 : vec3<f32> = u_xlat28;
    let x_1786 : vec2<f32> = ((vec2<f32>(x_1779.x, x_1779.y) * vec2<f32>(x_1781.x, x_1781.x)) + vec2<f32>(x_1784.x, x_1784.y));
    let x_1787 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1786.x, x_1786.y, x_1787.z);
    let x_1790 : vec4<f32> = x_1761.x_MainLightWorldToLight[2i];
    let x_1792 : vec3<f32> = vs_INTERP0;
    let x_1795 : vec3<f32> = u_xlat28;
    let x_1797 : vec2<f32> = ((vec2<f32>(x_1790.x, x_1790.y) * vec2<f32>(x_1792.z, x_1792.z)) + vec2<f32>(x_1795.x, x_1795.y));
    let x_1798 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1797.x, x_1797.y, x_1798.z);
    let x_1800 : vec3<f32> = u_xlat28;
    let x_1803 : vec4<f32> = x_1761.x_MainLightWorldToLight[3i];
    let x_1805 : vec2<f32> = (vec2<f32>(x_1800.x, x_1800.y) + vec2<f32>(x_1803.x, x_1803.y));
    let x_1806 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1805.x, x_1805.y, x_1806.z);
    let x_1808 : vec3<f32> = u_xlat28;
    let x_1811 : vec2<f32> = ((vec2<f32>(x_1808.x, x_1808.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1812 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1811.x, x_1811.y, x_1812.z);
    let x_1819 : vec3<f32> = u_xlat28;
    let x_1822 : f32 = x_45.x_GlobalMipBias.x;
    let x_1823 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1819.x, x_1819.y), x_1822);
    u_xlat8 = x_1823;
    let x_1825 : f32 = x_1761.x_MainLightCookieTextureFormat;
    let x_1827 : f32 = x_1761.x_MainLightCookieTextureFormat;
    let x_1829 : f32 = x_1761.x_MainLightCookieTextureFormat;
    let x_1831 : f32 = x_1761.x_MainLightCookieTextureFormat;
    let x_1832 : vec4<f32> = vec4<f32>(x_1825, x_1827, x_1829, x_1831);
    let x_1840 : vec4<bool> = (vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1832.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb28 = vec2<bool>(x_1840.x, x_1840.y);
    let x_1843 : bool = u_xlatb28.y;
    if (x_1843) {
      let x_1848 : f32 = u_xlat8.w;
      x_1844 = x_1848;
    } else {
      let x_1851 : f32 = u_xlat8.x;
      x_1844 = x_1851;
    }
    let x_1852 : f32 = x_1844;
    u_xlat50 = x_1852;
    let x_1854 : bool = u_xlatb28.x;
    if (x_1854) {
      let x_1858 : vec4<f32> = u_xlat8;
      x_1855 = vec3<f32>(x_1858.x, x_1858.y, x_1858.z);
    } else {
      let x_1861 : f32 = u_xlat50;
      x_1855 = vec3<f32>(x_1861, x_1861, x_1861);
    }
    let x_1863 : vec3<f32> = x_1855;
    u_xlat28 = x_1863;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_1868 : vec3<f32> = u_xlat28;
  let x_1870 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat28 = (x_1868 * vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
  let x_1873 : vec3<f32> = u_xlat6;
  let x_1875 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1873.x, x_1873.x, x_1873.x) * x_1875);
  let x_1877 : vec3<f32> = u_xlat4;
  let x_1879 : vec4<f32> = u_xlat1;
  u_xlat73 = dot(-(x_1877), vec3<f32>(x_1879.x, x_1879.y, x_1879.w));
  let x_1882 : f32 = u_xlat73;
  let x_1883 : f32 = u_xlat73;
  u_xlat73 = (x_1882 + x_1883);
  let x_1885 : vec4<f32> = u_xlat1;
  let x_1887 : f32 = u_xlat73;
  let x_1891 : vec3<f32> = u_xlat4;
  let x_1893 : vec3<f32> = ((vec3<f32>(x_1885.x, x_1885.y, x_1885.w) * -(vec3<f32>(x_1887, x_1887, x_1887))) + -(x_1891));
  let x_1894 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
  let x_1896 : vec4<f32> = u_xlat1;
  let x_1898 : vec3<f32> = u_xlat4;
  u_xlat73 = dot(vec3<f32>(x_1896.x, x_1896.y, x_1896.w), x_1898);
  let x_1900 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1900, 0.0f, 1.0f);
  let x_1902 : f32 = u_xlat73;
  u_xlat73 = (-(x_1902) + 1.0f);
  let x_1905 : f32 = u_xlat73;
  let x_1906 : f32 = u_xlat73;
  u_xlat73 = (x_1905 * x_1906);
  let x_1908 : f32 = u_xlat73;
  let x_1909 : f32 = u_xlat73;
  u_xlat73 = (x_1908 * x_1909);
  let x_1912 : f32 = u_xlat68;
  u_xlat74 = ((-(x_1912) * 0.699999988f) + 1.700000048f);
  let x_1918 : f32 = u_xlat68;
  let x_1919 : f32 = u_xlat74;
  u_xlat2.w = (x_1918 * x_1919);
  let x_1922 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1922 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_1935 : vec4<f32> = u_xlat8;
  let x_1938 : f32 = u_xlat2.w;
  let x_1939 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1935.x, x_1935.y, x_1935.z), x_1938);
  u_xlat8 = x_1939;
  let x_1941 : f32 = u_xlat8.w;
  u_xlat68 = (x_1941 + -1.0f);
  let x_1944 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_1945 : f32 = u_xlat68;
  u_xlat68 = ((x_1944 * x_1945) + 1.0f);
  let x_1948 : f32 = u_xlat68;
  u_xlat68 = max(x_1948, 0.0f);
  let x_1950 : f32 = u_xlat68;
  u_xlat68 = log2(x_1950);
  let x_1952 : f32 = u_xlat68;
  let x_1954 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat68 = (x_1952 * x_1954);
  let x_1956 : f32 = u_xlat68;
  u_xlat68 = exp2(x_1956);
  let x_1958 : f32 = u_xlat68;
  let x_1960 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat68 = (x_1958 * x_1960);
  let x_1962 : vec4<f32> = u_xlat8;
  let x_1964 : f32 = u_xlat68;
  let x_1966 : vec3<f32> = (vec3<f32>(x_1962.x, x_1962.y, x_1962.z) * vec3<f32>(x_1964, x_1964, x_1964));
  let x_1967 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
  let x_1969 : vec3<f32> = u_xlat3;
  let x_1971 : vec3<f32> = u_xlat3;
  let x_1975 : vec2<f32> = ((vec2<f32>(x_1969.x, x_1969.x) * vec2<f32>(x_1971.x, x_1971.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1976 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1975.x, x_1975.y, x_1976.z, x_1976.w);
  let x_1979 : f32 = u_xlat9.y;
  u_xlat68 = (1.0f / x_1979);
  let x_1981 : vec3<f32> = u_xlat0;
  let x_1983 : f32 = u_xlat69;
  u_xlat31 = (-(x_1981) + vec3<f32>(x_1983, x_1983, x_1983));
  let x_1986 : f32 = u_xlat73;
  let x_1988 : vec3<f32> = u_xlat31;
  let x_1990 : vec3<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_1986, x_1986, x_1986) * x_1988) + x_1990);
  let x_1992 : f32 = u_xlat68;
  let x_1994 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1992, x_1992, x_1992) * x_1994);
  let x_1996 : vec4<f32> = u_xlat8;
  let x_1998 : vec3<f32> = u_xlat31;
  let x_1999 : vec3<f32> = (vec3<f32>(x_1996.x, x_1996.y, x_1996.z) * x_1998);
  let x_2000 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
  let x_2002 : vec3<f32> = u_xlat5;
  let x_2003 : vec3<f32> = u_xlat7;
  let x_2005 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_2002 * x_2003) + vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
  let x_2008 : f32 = u_xlat71;
  let x_2011 : f32 = x_120.unity_LightData.z;
  u_xlat68 = (x_2008 * x_2011);
  let x_2013 : vec4<f32> = u_xlat1;
  let x_2016 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2013.x, x_2013.y, x_2013.w), vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
  let x_2021 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2021, 0.0f, 1.0f);
  let x_2024 : f32 = u_xlat68;
  let x_2026 : f32 = u_xlat3.x;
  u_xlat68 = (x_2024 * x_2026);
  let x_2028 : f32 = u_xlat68;
  let x_2030 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2028, x_2028, x_2028) * x_2030);
  let x_2032 : vec3<f32> = u_xlat4;
  let x_2034 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2036 : vec3<f32> = (x_2032 + vec3<f32>(x_2034.x, x_2034.y, x_2034.z));
  let x_2037 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2036.x, x_2036.y, x_2036.z, x_2037.w);
  let x_2039 : vec4<f32> = u_xlat8;
  let x_2041 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2039.x, x_2039.y, x_2039.z), vec3<f32>(x_2041.x, x_2041.y, x_2041.z));
  let x_2044 : f32 = u_xlat68;
  u_xlat68 = max(x_2044, 1.17549435e-37f);
  let x_2047 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_2047);
  let x_2049 : f32 = u_xlat68;
  let x_2051 : vec4<f32> = u_xlat8;
  let x_2053 : vec3<f32> = (vec3<f32>(x_2049, x_2049, x_2049) * vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
  let x_2054 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2053.x, x_2053.y, x_2053.z, x_2054.w);
  let x_2056 : vec4<f32> = u_xlat1;
  let x_2058 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2056.x, x_2056.y, x_2056.w), vec3<f32>(x_2058.x, x_2058.y, x_2058.z));
  let x_2061 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2061, 0.0f, 1.0f);
  let x_2064 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2066 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2064.x, x_2064.y, x_2064.z), vec3<f32>(x_2066.x, x_2066.y, x_2066.z));
  let x_2071 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2071, 0.0f, 1.0f);
  let x_2074 : f32 = u_xlat68;
  let x_2075 : f32 = u_xlat68;
  u_xlat68 = (x_2074 * x_2075);
  let x_2077 : f32 = u_xlat68;
  let x_2079 : f32 = u_xlat9.x;
  u_xlat68 = ((x_2077 * x_2079) + 1.000010014f);
  let x_2084 : f32 = u_xlat3.x;
  let x_2086 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2084 * x_2086);
  let x_2089 : f32 = u_xlat68;
  let x_2090 : f32 = u_xlat68;
  u_xlat68 = (x_2089 * x_2090);
  let x_2093 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2093, 0.100000001f);
  let x_2097 : f32 = u_xlat68;
  let x_2099 : f32 = u_xlat3.x;
  u_xlat68 = (x_2097 * x_2099);
  let x_2101 : f32 = u_xlat70;
  let x_2102 : f32 = u_xlat68;
  u_xlat68 = (x_2101 * x_2102);
  let x_2104 : f32 = u_xlat25;
  let x_2105 : f32 = u_xlat68;
  u_xlat68 = (x_2104 / x_2105);
  let x_2107 : vec3<f32> = u_xlat0;
  let x_2108 : f32 = u_xlat68;
  let x_2111 : vec3<f32> = u_xlat7;
  let x_2112 : vec3<f32> = ((x_2107 * vec3<f32>(x_2108, x_2108, x_2108)) + x_2111);
  let x_2113 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2112.x, x_2112.y, x_2112.z, x_2113.w);
  let x_2115 : vec3<f32> = u_xlat28;
  let x_2116 : vec4<f32> = u_xlat8;
  u_xlat28 = (x_2115 * vec3<f32>(x_2116.x, x_2116.y, x_2116.z));
  let x_2120 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2122 : f32 = x_120.unity_LightData.y;
  u_xlat68 = min(x_2120, x_2122);
  let x_2126 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_2126));
  let x_2132 : f32 = x_1761.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2134 : f32 = x_1761.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2136 : f32 = x_1761.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2138 : f32 = x_1761.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2139 : vec4<f32> = vec4<f32>(x_2132, x_2134, x_2136, x_2138);
  let x_2146 : vec4<bool> = (vec4<f32>(x_2139.x, x_2139.y, x_2139.z, x_2139.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2147 : vec2<bool> = vec2<bool>(x_2146.x, x_2146.w);
  let x_2148 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2147.x, x_2148.y, x_2148.z, x_2147.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2159 : u32 = u_xlatu_loop_1;
    let x_2160 : u32 = u_xlatu68;
    if ((x_2159 < x_2160)) {
    } else {
      break;
    }
    let x_2163 : u32 = u_xlatu_loop_1;
    u_xlatu73 = (x_2163 >> 2u);
    let x_2167 : u32 = u_xlatu_loop_1;
    u_xlati74 = bitcast<i32>((x_2167 & 3u));
    let x_2170 : u32 = u_xlatu73;
    let x_2173 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_2170)];
    let x_2183 : i32 = u_xlati74;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2188 : vec4<u32> = indexable[x_2183];
    u_xlat73 = dot(x_2173, bitcast<vec4<f32>>(x_2188));
    let x_2191 : f32 = u_xlat73;
    u_xlatu73 = bitcast<u32>(i32(x_2191));
    let x_2194 : vec3<f32> = vs_INTERP0;
    let x_2206 : u32 = u_xlatu73;
    let x_2209 : vec4<f32> = x_2205.x_AdditionalLightsPosition[bitcast<i32>(x_2206)];
    let x_2212 : u32 = u_xlatu73;
    let x_2215 : vec4<f32> = x_2205.x_AdditionalLightsPosition[bitcast<i32>(x_2212)];
    u_xlat31 = ((-(x_2194) * vec3<f32>(x_2209.w, x_2209.w, x_2209.w)) + vec3<f32>(x_2215.x, x_2215.y, x_2215.z));
    let x_2218 : vec3<f32> = u_xlat31;
    let x_2219 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2218, x_2219);
    let x_2221 : f32 = u_xlat74;
    u_xlat74 = max(x_2221, 6.10351562e-05f);
    let x_2224 : f32 = u_xlat74;
    u_xlat10.x = inverseSqrt(x_2224);
    let x_2228 : vec3<f32> = u_xlat31;
    let x_2229 : vec4<f32> = u_xlat10;
    u_xlat32 = (x_2228 * vec3<f32>(x_2229.x, x_2229.x, x_2229.x));
    let x_2232 : f32 = u_xlat74;
    u_xlat11.x = (1.0f / x_2232);
    let x_2235 : f32 = u_xlat74;
    let x_2236 : u32 = u_xlatu73;
    let x_2239 : f32 = x_2205.x_AdditionalLightsAttenuation[bitcast<i32>(x_2236)].x;
    u_xlat74 = (x_2235 * x_2239);
    let x_2241 : f32 = u_xlat74;
    let x_2243 : f32 = u_xlat74;
    u_xlat74 = ((-(x_2241) * x_2243) + 1.0f);
    let x_2246 : f32 = u_xlat74;
    u_xlat74 = max(x_2246, 0.0f);
    let x_2248 : f32 = u_xlat74;
    let x_2249 : f32 = u_xlat74;
    u_xlat74 = (x_2248 * x_2249);
    let x_2251 : f32 = u_xlat74;
    let x_2253 : f32 = u_xlat11.x;
    u_xlat74 = (x_2251 * x_2253);
    let x_2255 : u32 = u_xlatu73;
    let x_2258 : vec4<f32> = x_2205.x_AdditionalLightsSpotDir[bitcast<i32>(x_2255)];
    let x_2260 : vec3<f32> = u_xlat32;
    u_xlat11.x = dot(vec3<f32>(x_2258.x, x_2258.y, x_2258.z), x_2260);
    let x_2264 : f32 = u_xlat11.x;
    let x_2265 : u32 = u_xlatu73;
    let x_2268 : f32 = x_2205.x_AdditionalLightsAttenuation[bitcast<i32>(x_2265)].z;
    let x_2270 : u32 = u_xlatu73;
    let x_2273 : f32 = x_2205.x_AdditionalLightsAttenuation[bitcast<i32>(x_2270)].w;
    u_xlat11.x = ((x_2264 * x_2268) + x_2273);
    let x_2277 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_2277, 0.0f, 1.0f);
    let x_2281 : f32 = u_xlat11.x;
    let x_2283 : f32 = u_xlat11.x;
    u_xlat11.x = (x_2281 * x_2283);
    let x_2286 : f32 = u_xlat74;
    let x_2288 : f32 = u_xlat11.x;
    u_xlat74 = (x_2286 * x_2288);
    let x_2291 : u32 = u_xlatu73;
    u_xlatu11 = (x_2291 >> 5u);
    let x_2294 : u32 = u_xlatu73;
    u_xlati33 = (1i << bitcast<u32>((bitcast<i32>(x_2294) & 31i)));
    let x_2300 : i32 = u_xlati33;
    let x_2302 : u32 = u_xlatu11;
    let x_2305 : f32 = x_1761.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2302)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_2300) & bitcast<u32>(x_2305)));
    let x_2309 : i32 = u_xlati11;
    if ((x_2309 != 0i)) {
      let x_2319 : u32 = u_xlatu73;
      let x_2322 : f32 = x_2318.x_AdditionalLightsLightTypes[bitcast<i32>(x_2319)].el;
      u_xlati11 = i32(x_2322);
      let x_2324 : i32 = u_xlati11;
      u_xlati33 = select(1i, 0i, (x_2324 != 0i));
      let x_2328 : u32 = u_xlatu73;
      u_xlati55 = (bitcast<i32>(x_2328) << bitcast<u32>(2i));
      let x_2331 : i32 = u_xlati33;
      if ((x_2331 != 0i)) {
        let x_2335 : vec3<f32> = vs_INTERP0;
        let x_2337 : i32 = u_xlati55;
        let x_2340 : i32 = u_xlati55;
        let x_2344 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_2337 + 1i) / 4i)][((x_2340 + 1i) % 4i)];
        let x_2346 : vec3<f32> = (vec3<f32>(x_2335.y, x_2335.y, x_2335.y) * vec3<f32>(x_2344.x, x_2344.y, x_2344.w));
        let x_2347 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2346.x, x_2346.y, x_2346.z, x_2347.w);
        let x_2349 : i32 = u_xlati55;
        let x_2351 : i32 = u_xlati55;
        let x_2354 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[(x_2349 / 4i)][(x_2351 % 4i)];
        let x_2356 : vec3<f32> = vs_INTERP0;
        let x_2359 : vec4<f32> = u_xlat12;
        let x_2361 : vec3<f32> = ((vec3<f32>(x_2354.x, x_2354.y, x_2354.w) * vec3<f32>(x_2356.x, x_2356.x, x_2356.x)) + vec3<f32>(x_2359.x, x_2359.y, x_2359.z));
        let x_2362 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
        let x_2364 : i32 = u_xlati55;
        let x_2367 : i32 = u_xlati55;
        let x_2371 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_2364 + 2i) / 4i)][((x_2367 + 2i) % 4i)];
        let x_2373 : vec3<f32> = vs_INTERP0;
        let x_2376 : vec4<f32> = u_xlat12;
        let x_2378 : vec3<f32> = ((vec3<f32>(x_2371.x, x_2371.y, x_2371.w) * vec3<f32>(x_2373.z, x_2373.z, x_2373.z)) + vec3<f32>(x_2376.x, x_2376.y, x_2376.z));
        let x_2379 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2378.x, x_2378.y, x_2378.z, x_2379.w);
        let x_2381 : vec4<f32> = u_xlat12;
        let x_2383 : i32 = u_xlati55;
        let x_2386 : i32 = u_xlati55;
        let x_2390 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_2383 + 3i) / 4i)][((x_2386 + 3i) % 4i)];
        let x_2392 : vec3<f32> = (vec3<f32>(x_2381.x, x_2381.y, x_2381.z) + vec3<f32>(x_2390.x, x_2390.y, x_2390.w));
        let x_2393 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2392.x, x_2392.y, x_2392.z, x_2393.w);
        let x_2396 : vec4<f32> = u_xlat12;
        let x_2398 : vec4<f32> = u_xlat12;
        let x_2400 : vec2<f32> = (vec2<f32>(x_2396.x, x_2396.y) / vec2<f32>(x_2398.z, x_2398.z));
        let x_2401 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2400.x, x_2401.y, x_2400.y);
        let x_2403 : vec3<f32> = u_xlat33;
        let x_2406 : vec2<f32> = ((vec2<f32>(x_2403.x, x_2403.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2407 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2406.x, x_2407.y, x_2406.y);
        let x_2409 : vec3<f32> = u_xlat33;
        let x_2413 : vec2<f32> = clamp(vec2<f32>(x_2409.x, x_2409.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2414 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2413.x, x_2414.y, x_2413.y);
        let x_2416 : u32 = u_xlatu73;
        let x_2419 : vec4<f32> = x_2318.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2416)];
        let x_2421 : vec3<f32> = u_xlat33;
        let x_2424 : u32 = u_xlatu73;
        let x_2427 : vec4<f32> = x_2318.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2424)];
        let x_2429 : vec2<f32> = ((vec2<f32>(x_2419.x, x_2419.y) * vec2<f32>(x_2421.x, x_2421.z)) + vec2<f32>(x_2427.z, x_2427.w));
        let x_2430 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2429.x, x_2430.y, x_2429.y);
      } else {
        let x_2434 : i32 = u_xlati11;
        u_xlatb11 = (x_2434 == 1i);
        let x_2436 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_2436);
        let x_2438 : i32 = u_xlati11;
        if ((x_2438 != 0i)) {
          let x_2442 : vec3<f32> = vs_INTERP0;
          let x_2444 : i32 = u_xlati55;
          let x_2447 : i32 = u_xlati55;
          let x_2451 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_2444 + 1i) / 4i)][((x_2447 + 1i) % 4i)];
          let x_2453 : vec2<f32> = (vec2<f32>(x_2442.y, x_2442.y) * vec2<f32>(x_2451.x, x_2451.y));
          let x_2454 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2453.x, x_2453.y, x_2454.z, x_2454.w);
          let x_2456 : i32 = u_xlati55;
          let x_2458 : i32 = u_xlati55;
          let x_2461 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[(x_2456 / 4i)][(x_2458 % 4i)];
          let x_2463 : vec3<f32> = vs_INTERP0;
          let x_2466 : vec4<f32> = u_xlat12;
          let x_2468 : vec2<f32> = ((vec2<f32>(x_2461.x, x_2461.y) * vec2<f32>(x_2463.x, x_2463.x)) + vec2<f32>(x_2466.x, x_2466.y));
          let x_2469 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2468.x, x_2468.y, x_2469.z, x_2469.w);
          let x_2471 : i32 = u_xlati55;
          let x_2474 : i32 = u_xlati55;
          let x_2478 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_2471 + 2i) / 4i)][((x_2474 + 2i) % 4i)];
          let x_2480 : vec3<f32> = vs_INTERP0;
          let x_2483 : vec4<f32> = u_xlat12;
          let x_2485 : vec2<f32> = ((vec2<f32>(x_2478.x, x_2478.y) * vec2<f32>(x_2480.z, x_2480.z)) + vec2<f32>(x_2483.x, x_2483.y));
          let x_2486 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2485.x, x_2485.y, x_2486.z, x_2486.w);
          let x_2488 : vec4<f32> = u_xlat12;
          let x_2490 : i32 = u_xlati55;
          let x_2493 : i32 = u_xlati55;
          let x_2497 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_2490 + 3i) / 4i)][((x_2493 + 3i) % 4i)];
          let x_2499 : vec2<f32> = (vec2<f32>(x_2488.x, x_2488.y) + vec2<f32>(x_2497.x, x_2497.y));
          let x_2500 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2499.x, x_2499.y, x_2500.z, x_2500.w);
          let x_2502 : vec4<f32> = u_xlat12;
          let x_2505 : vec2<f32> = ((vec2<f32>(x_2502.x, x_2502.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2506 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2505.x, x_2505.y, x_2506.z, x_2506.w);
          let x_2508 : vec4<f32> = u_xlat12;
          let x_2510 : vec2<f32> = fract(vec2<f32>(x_2508.x, x_2508.y));
          let x_2511 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2510.x, x_2510.y, x_2511.z, x_2511.w);
          let x_2513 : u32 = u_xlatu73;
          let x_2516 : vec4<f32> = x_2318.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2513)];
          let x_2518 : vec4<f32> = u_xlat12;
          let x_2521 : u32 = u_xlatu73;
          let x_2524 : vec4<f32> = x_2318.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2521)];
          let x_2526 : vec2<f32> = ((vec2<f32>(x_2516.x, x_2516.y) * vec2<f32>(x_2518.x, x_2518.y)) + vec2<f32>(x_2524.z, x_2524.w));
          let x_2527 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2526.x, x_2527.y, x_2526.y);
        } else {
          let x_2530 : vec3<f32> = vs_INTERP0;
          let x_2532 : i32 = u_xlati55;
          let x_2535 : i32 = u_xlati55;
          let x_2539 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_2532 + 1i) / 4i)][((x_2535 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2530.y, x_2530.y, x_2530.y, x_2530.y) * x_2539);
          let x_2541 : i32 = u_xlati55;
          let x_2543 : i32 = u_xlati55;
          let x_2546 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[(x_2541 / 4i)][(x_2543 % 4i)];
          let x_2547 : vec3<f32> = vs_INTERP0;
          let x_2550 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2546 * vec4<f32>(x_2547.x, x_2547.x, x_2547.x, x_2547.x)) + x_2550);
          let x_2552 : i32 = u_xlati55;
          let x_2555 : i32 = u_xlati55;
          let x_2559 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_2552 + 2i) / 4i)][((x_2555 + 2i) % 4i)];
          let x_2560 : vec3<f32> = vs_INTERP0;
          let x_2563 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2559 * vec4<f32>(x_2560.z, x_2560.z, x_2560.z, x_2560.z)) + x_2563);
          let x_2565 : vec4<f32> = u_xlat12;
          let x_2566 : i32 = u_xlati55;
          let x_2569 : i32 = u_xlati55;
          let x_2573 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_2566 + 3i) / 4i)][((x_2569 + 3i) % 4i)];
          u_xlat12 = (x_2565 + x_2573);
          let x_2575 : vec4<f32> = u_xlat12;
          let x_2577 : vec4<f32> = u_xlat12;
          let x_2579 : vec3<f32> = (vec3<f32>(x_2575.x, x_2575.y, x_2575.z) / vec3<f32>(x_2577.w, x_2577.w, x_2577.w));
          let x_2580 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2579.x, x_2579.y, x_2579.z, x_2580.w);
          let x_2582 : vec4<f32> = u_xlat12;
          let x_2584 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_2582.x, x_2582.y, x_2582.z), vec3<f32>(x_2584.x, x_2584.y, x_2584.z));
          let x_2589 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_2589);
          let x_2592 : vec4<f32> = u_xlat11;
          let x_2594 : vec4<f32> = u_xlat12;
          let x_2596 : vec3<f32> = (vec3<f32>(x_2592.x, x_2592.x, x_2592.x) * vec3<f32>(x_2594.x, x_2594.y, x_2594.z));
          let x_2597 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2596.x, x_2596.y, x_2596.z, x_2597.w);
          let x_2599 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_2599.x, x_2599.y, x_2599.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2606 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_2606, 0.000001f);
          let x_2611 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_2611);
          let x_2614 : vec4<f32> = u_xlat11;
          let x_2616 : vec4<f32> = u_xlat12;
          let x_2618 : vec3<f32> = (vec3<f32>(x_2614.x, x_2614.x, x_2614.x) * vec3<f32>(x_2616.z, x_2616.x, x_2616.y));
          let x_2619 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
          let x_2622 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2622);
          let x_2626 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2626, 0.0f, 1.0f);
          let x_2630 : vec4<f32> = u_xlat13;
          let x_2633 : vec4<bool> = (vec4<f32>(x_2630.y, x_2630.z, x_2630.y, x_2630.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb56 = vec2<bool>(x_2633.x, x_2633.y);
          let x_2637 : bool = u_xlatb56.x;
          if (x_2637) {
            let x_2642 : f32 = u_xlat13.x;
            x_2638 = x_2642;
          } else {
            let x_2645 : f32 = u_xlat13.x;
            x_2638 = -(x_2645);
          }
          let x_2647 : f32 = x_2638;
          u_xlat56.x = x_2647;
          let x_2650 : bool = u_xlatb56.y;
          if (x_2650) {
            let x_2655 : f32 = u_xlat13.x;
            x_2651 = x_2655;
          } else {
            let x_2658 : f32 = u_xlat13.x;
            x_2651 = -(x_2658);
          }
          let x_2660 : f32 = x_2651;
          u_xlat56.y = x_2660;
          let x_2662 : vec4<f32> = u_xlat12;
          let x_2664 : vec4<f32> = u_xlat11;
          let x_2667 : vec2<f32> = u_xlat56;
          let x_2668 : vec2<f32> = ((vec2<f32>(x_2662.x, x_2662.y) * vec2<f32>(x_2664.x, x_2664.x)) + x_2667);
          let x_2669 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2668.x, x_2669.y, x_2668.y, x_2669.w);
          let x_2671 : vec4<f32> = u_xlat11;
          let x_2674 : vec2<f32> = ((vec2<f32>(x_2671.x, x_2671.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2675 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2674.x, x_2675.y, x_2674.y, x_2675.w);
          let x_2677 : vec4<f32> = u_xlat11;
          let x_2681 : vec2<f32> = clamp(vec2<f32>(x_2677.x, x_2677.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2682 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2681.x, x_2682.y, x_2681.y, x_2682.w);
          let x_2684 : u32 = u_xlatu73;
          let x_2687 : vec4<f32> = x_2318.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2684)];
          let x_2689 : vec4<f32> = u_xlat11;
          let x_2692 : u32 = u_xlatu73;
          let x_2695 : vec4<f32> = x_2318.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2692)];
          let x_2697 : vec2<f32> = ((vec2<f32>(x_2687.x, x_2687.y) * vec2<f32>(x_2689.x, x_2689.z)) + vec2<f32>(x_2695.z, x_2695.w));
          let x_2698 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2697.x, x_2698.y, x_2697.y);
        }
      }
      let x_2705 : vec3<f32> = u_xlat33;
      let x_2708 : f32 = x_45.x_GlobalMipBias.x;
      let x_2709 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2705.x, x_2705.z), x_2708);
      u_xlat11 = x_2709;
      let x_2712 : bool = u_xlatb3.w;
      if (x_2712) {
        let x_2717 : f32 = u_xlat11.w;
        x_2713 = x_2717;
      } else {
        let x_2720 : f32 = u_xlat11.x;
        x_2713 = x_2720;
      }
      let x_2721 : f32 = x_2713;
      u_xlat77 = x_2721;
      let x_2723 : bool = u_xlatb3.x;
      if (x_2723) {
        let x_2727 : vec4<f32> = u_xlat11;
        x_2724 = vec3<f32>(x_2727.x, x_2727.y, x_2727.z);
      } else {
        let x_2730 : f32 = u_xlat77;
        x_2724 = vec3<f32>(x_2730, x_2730, x_2730);
      }
      let x_2732 : vec3<f32> = x_2724;
      let x_2733 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2732.x, x_2732.y, x_2732.z, x_2733.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2739 : vec4<f32> = u_xlat11;
    let x_2741 : u32 = u_xlatu73;
    let x_2744 : vec4<f32> = x_2205.x_AdditionalLightsColor[bitcast<i32>(x_2741)];
    let x_2746 : vec3<f32> = (vec3<f32>(x_2739.x, x_2739.y, x_2739.z) * vec3<f32>(x_2744.x, x_2744.y, x_2744.z));
    let x_2747 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2747.w);
    let x_2749 : vec3<f32> = u_xlat6;
    let x_2751 : vec4<f32> = u_xlat11;
    let x_2753 : vec3<f32> = (vec3<f32>(x_2749.x, x_2749.x, x_2749.x) * vec3<f32>(x_2751.x, x_2751.y, x_2751.z));
    let x_2754 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2753.x, x_2753.y, x_2753.z, x_2754.w);
    let x_2756 : vec4<f32> = u_xlat1;
    let x_2758 : vec3<f32> = u_xlat32;
    u_xlat73 = dot(vec3<f32>(x_2756.x, x_2756.y, x_2756.w), x_2758);
    let x_2760 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2760, 0.0f, 1.0f);
    let x_2762 : f32 = u_xlat73;
    let x_2763 : f32 = u_xlat74;
    u_xlat73 = (x_2762 * x_2763);
    let x_2765 : f32 = u_xlat73;
    let x_2767 : vec4<f32> = u_xlat11;
    let x_2769 : vec3<f32> = (vec3<f32>(x_2765, x_2765, x_2765) * vec3<f32>(x_2767.x, x_2767.y, x_2767.z));
    let x_2770 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2769.x, x_2769.y, x_2769.z, x_2770.w);
    let x_2772 : vec3<f32> = u_xlat31;
    let x_2773 : vec4<f32> = u_xlat10;
    let x_2776 : vec3<f32> = u_xlat4;
    u_xlat31 = ((x_2772 * vec3<f32>(x_2773.x, x_2773.x, x_2773.x)) + x_2776);
    let x_2778 : vec3<f32> = u_xlat31;
    let x_2779 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(x_2778, x_2779);
    let x_2781 : f32 = u_xlat73;
    u_xlat73 = max(x_2781, 1.17549435e-37f);
    let x_2783 : f32 = u_xlat73;
    u_xlat73 = inverseSqrt(x_2783);
    let x_2785 : f32 = u_xlat73;
    let x_2787 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_2785, x_2785, x_2785) * x_2787);
    let x_2789 : vec4<f32> = u_xlat1;
    let x_2791 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(vec3<f32>(x_2789.x, x_2789.y, x_2789.w), x_2791);
    let x_2793 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2793, 0.0f, 1.0f);
    let x_2795 : vec3<f32> = u_xlat32;
    let x_2796 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2795, x_2796);
    let x_2798 : f32 = u_xlat74;
    u_xlat74 = clamp(x_2798, 0.0f, 1.0f);
    let x_2800 : f32 = u_xlat73;
    let x_2801 : f32 = u_xlat73;
    u_xlat73 = (x_2800 * x_2801);
    let x_2803 : f32 = u_xlat73;
    let x_2805 : f32 = u_xlat9.x;
    u_xlat73 = ((x_2803 * x_2805) + 1.000010014f);
    let x_2808 : f32 = u_xlat74;
    let x_2809 : f32 = u_xlat74;
    u_xlat74 = (x_2808 * x_2809);
    let x_2811 : f32 = u_xlat73;
    let x_2812 : f32 = u_xlat73;
    u_xlat73 = (x_2811 * x_2812);
    let x_2814 : f32 = u_xlat74;
    u_xlat74 = max(x_2814, 0.100000001f);
    let x_2816 : f32 = u_xlat73;
    let x_2817 : f32 = u_xlat74;
    u_xlat73 = (x_2816 * x_2817);
    let x_2819 : f32 = u_xlat70;
    let x_2820 : f32 = u_xlat73;
    u_xlat73 = (x_2819 * x_2820);
    let x_2822 : f32 = u_xlat25;
    let x_2823 : f32 = u_xlat73;
    u_xlat73 = (x_2822 / x_2823);
    let x_2825 : vec3<f32> = u_xlat0;
    let x_2826 : f32 = u_xlat73;
    let x_2829 : vec3<f32> = u_xlat7;
    u_xlat31 = ((x_2825 * vec3<f32>(x_2826, x_2826, x_2826)) + x_2829);
    let x_2831 : vec3<f32> = u_xlat31;
    let x_2832 : vec4<f32> = u_xlat11;
    let x_2835 : vec4<f32> = u_xlat8;
    let x_2837 : vec3<f32> = ((x_2831 * vec3<f32>(x_2832.x, x_2832.y, x_2832.z)) + vec3<f32>(x_2835.x, x_2835.y, x_2835.z));
    let x_2838 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2837.x, x_2837.y, x_2837.z, x_2838.w);

    continuing {
      let x_2840 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2840 + bitcast<u32>(1i));
    }
  }
  let x_2842 : vec3<f32> = u_xlat5;
  let x_2843 : f32 = u_xlat47;
  let x_2846 : vec3<f32> = u_xlat28;
  u_xlat0 = ((x_2842 * vec3<f32>(x_2843, x_2843, x_2843)) + x_2846);
  let x_2848 : vec4<f32> = u_xlat8;
  let x_2850 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2848.x, x_2848.y, x_2848.z) + x_2850);
  let x_2852 : vec4<f32> = u_xlat2;
  let x_2854 : f32 = u_xlat45;
  let x_2857 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2852.x, x_2852.y, x_2852.z) * vec3<f32>(x_2854, x_2854, x_2854)) + x_2857);
  let x_2859 : f32 = u_xlat66;
  let x_2860 : f32 = u_xlat66;
  u_xlat66 = (x_2859 * -(x_2860));
  let x_2863 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2863);
  let x_2865 : vec3<f32> = u_xlat0;
  let x_2868 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_2865 + -(vec3<f32>(x_2868.x, x_2868.y, x_2868.z)));
  let x_2874 : f32 = u_xlat66;
  let x_2876 : vec3<f32> = u_xlat0;
  let x_2879 : vec4<f32> = x_45.unity_FogColor;
  let x_2881 : vec3<f32> = ((vec3<f32>(x_2874, x_2874, x_2874) * x_2876) + vec3<f32>(x_2879.x, x_2879.y, x_2879.z));
  let x_2882 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2881.x, x_2881.y, x_2881.z, x_2882.w);
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

