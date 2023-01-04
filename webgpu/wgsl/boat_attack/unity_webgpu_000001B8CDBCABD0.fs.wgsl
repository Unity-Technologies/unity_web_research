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

@group(0) @binding(7) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(9) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(19) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(10) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(20) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_120 : UnityPerDraw;

@group(0) @binding(8) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_283 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2018 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2469 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2581 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat5 : vec4<f32>;
  var x_270 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu66 : u32;
  var u_xlati66 : i32;
  var u_xlat69 : f32;
  var u_xlat25 : f32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlat72 : f32;
  var u_xlat47 : f32;
  var u_xlatb71 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb7 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat29 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat74 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat31 : vec3<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat32 : vec3<f32>;
  var u_xlat60 : vec2<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var u_xlat21 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat73 : f32;
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
  var u_xlatb27 : vec2<bool>;
  var u_xlatb49 : bool;
  var x_1970 : f32;
  var u_xlat27 : vec3<f32>;
  var u_xlat49 : f32;
  var x_2100 : f32;
  var x_2111 : vec3<f32>;
  var u_xlatu68 : u32;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu73 : u32;
  var u_xlati74 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu11 : u32;
  var u_xlati33 : i32;
  var u_xlati11 : i32;
  var u_xlati55 : i32;
  var u_xlat33 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlatb56 : vec2<bool>;
  var u_xlat56 : vec2<f32>;
  var x_2901 : f32;
  var x_2914 : f32;
  var u_xlat77 : f32;
  var x_2976 : f32;
  var x_2987 : vec3<f32>;
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
  let x_306 : vec3<f32> = (x_301 + -(vec3<f32>(x_303.x, x_303.y, x_303.z)));
  let x_307 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_310 : vec3<f32> = vs_INTERP0;
  let x_313 : vec4<f32> = x_283.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_310 + -(vec3<f32>(x_313.x, x_313.y, x_313.z)));
  let x_317 : vec4<f32> = u_xlat5;
  let x_319 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_317.x, x_317.y, x_317.z), vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_323 : vec4<f32> = u_xlat6;
  let x_325 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_323.x, x_323.y, x_323.z), vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_329 : vec4<f32> = u_xlat7;
  let x_331 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_329.x, x_329.y, x_329.z), vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_335 : vec3<f32> = u_xlat8;
  let x_336 : vec3<f32> = u_xlat8;
  u_xlat5.w = dot(x_335, x_336);
  let x_342 : vec4<f32> = u_xlat5;
  let x_345 : vec4<f32> = x_283.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_342 < x_345);
  let x_348 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_348);
  let x_352 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_352);
  let x_356 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_356);
  let x_360 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_360);
  let x_364 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_364);
  let x_369 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_369);
  let x_373 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_373);
  let x_376 : vec4<f32> = u_xlat5;
  let x_378 : vec4<f32> = u_xlat6;
  let x_380 : vec3<f32> = (vec3<f32>(x_376.x, x_376.y, x_376.z) + vec3<f32>(x_378.y, x_378.z, x_378.w));
  let x_381 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec4<f32> = u_xlat5;
  let x_386 : vec3<f32> = max(vec3<f32>(x_383.x, x_383.y, x_383.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_387 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_387.x, x_386.x, x_386.y, x_386.z);
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat66 = dot(x_389, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_394 : f32 = u_xlat66;
  u_xlat66 = (-(x_394) + 4.0f);
  let x_399 : f32 = u_xlat66;
  u_xlatu66 = u32(x_399);
  let x_403 : u32 = u_xlatu66;
  u_xlati66 = (bitcast<i32>(x_403) << bitcast<u32>(2i));
  let x_406 : vec3<f32> = vs_INTERP0;
  let x_408 : i32 = u_xlati66;
  let x_411 : i32 = u_xlati66;
  let x_415 : vec4<f32> = x_283.x_MainLightWorldToShadow[((x_408 + 1i) / 4i)][((x_411 + 1i) % 4i)];
  let x_417 : vec3<f32> = (vec3<f32>(x_406.y, x_406.y, x_406.y) * vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : i32 = u_xlati66;
  let x_422 : i32 = u_xlati66;
  let x_425 : vec4<f32> = x_283.x_MainLightWorldToShadow[(x_420 / 4i)][(x_422 % 4i)];
  let x_427 : vec3<f32> = vs_INTERP0;
  let x_430 : vec4<f32> = u_xlat5;
  let x_432 : vec3<f32> = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427.x, x_427.x, x_427.x)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_435 : i32 = u_xlati66;
  let x_438 : i32 = u_xlati66;
  let x_442 : vec4<f32> = x_283.x_MainLightWorldToShadow[((x_435 + 2i) / 4i)][((x_438 + 2i) % 4i)];
  let x_444 : vec3<f32> = vs_INTERP0;
  let x_447 : vec4<f32> = u_xlat5;
  let x_449 : vec3<f32> = ((vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(x_444.z, x_444.z, x_444.z)) + vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat5;
  let x_454 : i32 = u_xlati66;
  let x_457 : i32 = u_xlati66;
  let x_461 : vec4<f32> = x_283.x_MainLightWorldToShadow[((x_454 + 3i) / 4i)][((x_457 + 3i) % 4i)];
  let x_463 : vec3<f32> = (vec3<f32>(x_452.x, x_452.y, x_452.z) + vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_467 : f32 = vs_INTERP0.y;
  let x_469 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat66 = (x_467 * x_469);
  let x_472 : f32 = x_45.unity_MatrixV[0i].z;
  let x_474 : f32 = vs_INTERP0.x;
  let x_476 : f32 = u_xlat66;
  u_xlat66 = ((x_472 * x_474) + x_476);
  let x_479 : f32 = x_45.unity_MatrixV[2i].z;
  let x_481 : f32 = vs_INTERP0.z;
  let x_483 : f32 = u_xlat66;
  u_xlat66 = ((x_479 * x_481) + x_483);
  let x_485 : f32 = u_xlat66;
  let x_487 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat66 = (x_485 + x_487);
  let x_489 : f32 = u_xlat66;
  let x_493 : f32 = x_45.x_ProjectionParams.y;
  u_xlat66 = (-(x_489) + -(x_493));
  let x_496 : f32 = u_xlat66;
  u_xlat66 = max(x_496, 0.0f);
  let x_498 : f32 = u_xlat66;
  let x_501 : f32 = x_45.unity_FogParams.x;
  u_xlat66 = (x_498 * x_501);
  let x_510 : vec2<f32> = vs_INTERP4;
  let x_512 : f32 = x_45.x_GlobalMipBias.x;
  let x_513 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_510, x_512);
  u_xlat6 = x_513;
  let x_518 : vec2<f32> = vs_INTERP4;
  let x_520 : f32 = x_45.x_GlobalMipBias.x;
  let x_521 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_518, x_520);
  let x_522 : vec3<f32> = vec3<f32>(x_521.x, x_521.y, x_521.z);
  let x_523 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat6;
  let x_529 : vec3<f32> = (vec3<f32>(x_525.x, x_525.y, x_525.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_530 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat1;
  let x_534 : vec4<f32> = u_xlat6;
  u_xlat68 = dot(vec3<f32>(x_532.x, x_532.y, x_532.w), vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : f32 = u_xlat68;
  u_xlat68 = (x_537 + 0.5f);
  let x_540 : f32 = u_xlat68;
  let x_542 : vec4<f32> = u_xlat7;
  let x_544 : vec3<f32> = (vec3<f32>(x_540, x_540, x_540) * vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_548 : f32 = u_xlat6.w;
  u_xlat68 = max(x_548, 0.0001f);
  let x_551 : vec4<f32> = u_xlat6;
  let x_553 : f32 = u_xlat68;
  let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) / vec3<f32>(x_553, x_553, x_553));
  let x_556 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_560 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_561 : vec2<f32> = vec2<f32>(x_560.x, x_560.y);
  let x_565 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_561.x, x_561.y));
  let x_566 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
  let x_568 : vec4<f32> = u_xlat7;
  let x_570 : vec4<f32> = hlslcc_FragCoord;
  let x_572 : vec2<f32> = (vec2<f32>(x_568.x, x_568.y) * vec2<f32>(x_570.x, x_570.y));
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_576 : f32 = u_xlat7.y;
  let x_579 : f32 = x_45.x_ScaleBiasRt.x;
  let x_582 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat68 = ((x_576 * x_579) + x_582);
  let x_584 : f32 = u_xlat68;
  u_xlat7.z = (-(x_584) + 1.0f);
  let x_588 : vec3<f32> = u_xlat3;
  let x_589 : vec2<f32> = vec2<f32>(x_588.x, x_588.y);
  let x_590 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_589.x, x_589.y, x_590.z);
  let x_592 : vec3<f32> = u_xlat3;
  let x_596 : vec2<f32> = clamp(vec2<f32>(x_592.x, x_592.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_597 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_596.x, x_596.y, x_597.z);
  let x_600 : f32 = u_xlat3.x;
  u_xlat68 = ((-(x_600) * 0.959999979f) + 0.959999979f);
  let x_606 : f32 = u_xlat68;
  let x_609 : f32 = u_xlat3.y;
  u_xlat69 = (-(x_606) + x_609);
  let x_611 : vec3<f32> = u_xlat0;
  let x_612 : f32 = u_xlat68;
  u_xlat8 = (x_611 * vec3<f32>(x_612, x_612, x_612));
  let x_615 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_615 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_619 : vec3<f32> = u_xlat3;
  let x_621 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_619.x, x_619.x, x_619.x) * x_621) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_627 : f32 = u_xlat3.y;
  u_xlat68 = (-(x_627) + 1.0f);
  let x_630 : f32 = u_xlat68;
  let x_631 : f32 = u_xlat68;
  u_xlat3.x = (x_630 * x_631);
  let x_635 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_635, 0.0078125f);
  let x_641 : f32 = u_xlat3.x;
  let x_643 : f32 = u_xlat3.x;
  u_xlat25 = (x_641 * x_643);
  let x_645 : f32 = u_xlat69;
  u_xlat69 = (x_645 + 1.0f);
  let x_647 : f32 = u_xlat69;
  u_xlat69 = min(x_647, 1.0f);
  let x_651 : f32 = u_xlat3.x;
  u_xlat70 = ((x_651 * 4.0f) + 2.0f);
  let x_660 : vec4<f32> = u_xlat7;
  let x_663 : f32 = x_45.x_GlobalMipBias.x;
  let x_664 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_660.x, x_660.z), x_663);
  u_xlat71 = x_664.x;
  let x_667 : f32 = u_xlat71;
  u_xlat72 = (x_667 + -1.0f);
  let x_670 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_671 : f32 = u_xlat72;
  u_xlat72 = ((x_670 * x_671) + 1.0f);
  let x_676 : f32 = u_xlat3.z;
  let x_677 : f32 = u_xlat71;
  u_xlat47 = min(x_676, x_677);
  let x_681 : f32 = x_283.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_681);
  let x_683 : bool = u_xlatb71;
  if (x_683) {
    let x_687 : f32 = x_283.x_MainLightShadowParams.y;
    u_xlatb71 = (x_687 == 1.0f);
    let x_689 : bool = u_xlatb71;
    if (x_689) {
      let x_692 : vec4<f32> = u_xlat5;
      let x_696 : vec4<f32> = x_283.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_692.x, x_692.y, x_692.x, x_692.y) + x_696);
      let x_699 : vec4<f32> = u_xlat7;
      let x_700 : vec2<f32> = vec2<f32>(x_699.x, x_699.y);
      let x_702 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_700.x, x_700.y, x_702);
      let x_715 : vec3<f32> = txVec0;
      let x_717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_715.xy, x_715.z);
      u_xlat9.x = x_717;
      let x_720 : vec4<f32> = u_xlat7;
      let x_721 : vec2<f32> = vec2<f32>(x_720.z, x_720.w);
      let x_723 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_721.x, x_721.y, x_723);
      let x_730 : vec3<f32> = txVec1;
      let x_732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_730.xy, x_730.z);
      u_xlat9.y = x_732;
      let x_734 : vec4<f32> = u_xlat5;
      let x_738 : vec4<f32> = x_283.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_734.x, x_734.y, x_734.x, x_734.y) + x_738);
      let x_741 : vec4<f32> = u_xlat7;
      let x_742 : vec2<f32> = vec2<f32>(x_741.x, x_741.y);
      let x_744 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_742.x, x_742.y, x_744);
      let x_751 : vec3<f32> = txVec2;
      let x_753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_751.xy, x_751.z);
      u_xlat9.z = x_753;
      let x_756 : vec4<f32> = u_xlat7;
      let x_757 : vec2<f32> = vec2<f32>(x_756.z, x_756.w);
      let x_759 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_757.x, x_757.y, x_759);
      let x_766 : vec3<f32> = txVec3;
      let x_768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_766.xy, x_766.z);
      u_xlat9.w = x_768;
      let x_770 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_770, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_777 : f32 = x_283.x_MainLightShadowParams.y;
      u_xlatb7 = (x_777 == 2.0f);
      let x_779 : bool = u_xlatb7;
      if (x_779) {
        let x_782 : vec4<f32> = u_xlat5;
        let x_785 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_789 : vec2<f32> = ((vec2<f32>(x_782.x, x_782.y) * vec2<f32>(x_785.z, x_785.w)) + vec2<f32>(0.5f, 0.5f));
        let x_790 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_789.x, x_789.y, x_790.z, x_790.w);
        let x_792 : vec4<f32> = u_xlat7;
        let x_794 : vec2<f32> = floor(vec2<f32>(x_792.x, x_792.y));
        let x_795 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_794.x, x_794.y, x_795.z, x_795.w);
        let x_799 : vec4<f32> = u_xlat5;
        let x_802 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_805 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_799.x, x_799.y) * vec2<f32>(x_802.z, x_802.w)) + -(vec2<f32>(x_805.x, x_805.y)));
        let x_809 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_809.x, x_809.x, x_809.y, x_809.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_814 : vec4<f32> = u_xlat9;
        let x_816 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_814.x, x_814.x, x_814.z, x_814.z) * vec4<f32>(x_816.x, x_816.x, x_816.z, x_816.z));
        let x_819 : vec4<f32> = u_xlat10;
        let x_823 : vec2<f32> = (vec2<f32>(x_819.y, x_819.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_824 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_823.x, x_824.y, x_823.y, x_824.w);
        let x_826 : vec4<f32> = u_xlat10;
        let x_829 : vec2<f32> = u_xlat51;
        let x_831 : vec2<f32> = ((vec2<f32>(x_826.x, x_826.z) * vec2<f32>(0.5f, 0.5f)) + -(x_829));
        let x_832 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_831.x, x_831.y, x_832.z, x_832.w);
        let x_835 : vec2<f32> = u_xlat51;
        u_xlat54 = (-(x_835) + vec2<f32>(1.0f, 1.0f));
        let x_839 : vec2<f32> = u_xlat51;
        let x_841 : vec2<f32> = min(x_839, vec2<f32>(0.0f, 0.0f));
        let x_842 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat11;
        let x_847 : vec4<f32> = u_xlat11;
        let x_850 : vec2<f32> = u_xlat54;
        let x_851 : vec2<f32> = ((-(vec2<f32>(x_844.x, x_844.y)) * vec2<f32>(x_847.x, x_847.y)) + x_850);
        let x_852 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_851.x, x_851.y, x_852.z, x_852.w);
        let x_854 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_854, vec2<f32>(0.0f, 0.0f));
        let x_856 : vec2<f32> = u_xlat51;
        let x_858 : vec2<f32> = u_xlat51;
        let x_860 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_856) * x_858) + vec2<f32>(x_860.y, x_860.w));
        let x_863 : vec4<f32> = u_xlat11;
        let x_865 : vec2<f32> = (vec2<f32>(x_863.x, x_863.y) + vec2<f32>(1.0f, 1.0f));
        let x_866 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_865.x, x_865.y, x_866.z, x_866.w);
        let x_868 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_868 + vec2<f32>(1.0f, 1.0f));
        let x_871 : vec4<f32> = u_xlat10;
        let x_875 : vec2<f32> = (vec2<f32>(x_871.x, x_871.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_876 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_878 : vec2<f32> = u_xlat54;
        let x_879 : vec2<f32> = (x_878 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_880 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
        let x_882 : vec4<f32> = u_xlat11;
        let x_884 : vec2<f32> = (vec2<f32>(x_882.x, x_882.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_885 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_884.x, x_884.y, x_885.z, x_885.w);
        let x_888 : vec2<f32> = u_xlat51;
        let x_889 : vec2<f32> = (x_888 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_890 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_889.x, x_889.y, x_890.z, x_890.w);
        let x_892 : vec4<f32> = u_xlat9;
        u_xlat51 = (vec2<f32>(x_892.y, x_892.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_896 : f32 = u_xlat11.x;
        u_xlat12.z = x_896;
        let x_899 : f32 = u_xlat51.x;
        u_xlat12.w = x_899;
        let x_902 : f32 = u_xlat13.x;
        u_xlat10.z = x_902;
        let x_905 : f32 = u_xlat9.x;
        u_xlat10.w = x_905;
        let x_908 : vec4<f32> = u_xlat10;
        let x_910 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_908.z, x_908.w, x_908.x, x_908.z) + vec4<f32>(x_910.z, x_910.w, x_910.x, x_910.z));
        let x_914 : f32 = u_xlat12.y;
        u_xlat11.z = x_914;
        let x_917 : f32 = u_xlat51.y;
        u_xlat11.w = x_917;
        let x_920 : f32 = u_xlat10.y;
        u_xlat13.z = x_920;
        let x_923 : f32 = u_xlat9.z;
        u_xlat13.w = x_923;
        let x_925 : vec4<f32> = u_xlat11;
        let x_927 : vec4<f32> = u_xlat13;
        let x_929 : vec3<f32> = (vec3<f32>(x_925.z, x_925.y, x_925.w) + vec3<f32>(x_927.z, x_927.y, x_927.w));
        let x_930 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
        let x_932 : vec4<f32> = u_xlat10;
        let x_934 : vec4<f32> = u_xlat14;
        let x_936 : vec3<f32> = (vec3<f32>(x_932.x, x_932.z, x_932.w) / vec3<f32>(x_934.z, x_934.w, x_934.y));
        let x_937 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
        let x_939 : vec4<f32> = u_xlat10;
        let x_944 : vec3<f32> = (vec3<f32>(x_939.x, x_939.y, x_939.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_945 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
        let x_947 : vec4<f32> = u_xlat13;
        let x_949 : vec4<f32> = u_xlat9;
        let x_951 : vec3<f32> = (vec3<f32>(x_947.z, x_947.y, x_947.w) / vec3<f32>(x_949.x, x_949.y, x_949.z));
        let x_952 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
        let x_954 : vec4<f32> = u_xlat11;
        let x_956 : vec3<f32> = (vec3<f32>(x_954.x, x_954.y, x_954.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_957 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
        let x_959 : vec4<f32> = u_xlat10;
        let x_962 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_964 : vec3<f32> = (vec3<f32>(x_959.y, x_959.x, x_959.z) * vec3<f32>(x_962.x, x_962.x, x_962.x));
        let x_965 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
        let x_967 : vec4<f32> = u_xlat11;
        let x_970 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_972 : vec3<f32> = (vec3<f32>(x_967.x, x_967.y, x_967.z) * vec3<f32>(x_970.y, x_970.y, x_970.y));
        let x_973 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
        let x_976 : f32 = u_xlat11.x;
        u_xlat10.w = x_976;
        let x_978 : vec4<f32> = u_xlat7;
        let x_981 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_984 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_978.x, x_978.y, x_978.x, x_978.y) * vec4<f32>(x_981.x, x_981.y, x_981.x, x_981.y)) + vec4<f32>(x_984.y, x_984.w, x_984.x, x_984.w));
        let x_987 : vec4<f32> = u_xlat7;
        let x_990 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_993 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_987.x, x_987.y) * vec2<f32>(x_990.x, x_990.y)) + vec2<f32>(x_993.z, x_993.w));
        let x_997 : f32 = u_xlat10.y;
        u_xlat11.w = x_997;
        let x_999 : vec4<f32> = u_xlat11;
        let x_1000 : vec2<f32> = vec2<f32>(x_999.y, x_999.z);
        let x_1001 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1001.x, x_1000.x, x_1001.z, x_1000.y);
        let x_1003 : vec4<f32> = u_xlat7;
        let x_1006 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1009 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1003.x, x_1003.y, x_1003.x, x_1003.y) * vec4<f32>(x_1006.x, x_1006.y, x_1006.x, x_1006.y)) + vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1009.y));
        let x_1012 : vec4<f32> = u_xlat7;
        let x_1015 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1018 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1012.x, x_1012.y, x_1012.x, x_1012.y) * vec4<f32>(x_1015.x, x_1015.y, x_1015.x, x_1015.y)) + vec4<f32>(x_1018.w, x_1018.y, x_1018.w, x_1018.z));
        let x_1021 : vec4<f32> = u_xlat7;
        let x_1024 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1027 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1021.x, x_1021.y, x_1021.x, x_1021.y) * vec4<f32>(x_1024.x, x_1024.y, x_1024.x, x_1024.y)) + vec4<f32>(x_1027.x, x_1027.w, x_1027.z, x_1027.w));
        let x_1031 : vec4<f32> = u_xlat9;
        let x_1033 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_1031.x, x_1031.x, x_1031.x, x_1031.y) * vec4<f32>(x_1033.z, x_1033.w, x_1033.y, x_1033.z));
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1039 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_1037.y, x_1037.y, x_1037.z, x_1037.z) * x_1039);
        let x_1042 : f32 = u_xlat9.z;
        let x_1044 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1042 * x_1044);
        let x_1048 : vec4<f32> = u_xlat12;
        let x_1049 : vec2<f32> = vec2<f32>(x_1048.x, x_1048.y);
        let x_1051 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_1049.x, x_1049.y, x_1051);
        let x_1059 : vec3<f32> = txVec4;
        let x_1061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1059.xy, x_1059.z);
        u_xlat29 = x_1061;
        let x_1063 : vec4<f32> = u_xlat12;
        let x_1064 : vec2<f32> = vec2<f32>(x_1063.z, x_1063.w);
        let x_1066 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_1064.x, x_1064.y, x_1066);
        let x_1074 : vec3<f32> = txVec5;
        let x_1076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1074.xy, x_1074.z);
        u_xlat74 = x_1076;
        let x_1077 : f32 = u_xlat74;
        let x_1079 : f32 = u_xlat15.y;
        u_xlat74 = (x_1077 * x_1079);
        let x_1082 : f32 = u_xlat15.x;
        let x_1083 : f32 = u_xlat29;
        let x_1085 : f32 = u_xlat74;
        u_xlat29 = ((x_1082 * x_1083) + x_1085);
        let x_1088 : vec2<f32> = u_xlat51;
        let x_1090 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
        let x_1097 : vec3<f32> = txVec6;
        let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1097.xy, x_1097.z);
        u_xlat51.x = x_1099;
        let x_1102 : f32 = u_xlat15.z;
        let x_1104 : f32 = u_xlat51.x;
        let x_1106 : f32 = u_xlat29;
        u_xlat29 = ((x_1102 * x_1104) + x_1106);
        let x_1109 : vec4<f32> = u_xlat11;
        let x_1110 : vec2<f32> = vec2<f32>(x_1109.x, x_1109.y);
        let x_1112 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_1110.x, x_1110.y, x_1112);
        let x_1119 : vec3<f32> = txVec7;
        let x_1121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1119.xy, x_1119.z);
        u_xlat51.x = x_1121;
        let x_1124 : f32 = u_xlat15.w;
        let x_1126 : f32 = u_xlat51.x;
        let x_1128 : f32 = u_xlat29;
        u_xlat29 = ((x_1124 * x_1126) + x_1128);
        let x_1131 : vec4<f32> = u_xlat13;
        let x_1132 : vec2<f32> = vec2<f32>(x_1131.x, x_1131.y);
        let x_1134 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1132.x, x_1132.y, x_1134);
        let x_1141 : vec3<f32> = txVec8;
        let x_1143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1141.xy, x_1141.z);
        u_xlat51.x = x_1143;
        let x_1146 : f32 = u_xlat16.x;
        let x_1148 : f32 = u_xlat51.x;
        let x_1150 : f32 = u_xlat29;
        u_xlat29 = ((x_1146 * x_1148) + x_1150);
        let x_1153 : vec4<f32> = u_xlat13;
        let x_1154 : vec2<f32> = vec2<f32>(x_1153.z, x_1153.w);
        let x_1156 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec9;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1163.xy, x_1163.z);
        u_xlat51.x = x_1165;
        let x_1168 : f32 = u_xlat16.y;
        let x_1170 : f32 = u_xlat51.x;
        let x_1172 : f32 = u_xlat29;
        u_xlat29 = ((x_1168 * x_1170) + x_1172);
        let x_1175 : vec4<f32> = u_xlat11;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.z, x_1175.w);
        let x_1178 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec10;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1185.xy, x_1185.z);
        u_xlat51.x = x_1187;
        let x_1190 : f32 = u_xlat16.z;
        let x_1192 : f32 = u_xlat51.x;
        let x_1194 : f32 = u_xlat29;
        u_xlat29 = ((x_1190 * x_1192) + x_1194);
        let x_1197 : vec4<f32> = u_xlat10;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec11;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1207.xy, x_1207.z);
        u_xlat51.x = x_1209;
        let x_1212 : f32 = u_xlat16.w;
        let x_1214 : f32 = u_xlat51.x;
        let x_1216 : f32 = u_xlat29;
        u_xlat29 = ((x_1212 * x_1214) + x_1216);
        let x_1219 : vec4<f32> = u_xlat10;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.z, x_1219.w);
        let x_1222 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec12;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1229.xy, x_1229.z);
        u_xlat51.x = x_1231;
        let x_1234 : f32 = u_xlat7.x;
        let x_1236 : f32 = u_xlat51.x;
        let x_1238 : f32 = u_xlat29;
        u_xlat71 = ((x_1234 * x_1236) + x_1238);
      } else {
        let x_1241 : vec4<f32> = u_xlat5;
        let x_1244 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1247 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.y) * vec2<f32>(x_1244.z, x_1244.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1248 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1247.x, x_1247.y, x_1248.z, x_1248.w);
        let x_1250 : vec4<f32> = u_xlat7;
        let x_1252 : vec2<f32> = floor(vec2<f32>(x_1250.x, x_1250.y));
        let x_1253 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1252.x, x_1252.y, x_1253.z, x_1253.w);
        let x_1255 : vec4<f32> = u_xlat5;
        let x_1258 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1261 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1255.x, x_1255.y) * vec2<f32>(x_1258.z, x_1258.w)) + -(vec2<f32>(x_1261.x, x_1261.y)));
        let x_1265 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_1265.x, x_1265.x, x_1265.y, x_1265.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1268 : vec4<f32> = u_xlat9;
        let x_1270 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1268.x, x_1268.x, x_1268.z, x_1268.z) * vec4<f32>(x_1270.x, x_1270.x, x_1270.z, x_1270.z));
        let x_1273 : vec4<f32> = u_xlat10;
        let x_1277 : vec2<f32> = (vec2<f32>(x_1273.y, x_1273.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1278 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1278.x, x_1277.x, x_1278.z, x_1277.y);
        let x_1280 : vec4<f32> = u_xlat10;
        let x_1283 : vec2<f32> = u_xlat51;
        let x_1285 : vec2<f32> = ((vec2<f32>(x_1280.x, x_1280.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1283));
        let x_1286 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1285.x, x_1286.y, x_1285.y, x_1286.w);
        let x_1288 : vec2<f32> = u_xlat51;
        let x_1290 : vec2<f32> = (-(x_1288) + vec2<f32>(1.0f, 1.0f));
        let x_1291 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1290.x, x_1290.y, x_1291.z, x_1291.w);
        let x_1293 : vec2<f32> = u_xlat51;
        u_xlat54 = min(x_1293, vec2<f32>(0.0f, 0.0f));
        let x_1295 : vec2<f32> = u_xlat54;
        let x_1297 : vec2<f32> = u_xlat54;
        let x_1299 : vec4<f32> = u_xlat10;
        let x_1301 : vec2<f32> = ((-(x_1295) * x_1297) + vec2<f32>(x_1299.x, x_1299.y));
        let x_1302 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1301.x, x_1301.y, x_1302.z, x_1302.w);
        let x_1304 : vec2<f32> = u_xlat51;
        u_xlat54 = max(x_1304, vec2<f32>(0.0f, 0.0f));
        let x_1307 : vec2<f32> = u_xlat54;
        let x_1309 : vec2<f32> = u_xlat54;
        let x_1311 : vec4<f32> = u_xlat9;
        let x_1313 : vec2<f32> = ((-(x_1307) * x_1309) + vec2<f32>(x_1311.y, x_1311.w));
        let x_1314 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1313.x, x_1314.y, x_1313.y);
        let x_1316 : vec4<f32> = u_xlat10;
        let x_1318 : vec2<f32> = (vec2<f32>(x_1316.x, x_1316.y) + vec2<f32>(2.0f, 2.0f));
        let x_1319 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1318.x, x_1318.y, x_1319.z, x_1319.w);
        let x_1321 : vec3<f32> = u_xlat31;
        let x_1323 : vec2<f32> = (vec2<f32>(x_1321.x, x_1321.z) + vec2<f32>(2.0f, 2.0f));
        let x_1324 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1324.x, x_1323.x, x_1324.z, x_1323.y);
        let x_1327 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1327 * 0.081632003f);
        let x_1331 : vec4<f32> = u_xlat9;
        let x_1334 : vec3<f32> = (vec3<f32>(x_1331.z, x_1331.x, x_1331.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1335 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
        let x_1337 : vec4<f32> = u_xlat10;
        let x_1340 : vec2<f32> = (vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1341 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1340.x, x_1340.y, x_1341.z, x_1341.w);
        let x_1344 : f32 = u_xlat13.y;
        u_xlat12.x = x_1344;
        let x_1346 : vec2<f32> = u_xlat51;
        let x_1353 : vec2<f32> = ((vec2<f32>(x_1346.x, x_1346.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1354 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1354.x, x_1353.x, x_1354.z, x_1353.y);
        let x_1356 : vec2<f32> = u_xlat51;
        let x_1360 : vec2<f32> = ((vec2<f32>(x_1356.x, x_1356.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1361 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1360.x, x_1361.y, x_1360.y, x_1361.w);
        let x_1364 : f32 = u_xlat9.x;
        u_xlat10.y = x_1364;
        let x_1367 : f32 = u_xlat11.y;
        u_xlat10.w = x_1367;
        let x_1369 : vec4<f32> = u_xlat10;
        let x_1370 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1369 + x_1370);
        let x_1372 : vec2<f32> = u_xlat51;
        let x_1375 : vec2<f32> = ((vec2<f32>(x_1372.y, x_1372.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1376 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1376.x, x_1375.x, x_1376.z, x_1375.y);
        let x_1378 : vec2<f32> = u_xlat51;
        let x_1381 : vec2<f32> = ((vec2<f32>(x_1378.y, x_1378.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1382 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1381.x, x_1382.y, x_1381.y, x_1382.w);
        let x_1385 : f32 = u_xlat9.y;
        u_xlat11.y = x_1385;
        let x_1387 : vec4<f32> = u_xlat11;
        let x_1388 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1387 + x_1388);
        let x_1390 : vec4<f32> = u_xlat10;
        let x_1391 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1390 / x_1391);
        let x_1393 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1393 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1399 : vec4<f32> = u_xlat11;
        let x_1400 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1399 / x_1400);
        let x_1402 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1402 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1404 : vec4<f32> = u_xlat10;
        let x_1407 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1404.w, x_1404.x, x_1404.y, x_1404.z) * vec4<f32>(x_1407.x, x_1407.x, x_1407.x, x_1407.x));
        let x_1410 : vec4<f32> = u_xlat11;
        let x_1413 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1410.x, x_1410.w, x_1410.y, x_1410.z) * vec4<f32>(x_1413.y, x_1413.y, x_1413.y, x_1413.y));
        let x_1416 : vec4<f32> = u_xlat10;
        let x_1417 : vec3<f32> = vec3<f32>(x_1416.y, x_1416.z, x_1416.w);
        let x_1418 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1417.x, x_1418.y, x_1417.y, x_1417.z);
        let x_1421 : f32 = u_xlat11.x;
        u_xlat13.y = x_1421;
        let x_1423 : vec4<f32> = u_xlat7;
        let x_1426 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1429 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1423.x, x_1423.y, x_1423.x, x_1423.y) * vec4<f32>(x_1426.x, x_1426.y, x_1426.x, x_1426.y)) + vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1429.y));
        let x_1432 : vec4<f32> = u_xlat7;
        let x_1435 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1438 : vec4<f32> = u_xlat13;
        u_xlat51 = ((vec2<f32>(x_1432.x, x_1432.y) * vec2<f32>(x_1435.x, x_1435.y)) + vec2<f32>(x_1438.w, x_1438.y));
        let x_1442 : f32 = u_xlat13.y;
        u_xlat10.y = x_1442;
        let x_1445 : f32 = u_xlat11.z;
        u_xlat13.y = x_1445;
        let x_1447 : vec4<f32> = u_xlat7;
        let x_1450 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1453 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1447.x, x_1447.y, x_1447.x, x_1447.y) * vec4<f32>(x_1450.x, x_1450.y, x_1450.x, x_1450.y)) + vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1453.y));
        let x_1456 : vec4<f32> = u_xlat7;
        let x_1459 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1462 : vec4<f32> = u_xlat13;
        let x_1464 : vec2<f32> = ((vec2<f32>(x_1456.x, x_1456.y) * vec2<f32>(x_1459.x, x_1459.y)) + vec2<f32>(x_1462.w, x_1462.y));
        let x_1465 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1464.x, x_1464.y, x_1465.z, x_1465.w);
        let x_1468 : f32 = u_xlat13.y;
        u_xlat10.z = x_1468;
        let x_1471 : vec4<f32> = u_xlat7;
        let x_1474 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1477 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1471.x, x_1471.y, x_1471.x, x_1471.y) * vec4<f32>(x_1474.x, x_1474.y, x_1474.x, x_1474.y)) + vec4<f32>(x_1477.x, x_1477.y, x_1477.x, x_1477.z));
        let x_1481 : f32 = u_xlat11.w;
        u_xlat13.y = x_1481;
        let x_1484 : vec4<f32> = u_xlat7;
        let x_1487 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1490 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1484.x, x_1484.y, x_1484.x, x_1484.y) * vec4<f32>(x_1487.x, x_1487.y, x_1487.x, x_1487.y)) + vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1490.y));
        let x_1494 : vec4<f32> = u_xlat7;
        let x_1497 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1500 : vec4<f32> = u_xlat13;
        let x_1502 : vec2<f32> = ((vec2<f32>(x_1494.x, x_1494.y) * vec2<f32>(x_1497.x, x_1497.y)) + vec2<f32>(x_1500.w, x_1500.y));
        let x_1503 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1502.x, x_1502.y, x_1503.z);
        let x_1506 : f32 = u_xlat13.y;
        u_xlat10.w = x_1506;
        let x_1509 : vec4<f32> = u_xlat7;
        let x_1512 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1515 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1509.x, x_1509.y) * vec2<f32>(x_1512.x, x_1512.y)) + vec2<f32>(x_1515.x, x_1515.w));
        let x_1518 : vec4<f32> = u_xlat13;
        let x_1519 : vec3<f32> = vec3<f32>(x_1518.x, x_1518.z, x_1518.w);
        let x_1520 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1519.x, x_1520.y, x_1519.y, x_1519.z);
        let x_1522 : vec4<f32> = u_xlat7;
        let x_1525 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1528 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1522.x, x_1522.y, x_1522.x, x_1522.y) * vec4<f32>(x_1525.x, x_1525.y, x_1525.x, x_1525.y)) + vec4<f32>(x_1528.x, x_1528.y, x_1528.z, x_1528.y));
        let x_1532 : vec4<f32> = u_xlat7;
        let x_1535 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1538 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1532.x, x_1532.y) * vec2<f32>(x_1535.x, x_1535.y)) + vec2<f32>(x_1538.w, x_1538.y));
        let x_1542 : f32 = u_xlat10.x;
        u_xlat11.x = x_1542;
        let x_1544 : vec4<f32> = u_xlat7;
        let x_1547 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1550 : vec4<f32> = u_xlat11;
        let x_1552 : vec2<f32> = ((vec2<f32>(x_1544.x, x_1544.y) * vec2<f32>(x_1547.x, x_1547.y)) + vec2<f32>(x_1550.x, x_1550.y));
        let x_1553 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1552.x, x_1552.y, x_1553.z, x_1553.w);
        let x_1556 : vec4<f32> = u_xlat9;
        let x_1558 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1556.x, x_1556.x, x_1556.x, x_1556.x) * x_1558);
        let x_1561 : vec4<f32> = u_xlat9;
        let x_1563 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1561.y, x_1561.y, x_1561.y, x_1561.y) * x_1563);
        let x_1566 : vec4<f32> = u_xlat9;
        let x_1568 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1566.z, x_1566.z, x_1566.z, x_1566.z) * x_1568);
        let x_1570 : vec4<f32> = u_xlat9;
        let x_1572 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1570.w, x_1570.w, x_1570.w, x_1570.w) * x_1572);
        let x_1575 : vec4<f32> = u_xlat14;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.x, x_1575.y);
        let x_1578 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec13;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1585.xy, x_1585.z);
        u_xlat74 = x_1587;
        let x_1589 : vec4<f32> = u_xlat14;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.z, x_1589.w);
        let x_1592 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec14;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1599.xy, x_1599.z);
        u_xlat10.x = x_1601;
        let x_1604 : f32 = u_xlat10.x;
        let x_1606 : f32 = u_xlat19.y;
        u_xlat10.x = (x_1604 * x_1606);
        let x_1610 : f32 = u_xlat19.x;
        let x_1611 : f32 = u_xlat74;
        let x_1614 : f32 = u_xlat10.x;
        u_xlat74 = ((x_1610 * x_1611) + x_1614);
        let x_1617 : vec2<f32> = u_xlat51;
        let x_1619 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec15;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1626.xy, x_1626.z);
        u_xlat51.x = x_1628;
        let x_1631 : f32 = u_xlat19.z;
        let x_1633 : f32 = u_xlat51.x;
        let x_1635 : f32 = u_xlat74;
        u_xlat51.x = ((x_1631 * x_1633) + x_1635);
        let x_1639 : vec4<f32> = u_xlat17;
        let x_1640 : vec2<f32> = vec2<f32>(x_1639.x, x_1639.y);
        let x_1642 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1640.x, x_1640.y, x_1642);
        let x_1650 : vec3<f32> = txVec16;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1650.xy, x_1650.z);
        u_xlat73 = x_1652;
        let x_1654 : f32 = u_xlat19.w;
        let x_1655 : f32 = u_xlat73;
        let x_1658 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1654 * x_1655) + x_1658);
        let x_1662 : vec4<f32> = u_xlat15;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.x, x_1662.y);
        let x_1665 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec17;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1672.xy, x_1672.z);
        u_xlat73 = x_1674;
        let x_1676 : f32 = u_xlat20.x;
        let x_1677 : f32 = u_xlat73;
        let x_1680 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1676 * x_1677) + x_1680);
        let x_1684 : vec4<f32> = u_xlat15;
        let x_1685 : vec2<f32> = vec2<f32>(x_1684.z, x_1684.w);
        let x_1687 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1694 : vec3<f32> = txVec18;
        let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1694.xy, x_1694.z);
        u_xlat73 = x_1696;
        let x_1698 : f32 = u_xlat20.y;
        let x_1699 : f32 = u_xlat73;
        let x_1702 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1698 * x_1699) + x_1702);
        let x_1706 : vec4<f32> = u_xlat16;
        let x_1707 : vec2<f32> = vec2<f32>(x_1706.x, x_1706.y);
        let x_1709 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec19;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1716.xy, x_1716.z);
        u_xlat73 = x_1718;
        let x_1720 : f32 = u_xlat20.z;
        let x_1721 : f32 = u_xlat73;
        let x_1724 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1720 * x_1721) + x_1724);
        let x_1728 : vec4<f32> = u_xlat17;
        let x_1729 : vec2<f32> = vec2<f32>(x_1728.z, x_1728.w);
        let x_1731 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1729.x, x_1729.y, x_1731);
        let x_1738 : vec3<f32> = txVec20;
        let x_1740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1738.xy, x_1738.z);
        u_xlat73 = x_1740;
        let x_1742 : f32 = u_xlat20.w;
        let x_1743 : f32 = u_xlat73;
        let x_1746 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1742 * x_1743) + x_1746);
        let x_1750 : vec4<f32> = u_xlat18;
        let x_1751 : vec2<f32> = vec2<f32>(x_1750.x, x_1750.y);
        let x_1753 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1751.x, x_1751.y, x_1753);
        let x_1760 : vec3<f32> = txVec21;
        let x_1762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1760.xy, x_1760.z);
        u_xlat73 = x_1762;
        let x_1764 : f32 = u_xlat21.x;
        let x_1765 : f32 = u_xlat73;
        let x_1768 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1764 * x_1765) + x_1768);
        let x_1772 : vec4<f32> = u_xlat18;
        let x_1773 : vec2<f32> = vec2<f32>(x_1772.z, x_1772.w);
        let x_1775 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1773.x, x_1773.y, x_1775);
        let x_1782 : vec3<f32> = txVec22;
        let x_1784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1782.xy, x_1782.z);
        u_xlat73 = x_1784;
        let x_1786 : f32 = u_xlat21.y;
        let x_1787 : f32 = u_xlat73;
        let x_1790 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1786 * x_1787) + x_1790);
        let x_1794 : vec3<f32> = u_xlat32;
        let x_1795 : vec2<f32> = vec2<f32>(x_1794.x, x_1794.y);
        let x_1797 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1795.x, x_1795.y, x_1797);
        let x_1804 : vec3<f32> = txVec23;
        let x_1806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1804.xy, x_1804.z);
        u_xlat73 = x_1806;
        let x_1808 : f32 = u_xlat21.z;
        let x_1809 : f32 = u_xlat73;
        let x_1812 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1808 * x_1809) + x_1812);
        let x_1816 : vec2<f32> = u_xlat60;
        let x_1818 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1816.x, x_1816.y, x_1818);
        let x_1825 : vec3<f32> = txVec24;
        let x_1827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1825.xy, x_1825.z);
        u_xlat73 = x_1827;
        let x_1829 : f32 = u_xlat21.w;
        let x_1830 : f32 = u_xlat73;
        let x_1833 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1829 * x_1830) + x_1833);
        let x_1837 : vec4<f32> = u_xlat13;
        let x_1838 : vec2<f32> = vec2<f32>(x_1837.x, x_1837.y);
        let x_1840 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1838.x, x_1838.y, x_1840);
        let x_1847 : vec3<f32> = txVec25;
        let x_1849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1847.xy, x_1847.z);
        u_xlat73 = x_1849;
        let x_1851 : f32 = u_xlat9.x;
        let x_1852 : f32 = u_xlat73;
        let x_1855 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1851 * x_1852) + x_1855);
        let x_1859 : vec4<f32> = u_xlat13;
        let x_1860 : vec2<f32> = vec2<f32>(x_1859.z, x_1859.w);
        let x_1862 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1860.x, x_1860.y, x_1862);
        let x_1869 : vec3<f32> = txVec26;
        let x_1871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1869.xy, x_1869.z);
        u_xlat73 = x_1871;
        let x_1873 : f32 = u_xlat9.y;
        let x_1874 : f32 = u_xlat73;
        let x_1877 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1873 * x_1874) + x_1877);
        let x_1881 : vec2<f32> = u_xlat55;
        let x_1883 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1881.x, x_1881.y, x_1883);
        let x_1890 : vec3<f32> = txVec27;
        let x_1892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1890.xy, x_1890.z);
        u_xlat73 = x_1892;
        let x_1894 : f32 = u_xlat9.z;
        let x_1895 : f32 = u_xlat73;
        let x_1898 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1894 * x_1895) + x_1898);
        let x_1902 : vec4<f32> = u_xlat7;
        let x_1903 : vec2<f32> = vec2<f32>(x_1902.x, x_1902.y);
        let x_1905 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1903.x, x_1903.y, x_1905);
        let x_1912 : vec3<f32> = txVec28;
        let x_1914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1912.xy, x_1912.z);
        u_xlat7.x = x_1914;
        let x_1917 : f32 = u_xlat9.w;
        let x_1919 : f32 = u_xlat7.x;
        let x_1922 : f32 = u_xlat51.x;
        u_xlat71 = ((x_1917 * x_1919) + x_1922);
      }
    }
  } else {
    let x_1926 : vec4<f32> = u_xlat5;
    let x_1927 : vec2<f32> = vec2<f32>(x_1926.x, x_1926.y);
    let x_1929 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1927.x, x_1927.y, x_1929);
    let x_1936 : vec3<f32> = txVec29;
    let x_1938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1936.xy, x_1936.z);
    u_xlat71 = x_1938;
  }
  let x_1940 : f32 = x_283.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1940) + 1.0f);
  let x_1944 : f32 = u_xlat71;
  let x_1946 : f32 = x_283.x_MainLightShadowParams.x;
  let x_1949 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1944 * x_1946) + x_1949);
  let x_1956 : f32 = u_xlat5.z;
  u_xlatb27.x = (0.0f >= x_1956);
  let x_1961 : f32 = u_xlat5.z;
  u_xlatb49 = (x_1961 >= 1.0f);
  let x_1963 : bool = u_xlatb49;
  let x_1965 : bool = u_xlatb27.x;
  u_xlatb27.x = (x_1963 | x_1965);
  let x_1969 : bool = u_xlatb27.x;
  if (x_1969) {
    x_1970 = 1.0f;
  } else {
    let x_1975 : f32 = u_xlat5.x;
    x_1970 = x_1975;
  }
  let x_1976 : f32 = x_1970;
  u_xlat5.x = x_1976;
  let x_1979 : vec3<f32> = vs_INTERP0;
  let x_1981 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat27 = (x_1979 + -(x_1981));
  let x_1984 : vec3<f32> = u_xlat27;
  let x_1985 : vec3<f32> = u_xlat27;
  u_xlat27.x = dot(x_1984, x_1985);
  let x_1989 : f32 = u_xlat27.x;
  let x_1991 : f32 = x_283.x_MainLightShadowParams.z;
  let x_1994 : f32 = x_283.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1989 * x_1991) + x_1994);
  let x_1998 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1998, 0.0f, 1.0f);
  let x_2003 : f32 = u_xlat5.x;
  u_xlat49 = (-(x_2003) + 1.0f);
  let x_2007 : f32 = u_xlat27.x;
  let x_2008 : f32 = u_xlat49;
  let x_2011 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2007 * x_2008) + x_2011);
  let x_2020 : f32 = x_2018.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_2020 == -1.0f));
  let x_2024 : bool = u_xlatb27.x;
  if (x_2024) {
    let x_2027 : vec3<f32> = vs_INTERP0;
    let x_2030 : vec4<f32> = x_2018.x_MainLightWorldToLight[1i];
    let x_2032 : vec2<f32> = (vec2<f32>(x_2027.y, x_2027.y) * vec2<f32>(x_2030.x, x_2030.y));
    let x_2033 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2032.x, x_2032.y, x_2033.z);
    let x_2036 : vec4<f32> = x_2018.x_MainLightWorldToLight[0i];
    let x_2038 : vec3<f32> = vs_INTERP0;
    let x_2041 : vec3<f32> = u_xlat27;
    let x_2043 : vec2<f32> = ((vec2<f32>(x_2036.x, x_2036.y) * vec2<f32>(x_2038.x, x_2038.x)) + vec2<f32>(x_2041.x, x_2041.y));
    let x_2044 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2043.x, x_2043.y, x_2044.z);
    let x_2047 : vec4<f32> = x_2018.x_MainLightWorldToLight[2i];
    let x_2049 : vec3<f32> = vs_INTERP0;
    let x_2052 : vec3<f32> = u_xlat27;
    let x_2054 : vec2<f32> = ((vec2<f32>(x_2047.x, x_2047.y) * vec2<f32>(x_2049.z, x_2049.z)) + vec2<f32>(x_2052.x, x_2052.y));
    let x_2055 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2054.x, x_2054.y, x_2055.z);
    let x_2057 : vec3<f32> = u_xlat27;
    let x_2060 : vec4<f32> = x_2018.x_MainLightWorldToLight[3i];
    let x_2062 : vec2<f32> = (vec2<f32>(x_2057.x, x_2057.y) + vec2<f32>(x_2060.x, x_2060.y));
    let x_2063 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2062.x, x_2062.y, x_2063.z);
    let x_2065 : vec3<f32> = u_xlat27;
    let x_2068 : vec2<f32> = ((vec2<f32>(x_2065.x, x_2065.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2069 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2068.x, x_2068.y, x_2069.z);
    let x_2076 : vec3<f32> = u_xlat27;
    let x_2079 : f32 = x_45.x_GlobalMipBias.x;
    let x_2080 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2076.x, x_2076.y), x_2079);
    u_xlat7 = x_2080;
    let x_2082 : f32 = x_2018.x_MainLightCookieTextureFormat;
    let x_2084 : f32 = x_2018.x_MainLightCookieTextureFormat;
    let x_2086 : f32 = x_2018.x_MainLightCookieTextureFormat;
    let x_2088 : f32 = x_2018.x_MainLightCookieTextureFormat;
    let x_2089 : vec4<f32> = vec4<f32>(x_2082, x_2084, x_2086, x_2088);
    let x_2096 : vec4<bool> = (vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2089.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_2096.x, x_2096.y);
    let x_2099 : bool = u_xlatb27.y;
    if (x_2099) {
      let x_2104 : f32 = u_xlat7.w;
      x_2100 = x_2104;
    } else {
      let x_2107 : f32 = u_xlat7.x;
      x_2100 = x_2107;
    }
    let x_2108 : f32 = x_2100;
    u_xlat49 = x_2108;
    let x_2110 : bool = u_xlatb27.x;
    if (x_2110) {
      let x_2114 : vec4<f32> = u_xlat7;
      x_2111 = vec3<f32>(x_2114.x, x_2114.y, x_2114.z);
    } else {
      let x_2117 : f32 = u_xlat49;
      x_2111 = vec3<f32>(x_2117, x_2117, x_2117);
    }
    let x_2119 : vec3<f32> = x_2111;
    u_xlat27 = x_2119;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_2124 : vec3<f32> = u_xlat27;
  let x_2126 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat27 = (x_2124 * vec3<f32>(x_2126.x, x_2126.y, x_2126.z));
  let x_2129 : f32 = u_xlat72;
  let x_2131 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_2129, x_2129, x_2129) * x_2131);
  let x_2133 : vec3<f32> = u_xlat4;
  let x_2135 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_2133), vec3<f32>(x_2135.x, x_2135.y, x_2135.w));
  let x_2140 : f32 = u_xlat7.x;
  let x_2142 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2140 + x_2142);
  let x_2145 : vec4<f32> = u_xlat1;
  let x_2147 : vec4<f32> = u_xlat7;
  let x_2151 : vec3<f32> = u_xlat4;
  let x_2153 : vec3<f32> = ((vec3<f32>(x_2145.x, x_2145.y, x_2145.w) * -(vec3<f32>(x_2147.x, x_2147.x, x_2147.x))) + -(x_2151));
  let x_2154 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2154.w);
  let x_2156 : vec4<f32> = u_xlat1;
  let x_2158 : vec3<f32> = u_xlat4;
  u_xlat73 = dot(vec3<f32>(x_2156.x, x_2156.y, x_2156.w), x_2158);
  let x_2160 : f32 = u_xlat73;
  u_xlat73 = clamp(x_2160, 0.0f, 1.0f);
  let x_2162 : f32 = u_xlat73;
  u_xlat73 = (-(x_2162) + 1.0f);
  let x_2165 : f32 = u_xlat73;
  let x_2166 : f32 = u_xlat73;
  u_xlat73 = (x_2165 * x_2166);
  let x_2168 : f32 = u_xlat73;
  let x_2169 : f32 = u_xlat73;
  u_xlat73 = (x_2168 * x_2169);
  let x_2171 : f32 = u_xlat68;
  u_xlat74 = ((-(x_2171) * 0.699999988f) + 1.700000048f);
  let x_2177 : f32 = u_xlat68;
  let x_2178 : f32 = u_xlat74;
  u_xlat2.w = (x_2177 * x_2178);
  let x_2181 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_2181 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_2194 : vec4<f32> = u_xlat7;
  let x_2197 : f32 = u_xlat2.w;
  let x_2198 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2194.x, x_2194.y, x_2194.z), x_2197);
  u_xlat9 = x_2198;
  let x_2200 : f32 = u_xlat9.w;
  u_xlat68 = (x_2200 + -1.0f);
  let x_2203 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_2204 : f32 = u_xlat68;
  u_xlat68 = ((x_2203 * x_2204) + 1.0f);
  let x_2207 : f32 = u_xlat68;
  u_xlat68 = max(x_2207, 0.0f);
  let x_2209 : f32 = u_xlat68;
  u_xlat68 = log2(x_2209);
  let x_2211 : f32 = u_xlat68;
  let x_2213 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat68 = (x_2211 * x_2213);
  let x_2215 : f32 = u_xlat68;
  u_xlat68 = exp2(x_2215);
  let x_2217 : f32 = u_xlat68;
  let x_2219 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat68 = (x_2217 * x_2219);
  let x_2221 : vec4<f32> = u_xlat9;
  let x_2223 : f32 = u_xlat68;
  let x_2225 : vec3<f32> = (vec3<f32>(x_2221.x, x_2221.y, x_2221.z) * vec3<f32>(x_2223, x_2223, x_2223));
  let x_2226 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
  let x_2228 : vec3<f32> = u_xlat3;
  let x_2230 : vec3<f32> = u_xlat3;
  let x_2234 : vec2<f32> = ((vec2<f32>(x_2228.x, x_2228.x) * vec2<f32>(x_2230.x, x_2230.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2235 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2234.x, x_2234.y, x_2235.z, x_2235.w);
  let x_2238 : f32 = u_xlat9.y;
  u_xlat68 = (1.0f / x_2238);
  let x_2240 : vec3<f32> = u_xlat0;
  let x_2242 : f32 = u_xlat69;
  u_xlat31 = (-(x_2240) + vec3<f32>(x_2242, x_2242, x_2242));
  let x_2245 : f32 = u_xlat73;
  let x_2247 : vec3<f32> = u_xlat31;
  let x_2249 : vec3<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_2245, x_2245, x_2245) * x_2247) + x_2249);
  let x_2251 : f32 = u_xlat68;
  let x_2253 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2251, x_2251, x_2251) * x_2253);
  let x_2255 : vec4<f32> = u_xlat7;
  let x_2257 : vec3<f32> = u_xlat31;
  let x_2258 : vec3<f32> = (vec3<f32>(x_2255.x, x_2255.y, x_2255.z) * x_2257);
  let x_2259 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
  let x_2261 : vec4<f32> = u_xlat6;
  let x_2263 : vec3<f32> = u_xlat8;
  let x_2265 : vec4<f32> = u_xlat7;
  let x_2267 : vec3<f32> = ((vec3<f32>(x_2261.x, x_2261.y, x_2261.z) * x_2263) + vec3<f32>(x_2265.x, x_2265.y, x_2265.z));
  let x_2268 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
  let x_2271 : f32 = u_xlat5.x;
  let x_2273 : f32 = x_120.unity_LightData.z;
  u_xlat68 = (x_2271 * x_2273);
  let x_2275 : vec4<f32> = u_xlat1;
  let x_2278 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2275.x, x_2275.y, x_2275.w), vec3<f32>(x_2278.x, x_2278.y, x_2278.z));
  let x_2283 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2283, 0.0f, 1.0f);
  let x_2286 : f32 = u_xlat68;
  let x_2288 : f32 = u_xlat3.x;
  u_xlat68 = (x_2286 * x_2288);
  let x_2290 : f32 = u_xlat68;
  let x_2292 : vec3<f32> = u_xlat27;
  let x_2293 : vec3<f32> = (vec3<f32>(x_2290, x_2290, x_2290) * x_2292);
  let x_2294 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2293.x, x_2293.y, x_2293.z, x_2294.w);
  let x_2296 : vec3<f32> = u_xlat4;
  let x_2298 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2300 : vec3<f32> = (x_2296 + vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
  let x_2301 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
  let x_2303 : vec4<f32> = u_xlat7;
  let x_2305 : vec4<f32> = u_xlat7;
  u_xlat68 = dot(vec3<f32>(x_2303.x, x_2303.y, x_2303.z), vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
  let x_2308 : f32 = u_xlat68;
  u_xlat68 = max(x_2308, 1.17549435e-37f);
  let x_2311 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_2311);
  let x_2313 : f32 = u_xlat68;
  let x_2315 : vec4<f32> = u_xlat7;
  let x_2317 : vec3<f32> = (vec3<f32>(x_2313, x_2313, x_2313) * vec3<f32>(x_2315.x, x_2315.y, x_2315.z));
  let x_2318 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
  let x_2320 : vec4<f32> = u_xlat1;
  let x_2322 : vec4<f32> = u_xlat7;
  u_xlat68 = dot(vec3<f32>(x_2320.x, x_2320.y, x_2320.w), vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
  let x_2325 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2325, 0.0f, 1.0f);
  let x_2328 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2330 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_2328.x, x_2328.y, x_2328.z), vec3<f32>(x_2330.x, x_2330.y, x_2330.z));
  let x_2335 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2335, 0.0f, 1.0f);
  let x_2338 : f32 = u_xlat68;
  let x_2339 : f32 = u_xlat68;
  u_xlat68 = (x_2338 * x_2339);
  let x_2341 : f32 = u_xlat68;
  let x_2343 : f32 = u_xlat9.x;
  u_xlat68 = ((x_2341 * x_2343) + 1.000010014f);
  let x_2348 : f32 = u_xlat3.x;
  let x_2350 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2348 * x_2350);
  let x_2353 : f32 = u_xlat68;
  let x_2354 : f32 = u_xlat68;
  u_xlat68 = (x_2353 * x_2354);
  let x_2357 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2357, 0.100000001f);
  let x_2361 : f32 = u_xlat68;
  let x_2363 : f32 = u_xlat3.x;
  u_xlat68 = (x_2361 * x_2363);
  let x_2365 : f32 = u_xlat70;
  let x_2366 : f32 = u_xlat68;
  u_xlat68 = (x_2365 * x_2366);
  let x_2368 : f32 = u_xlat25;
  let x_2369 : f32 = u_xlat68;
  u_xlat68 = (x_2368 / x_2369);
  let x_2371 : vec3<f32> = u_xlat0;
  let x_2372 : f32 = u_xlat68;
  let x_2375 : vec3<f32> = u_xlat8;
  let x_2376 : vec3<f32> = ((x_2371 * vec3<f32>(x_2372, x_2372, x_2372)) + x_2375);
  let x_2377 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
  let x_2379 : vec4<f32> = u_xlat5;
  let x_2381 : vec4<f32> = u_xlat7;
  let x_2383 : vec3<f32> = (vec3<f32>(x_2379.x, x_2379.y, x_2379.z) * vec3<f32>(x_2381.x, x_2381.y, x_2381.z));
  let x_2384 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2383.x, x_2383.y, x_2383.z, x_2384.w);
  let x_2387 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2389 : f32 = x_120.unity_LightData.y;
  u_xlat68 = min(x_2387, x_2389);
  let x_2392 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_2392));
  let x_2397 : f32 = x_2018.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2399 : f32 = x_2018.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2401 : f32 = x_2018.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2403 : f32 = x_2018.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2404 : vec4<f32> = vec4<f32>(x_2397, x_2399, x_2401, x_2403);
  let x_2411 : vec4<bool> = (vec4<f32>(x_2404.x, x_2404.y, x_2404.z, x_2404.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2412 : vec2<bool> = vec2<bool>(x_2411.x, x_2411.w);
  let x_2413 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2412.x, x_2413.y, x_2413.z, x_2412.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2424 : u32 = u_xlatu_loop_1;
    let x_2425 : u32 = u_xlatu68;
    if ((x_2424 < x_2425)) {
    } else {
      break;
    }
    let x_2428 : u32 = u_xlatu_loop_1;
    u_xlatu73 = (x_2428 >> 2u);
    let x_2431 : u32 = u_xlatu_loop_1;
    u_xlati74 = bitcast<i32>((x_2431 & 3u));
    let x_2434 : u32 = u_xlatu73;
    let x_2437 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_2434)];
    let x_2447 : i32 = u_xlati74;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2452 : vec4<u32> = indexable[x_2447];
    u_xlat73 = dot(x_2437, bitcast<vec4<f32>>(x_2452));
    let x_2455 : f32 = u_xlat73;
    u_xlatu73 = bitcast<u32>(i32(x_2455));
    let x_2458 : vec3<f32> = vs_INTERP0;
    let x_2470 : u32 = u_xlatu73;
    let x_2473 : vec4<f32> = x_2469.x_AdditionalLightsPosition[bitcast<i32>(x_2470)];
    let x_2476 : u32 = u_xlatu73;
    let x_2479 : vec4<f32> = x_2469.x_AdditionalLightsPosition[bitcast<i32>(x_2476)];
    u_xlat31 = ((-(x_2458) * vec3<f32>(x_2473.w, x_2473.w, x_2473.w)) + vec3<f32>(x_2479.x, x_2479.y, x_2479.z));
    let x_2482 : vec3<f32> = u_xlat31;
    let x_2483 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2482, x_2483);
    let x_2485 : f32 = u_xlat74;
    u_xlat74 = max(x_2485, 6.10351562e-05f);
    let x_2488 : f32 = u_xlat74;
    u_xlat10.x = inverseSqrt(x_2488);
    let x_2491 : vec3<f32> = u_xlat31;
    let x_2492 : vec4<f32> = u_xlat10;
    u_xlat32 = (x_2491 * vec3<f32>(x_2492.x, x_2492.x, x_2492.x));
    let x_2495 : f32 = u_xlat74;
    u_xlat11.x = (1.0f / x_2495);
    let x_2498 : f32 = u_xlat74;
    let x_2499 : u32 = u_xlatu73;
    let x_2502 : f32 = x_2469.x_AdditionalLightsAttenuation[bitcast<i32>(x_2499)].x;
    u_xlat74 = (x_2498 * x_2502);
    let x_2504 : f32 = u_xlat74;
    let x_2506 : f32 = u_xlat74;
    u_xlat74 = ((-(x_2504) * x_2506) + 1.0f);
    let x_2509 : f32 = u_xlat74;
    u_xlat74 = max(x_2509, 0.0f);
    let x_2511 : f32 = u_xlat74;
    let x_2512 : f32 = u_xlat74;
    u_xlat74 = (x_2511 * x_2512);
    let x_2514 : f32 = u_xlat74;
    let x_2516 : f32 = u_xlat11.x;
    u_xlat74 = (x_2514 * x_2516);
    let x_2518 : u32 = u_xlatu73;
    let x_2521 : vec4<f32> = x_2469.x_AdditionalLightsSpotDir[bitcast<i32>(x_2518)];
    let x_2523 : vec3<f32> = u_xlat32;
    u_xlat11.x = dot(vec3<f32>(x_2521.x, x_2521.y, x_2521.z), x_2523);
    let x_2527 : f32 = u_xlat11.x;
    let x_2528 : u32 = u_xlatu73;
    let x_2531 : f32 = x_2469.x_AdditionalLightsAttenuation[bitcast<i32>(x_2528)].z;
    let x_2533 : u32 = u_xlatu73;
    let x_2536 : f32 = x_2469.x_AdditionalLightsAttenuation[bitcast<i32>(x_2533)].w;
    u_xlat11.x = ((x_2527 * x_2531) + x_2536);
    let x_2540 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_2540, 0.0f, 1.0f);
    let x_2544 : f32 = u_xlat11.x;
    let x_2546 : f32 = u_xlat11.x;
    u_xlat11.x = (x_2544 * x_2546);
    let x_2549 : f32 = u_xlat74;
    let x_2551 : f32 = u_xlat11.x;
    u_xlat74 = (x_2549 * x_2551);
    let x_2554 : u32 = u_xlatu73;
    u_xlatu11 = (x_2554 >> 5u);
    let x_2557 : u32 = u_xlatu73;
    u_xlati33 = (1i << bitcast<u32>((bitcast<i32>(x_2557) & 31i)));
    let x_2563 : i32 = u_xlati33;
    let x_2565 : u32 = u_xlatu11;
    let x_2568 : f32 = x_2018.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2565)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_2563) & bitcast<u32>(x_2568)));
    let x_2572 : i32 = u_xlati11;
    if ((x_2572 != 0i)) {
      let x_2582 : u32 = u_xlatu73;
      let x_2585 : f32 = x_2581.x_AdditionalLightsLightTypes[bitcast<i32>(x_2582)].el;
      u_xlati11 = i32(x_2585);
      let x_2587 : i32 = u_xlati11;
      u_xlati33 = select(1i, 0i, (x_2587 != 0i));
      let x_2591 : u32 = u_xlatu73;
      u_xlati55 = (bitcast<i32>(x_2591) << bitcast<u32>(2i));
      let x_2594 : i32 = u_xlati33;
      if ((x_2594 != 0i)) {
        let x_2598 : vec3<f32> = vs_INTERP0;
        let x_2600 : i32 = u_xlati55;
        let x_2603 : i32 = u_xlati55;
        let x_2607 : vec4<f32> = x_2581.x_AdditionalLightsWorldToLights[((x_2600 + 1i) / 4i)][((x_2603 + 1i) % 4i)];
        let x_2609 : vec3<f32> = (vec3<f32>(x_2598.y, x_2598.y, x_2598.y) * vec3<f32>(x_2607.x, x_2607.y, x_2607.w));
        let x_2610 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2609.x, x_2609.y, x_2609.z, x_2610.w);
        let x_2612 : i32 = u_xlati55;
        let x_2614 : i32 = u_xlati55;
        let x_2617 : vec4<f32> = x_2581.x_AdditionalLightsWorldToLights[(x_2612 / 4i)][(x_2614 % 4i)];
        let x_2619 : vec3<f32> = vs_INTERP0;
        let x_2622 : vec4<f32> = u_xlat12;
        let x_2624 : vec3<f32> = ((vec3<f32>(x_2617.x, x_2617.y, x_2617.w) * vec3<f32>(x_2619.x, x_2619.x, x_2619.x)) + vec3<f32>(x_2622.x, x_2622.y, x_2622.z));
        let x_2625 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2624.x, x_2624.y, x_2624.z, x_2625.w);
        let x_2627 : i32 = u_xlati55;
        let x_2630 : i32 = u_xlati55;
        let x_2634 : vec4<f32> = x_2581.x_AdditionalLightsWorldToLights[((x_2627 + 2i) / 4i)][((x_2630 + 2i) % 4i)];
        let x_2636 : vec3<f32> = vs_INTERP0;
        let x_2639 : vec4<f32> = u_xlat12;
        let x_2641 : vec3<f32> = ((vec3<f32>(x_2634.x, x_2634.y, x_2634.w) * vec3<f32>(x_2636.z, x_2636.z, x_2636.z)) + vec3<f32>(x_2639.x, x_2639.y, x_2639.z));
        let x_2642 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2641.x, x_2641.y, x_2641.z, x_2642.w);
        let x_2644 : vec4<f32> = u_xlat12;
        let x_2646 : i32 = u_xlati55;
        let x_2649 : i32 = u_xlati55;
        let x_2653 : vec4<f32> = x_2581.x_AdditionalLightsWorldToLights[((x_2646 + 3i) / 4i)][((x_2649 + 3i) % 4i)];
        let x_2655 : vec3<f32> = (vec3<f32>(x_2644.x, x_2644.y, x_2644.z) + vec3<f32>(x_2653.x, x_2653.y, x_2653.w));
        let x_2656 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2655.x, x_2655.y, x_2655.z, x_2656.w);
        let x_2659 : vec4<f32> = u_xlat12;
        let x_2661 : vec4<f32> = u_xlat12;
        let x_2663 : vec2<f32> = (vec2<f32>(x_2659.x, x_2659.y) / vec2<f32>(x_2661.z, x_2661.z));
        let x_2664 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2663.x, x_2664.y, x_2663.y);
        let x_2666 : vec3<f32> = u_xlat33;
        let x_2669 : vec2<f32> = ((vec2<f32>(x_2666.x, x_2666.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2670 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2669.x, x_2670.y, x_2669.y);
        let x_2672 : vec3<f32> = u_xlat33;
        let x_2676 : vec2<f32> = clamp(vec2<f32>(x_2672.x, x_2672.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2677 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2676.x, x_2677.y, x_2676.y);
        let x_2679 : u32 = u_xlatu73;
        let x_2682 : vec4<f32> = x_2581.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2679)];
        let x_2684 : vec3<f32> = u_xlat33;
        let x_2687 : u32 = u_xlatu73;
        let x_2690 : vec4<f32> = x_2581.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2687)];
        let x_2692 : vec2<f32> = ((vec2<f32>(x_2682.x, x_2682.y) * vec2<f32>(x_2684.x, x_2684.z)) + vec2<f32>(x_2690.z, x_2690.w));
        let x_2693 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2692.x, x_2693.y, x_2692.y);
      } else {
        let x_2697 : i32 = u_xlati11;
        u_xlatb11 = (x_2697 == 1i);
        let x_2699 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_2699);
        let x_2701 : i32 = u_xlati11;
        if ((x_2701 != 0i)) {
          let x_2705 : vec3<f32> = vs_INTERP0;
          let x_2707 : i32 = u_xlati55;
          let x_2710 : i32 = u_xlati55;
          let x_2714 : vec4<f32> = x_2581.x_AdditionalLightsWorldToLights[((x_2707 + 1i) / 4i)][((x_2710 + 1i) % 4i)];
          let x_2716 : vec2<f32> = (vec2<f32>(x_2705.y, x_2705.y) * vec2<f32>(x_2714.x, x_2714.y));
          let x_2717 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2716.x, x_2716.y, x_2717.z, x_2717.w);
          let x_2719 : i32 = u_xlati55;
          let x_2721 : i32 = u_xlati55;
          let x_2724 : vec4<f32> = x_2581.x_AdditionalLightsWorldToLights[(x_2719 / 4i)][(x_2721 % 4i)];
          let x_2726 : vec3<f32> = vs_INTERP0;
          let x_2729 : vec4<f32> = u_xlat12;
          let x_2731 : vec2<f32> = ((vec2<f32>(x_2724.x, x_2724.y) * vec2<f32>(x_2726.x, x_2726.x)) + vec2<f32>(x_2729.x, x_2729.y));
          let x_2732 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2731.x, x_2731.y, x_2732.z, x_2732.w);
          let x_2734 : i32 = u_xlati55;
          let x_2737 : i32 = u_xlati55;
          let x_2741 : vec4<f32> = x_2581.x_AdditionalLightsWorldToLights[((x_2734 + 2i) / 4i)][((x_2737 + 2i) % 4i)];
          let x_2743 : vec3<f32> = vs_INTERP0;
          let x_2746 : vec4<f32> = u_xlat12;
          let x_2748 : vec2<f32> = ((vec2<f32>(x_2741.x, x_2741.y) * vec2<f32>(x_2743.z, x_2743.z)) + vec2<f32>(x_2746.x, x_2746.y));
          let x_2749 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2748.x, x_2748.y, x_2749.z, x_2749.w);
          let x_2751 : vec4<f32> = u_xlat12;
          let x_2753 : i32 = u_xlati55;
          let x_2756 : i32 = u_xlati55;
          let x_2760 : vec4<f32> = x_2581.x_AdditionalLightsWorldToLights[((x_2753 + 3i) / 4i)][((x_2756 + 3i) % 4i)];
          let x_2762 : vec2<f32> = (vec2<f32>(x_2751.x, x_2751.y) + vec2<f32>(x_2760.x, x_2760.y));
          let x_2763 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2762.x, x_2762.y, x_2763.z, x_2763.w);
          let x_2765 : vec4<f32> = u_xlat12;
          let x_2768 : vec2<f32> = ((vec2<f32>(x_2765.x, x_2765.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2769 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2768.x, x_2768.y, x_2769.z, x_2769.w);
          let x_2771 : vec4<f32> = u_xlat12;
          let x_2773 : vec2<f32> = fract(vec2<f32>(x_2771.x, x_2771.y));
          let x_2774 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2773.x, x_2773.y, x_2774.z, x_2774.w);
          let x_2776 : u32 = u_xlatu73;
          let x_2779 : vec4<f32> = x_2581.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2776)];
          let x_2781 : vec4<f32> = u_xlat12;
          let x_2784 : u32 = u_xlatu73;
          let x_2787 : vec4<f32> = x_2581.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2784)];
          let x_2789 : vec2<f32> = ((vec2<f32>(x_2779.x, x_2779.y) * vec2<f32>(x_2781.x, x_2781.y)) + vec2<f32>(x_2787.z, x_2787.w));
          let x_2790 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2789.x, x_2790.y, x_2789.y);
        } else {
          let x_2793 : vec3<f32> = vs_INTERP0;
          let x_2795 : i32 = u_xlati55;
          let x_2798 : i32 = u_xlati55;
          let x_2802 : vec4<f32> = x_2581.x_AdditionalLightsWorldToLights[((x_2795 + 1i) / 4i)][((x_2798 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2793.y, x_2793.y, x_2793.y, x_2793.y) * x_2802);
          let x_2804 : i32 = u_xlati55;
          let x_2806 : i32 = u_xlati55;
          let x_2809 : vec4<f32> = x_2581.x_AdditionalLightsWorldToLights[(x_2804 / 4i)][(x_2806 % 4i)];
          let x_2810 : vec3<f32> = vs_INTERP0;
          let x_2813 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2809 * vec4<f32>(x_2810.x, x_2810.x, x_2810.x, x_2810.x)) + x_2813);
          let x_2815 : i32 = u_xlati55;
          let x_2818 : i32 = u_xlati55;
          let x_2822 : vec4<f32> = x_2581.x_AdditionalLightsWorldToLights[((x_2815 + 2i) / 4i)][((x_2818 + 2i) % 4i)];
          let x_2823 : vec3<f32> = vs_INTERP0;
          let x_2826 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2822 * vec4<f32>(x_2823.z, x_2823.z, x_2823.z, x_2823.z)) + x_2826);
          let x_2828 : vec4<f32> = u_xlat12;
          let x_2829 : i32 = u_xlati55;
          let x_2832 : i32 = u_xlati55;
          let x_2836 : vec4<f32> = x_2581.x_AdditionalLightsWorldToLights[((x_2829 + 3i) / 4i)][((x_2832 + 3i) % 4i)];
          u_xlat12 = (x_2828 + x_2836);
          let x_2838 : vec4<f32> = u_xlat12;
          let x_2840 : vec4<f32> = u_xlat12;
          let x_2842 : vec3<f32> = (vec3<f32>(x_2838.x, x_2838.y, x_2838.z) / vec3<f32>(x_2840.w, x_2840.w, x_2840.w));
          let x_2843 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2842.x, x_2842.y, x_2842.z, x_2843.w);
          let x_2845 : vec4<f32> = u_xlat12;
          let x_2847 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_2845.x, x_2845.y, x_2845.z), vec3<f32>(x_2847.x, x_2847.y, x_2847.z));
          let x_2852 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_2852);
          let x_2855 : vec4<f32> = u_xlat11;
          let x_2857 : vec4<f32> = u_xlat12;
          let x_2859 : vec3<f32> = (vec3<f32>(x_2855.x, x_2855.x, x_2855.x) * vec3<f32>(x_2857.x, x_2857.y, x_2857.z));
          let x_2860 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2859.x, x_2859.y, x_2859.z, x_2860.w);
          let x_2862 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_2862.x, x_2862.y, x_2862.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2869 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_2869, 0.000001f);
          let x_2874 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_2874);
          let x_2877 : vec4<f32> = u_xlat11;
          let x_2879 : vec4<f32> = u_xlat12;
          let x_2881 : vec3<f32> = (vec3<f32>(x_2877.x, x_2877.x, x_2877.x) * vec3<f32>(x_2879.z, x_2879.x, x_2879.y));
          let x_2882 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2881.x, x_2881.y, x_2881.z, x_2882.w);
          let x_2885 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2885);
          let x_2889 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2889, 0.0f, 1.0f);
          let x_2893 : vec4<f32> = u_xlat13;
          let x_2896 : vec4<bool> = (vec4<f32>(x_2893.y, x_2893.z, x_2893.y, x_2893.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb56 = vec2<bool>(x_2896.x, x_2896.y);
          let x_2900 : bool = u_xlatb56.x;
          if (x_2900) {
            let x_2905 : f32 = u_xlat13.x;
            x_2901 = x_2905;
          } else {
            let x_2908 : f32 = u_xlat13.x;
            x_2901 = -(x_2908);
          }
          let x_2910 : f32 = x_2901;
          u_xlat56.x = x_2910;
          let x_2913 : bool = u_xlatb56.y;
          if (x_2913) {
            let x_2918 : f32 = u_xlat13.x;
            x_2914 = x_2918;
          } else {
            let x_2921 : f32 = u_xlat13.x;
            x_2914 = -(x_2921);
          }
          let x_2923 : f32 = x_2914;
          u_xlat56.y = x_2923;
          let x_2925 : vec4<f32> = u_xlat12;
          let x_2927 : vec4<f32> = u_xlat11;
          let x_2930 : vec2<f32> = u_xlat56;
          let x_2931 : vec2<f32> = ((vec2<f32>(x_2925.x, x_2925.y) * vec2<f32>(x_2927.x, x_2927.x)) + x_2930);
          let x_2932 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2931.x, x_2932.y, x_2931.y, x_2932.w);
          let x_2934 : vec4<f32> = u_xlat11;
          let x_2937 : vec2<f32> = ((vec2<f32>(x_2934.x, x_2934.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2938 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2937.x, x_2938.y, x_2937.y, x_2938.w);
          let x_2940 : vec4<f32> = u_xlat11;
          let x_2944 : vec2<f32> = clamp(vec2<f32>(x_2940.x, x_2940.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2945 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2944.x, x_2945.y, x_2944.y, x_2945.w);
          let x_2947 : u32 = u_xlatu73;
          let x_2950 : vec4<f32> = x_2581.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2947)];
          let x_2952 : vec4<f32> = u_xlat11;
          let x_2955 : u32 = u_xlatu73;
          let x_2958 : vec4<f32> = x_2581.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2955)];
          let x_2960 : vec2<f32> = ((vec2<f32>(x_2950.x, x_2950.y) * vec2<f32>(x_2952.x, x_2952.z)) + vec2<f32>(x_2958.z, x_2958.w));
          let x_2961 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2960.x, x_2961.y, x_2960.y);
        }
      }
      let x_2968 : vec3<f32> = u_xlat33;
      let x_2971 : f32 = x_45.x_GlobalMipBias.x;
      let x_2972 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2968.x, x_2968.z), x_2971);
      u_xlat11 = x_2972;
      let x_2975 : bool = u_xlatb3.w;
      if (x_2975) {
        let x_2980 : f32 = u_xlat11.w;
        x_2976 = x_2980;
      } else {
        let x_2983 : f32 = u_xlat11.x;
        x_2976 = x_2983;
      }
      let x_2984 : f32 = x_2976;
      u_xlat77 = x_2984;
      let x_2986 : bool = u_xlatb3.x;
      if (x_2986) {
        let x_2990 : vec4<f32> = u_xlat11;
        x_2987 = vec3<f32>(x_2990.x, x_2990.y, x_2990.z);
      } else {
        let x_2993 : f32 = u_xlat77;
        x_2987 = vec3<f32>(x_2993, x_2993, x_2993);
      }
      let x_2995 : vec3<f32> = x_2987;
      let x_2996 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2995.x, x_2995.y, x_2995.z, x_2996.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3002 : vec4<f32> = u_xlat11;
    let x_3004 : u32 = u_xlatu73;
    let x_3007 : vec4<f32> = x_2469.x_AdditionalLightsColor[bitcast<i32>(x_3004)];
    let x_3009 : vec3<f32> = (vec3<f32>(x_3002.x, x_3002.y, x_3002.z) * vec3<f32>(x_3007.x, x_3007.y, x_3007.z));
    let x_3010 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3009.x, x_3009.y, x_3009.z, x_3010.w);
    let x_3012 : f32 = u_xlat72;
    let x_3014 : vec4<f32> = u_xlat11;
    let x_3016 : vec3<f32> = (vec3<f32>(x_3012, x_3012, x_3012) * vec3<f32>(x_3014.x, x_3014.y, x_3014.z));
    let x_3017 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3016.x, x_3016.y, x_3016.z, x_3017.w);
    let x_3019 : vec4<f32> = u_xlat1;
    let x_3021 : vec3<f32> = u_xlat32;
    u_xlat73 = dot(vec3<f32>(x_3019.x, x_3019.y, x_3019.w), x_3021);
    let x_3023 : f32 = u_xlat73;
    u_xlat73 = clamp(x_3023, 0.0f, 1.0f);
    let x_3025 : f32 = u_xlat73;
    let x_3026 : f32 = u_xlat74;
    u_xlat73 = (x_3025 * x_3026);
    let x_3028 : f32 = u_xlat73;
    let x_3030 : vec4<f32> = u_xlat11;
    let x_3032 : vec3<f32> = (vec3<f32>(x_3028, x_3028, x_3028) * vec3<f32>(x_3030.x, x_3030.y, x_3030.z));
    let x_3033 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3032.x, x_3032.y, x_3032.z, x_3033.w);
    let x_3035 : vec3<f32> = u_xlat31;
    let x_3036 : vec4<f32> = u_xlat10;
    let x_3039 : vec3<f32> = u_xlat4;
    u_xlat31 = ((x_3035 * vec3<f32>(x_3036.x, x_3036.x, x_3036.x)) + x_3039);
    let x_3041 : vec3<f32> = u_xlat31;
    let x_3042 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(x_3041, x_3042);
    let x_3044 : f32 = u_xlat73;
    u_xlat73 = max(x_3044, 1.17549435e-37f);
    let x_3046 : f32 = u_xlat73;
    u_xlat73 = inverseSqrt(x_3046);
    let x_3048 : f32 = u_xlat73;
    let x_3050 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_3048, x_3048, x_3048) * x_3050);
    let x_3052 : vec4<f32> = u_xlat1;
    let x_3054 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(vec3<f32>(x_3052.x, x_3052.y, x_3052.w), x_3054);
    let x_3056 : f32 = u_xlat73;
    u_xlat73 = clamp(x_3056, 0.0f, 1.0f);
    let x_3058 : vec3<f32> = u_xlat32;
    let x_3059 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_3058, x_3059);
    let x_3061 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3061, 0.0f, 1.0f);
    let x_3063 : f32 = u_xlat73;
    let x_3064 : f32 = u_xlat73;
    u_xlat73 = (x_3063 * x_3064);
    let x_3066 : f32 = u_xlat73;
    let x_3068 : f32 = u_xlat9.x;
    u_xlat73 = ((x_3066 * x_3068) + 1.000010014f);
    let x_3071 : f32 = u_xlat74;
    let x_3072 : f32 = u_xlat74;
    u_xlat74 = (x_3071 * x_3072);
    let x_3074 : f32 = u_xlat73;
    let x_3075 : f32 = u_xlat73;
    u_xlat73 = (x_3074 * x_3075);
    let x_3077 : f32 = u_xlat74;
    u_xlat74 = max(x_3077, 0.100000001f);
    let x_3079 : f32 = u_xlat73;
    let x_3080 : f32 = u_xlat74;
    u_xlat73 = (x_3079 * x_3080);
    let x_3082 : f32 = u_xlat70;
    let x_3083 : f32 = u_xlat73;
    u_xlat73 = (x_3082 * x_3083);
    let x_3085 : f32 = u_xlat25;
    let x_3086 : f32 = u_xlat73;
    u_xlat73 = (x_3085 / x_3086);
    let x_3088 : vec3<f32> = u_xlat0;
    let x_3089 : f32 = u_xlat73;
    let x_3092 : vec3<f32> = u_xlat8;
    u_xlat31 = ((x_3088 * vec3<f32>(x_3089, x_3089, x_3089)) + x_3092);
    let x_3094 : vec3<f32> = u_xlat31;
    let x_3095 : vec4<f32> = u_xlat11;
    let x_3098 : vec4<f32> = u_xlat7;
    let x_3100 : vec3<f32> = ((x_3094 * vec3<f32>(x_3095.x, x_3095.y, x_3095.z)) + vec3<f32>(x_3098.x, x_3098.y, x_3098.z));
    let x_3101 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3100.x, x_3100.y, x_3100.z, x_3101.w);

    continuing {
      let x_3103 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3103 + bitcast<u32>(1i));
    }
  }
  let x_3105 : vec4<f32> = u_xlat6;
  let x_3107 : f32 = u_xlat47;
  let x_3110 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_3105.x, x_3105.y, x_3105.z) * vec3<f32>(x_3107, x_3107, x_3107)) + vec3<f32>(x_3110.x, x_3110.y, x_3110.z));
  let x_3113 : vec4<f32> = u_xlat7;
  let x_3115 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3113.x, x_3113.y, x_3113.z) + x_3115);
  let x_3117 : vec4<f32> = u_xlat2;
  let x_3119 : f32 = u_xlat45;
  let x_3122 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_3117.x, x_3117.y, x_3117.z) * vec3<f32>(x_3119, x_3119, x_3119)) + x_3122);
  let x_3124 : f32 = u_xlat66;
  let x_3125 : f32 = u_xlat66;
  u_xlat66 = (x_3124 * -(x_3125));
  let x_3128 : f32 = u_xlat66;
  u_xlat66 = exp2(x_3128);
  let x_3130 : vec3<f32> = u_xlat0;
  let x_3133 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_3130 + -(vec3<f32>(x_3133.x, x_3133.y, x_3133.z)));
  let x_3139 : f32 = u_xlat66;
  let x_3141 : vec3<f32> = u_xlat0;
  let x_3144 : vec4<f32> = x_45.unity_FogColor;
  let x_3146 : vec3<f32> = ((vec3<f32>(x_3139, x_3139, x_3139) * x_3141) + vec3<f32>(x_3144.x, x_3144.y, x_3144.z));
  let x_3147 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3146.x, x_3146.y, x_3146.z, x_3147.w);
  let x_3152 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_3154 : f32 = x_120.unity_RenderingLayer.x;
  u_xlatu0 = (x_3152 & bitcast<u32>(x_3154));
  let x_3157 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3157);
  let x_3162 : f32 = u_xlat0.x;
  let x_3164 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3162 * x_3164);
  let x_3169 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3169, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3173 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3173.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

