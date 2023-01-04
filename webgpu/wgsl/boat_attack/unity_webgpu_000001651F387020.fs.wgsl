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

@group(1) @binding(3) var<uniform> x_283 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1979 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2430 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2542 : AdditionalLightsCookies;

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
  var x_1931 : f32;
  var u_xlat27 : vec3<f32>;
  var u_xlat49 : f32;
  var x_2061 : f32;
  var x_2072 : vec3<f32>;
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
  var x_2862 : f32;
  var x_2875 : f32;
  var u_xlat77 : f32;
  var x_2937 : f32;
  var x_2948 : vec3<f32>;
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
      let x_655 : vec4<f32> = x_283.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_651.x, x_651.y, x_651.x, x_651.y) + x_655);
      let x_658 : vec4<f32> = u_xlat7;
      let x_659 : vec2<f32> = vec2<f32>(x_658.x, x_658.y);
      let x_661 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_659.x, x_659.y, x_661);
      let x_674 : vec3<f32> = txVec0;
      let x_676 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_674.xy, x_674.z);
      u_xlat9.x = x_676;
      let x_679 : vec4<f32> = u_xlat7;
      let x_680 : vec2<f32> = vec2<f32>(x_679.z, x_679.w);
      let x_682 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_680.x, x_680.y, x_682);
      let x_689 : vec3<f32> = txVec1;
      let x_691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_689.xy, x_689.z);
      u_xlat9.y = x_691;
      let x_693 : vec4<f32> = u_xlat5;
      let x_697 : vec4<f32> = x_283.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_693.x, x_693.y, x_693.x, x_693.y) + x_697);
      let x_700 : vec4<f32> = u_xlat7;
      let x_701 : vec2<f32> = vec2<f32>(x_700.x, x_700.y);
      let x_703 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_701.x, x_701.y, x_703);
      let x_710 : vec3<f32> = txVec2;
      let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_710.xy, x_710.z);
      u_xlat9.z = x_712;
      let x_715 : vec4<f32> = u_xlat7;
      let x_716 : vec2<f32> = vec2<f32>(x_715.z, x_715.w);
      let x_718 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_716.x, x_716.y, x_718);
      let x_725 : vec3<f32> = txVec3;
      let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_725.xy, x_725.z);
      u_xlat9.w = x_727;
      let x_729 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_729, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_736 : f32 = x_283.x_MainLightShadowParams.y;
      u_xlatb7 = (x_736 == 2.0f);
      let x_738 : bool = u_xlatb7;
      if (x_738) {
        let x_741 : vec4<f32> = u_xlat5;
        let x_744 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_749 : vec2<f32> = ((vec2<f32>(x_741.x, x_741.y) * vec2<f32>(x_744.z, x_744.w)) + vec2<f32>(0.5f, 0.5f));
        let x_750 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_749.x, x_749.y, x_750.z, x_750.w);
        let x_752 : vec4<f32> = u_xlat7;
        let x_754 : vec2<f32> = floor(vec2<f32>(x_752.x, x_752.y));
        let x_755 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
        let x_759 : vec4<f32> = u_xlat5;
        let x_762 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_765 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_759.x, x_759.y) * vec2<f32>(x_762.z, x_762.w)) + -(vec2<f32>(x_765.x, x_765.y)));
        let x_769 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_769.x, x_769.x, x_769.y, x_769.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_774 : vec4<f32> = u_xlat9;
        let x_776 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_774.x, x_774.x, x_774.z, x_774.z) * vec4<f32>(x_776.x, x_776.x, x_776.z, x_776.z));
        let x_779 : vec4<f32> = u_xlat10;
        let x_783 : vec2<f32> = (vec2<f32>(x_779.y, x_779.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_784 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_783.x, x_784.y, x_783.y, x_784.w);
        let x_786 : vec4<f32> = u_xlat10;
        let x_789 : vec2<f32> = u_xlat51;
        let x_791 : vec2<f32> = ((vec2<f32>(x_786.x, x_786.z) * vec2<f32>(0.5f, 0.5f)) + -(x_789));
        let x_792 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_791.x, x_791.y, x_792.z, x_792.w);
        let x_795 : vec2<f32> = u_xlat51;
        u_xlat54 = (-(x_795) + vec2<f32>(1.0f, 1.0f));
        let x_799 : vec2<f32> = u_xlat51;
        let x_801 : vec2<f32> = min(x_799, vec2<f32>(0.0f, 0.0f));
        let x_802 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_801.x, x_801.y, x_802.z, x_802.w);
        let x_804 : vec4<f32> = u_xlat11;
        let x_807 : vec4<f32> = u_xlat11;
        let x_810 : vec2<f32> = u_xlat54;
        let x_811 : vec2<f32> = ((-(vec2<f32>(x_804.x, x_804.y)) * vec2<f32>(x_807.x, x_807.y)) + x_810);
        let x_812 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_812.w);
        let x_814 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_814, vec2<f32>(0.0f, 0.0f));
        let x_816 : vec2<f32> = u_xlat51;
        let x_818 : vec2<f32> = u_xlat51;
        let x_820 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_816) * x_818) + vec2<f32>(x_820.y, x_820.w));
        let x_823 : vec4<f32> = u_xlat11;
        let x_825 : vec2<f32> = (vec2<f32>(x_823.x, x_823.y) + vec2<f32>(1.0f, 1.0f));
        let x_826 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_825.x, x_825.y, x_826.z, x_826.w);
        let x_828 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_828 + vec2<f32>(1.0f, 1.0f));
        let x_831 : vec4<f32> = u_xlat10;
        let x_835 : vec2<f32> = (vec2<f32>(x_831.x, x_831.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_836 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
        let x_838 : vec2<f32> = u_xlat54;
        let x_839 : vec2<f32> = (x_838 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_840 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat11;
        let x_844 : vec2<f32> = (vec2<f32>(x_842.x, x_842.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_845 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_844.x, x_844.y, x_845.z, x_845.w);
        let x_848 : vec2<f32> = u_xlat51;
        let x_849 : vec2<f32> = (x_848 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_850 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_852 : vec4<f32> = u_xlat9;
        u_xlat51 = (vec2<f32>(x_852.y, x_852.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_856 : f32 = u_xlat11.x;
        u_xlat12.z = x_856;
        let x_859 : f32 = u_xlat51.x;
        u_xlat12.w = x_859;
        let x_862 : f32 = u_xlat13.x;
        u_xlat10.z = x_862;
        let x_865 : f32 = u_xlat9.x;
        u_xlat10.w = x_865;
        let x_868 : vec4<f32> = u_xlat10;
        let x_870 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_868.z, x_868.w, x_868.x, x_868.z) + vec4<f32>(x_870.z, x_870.w, x_870.x, x_870.z));
        let x_874 : f32 = u_xlat12.y;
        u_xlat11.z = x_874;
        let x_877 : f32 = u_xlat51.y;
        u_xlat11.w = x_877;
        let x_880 : f32 = u_xlat10.y;
        u_xlat13.z = x_880;
        let x_883 : f32 = u_xlat9.z;
        u_xlat13.w = x_883;
        let x_885 : vec4<f32> = u_xlat11;
        let x_887 : vec4<f32> = u_xlat13;
        let x_889 : vec3<f32> = (vec3<f32>(x_885.z, x_885.y, x_885.w) + vec3<f32>(x_887.z, x_887.y, x_887.w));
        let x_890 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
        let x_892 : vec4<f32> = u_xlat10;
        let x_894 : vec4<f32> = u_xlat14;
        let x_896 : vec3<f32> = (vec3<f32>(x_892.x, x_892.z, x_892.w) / vec3<f32>(x_894.z, x_894.w, x_894.y));
        let x_897 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
        let x_899 : vec4<f32> = u_xlat10;
        let x_905 : vec3<f32> = (vec3<f32>(x_899.x, x_899.y, x_899.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_906 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
        let x_908 : vec4<f32> = u_xlat13;
        let x_910 : vec4<f32> = u_xlat9;
        let x_912 : vec3<f32> = (vec3<f32>(x_908.z, x_908.y, x_908.w) / vec3<f32>(x_910.x, x_910.y, x_910.z));
        let x_913 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
        let x_915 : vec4<f32> = u_xlat11;
        let x_917 : vec3<f32> = (vec3<f32>(x_915.x, x_915.y, x_915.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_918 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
        let x_920 : vec4<f32> = u_xlat10;
        let x_923 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_925 : vec3<f32> = (vec3<f32>(x_920.y, x_920.x, x_920.z) * vec3<f32>(x_923.x, x_923.x, x_923.x));
        let x_926 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
        let x_928 : vec4<f32> = u_xlat11;
        let x_931 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_933 : vec3<f32> = (vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(x_931.y, x_931.y, x_931.y));
        let x_934 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
        let x_937 : f32 = u_xlat11.x;
        u_xlat10.w = x_937;
        let x_939 : vec4<f32> = u_xlat7;
        let x_942 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_945 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_939.x, x_939.y, x_939.x, x_939.y) * vec4<f32>(x_942.x, x_942.y, x_942.x, x_942.y)) + vec4<f32>(x_945.y, x_945.w, x_945.x, x_945.w));
        let x_948 : vec4<f32> = u_xlat7;
        let x_951 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_954 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_948.x, x_948.y) * vec2<f32>(x_951.x, x_951.y)) + vec2<f32>(x_954.z, x_954.w));
        let x_958 : f32 = u_xlat10.y;
        u_xlat11.w = x_958;
        let x_960 : vec4<f32> = u_xlat11;
        let x_961 : vec2<f32> = vec2<f32>(x_960.y, x_960.z);
        let x_962 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_962.x, x_961.x, x_962.z, x_961.y);
        let x_964 : vec4<f32> = u_xlat7;
        let x_967 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_970 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_964.x, x_964.y, x_964.x, x_964.y) * vec4<f32>(x_967.x, x_967.y, x_967.x, x_967.y)) + vec4<f32>(x_970.x, x_970.y, x_970.z, x_970.y));
        let x_973 : vec4<f32> = u_xlat7;
        let x_976 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_979 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_973.x, x_973.y, x_973.x, x_973.y) * vec4<f32>(x_976.x, x_976.y, x_976.x, x_976.y)) + vec4<f32>(x_979.w, x_979.y, x_979.w, x_979.z));
        let x_982 : vec4<f32> = u_xlat7;
        let x_985 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_988 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_982.x, x_982.y, x_982.x, x_982.y) * vec4<f32>(x_985.x, x_985.y, x_985.x, x_985.y)) + vec4<f32>(x_988.x, x_988.w, x_988.z, x_988.w));
        let x_992 : vec4<f32> = u_xlat9;
        let x_994 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_992.x, x_992.x, x_992.x, x_992.y) * vec4<f32>(x_994.z, x_994.w, x_994.y, x_994.z));
        let x_998 : vec4<f32> = u_xlat9;
        let x_1000 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_998.y, x_998.y, x_998.z, x_998.z) * x_1000);
        let x_1003 : f32 = u_xlat9.z;
        let x_1005 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1003 * x_1005);
        let x_1009 : vec4<f32> = u_xlat12;
        let x_1010 : vec2<f32> = vec2<f32>(x_1009.x, x_1009.y);
        let x_1012 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_1010.x, x_1010.y, x_1012);
        let x_1020 : vec3<f32> = txVec4;
        let x_1022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1020.xy, x_1020.z);
        u_xlat29 = x_1022;
        let x_1024 : vec4<f32> = u_xlat12;
        let x_1025 : vec2<f32> = vec2<f32>(x_1024.z, x_1024.w);
        let x_1027 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_1025.x, x_1025.y, x_1027);
        let x_1035 : vec3<f32> = txVec5;
        let x_1037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1035.xy, x_1035.z);
        u_xlat74 = x_1037;
        let x_1038 : f32 = u_xlat74;
        let x_1040 : f32 = u_xlat15.y;
        u_xlat74 = (x_1038 * x_1040);
        let x_1043 : f32 = u_xlat15.x;
        let x_1044 : f32 = u_xlat29;
        let x_1046 : f32 = u_xlat74;
        u_xlat29 = ((x_1043 * x_1044) + x_1046);
        let x_1049 : vec2<f32> = u_xlat51;
        let x_1051 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_1049.x, x_1049.y, x_1051);
        let x_1058 : vec3<f32> = txVec6;
        let x_1060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1058.xy, x_1058.z);
        u_xlat51.x = x_1060;
        let x_1063 : f32 = u_xlat15.z;
        let x_1065 : f32 = u_xlat51.x;
        let x_1067 : f32 = u_xlat29;
        u_xlat29 = ((x_1063 * x_1065) + x_1067);
        let x_1070 : vec4<f32> = u_xlat11;
        let x_1071 : vec2<f32> = vec2<f32>(x_1070.x, x_1070.y);
        let x_1073 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_1071.x, x_1071.y, x_1073);
        let x_1080 : vec3<f32> = txVec7;
        let x_1082 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1080.xy, x_1080.z);
        u_xlat51.x = x_1082;
        let x_1085 : f32 = u_xlat15.w;
        let x_1087 : f32 = u_xlat51.x;
        let x_1089 : f32 = u_xlat29;
        u_xlat29 = ((x_1085 * x_1087) + x_1089);
        let x_1092 : vec4<f32> = u_xlat13;
        let x_1093 : vec2<f32> = vec2<f32>(x_1092.x, x_1092.y);
        let x_1095 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1093.x, x_1093.y, x_1095);
        let x_1102 : vec3<f32> = txVec8;
        let x_1104 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1102.xy, x_1102.z);
        u_xlat51.x = x_1104;
        let x_1107 : f32 = u_xlat16.x;
        let x_1109 : f32 = u_xlat51.x;
        let x_1111 : f32 = u_xlat29;
        u_xlat29 = ((x_1107 * x_1109) + x_1111);
        let x_1114 : vec4<f32> = u_xlat13;
        let x_1115 : vec2<f32> = vec2<f32>(x_1114.z, x_1114.w);
        let x_1117 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1115.x, x_1115.y, x_1117);
        let x_1124 : vec3<f32> = txVec9;
        let x_1126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1124.xy, x_1124.z);
        u_xlat51.x = x_1126;
        let x_1129 : f32 = u_xlat16.y;
        let x_1131 : f32 = u_xlat51.x;
        let x_1133 : f32 = u_xlat29;
        u_xlat29 = ((x_1129 * x_1131) + x_1133);
        let x_1136 : vec4<f32> = u_xlat11;
        let x_1137 : vec2<f32> = vec2<f32>(x_1136.z, x_1136.w);
        let x_1139 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1137.x, x_1137.y, x_1139);
        let x_1146 : vec3<f32> = txVec10;
        let x_1148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1146.xy, x_1146.z);
        u_xlat51.x = x_1148;
        let x_1151 : f32 = u_xlat16.z;
        let x_1153 : f32 = u_xlat51.x;
        let x_1155 : f32 = u_xlat29;
        u_xlat29 = ((x_1151 * x_1153) + x_1155);
        let x_1158 : vec4<f32> = u_xlat10;
        let x_1159 : vec2<f32> = vec2<f32>(x_1158.x, x_1158.y);
        let x_1161 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1159.x, x_1159.y, x_1161);
        let x_1168 : vec3<f32> = txVec11;
        let x_1170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1168.xy, x_1168.z);
        u_xlat51.x = x_1170;
        let x_1173 : f32 = u_xlat16.w;
        let x_1175 : f32 = u_xlat51.x;
        let x_1177 : f32 = u_xlat29;
        u_xlat29 = ((x_1173 * x_1175) + x_1177);
        let x_1180 : vec4<f32> = u_xlat10;
        let x_1181 : vec2<f32> = vec2<f32>(x_1180.z, x_1180.w);
        let x_1183 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1181.x, x_1181.y, x_1183);
        let x_1190 : vec3<f32> = txVec12;
        let x_1192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1190.xy, x_1190.z);
        u_xlat51.x = x_1192;
        let x_1195 : f32 = u_xlat7.x;
        let x_1197 : f32 = u_xlat51.x;
        let x_1199 : f32 = u_xlat29;
        u_xlat71 = ((x_1195 * x_1197) + x_1199);
      } else {
        let x_1202 : vec4<f32> = u_xlat5;
        let x_1205 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1208 : vec2<f32> = ((vec2<f32>(x_1202.x, x_1202.y) * vec2<f32>(x_1205.z, x_1205.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1209 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1211 : vec4<f32> = u_xlat7;
        let x_1213 : vec2<f32> = floor(vec2<f32>(x_1211.x, x_1211.y));
        let x_1214 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1213.x, x_1213.y, x_1214.z, x_1214.w);
        let x_1216 : vec4<f32> = u_xlat5;
        let x_1219 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1216.x, x_1216.y) * vec2<f32>(x_1219.z, x_1219.w)) + -(vec2<f32>(x_1222.x, x_1222.y)));
        let x_1226 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_1226.x, x_1226.x, x_1226.y, x_1226.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1229 : vec4<f32> = u_xlat9;
        let x_1231 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1229.x, x_1229.x, x_1229.z, x_1229.z) * vec4<f32>(x_1231.x, x_1231.x, x_1231.z, x_1231.z));
        let x_1234 : vec4<f32> = u_xlat10;
        let x_1238 : vec2<f32> = (vec2<f32>(x_1234.y, x_1234.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1239 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1239.x, x_1238.x, x_1239.z, x_1238.y);
        let x_1241 : vec4<f32> = u_xlat10;
        let x_1244 : vec2<f32> = u_xlat51;
        let x_1246 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1244));
        let x_1247 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1246.x, x_1247.y, x_1246.y, x_1247.w);
        let x_1249 : vec2<f32> = u_xlat51;
        let x_1251 : vec2<f32> = (-(x_1249) + vec2<f32>(1.0f, 1.0f));
        let x_1252 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1251.x, x_1251.y, x_1252.z, x_1252.w);
        let x_1254 : vec2<f32> = u_xlat51;
        u_xlat54 = min(x_1254, vec2<f32>(0.0f, 0.0f));
        let x_1256 : vec2<f32> = u_xlat54;
        let x_1258 : vec2<f32> = u_xlat54;
        let x_1260 : vec4<f32> = u_xlat10;
        let x_1262 : vec2<f32> = ((-(x_1256) * x_1258) + vec2<f32>(x_1260.x, x_1260.y));
        let x_1263 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1262.x, x_1262.y, x_1263.z, x_1263.w);
        let x_1265 : vec2<f32> = u_xlat51;
        u_xlat54 = max(x_1265, vec2<f32>(0.0f, 0.0f));
        let x_1268 : vec2<f32> = u_xlat54;
        let x_1270 : vec2<f32> = u_xlat54;
        let x_1272 : vec4<f32> = u_xlat9;
        let x_1274 : vec2<f32> = ((-(x_1268) * x_1270) + vec2<f32>(x_1272.y, x_1272.w));
        let x_1275 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1274.x, x_1275.y, x_1274.y);
        let x_1277 : vec4<f32> = u_xlat10;
        let x_1279 : vec2<f32> = (vec2<f32>(x_1277.x, x_1277.y) + vec2<f32>(2.0f, 2.0f));
        let x_1280 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1279.x, x_1279.y, x_1280.z, x_1280.w);
        let x_1282 : vec3<f32> = u_xlat31;
        let x_1284 : vec2<f32> = (vec2<f32>(x_1282.x, x_1282.z) + vec2<f32>(2.0f, 2.0f));
        let x_1285 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1285.x, x_1284.x, x_1285.z, x_1284.y);
        let x_1288 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1288 * 0.081632003f);
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1295 : vec3<f32> = (vec3<f32>(x_1292.z, x_1292.x, x_1292.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1296 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
        let x_1298 : vec4<f32> = u_xlat10;
        let x_1301 : vec2<f32> = (vec2<f32>(x_1298.x, x_1298.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1302 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1301.x, x_1301.y, x_1302.z, x_1302.w);
        let x_1305 : f32 = u_xlat13.y;
        u_xlat12.x = x_1305;
        let x_1307 : vec2<f32> = u_xlat51;
        let x_1314 : vec2<f32> = ((vec2<f32>(x_1307.x, x_1307.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1315 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1315.x, x_1314.x, x_1315.z, x_1314.y);
        let x_1317 : vec2<f32> = u_xlat51;
        let x_1321 : vec2<f32> = ((vec2<f32>(x_1317.x, x_1317.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1322 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1321.x, x_1322.y, x_1321.y, x_1322.w);
        let x_1325 : f32 = u_xlat9.x;
        u_xlat10.y = x_1325;
        let x_1328 : f32 = u_xlat11.y;
        u_xlat10.w = x_1328;
        let x_1330 : vec4<f32> = u_xlat10;
        let x_1331 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1330 + x_1331);
        let x_1333 : vec2<f32> = u_xlat51;
        let x_1336 : vec2<f32> = ((vec2<f32>(x_1333.y, x_1333.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1337 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1337.x, x_1336.x, x_1337.z, x_1336.y);
        let x_1339 : vec2<f32> = u_xlat51;
        let x_1342 : vec2<f32> = ((vec2<f32>(x_1339.y, x_1339.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1343 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1342.x, x_1343.y, x_1342.y, x_1343.w);
        let x_1346 : f32 = u_xlat9.y;
        u_xlat11.y = x_1346;
        let x_1348 : vec4<f32> = u_xlat11;
        let x_1349 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1348 + x_1349);
        let x_1351 : vec4<f32> = u_xlat10;
        let x_1352 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1351 / x_1352);
        let x_1354 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1354 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1360 : vec4<f32> = u_xlat11;
        let x_1361 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1360 / x_1361);
        let x_1363 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1363 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1365 : vec4<f32> = u_xlat10;
        let x_1368 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1365.w, x_1365.x, x_1365.y, x_1365.z) * vec4<f32>(x_1368.x, x_1368.x, x_1368.x, x_1368.x));
        let x_1371 : vec4<f32> = u_xlat11;
        let x_1374 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1371.x, x_1371.w, x_1371.y, x_1371.z) * vec4<f32>(x_1374.y, x_1374.y, x_1374.y, x_1374.y));
        let x_1377 : vec4<f32> = u_xlat10;
        let x_1378 : vec3<f32> = vec3<f32>(x_1377.y, x_1377.z, x_1377.w);
        let x_1379 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1378.x, x_1379.y, x_1378.y, x_1378.z);
        let x_1382 : f32 = u_xlat11.x;
        u_xlat13.y = x_1382;
        let x_1384 : vec4<f32> = u_xlat7;
        let x_1387 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1390 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1384.x, x_1384.y, x_1384.x, x_1384.y) * vec4<f32>(x_1387.x, x_1387.y, x_1387.x, x_1387.y)) + vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1390.y));
        let x_1393 : vec4<f32> = u_xlat7;
        let x_1396 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1399 : vec4<f32> = u_xlat13;
        u_xlat51 = ((vec2<f32>(x_1393.x, x_1393.y) * vec2<f32>(x_1396.x, x_1396.y)) + vec2<f32>(x_1399.w, x_1399.y));
        let x_1403 : f32 = u_xlat13.y;
        u_xlat10.y = x_1403;
        let x_1406 : f32 = u_xlat11.z;
        u_xlat13.y = x_1406;
        let x_1408 : vec4<f32> = u_xlat7;
        let x_1411 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1414 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1408.x, x_1408.y, x_1408.x, x_1408.y) * vec4<f32>(x_1411.x, x_1411.y, x_1411.x, x_1411.y)) + vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1414.y));
        let x_1417 : vec4<f32> = u_xlat7;
        let x_1420 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1423 : vec4<f32> = u_xlat13;
        let x_1425 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1420.x, x_1420.y)) + vec2<f32>(x_1423.w, x_1423.y));
        let x_1426 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1425.x, x_1425.y, x_1426.z, x_1426.w);
        let x_1429 : f32 = u_xlat13.y;
        u_xlat10.z = x_1429;
        let x_1432 : vec4<f32> = u_xlat7;
        let x_1435 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1438 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1432.x, x_1432.y, x_1432.x, x_1432.y) * vec4<f32>(x_1435.x, x_1435.y, x_1435.x, x_1435.y)) + vec4<f32>(x_1438.x, x_1438.y, x_1438.x, x_1438.z));
        let x_1442 : f32 = u_xlat11.w;
        u_xlat13.y = x_1442;
        let x_1445 : vec4<f32> = u_xlat7;
        let x_1448 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1451 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1445.x, x_1445.y, x_1445.x, x_1445.y) * vec4<f32>(x_1448.x, x_1448.y, x_1448.x, x_1448.y)) + vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1451.y));
        let x_1455 : vec4<f32> = u_xlat7;
        let x_1458 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1461 : vec4<f32> = u_xlat13;
        let x_1463 : vec2<f32> = ((vec2<f32>(x_1455.x, x_1455.y) * vec2<f32>(x_1458.x, x_1458.y)) + vec2<f32>(x_1461.w, x_1461.y));
        let x_1464 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1463.x, x_1463.y, x_1464.z);
        let x_1467 : f32 = u_xlat13.y;
        u_xlat10.w = x_1467;
        let x_1470 : vec4<f32> = u_xlat7;
        let x_1473 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1476 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1470.x, x_1470.y) * vec2<f32>(x_1473.x, x_1473.y)) + vec2<f32>(x_1476.x, x_1476.w));
        let x_1479 : vec4<f32> = u_xlat13;
        let x_1480 : vec3<f32> = vec3<f32>(x_1479.x, x_1479.z, x_1479.w);
        let x_1481 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1480.x, x_1481.y, x_1480.y, x_1480.z);
        let x_1483 : vec4<f32> = u_xlat7;
        let x_1486 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1489 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1483.x, x_1483.y, x_1483.x, x_1483.y) * vec4<f32>(x_1486.x, x_1486.y, x_1486.x, x_1486.y)) + vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1489.y));
        let x_1493 : vec4<f32> = u_xlat7;
        let x_1496 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1499 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1496.x, x_1496.y)) + vec2<f32>(x_1499.w, x_1499.y));
        let x_1503 : f32 = u_xlat10.x;
        u_xlat11.x = x_1503;
        let x_1505 : vec4<f32> = u_xlat7;
        let x_1508 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1511 : vec4<f32> = u_xlat11;
        let x_1513 : vec2<f32> = ((vec2<f32>(x_1505.x, x_1505.y) * vec2<f32>(x_1508.x, x_1508.y)) + vec2<f32>(x_1511.x, x_1511.y));
        let x_1514 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1513.x, x_1513.y, x_1514.z, x_1514.w);
        let x_1517 : vec4<f32> = u_xlat9;
        let x_1519 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1517.x, x_1517.x, x_1517.x, x_1517.x) * x_1519);
        let x_1522 : vec4<f32> = u_xlat9;
        let x_1524 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1522.y, x_1522.y, x_1522.y, x_1522.y) * x_1524);
        let x_1527 : vec4<f32> = u_xlat9;
        let x_1529 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1527.z, x_1527.z, x_1527.z, x_1527.z) * x_1529);
        let x_1531 : vec4<f32> = u_xlat9;
        let x_1533 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1531.w, x_1531.w, x_1531.w, x_1531.w) * x_1533);
        let x_1536 : vec4<f32> = u_xlat14;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.x, x_1536.y);
        let x_1539 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec13;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1546.xy, x_1546.z);
        u_xlat74 = x_1548;
        let x_1550 : vec4<f32> = u_xlat14;
        let x_1551 : vec2<f32> = vec2<f32>(x_1550.z, x_1550.w);
        let x_1553 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec14;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1560.xy, x_1560.z);
        u_xlat10.x = x_1562;
        let x_1565 : f32 = u_xlat10.x;
        let x_1567 : f32 = u_xlat19.y;
        u_xlat10.x = (x_1565 * x_1567);
        let x_1571 : f32 = u_xlat19.x;
        let x_1572 : f32 = u_xlat74;
        let x_1575 : f32 = u_xlat10.x;
        u_xlat74 = ((x_1571 * x_1572) + x_1575);
        let x_1578 : vec2<f32> = u_xlat51;
        let x_1580 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1578.x, x_1578.y, x_1580);
        let x_1587 : vec3<f32> = txVec15;
        let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1587.xy, x_1587.z);
        u_xlat51.x = x_1589;
        let x_1592 : f32 = u_xlat19.z;
        let x_1594 : f32 = u_xlat51.x;
        let x_1596 : f32 = u_xlat74;
        u_xlat51.x = ((x_1592 * x_1594) + x_1596);
        let x_1600 : vec4<f32> = u_xlat17;
        let x_1601 : vec2<f32> = vec2<f32>(x_1600.x, x_1600.y);
        let x_1603 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1611 : vec3<f32> = txVec16;
        let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1611.xy, x_1611.z);
        u_xlat73 = x_1613;
        let x_1615 : f32 = u_xlat19.w;
        let x_1616 : f32 = u_xlat73;
        let x_1619 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1615 * x_1616) + x_1619);
        let x_1623 : vec4<f32> = u_xlat15;
        let x_1624 : vec2<f32> = vec2<f32>(x_1623.x, x_1623.y);
        let x_1626 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1624.x, x_1624.y, x_1626);
        let x_1633 : vec3<f32> = txVec17;
        let x_1635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1633.xy, x_1633.z);
        u_xlat73 = x_1635;
        let x_1637 : f32 = u_xlat20.x;
        let x_1638 : f32 = u_xlat73;
        let x_1641 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1637 * x_1638) + x_1641);
        let x_1645 : vec4<f32> = u_xlat15;
        let x_1646 : vec2<f32> = vec2<f32>(x_1645.z, x_1645.w);
        let x_1648 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1646.x, x_1646.y, x_1648);
        let x_1655 : vec3<f32> = txVec18;
        let x_1657 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1655.xy, x_1655.z);
        u_xlat73 = x_1657;
        let x_1659 : f32 = u_xlat20.y;
        let x_1660 : f32 = u_xlat73;
        let x_1663 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1659 * x_1660) + x_1663);
        let x_1667 : vec4<f32> = u_xlat16;
        let x_1668 : vec2<f32> = vec2<f32>(x_1667.x, x_1667.y);
        let x_1670 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1668.x, x_1668.y, x_1670);
        let x_1677 : vec3<f32> = txVec19;
        let x_1679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1677.xy, x_1677.z);
        u_xlat73 = x_1679;
        let x_1681 : f32 = u_xlat20.z;
        let x_1682 : f32 = u_xlat73;
        let x_1685 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1681 * x_1682) + x_1685);
        let x_1689 : vec4<f32> = u_xlat17;
        let x_1690 : vec2<f32> = vec2<f32>(x_1689.z, x_1689.w);
        let x_1692 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1690.x, x_1690.y, x_1692);
        let x_1699 : vec3<f32> = txVec20;
        let x_1701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1699.xy, x_1699.z);
        u_xlat73 = x_1701;
        let x_1703 : f32 = u_xlat20.w;
        let x_1704 : f32 = u_xlat73;
        let x_1707 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1703 * x_1704) + x_1707);
        let x_1711 : vec4<f32> = u_xlat18;
        let x_1712 : vec2<f32> = vec2<f32>(x_1711.x, x_1711.y);
        let x_1714 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1712.x, x_1712.y, x_1714);
        let x_1721 : vec3<f32> = txVec21;
        let x_1723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1721.xy, x_1721.z);
        u_xlat73 = x_1723;
        let x_1725 : f32 = u_xlat21.x;
        let x_1726 : f32 = u_xlat73;
        let x_1729 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1725 * x_1726) + x_1729);
        let x_1733 : vec4<f32> = u_xlat18;
        let x_1734 : vec2<f32> = vec2<f32>(x_1733.z, x_1733.w);
        let x_1736 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1734.x, x_1734.y, x_1736);
        let x_1743 : vec3<f32> = txVec22;
        let x_1745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1743.xy, x_1743.z);
        u_xlat73 = x_1745;
        let x_1747 : f32 = u_xlat21.y;
        let x_1748 : f32 = u_xlat73;
        let x_1751 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1747 * x_1748) + x_1751);
        let x_1755 : vec3<f32> = u_xlat32;
        let x_1756 : vec2<f32> = vec2<f32>(x_1755.x, x_1755.y);
        let x_1758 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1756.x, x_1756.y, x_1758);
        let x_1765 : vec3<f32> = txVec23;
        let x_1767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1765.xy, x_1765.z);
        u_xlat73 = x_1767;
        let x_1769 : f32 = u_xlat21.z;
        let x_1770 : f32 = u_xlat73;
        let x_1773 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1769 * x_1770) + x_1773);
        let x_1777 : vec2<f32> = u_xlat60;
        let x_1779 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1777.x, x_1777.y, x_1779);
        let x_1786 : vec3<f32> = txVec24;
        let x_1788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1786.xy, x_1786.z);
        u_xlat73 = x_1788;
        let x_1790 : f32 = u_xlat21.w;
        let x_1791 : f32 = u_xlat73;
        let x_1794 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1790 * x_1791) + x_1794);
        let x_1798 : vec4<f32> = u_xlat13;
        let x_1799 : vec2<f32> = vec2<f32>(x_1798.x, x_1798.y);
        let x_1801 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1799.x, x_1799.y, x_1801);
        let x_1808 : vec3<f32> = txVec25;
        let x_1810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1808.xy, x_1808.z);
        u_xlat73 = x_1810;
        let x_1812 : f32 = u_xlat9.x;
        let x_1813 : f32 = u_xlat73;
        let x_1816 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1812 * x_1813) + x_1816);
        let x_1820 : vec4<f32> = u_xlat13;
        let x_1821 : vec2<f32> = vec2<f32>(x_1820.z, x_1820.w);
        let x_1823 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1821.x, x_1821.y, x_1823);
        let x_1830 : vec3<f32> = txVec26;
        let x_1832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1830.xy, x_1830.z);
        u_xlat73 = x_1832;
        let x_1834 : f32 = u_xlat9.y;
        let x_1835 : f32 = u_xlat73;
        let x_1838 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1834 * x_1835) + x_1838);
        let x_1842 : vec2<f32> = u_xlat55;
        let x_1844 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1842.x, x_1842.y, x_1844);
        let x_1851 : vec3<f32> = txVec27;
        let x_1853 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1851.xy, x_1851.z);
        u_xlat73 = x_1853;
        let x_1855 : f32 = u_xlat9.z;
        let x_1856 : f32 = u_xlat73;
        let x_1859 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1855 * x_1856) + x_1859);
        let x_1863 : vec4<f32> = u_xlat7;
        let x_1864 : vec2<f32> = vec2<f32>(x_1863.x, x_1863.y);
        let x_1866 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1864.x, x_1864.y, x_1866);
        let x_1873 : vec3<f32> = txVec28;
        let x_1875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1873.xy, x_1873.z);
        u_xlat7.x = x_1875;
        let x_1878 : f32 = u_xlat9.w;
        let x_1880 : f32 = u_xlat7.x;
        let x_1883 : f32 = u_xlat51.x;
        u_xlat71 = ((x_1878 * x_1880) + x_1883);
      }
    }
  } else {
    let x_1887 : vec4<f32> = u_xlat5;
    let x_1888 : vec2<f32> = vec2<f32>(x_1887.x, x_1887.y);
    let x_1890 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1888.x, x_1888.y, x_1890);
    let x_1897 : vec3<f32> = txVec29;
    let x_1899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1897.xy, x_1897.z);
    u_xlat71 = x_1899;
  }
  let x_1901 : f32 = x_283.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1901) + 1.0f);
  let x_1905 : f32 = u_xlat71;
  let x_1907 : f32 = x_283.x_MainLightShadowParams.x;
  let x_1910 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1905 * x_1907) + x_1910);
  let x_1917 : f32 = u_xlat5.z;
  u_xlatb27.x = (0.0f >= x_1917);
  let x_1922 : f32 = u_xlat5.z;
  u_xlatb49 = (x_1922 >= 1.0f);
  let x_1924 : bool = u_xlatb49;
  let x_1926 : bool = u_xlatb27.x;
  u_xlatb27.x = (x_1924 | x_1926);
  let x_1930 : bool = u_xlatb27.x;
  if (x_1930) {
    x_1931 = 1.0f;
  } else {
    let x_1936 : f32 = u_xlat5.x;
    x_1931 = x_1936;
  }
  let x_1937 : f32 = x_1931;
  u_xlat5.x = x_1937;
  let x_1940 : vec3<f32> = vs_INTERP0;
  let x_1942 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat27 = (x_1940 + -(x_1942));
  let x_1945 : vec3<f32> = u_xlat27;
  let x_1946 : vec3<f32> = u_xlat27;
  u_xlat27.x = dot(x_1945, x_1946);
  let x_1950 : f32 = u_xlat27.x;
  let x_1952 : f32 = x_283.x_MainLightShadowParams.z;
  let x_1955 : f32 = x_283.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1950 * x_1952) + x_1955);
  let x_1959 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1959, 0.0f, 1.0f);
  let x_1964 : f32 = u_xlat5.x;
  u_xlat49 = (-(x_1964) + 1.0f);
  let x_1968 : f32 = u_xlat27.x;
  let x_1969 : f32 = u_xlat49;
  let x_1972 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1968 * x_1969) + x_1972);
  let x_1981 : f32 = x_1979.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_1981 == -1.0f));
  let x_1985 : bool = u_xlatb27.x;
  if (x_1985) {
    let x_1988 : vec3<f32> = vs_INTERP0;
    let x_1991 : vec4<f32> = x_1979.x_MainLightWorldToLight[1i];
    let x_1993 : vec2<f32> = (vec2<f32>(x_1988.y, x_1988.y) * vec2<f32>(x_1991.x, x_1991.y));
    let x_1994 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1993.x, x_1993.y, x_1994.z);
    let x_1997 : vec4<f32> = x_1979.x_MainLightWorldToLight[0i];
    let x_1999 : vec3<f32> = vs_INTERP0;
    let x_2002 : vec3<f32> = u_xlat27;
    let x_2004 : vec2<f32> = ((vec2<f32>(x_1997.x, x_1997.y) * vec2<f32>(x_1999.x, x_1999.x)) + vec2<f32>(x_2002.x, x_2002.y));
    let x_2005 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2004.x, x_2004.y, x_2005.z);
    let x_2008 : vec4<f32> = x_1979.x_MainLightWorldToLight[2i];
    let x_2010 : vec3<f32> = vs_INTERP0;
    let x_2013 : vec3<f32> = u_xlat27;
    let x_2015 : vec2<f32> = ((vec2<f32>(x_2008.x, x_2008.y) * vec2<f32>(x_2010.z, x_2010.z)) + vec2<f32>(x_2013.x, x_2013.y));
    let x_2016 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2015.x, x_2015.y, x_2016.z);
    let x_2018 : vec3<f32> = u_xlat27;
    let x_2021 : vec4<f32> = x_1979.x_MainLightWorldToLight[3i];
    let x_2023 : vec2<f32> = (vec2<f32>(x_2018.x, x_2018.y) + vec2<f32>(x_2021.x, x_2021.y));
    let x_2024 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2023.x, x_2023.y, x_2024.z);
    let x_2026 : vec3<f32> = u_xlat27;
    let x_2029 : vec2<f32> = ((vec2<f32>(x_2026.x, x_2026.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2030 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2029.x, x_2029.y, x_2030.z);
    let x_2037 : vec3<f32> = u_xlat27;
    let x_2040 : f32 = x_45.x_GlobalMipBias.x;
    let x_2041 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2037.x, x_2037.y), x_2040);
    u_xlat7 = x_2041;
    let x_2043 : f32 = x_1979.x_MainLightCookieTextureFormat;
    let x_2045 : f32 = x_1979.x_MainLightCookieTextureFormat;
    let x_2047 : f32 = x_1979.x_MainLightCookieTextureFormat;
    let x_2049 : f32 = x_1979.x_MainLightCookieTextureFormat;
    let x_2050 : vec4<f32> = vec4<f32>(x_2043, x_2045, x_2047, x_2049);
    let x_2057 : vec4<bool> = (vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2050.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_2057.x, x_2057.y);
    let x_2060 : bool = u_xlatb27.y;
    if (x_2060) {
      let x_2065 : f32 = u_xlat7.w;
      x_2061 = x_2065;
    } else {
      let x_2068 : f32 = u_xlat7.x;
      x_2061 = x_2068;
    }
    let x_2069 : f32 = x_2061;
    u_xlat49 = x_2069;
    let x_2071 : bool = u_xlatb27.x;
    if (x_2071) {
      let x_2075 : vec4<f32> = u_xlat7;
      x_2072 = vec3<f32>(x_2075.x, x_2075.y, x_2075.z);
    } else {
      let x_2078 : f32 = u_xlat49;
      x_2072 = vec3<f32>(x_2078, x_2078, x_2078);
    }
    let x_2080 : vec3<f32> = x_2072;
    u_xlat27 = x_2080;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_2085 : vec3<f32> = u_xlat27;
  let x_2087 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat27 = (x_2085 * vec3<f32>(x_2087.x, x_2087.y, x_2087.z));
  let x_2090 : f32 = u_xlat72;
  let x_2092 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_2090, x_2090, x_2090) * x_2092);
  let x_2094 : vec3<f32> = u_xlat4;
  let x_2096 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_2094), vec3<f32>(x_2096.x, x_2096.y, x_2096.w));
  let x_2101 : f32 = u_xlat7.x;
  let x_2103 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2101 + x_2103);
  let x_2106 : vec4<f32> = u_xlat1;
  let x_2108 : vec4<f32> = u_xlat7;
  let x_2112 : vec3<f32> = u_xlat4;
  let x_2114 : vec3<f32> = ((vec3<f32>(x_2106.x, x_2106.y, x_2106.w) * -(vec3<f32>(x_2108.x, x_2108.x, x_2108.x))) + -(x_2112));
  let x_2115 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);
  let x_2117 : vec4<f32> = u_xlat1;
  let x_2119 : vec3<f32> = u_xlat4;
  u_xlat73 = dot(vec3<f32>(x_2117.x, x_2117.y, x_2117.w), x_2119);
  let x_2121 : f32 = u_xlat73;
  u_xlat73 = clamp(x_2121, 0.0f, 1.0f);
  let x_2123 : f32 = u_xlat73;
  u_xlat73 = (-(x_2123) + 1.0f);
  let x_2126 : f32 = u_xlat73;
  let x_2127 : f32 = u_xlat73;
  u_xlat73 = (x_2126 * x_2127);
  let x_2129 : f32 = u_xlat73;
  let x_2130 : f32 = u_xlat73;
  u_xlat73 = (x_2129 * x_2130);
  let x_2132 : f32 = u_xlat68;
  u_xlat74 = ((-(x_2132) * 0.699999988f) + 1.700000048f);
  let x_2138 : f32 = u_xlat68;
  let x_2139 : f32 = u_xlat74;
  u_xlat2.w = (x_2138 * x_2139);
  let x_2142 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_2142 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_2155 : vec4<f32> = u_xlat7;
  let x_2158 : f32 = u_xlat2.w;
  let x_2159 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2155.x, x_2155.y, x_2155.z), x_2158);
  u_xlat9 = x_2159;
  let x_2161 : f32 = u_xlat9.w;
  u_xlat68 = (x_2161 + -1.0f);
  let x_2164 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_2165 : f32 = u_xlat68;
  u_xlat68 = ((x_2164 * x_2165) + 1.0f);
  let x_2168 : f32 = u_xlat68;
  u_xlat68 = max(x_2168, 0.0f);
  let x_2170 : f32 = u_xlat68;
  u_xlat68 = log2(x_2170);
  let x_2172 : f32 = u_xlat68;
  let x_2174 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat68 = (x_2172 * x_2174);
  let x_2176 : f32 = u_xlat68;
  u_xlat68 = exp2(x_2176);
  let x_2178 : f32 = u_xlat68;
  let x_2180 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat68 = (x_2178 * x_2180);
  let x_2182 : vec4<f32> = u_xlat9;
  let x_2184 : f32 = u_xlat68;
  let x_2186 : vec3<f32> = (vec3<f32>(x_2182.x, x_2182.y, x_2182.z) * vec3<f32>(x_2184, x_2184, x_2184));
  let x_2187 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2186.x, x_2186.y, x_2186.z, x_2187.w);
  let x_2189 : vec3<f32> = u_xlat3;
  let x_2191 : vec3<f32> = u_xlat3;
  let x_2195 : vec2<f32> = ((vec2<f32>(x_2189.x, x_2189.x) * vec2<f32>(x_2191.x, x_2191.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2196 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2195.x, x_2195.y, x_2196.z, x_2196.w);
  let x_2199 : f32 = u_xlat9.y;
  u_xlat68 = (1.0f / x_2199);
  let x_2201 : vec3<f32> = u_xlat0;
  let x_2203 : f32 = u_xlat69;
  u_xlat31 = (-(x_2201) + vec3<f32>(x_2203, x_2203, x_2203));
  let x_2206 : f32 = u_xlat73;
  let x_2208 : vec3<f32> = u_xlat31;
  let x_2210 : vec3<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_2206, x_2206, x_2206) * x_2208) + x_2210);
  let x_2212 : f32 = u_xlat68;
  let x_2214 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2212, x_2212, x_2212) * x_2214);
  let x_2216 : vec4<f32> = u_xlat7;
  let x_2218 : vec3<f32> = u_xlat31;
  let x_2219 : vec3<f32> = (vec3<f32>(x_2216.x, x_2216.y, x_2216.z) * x_2218);
  let x_2220 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);
  let x_2222 : vec4<f32> = u_xlat6;
  let x_2224 : vec3<f32> = u_xlat8;
  let x_2226 : vec4<f32> = u_xlat7;
  let x_2228 : vec3<f32> = ((vec3<f32>(x_2222.x, x_2222.y, x_2222.z) * x_2224) + vec3<f32>(x_2226.x, x_2226.y, x_2226.z));
  let x_2229 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
  let x_2232 : f32 = u_xlat5.x;
  let x_2234 : f32 = x_120.unity_LightData.z;
  u_xlat68 = (x_2232 * x_2234);
  let x_2236 : vec4<f32> = u_xlat1;
  let x_2239 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2236.x, x_2236.y, x_2236.w), vec3<f32>(x_2239.x, x_2239.y, x_2239.z));
  let x_2244 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2244, 0.0f, 1.0f);
  let x_2247 : f32 = u_xlat68;
  let x_2249 : f32 = u_xlat3.x;
  u_xlat68 = (x_2247 * x_2249);
  let x_2251 : f32 = u_xlat68;
  let x_2253 : vec3<f32> = u_xlat27;
  let x_2254 : vec3<f32> = (vec3<f32>(x_2251, x_2251, x_2251) * x_2253);
  let x_2255 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2254.x, x_2254.y, x_2254.z, x_2255.w);
  let x_2257 : vec3<f32> = u_xlat4;
  let x_2259 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2261 : vec3<f32> = (x_2257 + vec3<f32>(x_2259.x, x_2259.y, x_2259.z));
  let x_2262 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
  let x_2264 : vec4<f32> = u_xlat7;
  let x_2266 : vec4<f32> = u_xlat7;
  u_xlat68 = dot(vec3<f32>(x_2264.x, x_2264.y, x_2264.z), vec3<f32>(x_2266.x, x_2266.y, x_2266.z));
  let x_2269 : f32 = u_xlat68;
  u_xlat68 = max(x_2269, 1.17549435e-37f);
  let x_2272 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_2272);
  let x_2274 : f32 = u_xlat68;
  let x_2276 : vec4<f32> = u_xlat7;
  let x_2278 : vec3<f32> = (vec3<f32>(x_2274, x_2274, x_2274) * vec3<f32>(x_2276.x, x_2276.y, x_2276.z));
  let x_2279 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2278.x, x_2278.y, x_2278.z, x_2279.w);
  let x_2281 : vec4<f32> = u_xlat1;
  let x_2283 : vec4<f32> = u_xlat7;
  u_xlat68 = dot(vec3<f32>(x_2281.x, x_2281.y, x_2281.w), vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
  let x_2286 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2286, 0.0f, 1.0f);
  let x_2289 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2291 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_2289.x, x_2289.y, x_2289.z), vec3<f32>(x_2291.x, x_2291.y, x_2291.z));
  let x_2296 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2296, 0.0f, 1.0f);
  let x_2299 : f32 = u_xlat68;
  let x_2300 : f32 = u_xlat68;
  u_xlat68 = (x_2299 * x_2300);
  let x_2302 : f32 = u_xlat68;
  let x_2304 : f32 = u_xlat9.x;
  u_xlat68 = ((x_2302 * x_2304) + 1.000010014f);
  let x_2309 : f32 = u_xlat3.x;
  let x_2311 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2309 * x_2311);
  let x_2314 : f32 = u_xlat68;
  let x_2315 : f32 = u_xlat68;
  u_xlat68 = (x_2314 * x_2315);
  let x_2318 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2318, 0.100000001f);
  let x_2322 : f32 = u_xlat68;
  let x_2324 : f32 = u_xlat3.x;
  u_xlat68 = (x_2322 * x_2324);
  let x_2326 : f32 = u_xlat70;
  let x_2327 : f32 = u_xlat68;
  u_xlat68 = (x_2326 * x_2327);
  let x_2329 : f32 = u_xlat25;
  let x_2330 : f32 = u_xlat68;
  u_xlat68 = (x_2329 / x_2330);
  let x_2332 : vec3<f32> = u_xlat0;
  let x_2333 : f32 = u_xlat68;
  let x_2336 : vec3<f32> = u_xlat8;
  let x_2337 : vec3<f32> = ((x_2332 * vec3<f32>(x_2333, x_2333, x_2333)) + x_2336);
  let x_2338 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2337.x, x_2337.y, x_2337.z, x_2338.w);
  let x_2340 : vec4<f32> = u_xlat5;
  let x_2342 : vec4<f32> = u_xlat7;
  let x_2344 : vec3<f32> = (vec3<f32>(x_2340.x, x_2340.y, x_2340.z) * vec3<f32>(x_2342.x, x_2342.y, x_2342.z));
  let x_2345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2344.x, x_2344.y, x_2344.z, x_2345.w);
  let x_2348 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2350 : f32 = x_120.unity_LightData.y;
  u_xlat68 = min(x_2348, x_2350);
  let x_2353 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_2353));
  let x_2358 : f32 = x_1979.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2360 : f32 = x_1979.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2362 : f32 = x_1979.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2364 : f32 = x_1979.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2365 : vec4<f32> = vec4<f32>(x_2358, x_2360, x_2362, x_2364);
  let x_2372 : vec4<bool> = (vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2365.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2373 : vec2<bool> = vec2<bool>(x_2372.x, x_2372.w);
  let x_2374 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2373.x, x_2374.y, x_2374.z, x_2373.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2385 : u32 = u_xlatu_loop_1;
    let x_2386 : u32 = u_xlatu68;
    if ((x_2385 < x_2386)) {
    } else {
      break;
    }
    let x_2389 : u32 = u_xlatu_loop_1;
    u_xlatu73 = (x_2389 >> 2u);
    let x_2392 : u32 = u_xlatu_loop_1;
    u_xlati74 = bitcast<i32>((x_2392 & 3u));
    let x_2395 : u32 = u_xlatu73;
    let x_2398 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_2395)];
    let x_2408 : i32 = u_xlati74;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2413 : vec4<u32> = indexable[x_2408];
    u_xlat73 = dot(x_2398, bitcast<vec4<f32>>(x_2413));
    let x_2416 : f32 = u_xlat73;
    u_xlatu73 = bitcast<u32>(i32(x_2416));
    let x_2419 : vec3<f32> = vs_INTERP0;
    let x_2431 : u32 = u_xlatu73;
    let x_2434 : vec4<f32> = x_2430.x_AdditionalLightsPosition[bitcast<i32>(x_2431)];
    let x_2437 : u32 = u_xlatu73;
    let x_2440 : vec4<f32> = x_2430.x_AdditionalLightsPosition[bitcast<i32>(x_2437)];
    u_xlat31 = ((-(x_2419) * vec3<f32>(x_2434.w, x_2434.w, x_2434.w)) + vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
    let x_2443 : vec3<f32> = u_xlat31;
    let x_2444 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2443, x_2444);
    let x_2446 : f32 = u_xlat74;
    u_xlat74 = max(x_2446, 6.10351562e-05f);
    let x_2449 : f32 = u_xlat74;
    u_xlat10.x = inverseSqrt(x_2449);
    let x_2452 : vec3<f32> = u_xlat31;
    let x_2453 : vec4<f32> = u_xlat10;
    u_xlat32 = (x_2452 * vec3<f32>(x_2453.x, x_2453.x, x_2453.x));
    let x_2456 : f32 = u_xlat74;
    u_xlat11.x = (1.0f / x_2456);
    let x_2459 : f32 = u_xlat74;
    let x_2460 : u32 = u_xlatu73;
    let x_2463 : f32 = x_2430.x_AdditionalLightsAttenuation[bitcast<i32>(x_2460)].x;
    u_xlat74 = (x_2459 * x_2463);
    let x_2465 : f32 = u_xlat74;
    let x_2467 : f32 = u_xlat74;
    u_xlat74 = ((-(x_2465) * x_2467) + 1.0f);
    let x_2470 : f32 = u_xlat74;
    u_xlat74 = max(x_2470, 0.0f);
    let x_2472 : f32 = u_xlat74;
    let x_2473 : f32 = u_xlat74;
    u_xlat74 = (x_2472 * x_2473);
    let x_2475 : f32 = u_xlat74;
    let x_2477 : f32 = u_xlat11.x;
    u_xlat74 = (x_2475 * x_2477);
    let x_2479 : u32 = u_xlatu73;
    let x_2482 : vec4<f32> = x_2430.x_AdditionalLightsSpotDir[bitcast<i32>(x_2479)];
    let x_2484 : vec3<f32> = u_xlat32;
    u_xlat11.x = dot(vec3<f32>(x_2482.x, x_2482.y, x_2482.z), x_2484);
    let x_2488 : f32 = u_xlat11.x;
    let x_2489 : u32 = u_xlatu73;
    let x_2492 : f32 = x_2430.x_AdditionalLightsAttenuation[bitcast<i32>(x_2489)].z;
    let x_2494 : u32 = u_xlatu73;
    let x_2497 : f32 = x_2430.x_AdditionalLightsAttenuation[bitcast<i32>(x_2494)].w;
    u_xlat11.x = ((x_2488 * x_2492) + x_2497);
    let x_2501 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_2501, 0.0f, 1.0f);
    let x_2505 : f32 = u_xlat11.x;
    let x_2507 : f32 = u_xlat11.x;
    u_xlat11.x = (x_2505 * x_2507);
    let x_2510 : f32 = u_xlat74;
    let x_2512 : f32 = u_xlat11.x;
    u_xlat74 = (x_2510 * x_2512);
    let x_2515 : u32 = u_xlatu73;
    u_xlatu11 = (x_2515 >> 5u);
    let x_2518 : u32 = u_xlatu73;
    u_xlati33 = (1i << bitcast<u32>((bitcast<i32>(x_2518) & 31i)));
    let x_2524 : i32 = u_xlati33;
    let x_2526 : u32 = u_xlatu11;
    let x_2529 : f32 = x_1979.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2526)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_2524) & bitcast<u32>(x_2529)));
    let x_2533 : i32 = u_xlati11;
    if ((x_2533 != 0i)) {
      let x_2543 : u32 = u_xlatu73;
      let x_2546 : f32 = x_2542.x_AdditionalLightsLightTypes[bitcast<i32>(x_2543)].el;
      u_xlati11 = i32(x_2546);
      let x_2548 : i32 = u_xlati11;
      u_xlati33 = select(1i, 0i, (x_2548 != 0i));
      let x_2552 : u32 = u_xlatu73;
      u_xlati55 = (bitcast<i32>(x_2552) << bitcast<u32>(2i));
      let x_2555 : i32 = u_xlati33;
      if ((x_2555 != 0i)) {
        let x_2559 : vec3<f32> = vs_INTERP0;
        let x_2561 : i32 = u_xlati55;
        let x_2564 : i32 = u_xlati55;
        let x_2568 : vec4<f32> = x_2542.x_AdditionalLightsWorldToLights[((x_2561 + 1i) / 4i)][((x_2564 + 1i) % 4i)];
        let x_2570 : vec3<f32> = (vec3<f32>(x_2559.y, x_2559.y, x_2559.y) * vec3<f32>(x_2568.x, x_2568.y, x_2568.w));
        let x_2571 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2571.w);
        let x_2573 : i32 = u_xlati55;
        let x_2575 : i32 = u_xlati55;
        let x_2578 : vec4<f32> = x_2542.x_AdditionalLightsWorldToLights[(x_2573 / 4i)][(x_2575 % 4i)];
        let x_2580 : vec3<f32> = vs_INTERP0;
        let x_2583 : vec4<f32> = u_xlat12;
        let x_2585 : vec3<f32> = ((vec3<f32>(x_2578.x, x_2578.y, x_2578.w) * vec3<f32>(x_2580.x, x_2580.x, x_2580.x)) + vec3<f32>(x_2583.x, x_2583.y, x_2583.z));
        let x_2586 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2586.w);
        let x_2588 : i32 = u_xlati55;
        let x_2591 : i32 = u_xlati55;
        let x_2595 : vec4<f32> = x_2542.x_AdditionalLightsWorldToLights[((x_2588 + 2i) / 4i)][((x_2591 + 2i) % 4i)];
        let x_2597 : vec3<f32> = vs_INTERP0;
        let x_2600 : vec4<f32> = u_xlat12;
        let x_2602 : vec3<f32> = ((vec3<f32>(x_2595.x, x_2595.y, x_2595.w) * vec3<f32>(x_2597.z, x_2597.z, x_2597.z)) + vec3<f32>(x_2600.x, x_2600.y, x_2600.z));
        let x_2603 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2602.x, x_2602.y, x_2602.z, x_2603.w);
        let x_2605 : vec4<f32> = u_xlat12;
        let x_2607 : i32 = u_xlati55;
        let x_2610 : i32 = u_xlati55;
        let x_2614 : vec4<f32> = x_2542.x_AdditionalLightsWorldToLights[((x_2607 + 3i) / 4i)][((x_2610 + 3i) % 4i)];
        let x_2616 : vec3<f32> = (vec3<f32>(x_2605.x, x_2605.y, x_2605.z) + vec3<f32>(x_2614.x, x_2614.y, x_2614.w));
        let x_2617 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2616.x, x_2616.y, x_2616.z, x_2617.w);
        let x_2620 : vec4<f32> = u_xlat12;
        let x_2622 : vec4<f32> = u_xlat12;
        let x_2624 : vec2<f32> = (vec2<f32>(x_2620.x, x_2620.y) / vec2<f32>(x_2622.z, x_2622.z));
        let x_2625 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2624.x, x_2625.y, x_2624.y);
        let x_2627 : vec3<f32> = u_xlat33;
        let x_2630 : vec2<f32> = ((vec2<f32>(x_2627.x, x_2627.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2631 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2630.x, x_2631.y, x_2630.y);
        let x_2633 : vec3<f32> = u_xlat33;
        let x_2637 : vec2<f32> = clamp(vec2<f32>(x_2633.x, x_2633.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2638 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2637.x, x_2638.y, x_2637.y);
        let x_2640 : u32 = u_xlatu73;
        let x_2643 : vec4<f32> = x_2542.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2640)];
        let x_2645 : vec3<f32> = u_xlat33;
        let x_2648 : u32 = u_xlatu73;
        let x_2651 : vec4<f32> = x_2542.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2648)];
        let x_2653 : vec2<f32> = ((vec2<f32>(x_2643.x, x_2643.y) * vec2<f32>(x_2645.x, x_2645.z)) + vec2<f32>(x_2651.z, x_2651.w));
        let x_2654 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2653.x, x_2654.y, x_2653.y);
      } else {
        let x_2658 : i32 = u_xlati11;
        u_xlatb11 = (x_2658 == 1i);
        let x_2660 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_2660);
        let x_2662 : i32 = u_xlati11;
        if ((x_2662 != 0i)) {
          let x_2666 : vec3<f32> = vs_INTERP0;
          let x_2668 : i32 = u_xlati55;
          let x_2671 : i32 = u_xlati55;
          let x_2675 : vec4<f32> = x_2542.x_AdditionalLightsWorldToLights[((x_2668 + 1i) / 4i)][((x_2671 + 1i) % 4i)];
          let x_2677 : vec2<f32> = (vec2<f32>(x_2666.y, x_2666.y) * vec2<f32>(x_2675.x, x_2675.y));
          let x_2678 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2677.x, x_2677.y, x_2678.z, x_2678.w);
          let x_2680 : i32 = u_xlati55;
          let x_2682 : i32 = u_xlati55;
          let x_2685 : vec4<f32> = x_2542.x_AdditionalLightsWorldToLights[(x_2680 / 4i)][(x_2682 % 4i)];
          let x_2687 : vec3<f32> = vs_INTERP0;
          let x_2690 : vec4<f32> = u_xlat12;
          let x_2692 : vec2<f32> = ((vec2<f32>(x_2685.x, x_2685.y) * vec2<f32>(x_2687.x, x_2687.x)) + vec2<f32>(x_2690.x, x_2690.y));
          let x_2693 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2692.x, x_2692.y, x_2693.z, x_2693.w);
          let x_2695 : i32 = u_xlati55;
          let x_2698 : i32 = u_xlati55;
          let x_2702 : vec4<f32> = x_2542.x_AdditionalLightsWorldToLights[((x_2695 + 2i) / 4i)][((x_2698 + 2i) % 4i)];
          let x_2704 : vec3<f32> = vs_INTERP0;
          let x_2707 : vec4<f32> = u_xlat12;
          let x_2709 : vec2<f32> = ((vec2<f32>(x_2702.x, x_2702.y) * vec2<f32>(x_2704.z, x_2704.z)) + vec2<f32>(x_2707.x, x_2707.y));
          let x_2710 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2709.x, x_2709.y, x_2710.z, x_2710.w);
          let x_2712 : vec4<f32> = u_xlat12;
          let x_2714 : i32 = u_xlati55;
          let x_2717 : i32 = u_xlati55;
          let x_2721 : vec4<f32> = x_2542.x_AdditionalLightsWorldToLights[((x_2714 + 3i) / 4i)][((x_2717 + 3i) % 4i)];
          let x_2723 : vec2<f32> = (vec2<f32>(x_2712.x, x_2712.y) + vec2<f32>(x_2721.x, x_2721.y));
          let x_2724 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2723.x, x_2723.y, x_2724.z, x_2724.w);
          let x_2726 : vec4<f32> = u_xlat12;
          let x_2729 : vec2<f32> = ((vec2<f32>(x_2726.x, x_2726.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2730 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2729.x, x_2729.y, x_2730.z, x_2730.w);
          let x_2732 : vec4<f32> = u_xlat12;
          let x_2734 : vec2<f32> = fract(vec2<f32>(x_2732.x, x_2732.y));
          let x_2735 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2734.x, x_2734.y, x_2735.z, x_2735.w);
          let x_2737 : u32 = u_xlatu73;
          let x_2740 : vec4<f32> = x_2542.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2737)];
          let x_2742 : vec4<f32> = u_xlat12;
          let x_2745 : u32 = u_xlatu73;
          let x_2748 : vec4<f32> = x_2542.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2745)];
          let x_2750 : vec2<f32> = ((vec2<f32>(x_2740.x, x_2740.y) * vec2<f32>(x_2742.x, x_2742.y)) + vec2<f32>(x_2748.z, x_2748.w));
          let x_2751 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2750.x, x_2751.y, x_2750.y);
        } else {
          let x_2754 : vec3<f32> = vs_INTERP0;
          let x_2756 : i32 = u_xlati55;
          let x_2759 : i32 = u_xlati55;
          let x_2763 : vec4<f32> = x_2542.x_AdditionalLightsWorldToLights[((x_2756 + 1i) / 4i)][((x_2759 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2754.y, x_2754.y, x_2754.y, x_2754.y) * x_2763);
          let x_2765 : i32 = u_xlati55;
          let x_2767 : i32 = u_xlati55;
          let x_2770 : vec4<f32> = x_2542.x_AdditionalLightsWorldToLights[(x_2765 / 4i)][(x_2767 % 4i)];
          let x_2771 : vec3<f32> = vs_INTERP0;
          let x_2774 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2770 * vec4<f32>(x_2771.x, x_2771.x, x_2771.x, x_2771.x)) + x_2774);
          let x_2776 : i32 = u_xlati55;
          let x_2779 : i32 = u_xlati55;
          let x_2783 : vec4<f32> = x_2542.x_AdditionalLightsWorldToLights[((x_2776 + 2i) / 4i)][((x_2779 + 2i) % 4i)];
          let x_2784 : vec3<f32> = vs_INTERP0;
          let x_2787 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2783 * vec4<f32>(x_2784.z, x_2784.z, x_2784.z, x_2784.z)) + x_2787);
          let x_2789 : vec4<f32> = u_xlat12;
          let x_2790 : i32 = u_xlati55;
          let x_2793 : i32 = u_xlati55;
          let x_2797 : vec4<f32> = x_2542.x_AdditionalLightsWorldToLights[((x_2790 + 3i) / 4i)][((x_2793 + 3i) % 4i)];
          u_xlat12 = (x_2789 + x_2797);
          let x_2799 : vec4<f32> = u_xlat12;
          let x_2801 : vec4<f32> = u_xlat12;
          let x_2803 : vec3<f32> = (vec3<f32>(x_2799.x, x_2799.y, x_2799.z) / vec3<f32>(x_2801.w, x_2801.w, x_2801.w));
          let x_2804 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2804.w);
          let x_2806 : vec4<f32> = u_xlat12;
          let x_2808 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_2806.x, x_2806.y, x_2806.z), vec3<f32>(x_2808.x, x_2808.y, x_2808.z));
          let x_2813 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_2813);
          let x_2816 : vec4<f32> = u_xlat11;
          let x_2818 : vec4<f32> = u_xlat12;
          let x_2820 : vec3<f32> = (vec3<f32>(x_2816.x, x_2816.x, x_2816.x) * vec3<f32>(x_2818.x, x_2818.y, x_2818.z));
          let x_2821 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2820.x, x_2820.y, x_2820.z, x_2821.w);
          let x_2823 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_2823.x, x_2823.y, x_2823.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2830 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_2830, 0.000001f);
          let x_2835 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_2835);
          let x_2838 : vec4<f32> = u_xlat11;
          let x_2840 : vec4<f32> = u_xlat12;
          let x_2842 : vec3<f32> = (vec3<f32>(x_2838.x, x_2838.x, x_2838.x) * vec3<f32>(x_2840.z, x_2840.x, x_2840.y));
          let x_2843 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2842.x, x_2842.y, x_2842.z, x_2843.w);
          let x_2846 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2846);
          let x_2850 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2850, 0.0f, 1.0f);
          let x_2854 : vec4<f32> = u_xlat13;
          let x_2857 : vec4<bool> = (vec4<f32>(x_2854.y, x_2854.z, x_2854.y, x_2854.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb56 = vec2<bool>(x_2857.x, x_2857.y);
          let x_2861 : bool = u_xlatb56.x;
          if (x_2861) {
            let x_2866 : f32 = u_xlat13.x;
            x_2862 = x_2866;
          } else {
            let x_2869 : f32 = u_xlat13.x;
            x_2862 = -(x_2869);
          }
          let x_2871 : f32 = x_2862;
          u_xlat56.x = x_2871;
          let x_2874 : bool = u_xlatb56.y;
          if (x_2874) {
            let x_2879 : f32 = u_xlat13.x;
            x_2875 = x_2879;
          } else {
            let x_2882 : f32 = u_xlat13.x;
            x_2875 = -(x_2882);
          }
          let x_2884 : f32 = x_2875;
          u_xlat56.y = x_2884;
          let x_2886 : vec4<f32> = u_xlat12;
          let x_2888 : vec4<f32> = u_xlat11;
          let x_2891 : vec2<f32> = u_xlat56;
          let x_2892 : vec2<f32> = ((vec2<f32>(x_2886.x, x_2886.y) * vec2<f32>(x_2888.x, x_2888.x)) + x_2891);
          let x_2893 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2892.x, x_2893.y, x_2892.y, x_2893.w);
          let x_2895 : vec4<f32> = u_xlat11;
          let x_2898 : vec2<f32> = ((vec2<f32>(x_2895.x, x_2895.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2899 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2898.x, x_2899.y, x_2898.y, x_2899.w);
          let x_2901 : vec4<f32> = u_xlat11;
          let x_2905 : vec2<f32> = clamp(vec2<f32>(x_2901.x, x_2901.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2906 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2905.x, x_2906.y, x_2905.y, x_2906.w);
          let x_2908 : u32 = u_xlatu73;
          let x_2911 : vec4<f32> = x_2542.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2908)];
          let x_2913 : vec4<f32> = u_xlat11;
          let x_2916 : u32 = u_xlatu73;
          let x_2919 : vec4<f32> = x_2542.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2916)];
          let x_2921 : vec2<f32> = ((vec2<f32>(x_2911.x, x_2911.y) * vec2<f32>(x_2913.x, x_2913.z)) + vec2<f32>(x_2919.z, x_2919.w));
          let x_2922 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2921.x, x_2922.y, x_2921.y);
        }
      }
      let x_2929 : vec3<f32> = u_xlat33;
      let x_2932 : f32 = x_45.x_GlobalMipBias.x;
      let x_2933 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2929.x, x_2929.z), x_2932);
      u_xlat11 = x_2933;
      let x_2936 : bool = u_xlatb3.w;
      if (x_2936) {
        let x_2941 : f32 = u_xlat11.w;
        x_2937 = x_2941;
      } else {
        let x_2944 : f32 = u_xlat11.x;
        x_2937 = x_2944;
      }
      let x_2945 : f32 = x_2937;
      u_xlat77 = x_2945;
      let x_2947 : bool = u_xlatb3.x;
      if (x_2947) {
        let x_2951 : vec4<f32> = u_xlat11;
        x_2948 = vec3<f32>(x_2951.x, x_2951.y, x_2951.z);
      } else {
        let x_2954 : f32 = u_xlat77;
        x_2948 = vec3<f32>(x_2954, x_2954, x_2954);
      }
      let x_2956 : vec3<f32> = x_2948;
      let x_2957 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2956.x, x_2956.y, x_2956.z, x_2957.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2963 : vec4<f32> = u_xlat11;
    let x_2965 : u32 = u_xlatu73;
    let x_2968 : vec4<f32> = x_2430.x_AdditionalLightsColor[bitcast<i32>(x_2965)];
    let x_2970 : vec3<f32> = (vec3<f32>(x_2963.x, x_2963.y, x_2963.z) * vec3<f32>(x_2968.x, x_2968.y, x_2968.z));
    let x_2971 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2970.x, x_2970.y, x_2970.z, x_2971.w);
    let x_2973 : f32 = u_xlat72;
    let x_2975 : vec4<f32> = u_xlat11;
    let x_2977 : vec3<f32> = (vec3<f32>(x_2973, x_2973, x_2973) * vec3<f32>(x_2975.x, x_2975.y, x_2975.z));
    let x_2978 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2977.x, x_2977.y, x_2977.z, x_2978.w);
    let x_2980 : vec4<f32> = u_xlat1;
    let x_2982 : vec3<f32> = u_xlat32;
    u_xlat73 = dot(vec3<f32>(x_2980.x, x_2980.y, x_2980.w), x_2982);
    let x_2984 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2984, 0.0f, 1.0f);
    let x_2986 : f32 = u_xlat73;
    let x_2987 : f32 = u_xlat74;
    u_xlat73 = (x_2986 * x_2987);
    let x_2989 : f32 = u_xlat73;
    let x_2991 : vec4<f32> = u_xlat11;
    let x_2993 : vec3<f32> = (vec3<f32>(x_2989, x_2989, x_2989) * vec3<f32>(x_2991.x, x_2991.y, x_2991.z));
    let x_2994 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2993.x, x_2993.y, x_2993.z, x_2994.w);
    let x_2996 : vec3<f32> = u_xlat31;
    let x_2997 : vec4<f32> = u_xlat10;
    let x_3000 : vec3<f32> = u_xlat4;
    u_xlat31 = ((x_2996 * vec3<f32>(x_2997.x, x_2997.x, x_2997.x)) + x_3000);
    let x_3002 : vec3<f32> = u_xlat31;
    let x_3003 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(x_3002, x_3003);
    let x_3005 : f32 = u_xlat73;
    u_xlat73 = max(x_3005, 1.17549435e-37f);
    let x_3007 : f32 = u_xlat73;
    u_xlat73 = inverseSqrt(x_3007);
    let x_3009 : f32 = u_xlat73;
    let x_3011 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_3009, x_3009, x_3009) * x_3011);
    let x_3013 : vec4<f32> = u_xlat1;
    let x_3015 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(vec3<f32>(x_3013.x, x_3013.y, x_3013.w), x_3015);
    let x_3017 : f32 = u_xlat73;
    u_xlat73 = clamp(x_3017, 0.0f, 1.0f);
    let x_3019 : vec3<f32> = u_xlat32;
    let x_3020 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_3019, x_3020);
    let x_3022 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3022, 0.0f, 1.0f);
    let x_3024 : f32 = u_xlat73;
    let x_3025 : f32 = u_xlat73;
    u_xlat73 = (x_3024 * x_3025);
    let x_3027 : f32 = u_xlat73;
    let x_3029 : f32 = u_xlat9.x;
    u_xlat73 = ((x_3027 * x_3029) + 1.000010014f);
    let x_3032 : f32 = u_xlat74;
    let x_3033 : f32 = u_xlat74;
    u_xlat74 = (x_3032 * x_3033);
    let x_3035 : f32 = u_xlat73;
    let x_3036 : f32 = u_xlat73;
    u_xlat73 = (x_3035 * x_3036);
    let x_3038 : f32 = u_xlat74;
    u_xlat74 = max(x_3038, 0.100000001f);
    let x_3040 : f32 = u_xlat73;
    let x_3041 : f32 = u_xlat74;
    u_xlat73 = (x_3040 * x_3041);
    let x_3043 : f32 = u_xlat70;
    let x_3044 : f32 = u_xlat73;
    u_xlat73 = (x_3043 * x_3044);
    let x_3046 : f32 = u_xlat25;
    let x_3047 : f32 = u_xlat73;
    u_xlat73 = (x_3046 / x_3047);
    let x_3049 : vec3<f32> = u_xlat0;
    let x_3050 : f32 = u_xlat73;
    let x_3053 : vec3<f32> = u_xlat8;
    u_xlat31 = ((x_3049 * vec3<f32>(x_3050, x_3050, x_3050)) + x_3053);
    let x_3055 : vec3<f32> = u_xlat31;
    let x_3056 : vec4<f32> = u_xlat11;
    let x_3059 : vec4<f32> = u_xlat7;
    let x_3061 : vec3<f32> = ((x_3055 * vec3<f32>(x_3056.x, x_3056.y, x_3056.z)) + vec3<f32>(x_3059.x, x_3059.y, x_3059.z));
    let x_3062 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3061.x, x_3061.y, x_3061.z, x_3062.w);

    continuing {
      let x_3064 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3064 + bitcast<u32>(1i));
    }
  }
  let x_3066 : vec4<f32> = u_xlat6;
  let x_3068 : f32 = u_xlat47;
  let x_3071 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_3066.x, x_3066.y, x_3066.z) * vec3<f32>(x_3068, x_3068, x_3068)) + vec3<f32>(x_3071.x, x_3071.y, x_3071.z));
  let x_3074 : vec4<f32> = u_xlat7;
  let x_3076 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3074.x, x_3074.y, x_3074.z) + x_3076);
  let x_3078 : vec4<f32> = u_xlat2;
  let x_3080 : f32 = u_xlat45;
  let x_3083 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_3078.x, x_3078.y, x_3078.z) * vec3<f32>(x_3080, x_3080, x_3080)) + x_3083);
  let x_3085 : f32 = u_xlat66;
  let x_3086 : f32 = u_xlat66;
  u_xlat66 = (x_3085 * -(x_3086));
  let x_3089 : f32 = u_xlat66;
  u_xlat66 = exp2(x_3089);
  let x_3091 : vec3<f32> = u_xlat0;
  let x_3094 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_3091 + -(vec3<f32>(x_3094.x, x_3094.y, x_3094.z)));
  let x_3100 : f32 = u_xlat66;
  let x_3102 : vec3<f32> = u_xlat0;
  let x_3105 : vec4<f32> = x_45.unity_FogColor;
  let x_3107 : vec3<f32> = ((vec3<f32>(x_3100, x_3100, x_3100) * x_3102) + vec3<f32>(x_3105.x, x_3105.y, x_3105.z));
  let x_3108 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3107.x, x_3107.y, x_3107.z, x_3108.w);
  let x_3113 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_3115 : f32 = x_120.unity_RenderingLayer.x;
  u_xlatu0 = (x_3113 & bitcast<u32>(x_3115));
  let x_3118 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3118);
  let x_3123 : f32 = u_xlat0.x;
  let x_3125 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3123 * x_3125);
  let x_3130 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3130, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3134 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3134.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

