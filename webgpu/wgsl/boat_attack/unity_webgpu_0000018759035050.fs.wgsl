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

@group(1) @binding(3) var<uniform> x_283 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1977 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2428 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2540 : AdditionalLightsCookies;

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
  var x_1929 : f32;
  var u_xlat27 : vec3<f32>;
  var u_xlat49 : f32;
  var x_2059 : f32;
  var x_2070 : vec3<f32>;
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
  var x_2860 : f32;
  var x_2873 : f32;
  var u_xlat77 : f32;
  var x_2935 : f32;
  var x_2946 : vec3<f32>;
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
  let x_513 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_510, x_512);
  let x_514 : vec3<f32> = vec3<f32>(x_513.x, x_513.y, x_513.z);
  let x_515 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_519 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_520 : vec2<f32> = vec2<f32>(x_519.x, x_519.y);
  let x_524 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_520.x, x_520.y));
  let x_525 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat7;
  let x_529 : vec4<f32> = hlslcc_FragCoord;
  let x_531 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_529.x, x_529.y));
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
  let x_535 : f32 = u_xlat7.y;
  let x_538 : f32 = x_45.x_ScaleBiasRt.x;
  let x_541 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat68 = ((x_535 * x_538) + x_541);
  let x_543 : f32 = u_xlat68;
  u_xlat7.z = (-(x_543) + 1.0f);
  let x_547 : vec3<f32> = u_xlat3;
  let x_548 : vec2<f32> = vec2<f32>(x_547.x, x_547.y);
  let x_549 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_548.x, x_548.y, x_549.z);
  let x_551 : vec3<f32> = u_xlat3;
  let x_555 : vec2<f32> = clamp(vec2<f32>(x_551.x, x_551.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_556 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_555.x, x_555.y, x_556.z);
  let x_559 : f32 = u_xlat3.x;
  u_xlat68 = ((-(x_559) * 0.959999979f) + 0.959999979f);
  let x_565 : f32 = u_xlat68;
  let x_568 : f32 = u_xlat3.y;
  u_xlat69 = (-(x_565) + x_568);
  let x_570 : vec3<f32> = u_xlat0;
  let x_571 : f32 = u_xlat68;
  u_xlat8 = (x_570 * vec3<f32>(x_571, x_571, x_571));
  let x_574 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_574 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_578 : vec3<f32> = u_xlat3;
  let x_580 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_578.x, x_578.x, x_578.x) * x_580) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_586 : f32 = u_xlat3.y;
  u_xlat68 = (-(x_586) + 1.0f);
  let x_589 : f32 = u_xlat68;
  let x_590 : f32 = u_xlat68;
  u_xlat3.x = (x_589 * x_590);
  let x_594 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_594, 0.0078125f);
  let x_600 : f32 = u_xlat3.x;
  let x_602 : f32 = u_xlat3.x;
  u_xlat25 = (x_600 * x_602);
  let x_604 : f32 = u_xlat69;
  u_xlat69 = (x_604 + 1.0f);
  let x_606 : f32 = u_xlat69;
  u_xlat69 = min(x_606, 1.0f);
  let x_610 : f32 = u_xlat3.x;
  u_xlat70 = ((x_610 * 4.0f) + 2.0f);
  let x_619 : vec4<f32> = u_xlat7;
  let x_622 : f32 = x_45.x_GlobalMipBias.x;
  let x_623 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_619.x, x_619.z), x_622);
  u_xlat71 = x_623.x;
  let x_626 : f32 = u_xlat71;
  u_xlat72 = (x_626 + -1.0f);
  let x_629 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_630 : f32 = u_xlat72;
  u_xlat72 = ((x_629 * x_630) + 1.0f);
  let x_635 : f32 = u_xlat3.z;
  let x_636 : f32 = u_xlat71;
  u_xlat47 = min(x_635, x_636);
  let x_640 : f32 = x_283.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_640);
  let x_642 : bool = u_xlatb71;
  if (x_642) {
    let x_646 : f32 = x_283.x_MainLightShadowParams.y;
    u_xlatb71 = (x_646 == 1.0f);
    let x_648 : bool = u_xlatb71;
    if (x_648) {
      let x_651 : vec4<f32> = u_xlat5;
      let x_654 : vec4<f32> = x_283.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_651.x, x_651.y, x_651.x, x_651.y) + x_654);
      let x_657 : vec4<f32> = u_xlat7;
      let x_658 : vec2<f32> = vec2<f32>(x_657.x, x_657.y);
      let x_660 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_658.x, x_658.y, x_660);
      let x_673 : vec3<f32> = txVec0;
      let x_675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_673.xy, x_673.z);
      u_xlat9.x = x_675;
      let x_678 : vec4<f32> = u_xlat7;
      let x_679 : vec2<f32> = vec2<f32>(x_678.z, x_678.w);
      let x_681 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_679.x, x_679.y, x_681);
      let x_688 : vec3<f32> = txVec1;
      let x_690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_688.xy, x_688.z);
      u_xlat9.y = x_690;
      let x_692 : vec4<f32> = u_xlat5;
      let x_695 : vec4<f32> = x_283.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_692.x, x_692.y, x_692.x, x_692.y) + x_695);
      let x_698 : vec4<f32> = u_xlat7;
      let x_699 : vec2<f32> = vec2<f32>(x_698.x, x_698.y);
      let x_701 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_699.x, x_699.y, x_701);
      let x_708 : vec3<f32> = txVec2;
      let x_710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_708.xy, x_708.z);
      u_xlat9.z = x_710;
      let x_713 : vec4<f32> = u_xlat7;
      let x_714 : vec2<f32> = vec2<f32>(x_713.z, x_713.w);
      let x_716 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_714.x, x_714.y, x_716);
      let x_723 : vec3<f32> = txVec3;
      let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_723.xy, x_723.z);
      u_xlat9.w = x_725;
      let x_727 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_727, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_734 : f32 = x_283.x_MainLightShadowParams.y;
      u_xlatb7 = (x_734 == 2.0f);
      let x_736 : bool = u_xlatb7;
      if (x_736) {
        let x_739 : vec4<f32> = u_xlat5;
        let x_742 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_747 : vec2<f32> = ((vec2<f32>(x_739.x, x_739.y) * vec2<f32>(x_742.z, x_742.w)) + vec2<f32>(0.5f, 0.5f));
        let x_748 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
        let x_750 : vec4<f32> = u_xlat7;
        let x_752 : vec2<f32> = floor(vec2<f32>(x_750.x, x_750.y));
        let x_753 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_752.x, x_752.y, x_753.z, x_753.w);
        let x_757 : vec4<f32> = u_xlat5;
        let x_760 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_763 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_757.x, x_757.y) * vec2<f32>(x_760.z, x_760.w)) + -(vec2<f32>(x_763.x, x_763.y)));
        let x_767 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_767.x, x_767.x, x_767.y, x_767.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_772 : vec4<f32> = u_xlat9;
        let x_774 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_772.x, x_772.x, x_772.z, x_772.z) * vec4<f32>(x_774.x, x_774.x, x_774.z, x_774.z));
        let x_777 : vec4<f32> = u_xlat10;
        let x_781 : vec2<f32> = (vec2<f32>(x_777.y, x_777.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_782 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_781.x, x_782.y, x_781.y, x_782.w);
        let x_784 : vec4<f32> = u_xlat10;
        let x_787 : vec2<f32> = u_xlat51;
        let x_789 : vec2<f32> = ((vec2<f32>(x_784.x, x_784.z) * vec2<f32>(0.5f, 0.5f)) + -(x_787));
        let x_790 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_789.x, x_789.y, x_790.z, x_790.w);
        let x_793 : vec2<f32> = u_xlat51;
        u_xlat54 = (-(x_793) + vec2<f32>(1.0f, 1.0f));
        let x_797 : vec2<f32> = u_xlat51;
        let x_799 : vec2<f32> = min(x_797, vec2<f32>(0.0f, 0.0f));
        let x_800 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_799.x, x_799.y, x_800.z, x_800.w);
        let x_802 : vec4<f32> = u_xlat11;
        let x_805 : vec4<f32> = u_xlat11;
        let x_808 : vec2<f32> = u_xlat54;
        let x_809 : vec2<f32> = ((-(vec2<f32>(x_802.x, x_802.y)) * vec2<f32>(x_805.x, x_805.y)) + x_808);
        let x_810 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_809.x, x_809.y, x_810.z, x_810.w);
        let x_812 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_812, vec2<f32>(0.0f, 0.0f));
        let x_814 : vec2<f32> = u_xlat51;
        let x_816 : vec2<f32> = u_xlat51;
        let x_818 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_814) * x_816) + vec2<f32>(x_818.y, x_818.w));
        let x_821 : vec4<f32> = u_xlat11;
        let x_823 : vec2<f32> = (vec2<f32>(x_821.x, x_821.y) + vec2<f32>(1.0f, 1.0f));
        let x_824 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_823.x, x_823.y, x_824.z, x_824.w);
        let x_826 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_826 + vec2<f32>(1.0f, 1.0f));
        let x_829 : vec4<f32> = u_xlat10;
        let x_833 : vec2<f32> = (vec2<f32>(x_829.x, x_829.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_834 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_833.x, x_833.y, x_834.z, x_834.w);
        let x_836 : vec2<f32> = u_xlat54;
        let x_837 : vec2<f32> = (x_836 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_838 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_837.x, x_837.y, x_838.z, x_838.w);
        let x_840 : vec4<f32> = u_xlat11;
        let x_842 : vec2<f32> = (vec2<f32>(x_840.x, x_840.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_843 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_842.x, x_842.y, x_843.z, x_843.w);
        let x_846 : vec2<f32> = u_xlat51;
        let x_847 : vec2<f32> = (x_846 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_848 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_847.x, x_847.y, x_848.z, x_848.w);
        let x_850 : vec4<f32> = u_xlat9;
        u_xlat51 = (vec2<f32>(x_850.y, x_850.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_854 : f32 = u_xlat11.x;
        u_xlat12.z = x_854;
        let x_857 : f32 = u_xlat51.x;
        u_xlat12.w = x_857;
        let x_860 : f32 = u_xlat13.x;
        u_xlat10.z = x_860;
        let x_863 : f32 = u_xlat9.x;
        u_xlat10.w = x_863;
        let x_866 : vec4<f32> = u_xlat10;
        let x_868 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_866.z, x_866.w, x_866.x, x_866.z) + vec4<f32>(x_868.z, x_868.w, x_868.x, x_868.z));
        let x_872 : f32 = u_xlat12.y;
        u_xlat11.z = x_872;
        let x_875 : f32 = u_xlat51.y;
        u_xlat11.w = x_875;
        let x_878 : f32 = u_xlat10.y;
        u_xlat13.z = x_878;
        let x_881 : f32 = u_xlat9.z;
        u_xlat13.w = x_881;
        let x_883 : vec4<f32> = u_xlat11;
        let x_885 : vec4<f32> = u_xlat13;
        let x_887 : vec3<f32> = (vec3<f32>(x_883.z, x_883.y, x_883.w) + vec3<f32>(x_885.z, x_885.y, x_885.w));
        let x_888 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
        let x_890 : vec4<f32> = u_xlat10;
        let x_892 : vec4<f32> = u_xlat14;
        let x_894 : vec3<f32> = (vec3<f32>(x_890.x, x_890.z, x_890.w) / vec3<f32>(x_892.z, x_892.w, x_892.y));
        let x_895 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
        let x_897 : vec4<f32> = u_xlat10;
        let x_903 : vec3<f32> = (vec3<f32>(x_897.x, x_897.y, x_897.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_904 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
        let x_906 : vec4<f32> = u_xlat13;
        let x_908 : vec4<f32> = u_xlat9;
        let x_910 : vec3<f32> = (vec3<f32>(x_906.z, x_906.y, x_906.w) / vec3<f32>(x_908.x, x_908.y, x_908.z));
        let x_911 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
        let x_913 : vec4<f32> = u_xlat11;
        let x_915 : vec3<f32> = (vec3<f32>(x_913.x, x_913.y, x_913.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_916 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
        let x_918 : vec4<f32> = u_xlat10;
        let x_921 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_923 : vec3<f32> = (vec3<f32>(x_918.y, x_918.x, x_918.z) * vec3<f32>(x_921.x, x_921.x, x_921.x));
        let x_924 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
        let x_926 : vec4<f32> = u_xlat11;
        let x_929 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_931 : vec3<f32> = (vec3<f32>(x_926.x, x_926.y, x_926.z) * vec3<f32>(x_929.y, x_929.y, x_929.y));
        let x_932 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
        let x_935 : f32 = u_xlat11.x;
        u_xlat10.w = x_935;
        let x_937 : vec4<f32> = u_xlat7;
        let x_940 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_943 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_937.x, x_937.y, x_937.x, x_937.y) * vec4<f32>(x_940.x, x_940.y, x_940.x, x_940.y)) + vec4<f32>(x_943.y, x_943.w, x_943.x, x_943.w));
        let x_946 : vec4<f32> = u_xlat7;
        let x_949 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_952 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_946.x, x_946.y) * vec2<f32>(x_949.x, x_949.y)) + vec2<f32>(x_952.z, x_952.w));
        let x_956 : f32 = u_xlat10.y;
        u_xlat11.w = x_956;
        let x_958 : vec4<f32> = u_xlat11;
        let x_959 : vec2<f32> = vec2<f32>(x_958.y, x_958.z);
        let x_960 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_960.x, x_959.x, x_960.z, x_959.y);
        let x_962 : vec4<f32> = u_xlat7;
        let x_965 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_962.x, x_962.y, x_962.x, x_962.y) * vec4<f32>(x_965.x, x_965.y, x_965.x, x_965.y)) + vec4<f32>(x_968.x, x_968.y, x_968.z, x_968.y));
        let x_971 : vec4<f32> = u_xlat7;
        let x_974 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_977 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_971.x, x_971.y, x_971.x, x_971.y) * vec4<f32>(x_974.x, x_974.y, x_974.x, x_974.y)) + vec4<f32>(x_977.w, x_977.y, x_977.w, x_977.z));
        let x_980 : vec4<f32> = u_xlat7;
        let x_983 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_986 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_980.x, x_980.y, x_980.x, x_980.y) * vec4<f32>(x_983.x, x_983.y, x_983.x, x_983.y)) + vec4<f32>(x_986.x, x_986.w, x_986.z, x_986.w));
        let x_990 : vec4<f32> = u_xlat9;
        let x_992 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_990.x, x_990.x, x_990.x, x_990.y) * vec4<f32>(x_992.z, x_992.w, x_992.y, x_992.z));
        let x_996 : vec4<f32> = u_xlat9;
        let x_998 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_996.y, x_996.y, x_996.z, x_996.z) * x_998);
        let x_1001 : f32 = u_xlat9.z;
        let x_1003 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1001 * x_1003);
        let x_1007 : vec4<f32> = u_xlat12;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.y);
        let x_1010 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1018 : vec3<f32> = txVec4;
        let x_1020 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1018.xy, x_1018.z);
        u_xlat29 = x_1020;
        let x_1022 : vec4<f32> = u_xlat12;
        let x_1023 : vec2<f32> = vec2<f32>(x_1022.z, x_1022.w);
        let x_1025 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_1023.x, x_1023.y, x_1025);
        let x_1033 : vec3<f32> = txVec5;
        let x_1035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1033.xy, x_1033.z);
        u_xlat74 = x_1035;
        let x_1036 : f32 = u_xlat74;
        let x_1038 : f32 = u_xlat15.y;
        u_xlat74 = (x_1036 * x_1038);
        let x_1041 : f32 = u_xlat15.x;
        let x_1042 : f32 = u_xlat29;
        let x_1044 : f32 = u_xlat74;
        u_xlat29 = ((x_1041 * x_1042) + x_1044);
        let x_1047 : vec2<f32> = u_xlat51;
        let x_1049 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
        let x_1056 : vec3<f32> = txVec6;
        let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1056.xy, x_1056.z);
        u_xlat51.x = x_1058;
        let x_1061 : f32 = u_xlat15.z;
        let x_1063 : f32 = u_xlat51.x;
        let x_1065 : f32 = u_xlat29;
        u_xlat29 = ((x_1061 * x_1063) + x_1065);
        let x_1068 : vec4<f32> = u_xlat11;
        let x_1069 : vec2<f32> = vec2<f32>(x_1068.x, x_1068.y);
        let x_1071 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_1069.x, x_1069.y, x_1071);
        let x_1078 : vec3<f32> = txVec7;
        let x_1080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1078.xy, x_1078.z);
        u_xlat51.x = x_1080;
        let x_1083 : f32 = u_xlat15.w;
        let x_1085 : f32 = u_xlat51.x;
        let x_1087 : f32 = u_xlat29;
        u_xlat29 = ((x_1083 * x_1085) + x_1087);
        let x_1090 : vec4<f32> = u_xlat13;
        let x_1091 : vec2<f32> = vec2<f32>(x_1090.x, x_1090.y);
        let x_1093 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1091.x, x_1091.y, x_1093);
        let x_1100 : vec3<f32> = txVec8;
        let x_1102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1100.xy, x_1100.z);
        u_xlat51.x = x_1102;
        let x_1105 : f32 = u_xlat16.x;
        let x_1107 : f32 = u_xlat51.x;
        let x_1109 : f32 = u_xlat29;
        u_xlat29 = ((x_1105 * x_1107) + x_1109);
        let x_1112 : vec4<f32> = u_xlat13;
        let x_1113 : vec2<f32> = vec2<f32>(x_1112.z, x_1112.w);
        let x_1115 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1113.x, x_1113.y, x_1115);
        let x_1122 : vec3<f32> = txVec9;
        let x_1124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1122.xy, x_1122.z);
        u_xlat51.x = x_1124;
        let x_1127 : f32 = u_xlat16.y;
        let x_1129 : f32 = u_xlat51.x;
        let x_1131 : f32 = u_xlat29;
        u_xlat29 = ((x_1127 * x_1129) + x_1131);
        let x_1134 : vec4<f32> = u_xlat11;
        let x_1135 : vec2<f32> = vec2<f32>(x_1134.z, x_1134.w);
        let x_1137 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1135.x, x_1135.y, x_1137);
        let x_1144 : vec3<f32> = txVec10;
        let x_1146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1144.xy, x_1144.z);
        u_xlat51.x = x_1146;
        let x_1149 : f32 = u_xlat16.z;
        let x_1151 : f32 = u_xlat51.x;
        let x_1153 : f32 = u_xlat29;
        u_xlat29 = ((x_1149 * x_1151) + x_1153);
        let x_1156 : vec4<f32> = u_xlat10;
        let x_1157 : vec2<f32> = vec2<f32>(x_1156.x, x_1156.y);
        let x_1159 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1157.x, x_1157.y, x_1159);
        let x_1166 : vec3<f32> = txVec11;
        let x_1168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1166.xy, x_1166.z);
        u_xlat51.x = x_1168;
        let x_1171 : f32 = u_xlat16.w;
        let x_1173 : f32 = u_xlat51.x;
        let x_1175 : f32 = u_xlat29;
        u_xlat29 = ((x_1171 * x_1173) + x_1175);
        let x_1178 : vec4<f32> = u_xlat10;
        let x_1179 : vec2<f32> = vec2<f32>(x_1178.z, x_1178.w);
        let x_1181 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1179.x, x_1179.y, x_1181);
        let x_1188 : vec3<f32> = txVec12;
        let x_1190 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1188.xy, x_1188.z);
        u_xlat51.x = x_1190;
        let x_1193 : f32 = u_xlat7.x;
        let x_1195 : f32 = u_xlat51.x;
        let x_1197 : f32 = u_xlat29;
        u_xlat71 = ((x_1193 * x_1195) + x_1197);
      } else {
        let x_1200 : vec4<f32> = u_xlat5;
        let x_1203 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1206 : vec2<f32> = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1203.z, x_1203.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1207 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat7;
        let x_1211 : vec2<f32> = floor(vec2<f32>(x_1209.x, x_1209.y));
        let x_1212 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1211.x, x_1211.y, x_1212.z, x_1212.w);
        let x_1214 : vec4<f32> = u_xlat5;
        let x_1217 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1214.x, x_1214.y) * vec2<f32>(x_1217.z, x_1217.w)) + -(vec2<f32>(x_1220.x, x_1220.y)));
        let x_1224 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_1224.x, x_1224.x, x_1224.y, x_1224.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1227 : vec4<f32> = u_xlat9;
        let x_1229 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1227.x, x_1227.x, x_1227.z, x_1227.z) * vec4<f32>(x_1229.x, x_1229.x, x_1229.z, x_1229.z));
        let x_1232 : vec4<f32> = u_xlat10;
        let x_1236 : vec2<f32> = (vec2<f32>(x_1232.y, x_1232.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1237 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1237.x, x_1236.x, x_1237.z, x_1236.y);
        let x_1239 : vec4<f32> = u_xlat10;
        let x_1242 : vec2<f32> = u_xlat51;
        let x_1244 : vec2<f32> = ((vec2<f32>(x_1239.x, x_1239.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1242));
        let x_1245 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1244.x, x_1245.y, x_1244.y, x_1245.w);
        let x_1247 : vec2<f32> = u_xlat51;
        let x_1249 : vec2<f32> = (-(x_1247) + vec2<f32>(1.0f, 1.0f));
        let x_1250 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
        let x_1252 : vec2<f32> = u_xlat51;
        u_xlat54 = min(x_1252, vec2<f32>(0.0f, 0.0f));
        let x_1254 : vec2<f32> = u_xlat54;
        let x_1256 : vec2<f32> = u_xlat54;
        let x_1258 : vec4<f32> = u_xlat10;
        let x_1260 : vec2<f32> = ((-(x_1254) * x_1256) + vec2<f32>(x_1258.x, x_1258.y));
        let x_1261 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1260.x, x_1260.y, x_1261.z, x_1261.w);
        let x_1263 : vec2<f32> = u_xlat51;
        u_xlat54 = max(x_1263, vec2<f32>(0.0f, 0.0f));
        let x_1266 : vec2<f32> = u_xlat54;
        let x_1268 : vec2<f32> = u_xlat54;
        let x_1270 : vec4<f32> = u_xlat9;
        let x_1272 : vec2<f32> = ((-(x_1266) * x_1268) + vec2<f32>(x_1270.y, x_1270.w));
        let x_1273 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1272.x, x_1273.y, x_1272.y);
        let x_1275 : vec4<f32> = u_xlat10;
        let x_1277 : vec2<f32> = (vec2<f32>(x_1275.x, x_1275.y) + vec2<f32>(2.0f, 2.0f));
        let x_1278 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1277.x, x_1277.y, x_1278.z, x_1278.w);
        let x_1280 : vec3<f32> = u_xlat31;
        let x_1282 : vec2<f32> = (vec2<f32>(x_1280.x, x_1280.z) + vec2<f32>(2.0f, 2.0f));
        let x_1283 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1283.x, x_1282.x, x_1283.z, x_1282.y);
        let x_1286 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1286 * 0.081632003f);
        let x_1290 : vec4<f32> = u_xlat9;
        let x_1293 : vec3<f32> = (vec3<f32>(x_1290.z, x_1290.x, x_1290.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1294 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
        let x_1296 : vec4<f32> = u_xlat10;
        let x_1299 : vec2<f32> = (vec2<f32>(x_1296.x, x_1296.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1300 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1299.x, x_1299.y, x_1300.z, x_1300.w);
        let x_1303 : f32 = u_xlat13.y;
        u_xlat12.x = x_1303;
        let x_1305 : vec2<f32> = u_xlat51;
        let x_1312 : vec2<f32> = ((vec2<f32>(x_1305.x, x_1305.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1313 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1313.x, x_1312.x, x_1313.z, x_1312.y);
        let x_1315 : vec2<f32> = u_xlat51;
        let x_1319 : vec2<f32> = ((vec2<f32>(x_1315.x, x_1315.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1320 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1319.x, x_1320.y, x_1319.y, x_1320.w);
        let x_1323 : f32 = u_xlat9.x;
        u_xlat10.y = x_1323;
        let x_1326 : f32 = u_xlat11.y;
        u_xlat10.w = x_1326;
        let x_1328 : vec4<f32> = u_xlat10;
        let x_1329 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1328 + x_1329);
        let x_1331 : vec2<f32> = u_xlat51;
        let x_1334 : vec2<f32> = ((vec2<f32>(x_1331.y, x_1331.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1335 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1335.x, x_1334.x, x_1335.z, x_1334.y);
        let x_1337 : vec2<f32> = u_xlat51;
        let x_1340 : vec2<f32> = ((vec2<f32>(x_1337.y, x_1337.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1341 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1340.x, x_1341.y, x_1340.y, x_1341.w);
        let x_1344 : f32 = u_xlat9.y;
        u_xlat11.y = x_1344;
        let x_1346 : vec4<f32> = u_xlat11;
        let x_1347 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1346 + x_1347);
        let x_1349 : vec4<f32> = u_xlat10;
        let x_1350 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1349 / x_1350);
        let x_1352 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1352 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1358 : vec4<f32> = u_xlat11;
        let x_1359 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1358 / x_1359);
        let x_1361 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1361 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1363 : vec4<f32> = u_xlat10;
        let x_1366 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1363.w, x_1363.x, x_1363.y, x_1363.z) * vec4<f32>(x_1366.x, x_1366.x, x_1366.x, x_1366.x));
        let x_1369 : vec4<f32> = u_xlat11;
        let x_1372 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1369.x, x_1369.w, x_1369.y, x_1369.z) * vec4<f32>(x_1372.y, x_1372.y, x_1372.y, x_1372.y));
        let x_1375 : vec4<f32> = u_xlat10;
        let x_1376 : vec3<f32> = vec3<f32>(x_1375.y, x_1375.z, x_1375.w);
        let x_1377 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1376.x, x_1377.y, x_1376.y, x_1376.z);
        let x_1380 : f32 = u_xlat11.x;
        u_xlat13.y = x_1380;
        let x_1382 : vec4<f32> = u_xlat7;
        let x_1385 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1382.x, x_1382.y, x_1382.x, x_1382.y) * vec4<f32>(x_1385.x, x_1385.y, x_1385.x, x_1385.y)) + vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1388.y));
        let x_1391 : vec4<f32> = u_xlat7;
        let x_1394 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1397 : vec4<f32> = u_xlat13;
        u_xlat51 = ((vec2<f32>(x_1391.x, x_1391.y) * vec2<f32>(x_1394.x, x_1394.y)) + vec2<f32>(x_1397.w, x_1397.y));
        let x_1401 : f32 = u_xlat13.y;
        u_xlat10.y = x_1401;
        let x_1404 : f32 = u_xlat11.z;
        u_xlat13.y = x_1404;
        let x_1406 : vec4<f32> = u_xlat7;
        let x_1409 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1412 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1406.x, x_1406.y, x_1406.x, x_1406.y) * vec4<f32>(x_1409.x, x_1409.y, x_1409.x, x_1409.y)) + vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1412.y));
        let x_1415 : vec4<f32> = u_xlat7;
        let x_1418 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1421 : vec4<f32> = u_xlat13;
        let x_1423 : vec2<f32> = ((vec2<f32>(x_1415.x, x_1415.y) * vec2<f32>(x_1418.x, x_1418.y)) + vec2<f32>(x_1421.w, x_1421.y));
        let x_1424 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1423.x, x_1423.y, x_1424.z, x_1424.w);
        let x_1427 : f32 = u_xlat13.y;
        u_xlat10.z = x_1427;
        let x_1430 : vec4<f32> = u_xlat7;
        let x_1433 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1436 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1430.x, x_1430.y, x_1430.x, x_1430.y) * vec4<f32>(x_1433.x, x_1433.y, x_1433.x, x_1433.y)) + vec4<f32>(x_1436.x, x_1436.y, x_1436.x, x_1436.z));
        let x_1440 : f32 = u_xlat11.w;
        u_xlat13.y = x_1440;
        let x_1443 : vec4<f32> = u_xlat7;
        let x_1446 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1449 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1443.x, x_1443.y, x_1443.x, x_1443.y) * vec4<f32>(x_1446.x, x_1446.y, x_1446.x, x_1446.y)) + vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1449.y));
        let x_1453 : vec4<f32> = u_xlat7;
        let x_1456 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1459 : vec4<f32> = u_xlat13;
        let x_1461 : vec2<f32> = ((vec2<f32>(x_1453.x, x_1453.y) * vec2<f32>(x_1456.x, x_1456.y)) + vec2<f32>(x_1459.w, x_1459.y));
        let x_1462 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1461.x, x_1461.y, x_1462.z);
        let x_1465 : f32 = u_xlat13.y;
        u_xlat10.w = x_1465;
        let x_1468 : vec4<f32> = u_xlat7;
        let x_1471 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1474 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1468.x, x_1468.y) * vec2<f32>(x_1471.x, x_1471.y)) + vec2<f32>(x_1474.x, x_1474.w));
        let x_1477 : vec4<f32> = u_xlat13;
        let x_1478 : vec3<f32> = vec3<f32>(x_1477.x, x_1477.z, x_1477.w);
        let x_1479 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1478.x, x_1479.y, x_1478.y, x_1478.z);
        let x_1481 : vec4<f32> = u_xlat7;
        let x_1484 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1487 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1481.x, x_1481.y, x_1481.x, x_1481.y) * vec4<f32>(x_1484.x, x_1484.y, x_1484.x, x_1484.y)) + vec4<f32>(x_1487.x, x_1487.y, x_1487.z, x_1487.y));
        let x_1491 : vec4<f32> = u_xlat7;
        let x_1494 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1497 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1491.x, x_1491.y) * vec2<f32>(x_1494.x, x_1494.y)) + vec2<f32>(x_1497.w, x_1497.y));
        let x_1501 : f32 = u_xlat10.x;
        u_xlat11.x = x_1501;
        let x_1503 : vec4<f32> = u_xlat7;
        let x_1506 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1509 : vec4<f32> = u_xlat11;
        let x_1511 : vec2<f32> = ((vec2<f32>(x_1503.x, x_1503.y) * vec2<f32>(x_1506.x, x_1506.y)) + vec2<f32>(x_1509.x, x_1509.y));
        let x_1512 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1511.x, x_1511.y, x_1512.z, x_1512.w);
        let x_1515 : vec4<f32> = u_xlat9;
        let x_1517 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1515.x, x_1515.x, x_1515.x, x_1515.x) * x_1517);
        let x_1520 : vec4<f32> = u_xlat9;
        let x_1522 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1520.y, x_1520.y, x_1520.y, x_1520.y) * x_1522);
        let x_1525 : vec4<f32> = u_xlat9;
        let x_1527 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1525.z, x_1525.z, x_1525.z, x_1525.z) * x_1527);
        let x_1529 : vec4<f32> = u_xlat9;
        let x_1531 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1529.w, x_1529.w, x_1529.w, x_1529.w) * x_1531);
        let x_1534 : vec4<f32> = u_xlat14;
        let x_1535 : vec2<f32> = vec2<f32>(x_1534.x, x_1534.y);
        let x_1537 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1535.x, x_1535.y, x_1537);
        let x_1544 : vec3<f32> = txVec13;
        let x_1546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1544.xy, x_1544.z);
        u_xlat74 = x_1546;
        let x_1548 : vec4<f32> = u_xlat14;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.z, x_1548.w);
        let x_1551 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec14;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1558.xy, x_1558.z);
        u_xlat10.x = x_1560;
        let x_1563 : f32 = u_xlat10.x;
        let x_1565 : f32 = u_xlat19.y;
        u_xlat10.x = (x_1563 * x_1565);
        let x_1569 : f32 = u_xlat19.x;
        let x_1570 : f32 = u_xlat74;
        let x_1573 : f32 = u_xlat10.x;
        u_xlat74 = ((x_1569 * x_1570) + x_1573);
        let x_1576 : vec2<f32> = u_xlat51;
        let x_1578 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec15;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1585.xy, x_1585.z);
        u_xlat51.x = x_1587;
        let x_1590 : f32 = u_xlat19.z;
        let x_1592 : f32 = u_xlat51.x;
        let x_1594 : f32 = u_xlat74;
        u_xlat51.x = ((x_1590 * x_1592) + x_1594);
        let x_1598 : vec4<f32> = u_xlat17;
        let x_1599 : vec2<f32> = vec2<f32>(x_1598.x, x_1598.y);
        let x_1601 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
        let x_1609 : vec3<f32> = txVec16;
        let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1609.xy, x_1609.z);
        u_xlat73 = x_1611;
        let x_1613 : f32 = u_xlat19.w;
        let x_1614 : f32 = u_xlat73;
        let x_1617 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1613 * x_1614) + x_1617);
        let x_1621 : vec4<f32> = u_xlat15;
        let x_1622 : vec2<f32> = vec2<f32>(x_1621.x, x_1621.y);
        let x_1624 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec17;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1631.xy, x_1631.z);
        u_xlat73 = x_1633;
        let x_1635 : f32 = u_xlat20.x;
        let x_1636 : f32 = u_xlat73;
        let x_1639 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1635 * x_1636) + x_1639);
        let x_1643 : vec4<f32> = u_xlat15;
        let x_1644 : vec2<f32> = vec2<f32>(x_1643.z, x_1643.w);
        let x_1646 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1644.x, x_1644.y, x_1646);
        let x_1653 : vec3<f32> = txVec18;
        let x_1655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1653.xy, x_1653.z);
        u_xlat73 = x_1655;
        let x_1657 : f32 = u_xlat20.y;
        let x_1658 : f32 = u_xlat73;
        let x_1661 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1657 * x_1658) + x_1661);
        let x_1665 : vec4<f32> = u_xlat16;
        let x_1666 : vec2<f32> = vec2<f32>(x_1665.x, x_1665.y);
        let x_1668 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec19;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1675.xy, x_1675.z);
        u_xlat73 = x_1677;
        let x_1679 : f32 = u_xlat20.z;
        let x_1680 : f32 = u_xlat73;
        let x_1683 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1679 * x_1680) + x_1683);
        let x_1687 : vec4<f32> = u_xlat17;
        let x_1688 : vec2<f32> = vec2<f32>(x_1687.z, x_1687.w);
        let x_1690 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1688.x, x_1688.y, x_1690);
        let x_1697 : vec3<f32> = txVec20;
        let x_1699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1697.xy, x_1697.z);
        u_xlat73 = x_1699;
        let x_1701 : f32 = u_xlat20.w;
        let x_1702 : f32 = u_xlat73;
        let x_1705 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1701 * x_1702) + x_1705);
        let x_1709 : vec4<f32> = u_xlat18;
        let x_1710 : vec2<f32> = vec2<f32>(x_1709.x, x_1709.y);
        let x_1712 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1710.x, x_1710.y, x_1712);
        let x_1719 : vec3<f32> = txVec21;
        let x_1721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1719.xy, x_1719.z);
        u_xlat73 = x_1721;
        let x_1723 : f32 = u_xlat21.x;
        let x_1724 : f32 = u_xlat73;
        let x_1727 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1723 * x_1724) + x_1727);
        let x_1731 : vec4<f32> = u_xlat18;
        let x_1732 : vec2<f32> = vec2<f32>(x_1731.z, x_1731.w);
        let x_1734 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1732.x, x_1732.y, x_1734);
        let x_1741 : vec3<f32> = txVec22;
        let x_1743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1741.xy, x_1741.z);
        u_xlat73 = x_1743;
        let x_1745 : f32 = u_xlat21.y;
        let x_1746 : f32 = u_xlat73;
        let x_1749 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1745 * x_1746) + x_1749);
        let x_1753 : vec3<f32> = u_xlat32;
        let x_1754 : vec2<f32> = vec2<f32>(x_1753.x, x_1753.y);
        let x_1756 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
        let x_1763 : vec3<f32> = txVec23;
        let x_1765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1763.xy, x_1763.z);
        u_xlat73 = x_1765;
        let x_1767 : f32 = u_xlat21.z;
        let x_1768 : f32 = u_xlat73;
        let x_1771 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1767 * x_1768) + x_1771);
        let x_1775 : vec2<f32> = u_xlat60;
        let x_1777 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1775.x, x_1775.y, x_1777);
        let x_1784 : vec3<f32> = txVec24;
        let x_1786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1784.xy, x_1784.z);
        u_xlat73 = x_1786;
        let x_1788 : f32 = u_xlat21.w;
        let x_1789 : f32 = u_xlat73;
        let x_1792 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1788 * x_1789) + x_1792);
        let x_1796 : vec4<f32> = u_xlat13;
        let x_1797 : vec2<f32> = vec2<f32>(x_1796.x, x_1796.y);
        let x_1799 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1797.x, x_1797.y, x_1799);
        let x_1806 : vec3<f32> = txVec25;
        let x_1808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1806.xy, x_1806.z);
        u_xlat73 = x_1808;
        let x_1810 : f32 = u_xlat9.x;
        let x_1811 : f32 = u_xlat73;
        let x_1814 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1810 * x_1811) + x_1814);
        let x_1818 : vec4<f32> = u_xlat13;
        let x_1819 : vec2<f32> = vec2<f32>(x_1818.z, x_1818.w);
        let x_1821 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1819.x, x_1819.y, x_1821);
        let x_1828 : vec3<f32> = txVec26;
        let x_1830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1828.xy, x_1828.z);
        u_xlat73 = x_1830;
        let x_1832 : f32 = u_xlat9.y;
        let x_1833 : f32 = u_xlat73;
        let x_1836 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1832 * x_1833) + x_1836);
        let x_1840 : vec2<f32> = u_xlat55;
        let x_1842 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1840.x, x_1840.y, x_1842);
        let x_1849 : vec3<f32> = txVec27;
        let x_1851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1849.xy, x_1849.z);
        u_xlat73 = x_1851;
        let x_1853 : f32 = u_xlat9.z;
        let x_1854 : f32 = u_xlat73;
        let x_1857 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1853 * x_1854) + x_1857);
        let x_1861 : vec4<f32> = u_xlat7;
        let x_1862 : vec2<f32> = vec2<f32>(x_1861.x, x_1861.y);
        let x_1864 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1862.x, x_1862.y, x_1864);
        let x_1871 : vec3<f32> = txVec28;
        let x_1873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1871.xy, x_1871.z);
        u_xlat7.x = x_1873;
        let x_1876 : f32 = u_xlat9.w;
        let x_1878 : f32 = u_xlat7.x;
        let x_1881 : f32 = u_xlat51.x;
        u_xlat71 = ((x_1876 * x_1878) + x_1881);
      }
    }
  } else {
    let x_1885 : vec4<f32> = u_xlat5;
    let x_1886 : vec2<f32> = vec2<f32>(x_1885.x, x_1885.y);
    let x_1888 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1886.x, x_1886.y, x_1888);
    let x_1895 : vec3<f32> = txVec29;
    let x_1897 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1895.xy, x_1895.z);
    u_xlat71 = x_1897;
  }
  let x_1899 : f32 = x_283.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1899) + 1.0f);
  let x_1903 : f32 = u_xlat71;
  let x_1905 : f32 = x_283.x_MainLightShadowParams.x;
  let x_1908 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1903 * x_1905) + x_1908);
  let x_1915 : f32 = u_xlat5.z;
  u_xlatb27.x = (0.0f >= x_1915);
  let x_1920 : f32 = u_xlat5.z;
  u_xlatb49 = (x_1920 >= 1.0f);
  let x_1922 : bool = u_xlatb49;
  let x_1924 : bool = u_xlatb27.x;
  u_xlatb27.x = (x_1922 | x_1924);
  let x_1928 : bool = u_xlatb27.x;
  if (x_1928) {
    x_1929 = 1.0f;
  } else {
    let x_1934 : f32 = u_xlat5.x;
    x_1929 = x_1934;
  }
  let x_1935 : f32 = x_1929;
  u_xlat5.x = x_1935;
  let x_1938 : vec3<f32> = vs_INTERP0;
  let x_1940 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat27 = (x_1938 + -(x_1940));
  let x_1943 : vec3<f32> = u_xlat27;
  let x_1944 : vec3<f32> = u_xlat27;
  u_xlat27.x = dot(x_1943, x_1944);
  let x_1948 : f32 = u_xlat27.x;
  let x_1950 : f32 = x_283.x_MainLightShadowParams.z;
  let x_1953 : f32 = x_283.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1948 * x_1950) + x_1953);
  let x_1957 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1957, 0.0f, 1.0f);
  let x_1962 : f32 = u_xlat5.x;
  u_xlat49 = (-(x_1962) + 1.0f);
  let x_1966 : f32 = u_xlat27.x;
  let x_1967 : f32 = u_xlat49;
  let x_1970 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1966 * x_1967) + x_1970);
  let x_1979 : f32 = x_1977.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_1979 == -1.0f));
  let x_1983 : bool = u_xlatb27.x;
  if (x_1983) {
    let x_1986 : vec3<f32> = vs_INTERP0;
    let x_1989 : vec4<f32> = x_1977.x_MainLightWorldToLight[1i];
    let x_1991 : vec2<f32> = (vec2<f32>(x_1986.y, x_1986.y) * vec2<f32>(x_1989.x, x_1989.y));
    let x_1992 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1991.x, x_1991.y, x_1992.z);
    let x_1995 : vec4<f32> = x_1977.x_MainLightWorldToLight[0i];
    let x_1997 : vec3<f32> = vs_INTERP0;
    let x_2000 : vec3<f32> = u_xlat27;
    let x_2002 : vec2<f32> = ((vec2<f32>(x_1995.x, x_1995.y) * vec2<f32>(x_1997.x, x_1997.x)) + vec2<f32>(x_2000.x, x_2000.y));
    let x_2003 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2002.x, x_2002.y, x_2003.z);
    let x_2006 : vec4<f32> = x_1977.x_MainLightWorldToLight[2i];
    let x_2008 : vec3<f32> = vs_INTERP0;
    let x_2011 : vec3<f32> = u_xlat27;
    let x_2013 : vec2<f32> = ((vec2<f32>(x_2006.x, x_2006.y) * vec2<f32>(x_2008.z, x_2008.z)) + vec2<f32>(x_2011.x, x_2011.y));
    let x_2014 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2013.x, x_2013.y, x_2014.z);
    let x_2016 : vec3<f32> = u_xlat27;
    let x_2019 : vec4<f32> = x_1977.x_MainLightWorldToLight[3i];
    let x_2021 : vec2<f32> = (vec2<f32>(x_2016.x, x_2016.y) + vec2<f32>(x_2019.x, x_2019.y));
    let x_2022 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2021.x, x_2021.y, x_2022.z);
    let x_2024 : vec3<f32> = u_xlat27;
    let x_2027 : vec2<f32> = ((vec2<f32>(x_2024.x, x_2024.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2028 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2027.x, x_2027.y, x_2028.z);
    let x_2035 : vec3<f32> = u_xlat27;
    let x_2038 : f32 = x_45.x_GlobalMipBias.x;
    let x_2039 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2035.x, x_2035.y), x_2038);
    u_xlat7 = x_2039;
    let x_2041 : f32 = x_1977.x_MainLightCookieTextureFormat;
    let x_2043 : f32 = x_1977.x_MainLightCookieTextureFormat;
    let x_2045 : f32 = x_1977.x_MainLightCookieTextureFormat;
    let x_2047 : f32 = x_1977.x_MainLightCookieTextureFormat;
    let x_2048 : vec4<f32> = vec4<f32>(x_2041, x_2043, x_2045, x_2047);
    let x_2055 : vec4<bool> = (vec4<f32>(x_2048.x, x_2048.y, x_2048.z, x_2048.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_2055.x, x_2055.y);
    let x_2058 : bool = u_xlatb27.y;
    if (x_2058) {
      let x_2063 : f32 = u_xlat7.w;
      x_2059 = x_2063;
    } else {
      let x_2066 : f32 = u_xlat7.x;
      x_2059 = x_2066;
    }
    let x_2067 : f32 = x_2059;
    u_xlat49 = x_2067;
    let x_2069 : bool = u_xlatb27.x;
    if (x_2069) {
      let x_2073 : vec4<f32> = u_xlat7;
      x_2070 = vec3<f32>(x_2073.x, x_2073.y, x_2073.z);
    } else {
      let x_2076 : f32 = u_xlat49;
      x_2070 = vec3<f32>(x_2076, x_2076, x_2076);
    }
    let x_2078 : vec3<f32> = x_2070;
    u_xlat27 = x_2078;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_2083 : vec3<f32> = u_xlat27;
  let x_2085 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat27 = (x_2083 * vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
  let x_2088 : f32 = u_xlat72;
  let x_2090 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_2088, x_2088, x_2088) * x_2090);
  let x_2092 : vec3<f32> = u_xlat4;
  let x_2094 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_2092), vec3<f32>(x_2094.x, x_2094.y, x_2094.w));
  let x_2099 : f32 = u_xlat7.x;
  let x_2101 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2099 + x_2101);
  let x_2104 : vec4<f32> = u_xlat1;
  let x_2106 : vec4<f32> = u_xlat7;
  let x_2110 : vec3<f32> = u_xlat4;
  let x_2112 : vec3<f32> = ((vec3<f32>(x_2104.x, x_2104.y, x_2104.w) * -(vec3<f32>(x_2106.x, x_2106.x, x_2106.x))) + -(x_2110));
  let x_2113 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2112.x, x_2112.y, x_2112.z, x_2113.w);
  let x_2115 : vec4<f32> = u_xlat1;
  let x_2117 : vec3<f32> = u_xlat4;
  u_xlat73 = dot(vec3<f32>(x_2115.x, x_2115.y, x_2115.w), x_2117);
  let x_2119 : f32 = u_xlat73;
  u_xlat73 = clamp(x_2119, 0.0f, 1.0f);
  let x_2121 : f32 = u_xlat73;
  u_xlat73 = (-(x_2121) + 1.0f);
  let x_2124 : f32 = u_xlat73;
  let x_2125 : f32 = u_xlat73;
  u_xlat73 = (x_2124 * x_2125);
  let x_2127 : f32 = u_xlat73;
  let x_2128 : f32 = u_xlat73;
  u_xlat73 = (x_2127 * x_2128);
  let x_2130 : f32 = u_xlat68;
  u_xlat74 = ((-(x_2130) * 0.699999988f) + 1.700000048f);
  let x_2136 : f32 = u_xlat68;
  let x_2137 : f32 = u_xlat74;
  u_xlat2.w = (x_2136 * x_2137);
  let x_2140 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_2140 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_2153 : vec4<f32> = u_xlat7;
  let x_2156 : f32 = u_xlat2.w;
  let x_2157 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2153.x, x_2153.y, x_2153.z), x_2156);
  u_xlat9 = x_2157;
  let x_2159 : f32 = u_xlat9.w;
  u_xlat68 = (x_2159 + -1.0f);
  let x_2162 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_2163 : f32 = u_xlat68;
  u_xlat68 = ((x_2162 * x_2163) + 1.0f);
  let x_2166 : f32 = u_xlat68;
  u_xlat68 = max(x_2166, 0.0f);
  let x_2168 : f32 = u_xlat68;
  u_xlat68 = log2(x_2168);
  let x_2170 : f32 = u_xlat68;
  let x_2172 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat68 = (x_2170 * x_2172);
  let x_2174 : f32 = u_xlat68;
  u_xlat68 = exp2(x_2174);
  let x_2176 : f32 = u_xlat68;
  let x_2178 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat68 = (x_2176 * x_2178);
  let x_2180 : vec4<f32> = u_xlat9;
  let x_2182 : f32 = u_xlat68;
  let x_2184 : vec3<f32> = (vec3<f32>(x_2180.x, x_2180.y, x_2180.z) * vec3<f32>(x_2182, x_2182, x_2182));
  let x_2185 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2184.x, x_2184.y, x_2184.z, x_2185.w);
  let x_2187 : vec3<f32> = u_xlat3;
  let x_2189 : vec3<f32> = u_xlat3;
  let x_2193 : vec2<f32> = ((vec2<f32>(x_2187.x, x_2187.x) * vec2<f32>(x_2189.x, x_2189.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2194 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2193.x, x_2193.y, x_2194.z, x_2194.w);
  let x_2197 : f32 = u_xlat9.y;
  u_xlat68 = (1.0f / x_2197);
  let x_2199 : vec3<f32> = u_xlat0;
  let x_2201 : f32 = u_xlat69;
  u_xlat31 = (-(x_2199) + vec3<f32>(x_2201, x_2201, x_2201));
  let x_2204 : f32 = u_xlat73;
  let x_2206 : vec3<f32> = u_xlat31;
  let x_2208 : vec3<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_2204, x_2204, x_2204) * x_2206) + x_2208);
  let x_2210 : f32 = u_xlat68;
  let x_2212 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2210, x_2210, x_2210) * x_2212);
  let x_2214 : vec4<f32> = u_xlat7;
  let x_2216 : vec3<f32> = u_xlat31;
  let x_2217 : vec3<f32> = (vec3<f32>(x_2214.x, x_2214.y, x_2214.z) * x_2216);
  let x_2218 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2217.x, x_2217.y, x_2217.z, x_2218.w);
  let x_2220 : vec4<f32> = u_xlat6;
  let x_2222 : vec3<f32> = u_xlat8;
  let x_2224 : vec4<f32> = u_xlat7;
  let x_2226 : vec3<f32> = ((vec3<f32>(x_2220.x, x_2220.y, x_2220.z) * x_2222) + vec3<f32>(x_2224.x, x_2224.y, x_2224.z));
  let x_2227 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2226.x, x_2226.y, x_2226.z, x_2227.w);
  let x_2230 : f32 = u_xlat5.x;
  let x_2232 : f32 = x_120.unity_LightData.z;
  u_xlat68 = (x_2230 * x_2232);
  let x_2234 : vec4<f32> = u_xlat1;
  let x_2237 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2234.x, x_2234.y, x_2234.w), vec3<f32>(x_2237.x, x_2237.y, x_2237.z));
  let x_2242 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2242, 0.0f, 1.0f);
  let x_2245 : f32 = u_xlat68;
  let x_2247 : f32 = u_xlat3.x;
  u_xlat68 = (x_2245 * x_2247);
  let x_2249 : f32 = u_xlat68;
  let x_2251 : vec3<f32> = u_xlat27;
  let x_2252 : vec3<f32> = (vec3<f32>(x_2249, x_2249, x_2249) * x_2251);
  let x_2253 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2252.x, x_2252.y, x_2252.z, x_2253.w);
  let x_2255 : vec3<f32> = u_xlat4;
  let x_2257 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2259 : vec3<f32> = (x_2255 + vec3<f32>(x_2257.x, x_2257.y, x_2257.z));
  let x_2260 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2259.x, x_2259.y, x_2259.z, x_2260.w);
  let x_2262 : vec4<f32> = u_xlat7;
  let x_2264 : vec4<f32> = u_xlat7;
  u_xlat68 = dot(vec3<f32>(x_2262.x, x_2262.y, x_2262.z), vec3<f32>(x_2264.x, x_2264.y, x_2264.z));
  let x_2267 : f32 = u_xlat68;
  u_xlat68 = max(x_2267, 1.17549435e-37f);
  let x_2270 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_2270);
  let x_2272 : f32 = u_xlat68;
  let x_2274 : vec4<f32> = u_xlat7;
  let x_2276 : vec3<f32> = (vec3<f32>(x_2272, x_2272, x_2272) * vec3<f32>(x_2274.x, x_2274.y, x_2274.z));
  let x_2277 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2276.x, x_2276.y, x_2276.z, x_2277.w);
  let x_2279 : vec4<f32> = u_xlat1;
  let x_2281 : vec4<f32> = u_xlat7;
  u_xlat68 = dot(vec3<f32>(x_2279.x, x_2279.y, x_2279.w), vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
  let x_2284 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2284, 0.0f, 1.0f);
  let x_2287 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2289 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_2287.x, x_2287.y, x_2287.z), vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
  let x_2294 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2294, 0.0f, 1.0f);
  let x_2297 : f32 = u_xlat68;
  let x_2298 : f32 = u_xlat68;
  u_xlat68 = (x_2297 * x_2298);
  let x_2300 : f32 = u_xlat68;
  let x_2302 : f32 = u_xlat9.x;
  u_xlat68 = ((x_2300 * x_2302) + 1.000010014f);
  let x_2307 : f32 = u_xlat3.x;
  let x_2309 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2307 * x_2309);
  let x_2312 : f32 = u_xlat68;
  let x_2313 : f32 = u_xlat68;
  u_xlat68 = (x_2312 * x_2313);
  let x_2316 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2316, 0.100000001f);
  let x_2320 : f32 = u_xlat68;
  let x_2322 : f32 = u_xlat3.x;
  u_xlat68 = (x_2320 * x_2322);
  let x_2324 : f32 = u_xlat70;
  let x_2325 : f32 = u_xlat68;
  u_xlat68 = (x_2324 * x_2325);
  let x_2327 : f32 = u_xlat25;
  let x_2328 : f32 = u_xlat68;
  u_xlat68 = (x_2327 / x_2328);
  let x_2330 : vec3<f32> = u_xlat0;
  let x_2331 : f32 = u_xlat68;
  let x_2334 : vec3<f32> = u_xlat8;
  let x_2335 : vec3<f32> = ((x_2330 * vec3<f32>(x_2331, x_2331, x_2331)) + x_2334);
  let x_2336 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2336.w);
  let x_2338 : vec4<f32> = u_xlat5;
  let x_2340 : vec4<f32> = u_xlat7;
  let x_2342 : vec3<f32> = (vec3<f32>(x_2338.x, x_2338.y, x_2338.z) * vec3<f32>(x_2340.x, x_2340.y, x_2340.z));
  let x_2343 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
  let x_2346 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2348 : f32 = x_120.unity_LightData.y;
  u_xlat68 = min(x_2346, x_2348);
  let x_2351 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_2351));
  let x_2356 : f32 = x_1977.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2358 : f32 = x_1977.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2360 : f32 = x_1977.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2362 : f32 = x_1977.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2363 : vec4<f32> = vec4<f32>(x_2356, x_2358, x_2360, x_2362);
  let x_2370 : vec4<bool> = (vec4<f32>(x_2363.x, x_2363.y, x_2363.z, x_2363.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2371 : vec2<bool> = vec2<bool>(x_2370.x, x_2370.w);
  let x_2372 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2371.x, x_2372.y, x_2372.z, x_2371.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2383 : u32 = u_xlatu_loop_1;
    let x_2384 : u32 = u_xlatu68;
    if ((x_2383 < x_2384)) {
    } else {
      break;
    }
    let x_2387 : u32 = u_xlatu_loop_1;
    u_xlatu73 = (x_2387 >> 2u);
    let x_2390 : u32 = u_xlatu_loop_1;
    u_xlati74 = bitcast<i32>((x_2390 & 3u));
    let x_2393 : u32 = u_xlatu73;
    let x_2396 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_2393)];
    let x_2406 : i32 = u_xlati74;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2411 : vec4<u32> = indexable[x_2406];
    u_xlat73 = dot(x_2396, bitcast<vec4<f32>>(x_2411));
    let x_2414 : f32 = u_xlat73;
    u_xlatu73 = bitcast<u32>(i32(x_2414));
    let x_2417 : vec3<f32> = vs_INTERP0;
    let x_2429 : u32 = u_xlatu73;
    let x_2432 : vec4<f32> = x_2428.x_AdditionalLightsPosition[bitcast<i32>(x_2429)];
    let x_2435 : u32 = u_xlatu73;
    let x_2438 : vec4<f32> = x_2428.x_AdditionalLightsPosition[bitcast<i32>(x_2435)];
    u_xlat31 = ((-(x_2417) * vec3<f32>(x_2432.w, x_2432.w, x_2432.w)) + vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
    let x_2441 : vec3<f32> = u_xlat31;
    let x_2442 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2441, x_2442);
    let x_2444 : f32 = u_xlat74;
    u_xlat74 = max(x_2444, 6.10351562e-05f);
    let x_2447 : f32 = u_xlat74;
    u_xlat10.x = inverseSqrt(x_2447);
    let x_2450 : vec3<f32> = u_xlat31;
    let x_2451 : vec4<f32> = u_xlat10;
    u_xlat32 = (x_2450 * vec3<f32>(x_2451.x, x_2451.x, x_2451.x));
    let x_2454 : f32 = u_xlat74;
    u_xlat11.x = (1.0f / x_2454);
    let x_2457 : f32 = u_xlat74;
    let x_2458 : u32 = u_xlatu73;
    let x_2461 : f32 = x_2428.x_AdditionalLightsAttenuation[bitcast<i32>(x_2458)].x;
    u_xlat74 = (x_2457 * x_2461);
    let x_2463 : f32 = u_xlat74;
    let x_2465 : f32 = u_xlat74;
    u_xlat74 = ((-(x_2463) * x_2465) + 1.0f);
    let x_2468 : f32 = u_xlat74;
    u_xlat74 = max(x_2468, 0.0f);
    let x_2470 : f32 = u_xlat74;
    let x_2471 : f32 = u_xlat74;
    u_xlat74 = (x_2470 * x_2471);
    let x_2473 : f32 = u_xlat74;
    let x_2475 : f32 = u_xlat11.x;
    u_xlat74 = (x_2473 * x_2475);
    let x_2477 : u32 = u_xlatu73;
    let x_2480 : vec4<f32> = x_2428.x_AdditionalLightsSpotDir[bitcast<i32>(x_2477)];
    let x_2482 : vec3<f32> = u_xlat32;
    u_xlat11.x = dot(vec3<f32>(x_2480.x, x_2480.y, x_2480.z), x_2482);
    let x_2486 : f32 = u_xlat11.x;
    let x_2487 : u32 = u_xlatu73;
    let x_2490 : f32 = x_2428.x_AdditionalLightsAttenuation[bitcast<i32>(x_2487)].z;
    let x_2492 : u32 = u_xlatu73;
    let x_2495 : f32 = x_2428.x_AdditionalLightsAttenuation[bitcast<i32>(x_2492)].w;
    u_xlat11.x = ((x_2486 * x_2490) + x_2495);
    let x_2499 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_2499, 0.0f, 1.0f);
    let x_2503 : f32 = u_xlat11.x;
    let x_2505 : f32 = u_xlat11.x;
    u_xlat11.x = (x_2503 * x_2505);
    let x_2508 : f32 = u_xlat74;
    let x_2510 : f32 = u_xlat11.x;
    u_xlat74 = (x_2508 * x_2510);
    let x_2513 : u32 = u_xlatu73;
    u_xlatu11 = (x_2513 >> 5u);
    let x_2516 : u32 = u_xlatu73;
    u_xlati33 = (1i << bitcast<u32>((bitcast<i32>(x_2516) & 31i)));
    let x_2522 : i32 = u_xlati33;
    let x_2524 : u32 = u_xlatu11;
    let x_2527 : f32 = x_1977.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2524)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_2522) & bitcast<u32>(x_2527)));
    let x_2531 : i32 = u_xlati11;
    if ((x_2531 != 0i)) {
      let x_2541 : u32 = u_xlatu73;
      let x_2544 : f32 = x_2540.x_AdditionalLightsLightTypes[bitcast<i32>(x_2541)].el;
      u_xlati11 = i32(x_2544);
      let x_2546 : i32 = u_xlati11;
      u_xlati33 = select(1i, 0i, (x_2546 != 0i));
      let x_2550 : u32 = u_xlatu73;
      u_xlati55 = (bitcast<i32>(x_2550) << bitcast<u32>(2i));
      let x_2553 : i32 = u_xlati33;
      if ((x_2553 != 0i)) {
        let x_2557 : vec3<f32> = vs_INTERP0;
        let x_2559 : i32 = u_xlati55;
        let x_2562 : i32 = u_xlati55;
        let x_2566 : vec4<f32> = x_2540.x_AdditionalLightsWorldToLights[((x_2559 + 1i) / 4i)][((x_2562 + 1i) % 4i)];
        let x_2568 : vec3<f32> = (vec3<f32>(x_2557.y, x_2557.y, x_2557.y) * vec3<f32>(x_2566.x, x_2566.y, x_2566.w));
        let x_2569 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
        let x_2571 : i32 = u_xlati55;
        let x_2573 : i32 = u_xlati55;
        let x_2576 : vec4<f32> = x_2540.x_AdditionalLightsWorldToLights[(x_2571 / 4i)][(x_2573 % 4i)];
        let x_2578 : vec3<f32> = vs_INTERP0;
        let x_2581 : vec4<f32> = u_xlat12;
        let x_2583 : vec3<f32> = ((vec3<f32>(x_2576.x, x_2576.y, x_2576.w) * vec3<f32>(x_2578.x, x_2578.x, x_2578.x)) + vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
        let x_2584 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2583.x, x_2583.y, x_2583.z, x_2584.w);
        let x_2586 : i32 = u_xlati55;
        let x_2589 : i32 = u_xlati55;
        let x_2593 : vec4<f32> = x_2540.x_AdditionalLightsWorldToLights[((x_2586 + 2i) / 4i)][((x_2589 + 2i) % 4i)];
        let x_2595 : vec3<f32> = vs_INTERP0;
        let x_2598 : vec4<f32> = u_xlat12;
        let x_2600 : vec3<f32> = ((vec3<f32>(x_2593.x, x_2593.y, x_2593.w) * vec3<f32>(x_2595.z, x_2595.z, x_2595.z)) + vec3<f32>(x_2598.x, x_2598.y, x_2598.z));
        let x_2601 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2600.x, x_2600.y, x_2600.z, x_2601.w);
        let x_2603 : vec4<f32> = u_xlat12;
        let x_2605 : i32 = u_xlati55;
        let x_2608 : i32 = u_xlati55;
        let x_2612 : vec4<f32> = x_2540.x_AdditionalLightsWorldToLights[((x_2605 + 3i) / 4i)][((x_2608 + 3i) % 4i)];
        let x_2614 : vec3<f32> = (vec3<f32>(x_2603.x, x_2603.y, x_2603.z) + vec3<f32>(x_2612.x, x_2612.y, x_2612.w));
        let x_2615 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
        let x_2618 : vec4<f32> = u_xlat12;
        let x_2620 : vec4<f32> = u_xlat12;
        let x_2622 : vec2<f32> = (vec2<f32>(x_2618.x, x_2618.y) / vec2<f32>(x_2620.z, x_2620.z));
        let x_2623 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2622.x, x_2623.y, x_2622.y);
        let x_2625 : vec3<f32> = u_xlat33;
        let x_2628 : vec2<f32> = ((vec2<f32>(x_2625.x, x_2625.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2629 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2628.x, x_2629.y, x_2628.y);
        let x_2631 : vec3<f32> = u_xlat33;
        let x_2635 : vec2<f32> = clamp(vec2<f32>(x_2631.x, x_2631.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2636 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2635.x, x_2636.y, x_2635.y);
        let x_2638 : u32 = u_xlatu73;
        let x_2641 : vec4<f32> = x_2540.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2638)];
        let x_2643 : vec3<f32> = u_xlat33;
        let x_2646 : u32 = u_xlatu73;
        let x_2649 : vec4<f32> = x_2540.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2646)];
        let x_2651 : vec2<f32> = ((vec2<f32>(x_2641.x, x_2641.y) * vec2<f32>(x_2643.x, x_2643.z)) + vec2<f32>(x_2649.z, x_2649.w));
        let x_2652 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2651.x, x_2652.y, x_2651.y);
      } else {
        let x_2656 : i32 = u_xlati11;
        u_xlatb11 = (x_2656 == 1i);
        let x_2658 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_2658);
        let x_2660 : i32 = u_xlati11;
        if ((x_2660 != 0i)) {
          let x_2664 : vec3<f32> = vs_INTERP0;
          let x_2666 : i32 = u_xlati55;
          let x_2669 : i32 = u_xlati55;
          let x_2673 : vec4<f32> = x_2540.x_AdditionalLightsWorldToLights[((x_2666 + 1i) / 4i)][((x_2669 + 1i) % 4i)];
          let x_2675 : vec2<f32> = (vec2<f32>(x_2664.y, x_2664.y) * vec2<f32>(x_2673.x, x_2673.y));
          let x_2676 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2675.x, x_2675.y, x_2676.z, x_2676.w);
          let x_2678 : i32 = u_xlati55;
          let x_2680 : i32 = u_xlati55;
          let x_2683 : vec4<f32> = x_2540.x_AdditionalLightsWorldToLights[(x_2678 / 4i)][(x_2680 % 4i)];
          let x_2685 : vec3<f32> = vs_INTERP0;
          let x_2688 : vec4<f32> = u_xlat12;
          let x_2690 : vec2<f32> = ((vec2<f32>(x_2683.x, x_2683.y) * vec2<f32>(x_2685.x, x_2685.x)) + vec2<f32>(x_2688.x, x_2688.y));
          let x_2691 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2690.x, x_2690.y, x_2691.z, x_2691.w);
          let x_2693 : i32 = u_xlati55;
          let x_2696 : i32 = u_xlati55;
          let x_2700 : vec4<f32> = x_2540.x_AdditionalLightsWorldToLights[((x_2693 + 2i) / 4i)][((x_2696 + 2i) % 4i)];
          let x_2702 : vec3<f32> = vs_INTERP0;
          let x_2705 : vec4<f32> = u_xlat12;
          let x_2707 : vec2<f32> = ((vec2<f32>(x_2700.x, x_2700.y) * vec2<f32>(x_2702.z, x_2702.z)) + vec2<f32>(x_2705.x, x_2705.y));
          let x_2708 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2707.x, x_2707.y, x_2708.z, x_2708.w);
          let x_2710 : vec4<f32> = u_xlat12;
          let x_2712 : i32 = u_xlati55;
          let x_2715 : i32 = u_xlati55;
          let x_2719 : vec4<f32> = x_2540.x_AdditionalLightsWorldToLights[((x_2712 + 3i) / 4i)][((x_2715 + 3i) % 4i)];
          let x_2721 : vec2<f32> = (vec2<f32>(x_2710.x, x_2710.y) + vec2<f32>(x_2719.x, x_2719.y));
          let x_2722 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2721.x, x_2721.y, x_2722.z, x_2722.w);
          let x_2724 : vec4<f32> = u_xlat12;
          let x_2727 : vec2<f32> = ((vec2<f32>(x_2724.x, x_2724.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2728 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2727.x, x_2727.y, x_2728.z, x_2728.w);
          let x_2730 : vec4<f32> = u_xlat12;
          let x_2732 : vec2<f32> = fract(vec2<f32>(x_2730.x, x_2730.y));
          let x_2733 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2732.x, x_2732.y, x_2733.z, x_2733.w);
          let x_2735 : u32 = u_xlatu73;
          let x_2738 : vec4<f32> = x_2540.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2735)];
          let x_2740 : vec4<f32> = u_xlat12;
          let x_2743 : u32 = u_xlatu73;
          let x_2746 : vec4<f32> = x_2540.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2743)];
          let x_2748 : vec2<f32> = ((vec2<f32>(x_2738.x, x_2738.y) * vec2<f32>(x_2740.x, x_2740.y)) + vec2<f32>(x_2746.z, x_2746.w));
          let x_2749 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2748.x, x_2749.y, x_2748.y);
        } else {
          let x_2752 : vec3<f32> = vs_INTERP0;
          let x_2754 : i32 = u_xlati55;
          let x_2757 : i32 = u_xlati55;
          let x_2761 : vec4<f32> = x_2540.x_AdditionalLightsWorldToLights[((x_2754 + 1i) / 4i)][((x_2757 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2752.y, x_2752.y, x_2752.y, x_2752.y) * x_2761);
          let x_2763 : i32 = u_xlati55;
          let x_2765 : i32 = u_xlati55;
          let x_2768 : vec4<f32> = x_2540.x_AdditionalLightsWorldToLights[(x_2763 / 4i)][(x_2765 % 4i)];
          let x_2769 : vec3<f32> = vs_INTERP0;
          let x_2772 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2768 * vec4<f32>(x_2769.x, x_2769.x, x_2769.x, x_2769.x)) + x_2772);
          let x_2774 : i32 = u_xlati55;
          let x_2777 : i32 = u_xlati55;
          let x_2781 : vec4<f32> = x_2540.x_AdditionalLightsWorldToLights[((x_2774 + 2i) / 4i)][((x_2777 + 2i) % 4i)];
          let x_2782 : vec3<f32> = vs_INTERP0;
          let x_2785 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2781 * vec4<f32>(x_2782.z, x_2782.z, x_2782.z, x_2782.z)) + x_2785);
          let x_2787 : vec4<f32> = u_xlat12;
          let x_2788 : i32 = u_xlati55;
          let x_2791 : i32 = u_xlati55;
          let x_2795 : vec4<f32> = x_2540.x_AdditionalLightsWorldToLights[((x_2788 + 3i) / 4i)][((x_2791 + 3i) % 4i)];
          u_xlat12 = (x_2787 + x_2795);
          let x_2797 : vec4<f32> = u_xlat12;
          let x_2799 : vec4<f32> = u_xlat12;
          let x_2801 : vec3<f32> = (vec3<f32>(x_2797.x, x_2797.y, x_2797.z) / vec3<f32>(x_2799.w, x_2799.w, x_2799.w));
          let x_2802 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2801.x, x_2801.y, x_2801.z, x_2802.w);
          let x_2804 : vec4<f32> = u_xlat12;
          let x_2806 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_2804.x, x_2804.y, x_2804.z), vec3<f32>(x_2806.x, x_2806.y, x_2806.z));
          let x_2811 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_2811);
          let x_2814 : vec4<f32> = u_xlat11;
          let x_2816 : vec4<f32> = u_xlat12;
          let x_2818 : vec3<f32> = (vec3<f32>(x_2814.x, x_2814.x, x_2814.x) * vec3<f32>(x_2816.x, x_2816.y, x_2816.z));
          let x_2819 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2818.x, x_2818.y, x_2818.z, x_2819.w);
          let x_2821 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_2821.x, x_2821.y, x_2821.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2828 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_2828, 0.000001f);
          let x_2833 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_2833);
          let x_2836 : vec4<f32> = u_xlat11;
          let x_2838 : vec4<f32> = u_xlat12;
          let x_2840 : vec3<f32> = (vec3<f32>(x_2836.x, x_2836.x, x_2836.x) * vec3<f32>(x_2838.z, x_2838.x, x_2838.y));
          let x_2841 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2841.w);
          let x_2844 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2844);
          let x_2848 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2848, 0.0f, 1.0f);
          let x_2852 : vec4<f32> = u_xlat13;
          let x_2855 : vec4<bool> = (vec4<f32>(x_2852.y, x_2852.z, x_2852.y, x_2852.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb56 = vec2<bool>(x_2855.x, x_2855.y);
          let x_2859 : bool = u_xlatb56.x;
          if (x_2859) {
            let x_2864 : f32 = u_xlat13.x;
            x_2860 = x_2864;
          } else {
            let x_2867 : f32 = u_xlat13.x;
            x_2860 = -(x_2867);
          }
          let x_2869 : f32 = x_2860;
          u_xlat56.x = x_2869;
          let x_2872 : bool = u_xlatb56.y;
          if (x_2872) {
            let x_2877 : f32 = u_xlat13.x;
            x_2873 = x_2877;
          } else {
            let x_2880 : f32 = u_xlat13.x;
            x_2873 = -(x_2880);
          }
          let x_2882 : f32 = x_2873;
          u_xlat56.y = x_2882;
          let x_2884 : vec4<f32> = u_xlat12;
          let x_2886 : vec4<f32> = u_xlat11;
          let x_2889 : vec2<f32> = u_xlat56;
          let x_2890 : vec2<f32> = ((vec2<f32>(x_2884.x, x_2884.y) * vec2<f32>(x_2886.x, x_2886.x)) + x_2889);
          let x_2891 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2890.x, x_2891.y, x_2890.y, x_2891.w);
          let x_2893 : vec4<f32> = u_xlat11;
          let x_2896 : vec2<f32> = ((vec2<f32>(x_2893.x, x_2893.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2897 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2896.x, x_2897.y, x_2896.y, x_2897.w);
          let x_2899 : vec4<f32> = u_xlat11;
          let x_2903 : vec2<f32> = clamp(vec2<f32>(x_2899.x, x_2899.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2904 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2903.x, x_2904.y, x_2903.y, x_2904.w);
          let x_2906 : u32 = u_xlatu73;
          let x_2909 : vec4<f32> = x_2540.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2906)];
          let x_2911 : vec4<f32> = u_xlat11;
          let x_2914 : u32 = u_xlatu73;
          let x_2917 : vec4<f32> = x_2540.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2914)];
          let x_2919 : vec2<f32> = ((vec2<f32>(x_2909.x, x_2909.y) * vec2<f32>(x_2911.x, x_2911.z)) + vec2<f32>(x_2917.z, x_2917.w));
          let x_2920 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2919.x, x_2920.y, x_2919.y);
        }
      }
      let x_2927 : vec3<f32> = u_xlat33;
      let x_2930 : f32 = x_45.x_GlobalMipBias.x;
      let x_2931 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2927.x, x_2927.z), x_2930);
      u_xlat11 = x_2931;
      let x_2934 : bool = u_xlatb3.w;
      if (x_2934) {
        let x_2939 : f32 = u_xlat11.w;
        x_2935 = x_2939;
      } else {
        let x_2942 : f32 = u_xlat11.x;
        x_2935 = x_2942;
      }
      let x_2943 : f32 = x_2935;
      u_xlat77 = x_2943;
      let x_2945 : bool = u_xlatb3.x;
      if (x_2945) {
        let x_2949 : vec4<f32> = u_xlat11;
        x_2946 = vec3<f32>(x_2949.x, x_2949.y, x_2949.z);
      } else {
        let x_2952 : f32 = u_xlat77;
        x_2946 = vec3<f32>(x_2952, x_2952, x_2952);
      }
      let x_2954 : vec3<f32> = x_2946;
      let x_2955 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2954.x, x_2954.y, x_2954.z, x_2955.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2961 : vec4<f32> = u_xlat11;
    let x_2963 : u32 = u_xlatu73;
    let x_2966 : vec4<f32> = x_2428.x_AdditionalLightsColor[bitcast<i32>(x_2963)];
    let x_2968 : vec3<f32> = (vec3<f32>(x_2961.x, x_2961.y, x_2961.z) * vec3<f32>(x_2966.x, x_2966.y, x_2966.z));
    let x_2969 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2968.x, x_2968.y, x_2968.z, x_2969.w);
    let x_2971 : f32 = u_xlat72;
    let x_2973 : vec4<f32> = u_xlat11;
    let x_2975 : vec3<f32> = (vec3<f32>(x_2971, x_2971, x_2971) * vec3<f32>(x_2973.x, x_2973.y, x_2973.z));
    let x_2976 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2975.x, x_2975.y, x_2975.z, x_2976.w);
    let x_2978 : vec4<f32> = u_xlat1;
    let x_2980 : vec3<f32> = u_xlat32;
    u_xlat73 = dot(vec3<f32>(x_2978.x, x_2978.y, x_2978.w), x_2980);
    let x_2982 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2982, 0.0f, 1.0f);
    let x_2984 : f32 = u_xlat73;
    let x_2985 : f32 = u_xlat74;
    u_xlat73 = (x_2984 * x_2985);
    let x_2987 : f32 = u_xlat73;
    let x_2989 : vec4<f32> = u_xlat11;
    let x_2991 : vec3<f32> = (vec3<f32>(x_2987, x_2987, x_2987) * vec3<f32>(x_2989.x, x_2989.y, x_2989.z));
    let x_2992 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2991.x, x_2991.y, x_2991.z, x_2992.w);
    let x_2994 : vec3<f32> = u_xlat31;
    let x_2995 : vec4<f32> = u_xlat10;
    let x_2998 : vec3<f32> = u_xlat4;
    u_xlat31 = ((x_2994 * vec3<f32>(x_2995.x, x_2995.x, x_2995.x)) + x_2998);
    let x_3000 : vec3<f32> = u_xlat31;
    let x_3001 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(x_3000, x_3001);
    let x_3003 : f32 = u_xlat73;
    u_xlat73 = max(x_3003, 1.17549435e-37f);
    let x_3005 : f32 = u_xlat73;
    u_xlat73 = inverseSqrt(x_3005);
    let x_3007 : f32 = u_xlat73;
    let x_3009 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_3007, x_3007, x_3007) * x_3009);
    let x_3011 : vec4<f32> = u_xlat1;
    let x_3013 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(vec3<f32>(x_3011.x, x_3011.y, x_3011.w), x_3013);
    let x_3015 : f32 = u_xlat73;
    u_xlat73 = clamp(x_3015, 0.0f, 1.0f);
    let x_3017 : vec3<f32> = u_xlat32;
    let x_3018 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_3017, x_3018);
    let x_3020 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3020, 0.0f, 1.0f);
    let x_3022 : f32 = u_xlat73;
    let x_3023 : f32 = u_xlat73;
    u_xlat73 = (x_3022 * x_3023);
    let x_3025 : f32 = u_xlat73;
    let x_3027 : f32 = u_xlat9.x;
    u_xlat73 = ((x_3025 * x_3027) + 1.000010014f);
    let x_3030 : f32 = u_xlat74;
    let x_3031 : f32 = u_xlat74;
    u_xlat74 = (x_3030 * x_3031);
    let x_3033 : f32 = u_xlat73;
    let x_3034 : f32 = u_xlat73;
    u_xlat73 = (x_3033 * x_3034);
    let x_3036 : f32 = u_xlat74;
    u_xlat74 = max(x_3036, 0.100000001f);
    let x_3038 : f32 = u_xlat73;
    let x_3039 : f32 = u_xlat74;
    u_xlat73 = (x_3038 * x_3039);
    let x_3041 : f32 = u_xlat70;
    let x_3042 : f32 = u_xlat73;
    u_xlat73 = (x_3041 * x_3042);
    let x_3044 : f32 = u_xlat25;
    let x_3045 : f32 = u_xlat73;
    u_xlat73 = (x_3044 / x_3045);
    let x_3047 : vec3<f32> = u_xlat0;
    let x_3048 : f32 = u_xlat73;
    let x_3051 : vec3<f32> = u_xlat8;
    u_xlat31 = ((x_3047 * vec3<f32>(x_3048, x_3048, x_3048)) + x_3051);
    let x_3053 : vec3<f32> = u_xlat31;
    let x_3054 : vec4<f32> = u_xlat11;
    let x_3057 : vec4<f32> = u_xlat7;
    let x_3059 : vec3<f32> = ((x_3053 * vec3<f32>(x_3054.x, x_3054.y, x_3054.z)) + vec3<f32>(x_3057.x, x_3057.y, x_3057.z));
    let x_3060 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3059.x, x_3059.y, x_3059.z, x_3060.w);

    continuing {
      let x_3062 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3062 + bitcast<u32>(1i));
    }
  }
  let x_3064 : vec4<f32> = u_xlat6;
  let x_3066 : f32 = u_xlat47;
  let x_3069 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_3064.x, x_3064.y, x_3064.z) * vec3<f32>(x_3066, x_3066, x_3066)) + vec3<f32>(x_3069.x, x_3069.y, x_3069.z));
  let x_3072 : vec4<f32> = u_xlat7;
  let x_3074 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3072.x, x_3072.y, x_3072.z) + x_3074);
  let x_3076 : vec4<f32> = u_xlat2;
  let x_3078 : f32 = u_xlat45;
  let x_3081 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_3076.x, x_3076.y, x_3076.z) * vec3<f32>(x_3078, x_3078, x_3078)) + x_3081);
  let x_3083 : f32 = u_xlat66;
  let x_3084 : f32 = u_xlat66;
  u_xlat66 = (x_3083 * -(x_3084));
  let x_3087 : f32 = u_xlat66;
  u_xlat66 = exp2(x_3087);
  let x_3089 : vec3<f32> = u_xlat0;
  let x_3092 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_3089 + -(vec3<f32>(x_3092.x, x_3092.y, x_3092.z)));
  let x_3098 : f32 = u_xlat66;
  let x_3100 : vec3<f32> = u_xlat0;
  let x_3103 : vec4<f32> = x_45.unity_FogColor;
  let x_3105 : vec3<f32> = ((vec3<f32>(x_3098, x_3098, x_3098) * x_3100) + vec3<f32>(x_3103.x, x_3103.y, x_3103.z));
  let x_3106 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3105.x, x_3105.y, x_3105.z, x_3106.w);
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

