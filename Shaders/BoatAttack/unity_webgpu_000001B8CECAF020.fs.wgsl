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

@group(1) @binding(4) var<uniform> x_2016 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2467 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2579 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_1968 : f32;
  var u_xlat27 : vec3<f32>;
  var u_xlat49 : f32;
  var x_2098 : f32;
  var x_2109 : vec3<f32>;
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
  var x_2899 : f32;
  var x_2912 : f32;
  var u_xlat77 : f32;
  var x_2974 : f32;
  var x_2985 : vec3<f32>;
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
      let x_695 : vec4<f32> = x_283.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_692.x, x_692.y, x_692.x, x_692.y) + x_695);
      let x_698 : vec4<f32> = u_xlat7;
      let x_699 : vec2<f32> = vec2<f32>(x_698.x, x_698.y);
      let x_701 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_699.x, x_699.y, x_701);
      let x_714 : vec3<f32> = txVec0;
      let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_714.xy, x_714.z);
      u_xlat9.x = x_716;
      let x_719 : vec4<f32> = u_xlat7;
      let x_720 : vec2<f32> = vec2<f32>(x_719.z, x_719.w);
      let x_722 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_720.x, x_720.y, x_722);
      let x_729 : vec3<f32> = txVec1;
      let x_731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_729.xy, x_729.z);
      u_xlat9.y = x_731;
      let x_733 : vec4<f32> = u_xlat5;
      let x_736 : vec4<f32> = x_283.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_733.x, x_733.y, x_733.x, x_733.y) + x_736);
      let x_739 : vec4<f32> = u_xlat7;
      let x_740 : vec2<f32> = vec2<f32>(x_739.x, x_739.y);
      let x_742 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_740.x, x_740.y, x_742);
      let x_749 : vec3<f32> = txVec2;
      let x_751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_749.xy, x_749.z);
      u_xlat9.z = x_751;
      let x_754 : vec4<f32> = u_xlat7;
      let x_755 : vec2<f32> = vec2<f32>(x_754.z, x_754.w);
      let x_757 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_755.x, x_755.y, x_757);
      let x_764 : vec3<f32> = txVec3;
      let x_766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_764.xy, x_764.z);
      u_xlat9.w = x_766;
      let x_768 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_768, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_775 : f32 = x_283.x_MainLightShadowParams.y;
      u_xlatb7 = (x_775 == 2.0f);
      let x_777 : bool = u_xlatb7;
      if (x_777) {
        let x_780 : vec4<f32> = u_xlat5;
        let x_783 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_787 : vec2<f32> = ((vec2<f32>(x_780.x, x_780.y) * vec2<f32>(x_783.z, x_783.w)) + vec2<f32>(0.5f, 0.5f));
        let x_788 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_787.x, x_787.y, x_788.z, x_788.w);
        let x_790 : vec4<f32> = u_xlat7;
        let x_792 : vec2<f32> = floor(vec2<f32>(x_790.x, x_790.y));
        let x_793 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_792.x, x_792.y, x_793.z, x_793.w);
        let x_797 : vec4<f32> = u_xlat5;
        let x_800 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_803 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_797.x, x_797.y) * vec2<f32>(x_800.z, x_800.w)) + -(vec2<f32>(x_803.x, x_803.y)));
        let x_807 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_807.x, x_807.x, x_807.y, x_807.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_812 : vec4<f32> = u_xlat9;
        let x_814 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_812.x, x_812.x, x_812.z, x_812.z) * vec4<f32>(x_814.x, x_814.x, x_814.z, x_814.z));
        let x_817 : vec4<f32> = u_xlat10;
        let x_821 : vec2<f32> = (vec2<f32>(x_817.y, x_817.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_822 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_821.x, x_822.y, x_821.y, x_822.w);
        let x_824 : vec4<f32> = u_xlat10;
        let x_827 : vec2<f32> = u_xlat51;
        let x_829 : vec2<f32> = ((vec2<f32>(x_824.x, x_824.z) * vec2<f32>(0.5f, 0.5f)) + -(x_827));
        let x_830 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_829.x, x_829.y, x_830.z, x_830.w);
        let x_833 : vec2<f32> = u_xlat51;
        u_xlat54 = (-(x_833) + vec2<f32>(1.0f, 1.0f));
        let x_837 : vec2<f32> = u_xlat51;
        let x_839 : vec2<f32> = min(x_837, vec2<f32>(0.0f, 0.0f));
        let x_840 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat11;
        let x_845 : vec4<f32> = u_xlat11;
        let x_848 : vec2<f32> = u_xlat54;
        let x_849 : vec2<f32> = ((-(vec2<f32>(x_842.x, x_842.y)) * vec2<f32>(x_845.x, x_845.y)) + x_848);
        let x_850 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_852 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_852, vec2<f32>(0.0f, 0.0f));
        let x_854 : vec2<f32> = u_xlat51;
        let x_856 : vec2<f32> = u_xlat51;
        let x_858 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_854) * x_856) + vec2<f32>(x_858.y, x_858.w));
        let x_861 : vec4<f32> = u_xlat11;
        let x_863 : vec2<f32> = (vec2<f32>(x_861.x, x_861.y) + vec2<f32>(1.0f, 1.0f));
        let x_864 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_863.x, x_863.y, x_864.z, x_864.w);
        let x_866 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_866 + vec2<f32>(1.0f, 1.0f));
        let x_869 : vec4<f32> = u_xlat10;
        let x_873 : vec2<f32> = (vec2<f32>(x_869.x, x_869.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_874 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
        let x_876 : vec2<f32> = u_xlat54;
        let x_877 : vec2<f32> = (x_876 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_878 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_877.x, x_877.y, x_878.z, x_878.w);
        let x_880 : vec4<f32> = u_xlat11;
        let x_882 : vec2<f32> = (vec2<f32>(x_880.x, x_880.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_883 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_882.x, x_882.y, x_883.z, x_883.w);
        let x_886 : vec2<f32> = u_xlat51;
        let x_887 : vec2<f32> = (x_886 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_888 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_887.x, x_887.y, x_888.z, x_888.w);
        let x_890 : vec4<f32> = u_xlat9;
        u_xlat51 = (vec2<f32>(x_890.y, x_890.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_894 : f32 = u_xlat11.x;
        u_xlat12.z = x_894;
        let x_897 : f32 = u_xlat51.x;
        u_xlat12.w = x_897;
        let x_900 : f32 = u_xlat13.x;
        u_xlat10.z = x_900;
        let x_903 : f32 = u_xlat9.x;
        u_xlat10.w = x_903;
        let x_906 : vec4<f32> = u_xlat10;
        let x_908 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_906.z, x_906.w, x_906.x, x_906.z) + vec4<f32>(x_908.z, x_908.w, x_908.x, x_908.z));
        let x_912 : f32 = u_xlat12.y;
        u_xlat11.z = x_912;
        let x_915 : f32 = u_xlat51.y;
        u_xlat11.w = x_915;
        let x_918 : f32 = u_xlat10.y;
        u_xlat13.z = x_918;
        let x_921 : f32 = u_xlat9.z;
        u_xlat13.w = x_921;
        let x_923 : vec4<f32> = u_xlat11;
        let x_925 : vec4<f32> = u_xlat13;
        let x_927 : vec3<f32> = (vec3<f32>(x_923.z, x_923.y, x_923.w) + vec3<f32>(x_925.z, x_925.y, x_925.w));
        let x_928 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
        let x_930 : vec4<f32> = u_xlat10;
        let x_932 : vec4<f32> = u_xlat14;
        let x_934 : vec3<f32> = (vec3<f32>(x_930.x, x_930.z, x_930.w) / vec3<f32>(x_932.z, x_932.w, x_932.y));
        let x_935 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
        let x_937 : vec4<f32> = u_xlat10;
        let x_942 : vec3<f32> = (vec3<f32>(x_937.x, x_937.y, x_937.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_943 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
        let x_945 : vec4<f32> = u_xlat13;
        let x_947 : vec4<f32> = u_xlat9;
        let x_949 : vec3<f32> = (vec3<f32>(x_945.z, x_945.y, x_945.w) / vec3<f32>(x_947.x, x_947.y, x_947.z));
        let x_950 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat11;
        let x_954 : vec3<f32> = (vec3<f32>(x_952.x, x_952.y, x_952.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_955 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
        let x_957 : vec4<f32> = u_xlat10;
        let x_960 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_962 : vec3<f32> = (vec3<f32>(x_957.y, x_957.x, x_957.z) * vec3<f32>(x_960.x, x_960.x, x_960.x));
        let x_963 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
        let x_965 : vec4<f32> = u_xlat11;
        let x_968 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_970 : vec3<f32> = (vec3<f32>(x_965.x, x_965.y, x_965.z) * vec3<f32>(x_968.y, x_968.y, x_968.y));
        let x_971 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
        let x_974 : f32 = u_xlat11.x;
        u_xlat10.w = x_974;
        let x_976 : vec4<f32> = u_xlat7;
        let x_979 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_982 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_976.x, x_976.y, x_976.x, x_976.y) * vec4<f32>(x_979.x, x_979.y, x_979.x, x_979.y)) + vec4<f32>(x_982.y, x_982.w, x_982.x, x_982.w));
        let x_985 : vec4<f32> = u_xlat7;
        let x_988 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_991 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_985.x, x_985.y) * vec2<f32>(x_988.x, x_988.y)) + vec2<f32>(x_991.z, x_991.w));
        let x_995 : f32 = u_xlat10.y;
        u_xlat11.w = x_995;
        let x_997 : vec4<f32> = u_xlat11;
        let x_998 : vec2<f32> = vec2<f32>(x_997.y, x_997.z);
        let x_999 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_999.x, x_998.x, x_999.z, x_998.y);
        let x_1001 : vec4<f32> = u_xlat7;
        let x_1004 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1007 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1001.x, x_1001.y, x_1001.x, x_1001.y) * vec4<f32>(x_1004.x, x_1004.y, x_1004.x, x_1004.y)) + vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1007.y));
        let x_1010 : vec4<f32> = u_xlat7;
        let x_1013 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1016 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1010.x, x_1010.y, x_1010.x, x_1010.y) * vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y)) + vec4<f32>(x_1016.w, x_1016.y, x_1016.w, x_1016.z));
        let x_1019 : vec4<f32> = u_xlat7;
        let x_1022 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1025 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y) * vec4<f32>(x_1022.x, x_1022.y, x_1022.x, x_1022.y)) + vec4<f32>(x_1025.x, x_1025.w, x_1025.z, x_1025.w));
        let x_1029 : vec4<f32> = u_xlat9;
        let x_1031 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_1029.x, x_1029.x, x_1029.x, x_1029.y) * vec4<f32>(x_1031.z, x_1031.w, x_1031.y, x_1031.z));
        let x_1035 : vec4<f32> = u_xlat9;
        let x_1037 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_1035.y, x_1035.y, x_1035.z, x_1035.z) * x_1037);
        let x_1040 : f32 = u_xlat9.z;
        let x_1042 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1040 * x_1042);
        let x_1046 : vec4<f32> = u_xlat12;
        let x_1047 : vec2<f32> = vec2<f32>(x_1046.x, x_1046.y);
        let x_1049 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
        let x_1057 : vec3<f32> = txVec4;
        let x_1059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1057.xy, x_1057.z);
        u_xlat29 = x_1059;
        let x_1061 : vec4<f32> = u_xlat12;
        let x_1062 : vec2<f32> = vec2<f32>(x_1061.z, x_1061.w);
        let x_1064 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
        let x_1072 : vec3<f32> = txVec5;
        let x_1074 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1072.xy, x_1072.z);
        u_xlat74 = x_1074;
        let x_1075 : f32 = u_xlat74;
        let x_1077 : f32 = u_xlat15.y;
        u_xlat74 = (x_1075 * x_1077);
        let x_1080 : f32 = u_xlat15.x;
        let x_1081 : f32 = u_xlat29;
        let x_1083 : f32 = u_xlat74;
        u_xlat29 = ((x_1080 * x_1081) + x_1083);
        let x_1086 : vec2<f32> = u_xlat51;
        let x_1088 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_1086.x, x_1086.y, x_1088);
        let x_1095 : vec3<f32> = txVec6;
        let x_1097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1095.xy, x_1095.z);
        u_xlat51.x = x_1097;
        let x_1100 : f32 = u_xlat15.z;
        let x_1102 : f32 = u_xlat51.x;
        let x_1104 : f32 = u_xlat29;
        u_xlat29 = ((x_1100 * x_1102) + x_1104);
        let x_1107 : vec4<f32> = u_xlat11;
        let x_1108 : vec2<f32> = vec2<f32>(x_1107.x, x_1107.y);
        let x_1110 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_1108.x, x_1108.y, x_1110);
        let x_1117 : vec3<f32> = txVec7;
        let x_1119 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1117.xy, x_1117.z);
        u_xlat51.x = x_1119;
        let x_1122 : f32 = u_xlat15.w;
        let x_1124 : f32 = u_xlat51.x;
        let x_1126 : f32 = u_xlat29;
        u_xlat29 = ((x_1122 * x_1124) + x_1126);
        let x_1129 : vec4<f32> = u_xlat13;
        let x_1130 : vec2<f32> = vec2<f32>(x_1129.x, x_1129.y);
        let x_1132 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1130.x, x_1130.y, x_1132);
        let x_1139 : vec3<f32> = txVec8;
        let x_1141 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1139.xy, x_1139.z);
        u_xlat51.x = x_1141;
        let x_1144 : f32 = u_xlat16.x;
        let x_1146 : f32 = u_xlat51.x;
        let x_1148 : f32 = u_xlat29;
        u_xlat29 = ((x_1144 * x_1146) + x_1148);
        let x_1151 : vec4<f32> = u_xlat13;
        let x_1152 : vec2<f32> = vec2<f32>(x_1151.z, x_1151.w);
        let x_1154 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1152.x, x_1152.y, x_1154);
        let x_1161 : vec3<f32> = txVec9;
        let x_1163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1161.xy, x_1161.z);
        u_xlat51.x = x_1163;
        let x_1166 : f32 = u_xlat16.y;
        let x_1168 : f32 = u_xlat51.x;
        let x_1170 : f32 = u_xlat29;
        u_xlat29 = ((x_1166 * x_1168) + x_1170);
        let x_1173 : vec4<f32> = u_xlat11;
        let x_1174 : vec2<f32> = vec2<f32>(x_1173.z, x_1173.w);
        let x_1176 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1174.x, x_1174.y, x_1176);
        let x_1183 : vec3<f32> = txVec10;
        let x_1185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1183.xy, x_1183.z);
        u_xlat51.x = x_1185;
        let x_1188 : f32 = u_xlat16.z;
        let x_1190 : f32 = u_xlat51.x;
        let x_1192 : f32 = u_xlat29;
        u_xlat29 = ((x_1188 * x_1190) + x_1192);
        let x_1195 : vec4<f32> = u_xlat10;
        let x_1196 : vec2<f32> = vec2<f32>(x_1195.x, x_1195.y);
        let x_1198 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1196.x, x_1196.y, x_1198);
        let x_1205 : vec3<f32> = txVec11;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1205.xy, x_1205.z);
        u_xlat51.x = x_1207;
        let x_1210 : f32 = u_xlat16.w;
        let x_1212 : f32 = u_xlat51.x;
        let x_1214 : f32 = u_xlat29;
        u_xlat29 = ((x_1210 * x_1212) + x_1214);
        let x_1217 : vec4<f32> = u_xlat10;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.z, x_1217.w);
        let x_1220 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec12;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1227.xy, x_1227.z);
        u_xlat51.x = x_1229;
        let x_1232 : f32 = u_xlat7.x;
        let x_1234 : f32 = u_xlat51.x;
        let x_1236 : f32 = u_xlat29;
        u_xlat71 = ((x_1232 * x_1234) + x_1236);
      } else {
        let x_1239 : vec4<f32> = u_xlat5;
        let x_1242 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1245 : vec2<f32> = ((vec2<f32>(x_1239.x, x_1239.y) * vec2<f32>(x_1242.z, x_1242.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1246 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        let x_1248 : vec4<f32> = u_xlat7;
        let x_1250 : vec2<f32> = floor(vec2<f32>(x_1248.x, x_1248.y));
        let x_1251 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1250.x, x_1250.y, x_1251.z, x_1251.w);
        let x_1253 : vec4<f32> = u_xlat5;
        let x_1256 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(x_1256.z, x_1256.w)) + -(vec2<f32>(x_1259.x, x_1259.y)));
        let x_1263 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_1263.x, x_1263.x, x_1263.y, x_1263.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1266 : vec4<f32> = u_xlat9;
        let x_1268 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1266.x, x_1266.x, x_1266.z, x_1266.z) * vec4<f32>(x_1268.x, x_1268.x, x_1268.z, x_1268.z));
        let x_1271 : vec4<f32> = u_xlat10;
        let x_1275 : vec2<f32> = (vec2<f32>(x_1271.y, x_1271.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1276 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1276.x, x_1275.x, x_1276.z, x_1275.y);
        let x_1278 : vec4<f32> = u_xlat10;
        let x_1281 : vec2<f32> = u_xlat51;
        let x_1283 : vec2<f32> = ((vec2<f32>(x_1278.x, x_1278.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1281));
        let x_1284 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1283.x, x_1284.y, x_1283.y, x_1284.w);
        let x_1286 : vec2<f32> = u_xlat51;
        let x_1288 : vec2<f32> = (-(x_1286) + vec2<f32>(1.0f, 1.0f));
        let x_1289 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
        let x_1291 : vec2<f32> = u_xlat51;
        u_xlat54 = min(x_1291, vec2<f32>(0.0f, 0.0f));
        let x_1293 : vec2<f32> = u_xlat54;
        let x_1295 : vec2<f32> = u_xlat54;
        let x_1297 : vec4<f32> = u_xlat10;
        let x_1299 : vec2<f32> = ((-(x_1293) * x_1295) + vec2<f32>(x_1297.x, x_1297.y));
        let x_1300 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1299.x, x_1299.y, x_1300.z, x_1300.w);
        let x_1302 : vec2<f32> = u_xlat51;
        u_xlat54 = max(x_1302, vec2<f32>(0.0f, 0.0f));
        let x_1305 : vec2<f32> = u_xlat54;
        let x_1307 : vec2<f32> = u_xlat54;
        let x_1309 : vec4<f32> = u_xlat9;
        let x_1311 : vec2<f32> = ((-(x_1305) * x_1307) + vec2<f32>(x_1309.y, x_1309.w));
        let x_1312 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1311.x, x_1312.y, x_1311.y);
        let x_1314 : vec4<f32> = u_xlat10;
        let x_1316 : vec2<f32> = (vec2<f32>(x_1314.x, x_1314.y) + vec2<f32>(2.0f, 2.0f));
        let x_1317 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1316.x, x_1316.y, x_1317.z, x_1317.w);
        let x_1319 : vec3<f32> = u_xlat31;
        let x_1321 : vec2<f32> = (vec2<f32>(x_1319.x, x_1319.z) + vec2<f32>(2.0f, 2.0f));
        let x_1322 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1322.x, x_1321.x, x_1322.z, x_1321.y);
        let x_1325 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1325 * 0.081632003f);
        let x_1329 : vec4<f32> = u_xlat9;
        let x_1332 : vec3<f32> = (vec3<f32>(x_1329.z, x_1329.x, x_1329.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1333 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
        let x_1335 : vec4<f32> = u_xlat10;
        let x_1338 : vec2<f32> = (vec2<f32>(x_1335.x, x_1335.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1339 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
        let x_1342 : f32 = u_xlat13.y;
        u_xlat12.x = x_1342;
        let x_1344 : vec2<f32> = u_xlat51;
        let x_1351 : vec2<f32> = ((vec2<f32>(x_1344.x, x_1344.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1352 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1352.x, x_1351.x, x_1352.z, x_1351.y);
        let x_1354 : vec2<f32> = u_xlat51;
        let x_1358 : vec2<f32> = ((vec2<f32>(x_1354.x, x_1354.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1359 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1358.x, x_1359.y, x_1358.y, x_1359.w);
        let x_1362 : f32 = u_xlat9.x;
        u_xlat10.y = x_1362;
        let x_1365 : f32 = u_xlat11.y;
        u_xlat10.w = x_1365;
        let x_1367 : vec4<f32> = u_xlat10;
        let x_1368 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1367 + x_1368);
        let x_1370 : vec2<f32> = u_xlat51;
        let x_1373 : vec2<f32> = ((vec2<f32>(x_1370.y, x_1370.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1374 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1374.x, x_1373.x, x_1374.z, x_1373.y);
        let x_1376 : vec2<f32> = u_xlat51;
        let x_1379 : vec2<f32> = ((vec2<f32>(x_1376.y, x_1376.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1380 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1379.x, x_1380.y, x_1379.y, x_1380.w);
        let x_1383 : f32 = u_xlat9.y;
        u_xlat11.y = x_1383;
        let x_1385 : vec4<f32> = u_xlat11;
        let x_1386 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1385 + x_1386);
        let x_1388 : vec4<f32> = u_xlat10;
        let x_1389 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1388 / x_1389);
        let x_1391 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1391 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1397 : vec4<f32> = u_xlat11;
        let x_1398 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1397 / x_1398);
        let x_1400 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1400 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1402 : vec4<f32> = u_xlat10;
        let x_1405 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1402.w, x_1402.x, x_1402.y, x_1402.z) * vec4<f32>(x_1405.x, x_1405.x, x_1405.x, x_1405.x));
        let x_1408 : vec4<f32> = u_xlat11;
        let x_1411 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1408.x, x_1408.w, x_1408.y, x_1408.z) * vec4<f32>(x_1411.y, x_1411.y, x_1411.y, x_1411.y));
        let x_1414 : vec4<f32> = u_xlat10;
        let x_1415 : vec3<f32> = vec3<f32>(x_1414.y, x_1414.z, x_1414.w);
        let x_1416 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1415.x, x_1416.y, x_1415.y, x_1415.z);
        let x_1419 : f32 = u_xlat11.x;
        u_xlat13.y = x_1419;
        let x_1421 : vec4<f32> = u_xlat7;
        let x_1424 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1427 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1421.x, x_1421.y, x_1421.x, x_1421.y) * vec4<f32>(x_1424.x, x_1424.y, x_1424.x, x_1424.y)) + vec4<f32>(x_1427.x, x_1427.y, x_1427.z, x_1427.y));
        let x_1430 : vec4<f32> = u_xlat7;
        let x_1433 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1436 : vec4<f32> = u_xlat13;
        u_xlat51 = ((vec2<f32>(x_1430.x, x_1430.y) * vec2<f32>(x_1433.x, x_1433.y)) + vec2<f32>(x_1436.w, x_1436.y));
        let x_1440 : f32 = u_xlat13.y;
        u_xlat10.y = x_1440;
        let x_1443 : f32 = u_xlat11.z;
        u_xlat13.y = x_1443;
        let x_1445 : vec4<f32> = u_xlat7;
        let x_1448 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1451 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1445.x, x_1445.y, x_1445.x, x_1445.y) * vec4<f32>(x_1448.x, x_1448.y, x_1448.x, x_1448.y)) + vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1451.y));
        let x_1454 : vec4<f32> = u_xlat7;
        let x_1457 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1460 : vec4<f32> = u_xlat13;
        let x_1462 : vec2<f32> = ((vec2<f32>(x_1454.x, x_1454.y) * vec2<f32>(x_1457.x, x_1457.y)) + vec2<f32>(x_1460.w, x_1460.y));
        let x_1463 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1462.x, x_1462.y, x_1463.z, x_1463.w);
        let x_1466 : f32 = u_xlat13.y;
        u_xlat10.z = x_1466;
        let x_1469 : vec4<f32> = u_xlat7;
        let x_1472 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1475 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1469.x, x_1469.y, x_1469.x, x_1469.y) * vec4<f32>(x_1472.x, x_1472.y, x_1472.x, x_1472.y)) + vec4<f32>(x_1475.x, x_1475.y, x_1475.x, x_1475.z));
        let x_1479 : f32 = u_xlat11.w;
        u_xlat13.y = x_1479;
        let x_1482 : vec4<f32> = u_xlat7;
        let x_1485 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1488 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1482.x, x_1482.y, x_1482.x, x_1482.y) * vec4<f32>(x_1485.x, x_1485.y, x_1485.x, x_1485.y)) + vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1488.y));
        let x_1492 : vec4<f32> = u_xlat7;
        let x_1495 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1498 : vec4<f32> = u_xlat13;
        let x_1500 : vec2<f32> = ((vec2<f32>(x_1492.x, x_1492.y) * vec2<f32>(x_1495.x, x_1495.y)) + vec2<f32>(x_1498.w, x_1498.y));
        let x_1501 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1500.x, x_1500.y, x_1501.z);
        let x_1504 : f32 = u_xlat13.y;
        u_xlat10.w = x_1504;
        let x_1507 : vec4<f32> = u_xlat7;
        let x_1510 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1513 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1507.x, x_1507.y) * vec2<f32>(x_1510.x, x_1510.y)) + vec2<f32>(x_1513.x, x_1513.w));
        let x_1516 : vec4<f32> = u_xlat13;
        let x_1517 : vec3<f32> = vec3<f32>(x_1516.x, x_1516.z, x_1516.w);
        let x_1518 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1517.x, x_1518.y, x_1517.y, x_1517.z);
        let x_1520 : vec4<f32> = u_xlat7;
        let x_1523 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1526 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1520.x, x_1520.y, x_1520.x, x_1520.y) * vec4<f32>(x_1523.x, x_1523.y, x_1523.x, x_1523.y)) + vec4<f32>(x_1526.x, x_1526.y, x_1526.z, x_1526.y));
        let x_1530 : vec4<f32> = u_xlat7;
        let x_1533 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1536 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1530.x, x_1530.y) * vec2<f32>(x_1533.x, x_1533.y)) + vec2<f32>(x_1536.w, x_1536.y));
        let x_1540 : f32 = u_xlat10.x;
        u_xlat11.x = x_1540;
        let x_1542 : vec4<f32> = u_xlat7;
        let x_1545 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1548 : vec4<f32> = u_xlat11;
        let x_1550 : vec2<f32> = ((vec2<f32>(x_1542.x, x_1542.y) * vec2<f32>(x_1545.x, x_1545.y)) + vec2<f32>(x_1548.x, x_1548.y));
        let x_1551 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1550.x, x_1550.y, x_1551.z, x_1551.w);
        let x_1554 : vec4<f32> = u_xlat9;
        let x_1556 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1554.x, x_1554.x, x_1554.x, x_1554.x) * x_1556);
        let x_1559 : vec4<f32> = u_xlat9;
        let x_1561 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1559.y, x_1559.y, x_1559.y, x_1559.y) * x_1561);
        let x_1564 : vec4<f32> = u_xlat9;
        let x_1566 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1564.z, x_1564.z, x_1564.z, x_1564.z) * x_1566);
        let x_1568 : vec4<f32> = u_xlat9;
        let x_1570 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1568.w, x_1568.w, x_1568.w, x_1568.w) * x_1570);
        let x_1573 : vec4<f32> = u_xlat14;
        let x_1574 : vec2<f32> = vec2<f32>(x_1573.x, x_1573.y);
        let x_1576 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
        let x_1583 : vec3<f32> = txVec13;
        let x_1585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1583.xy, x_1583.z);
        u_xlat74 = x_1585;
        let x_1587 : vec4<f32> = u_xlat14;
        let x_1588 : vec2<f32> = vec2<f32>(x_1587.z, x_1587.w);
        let x_1590 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1588.x, x_1588.y, x_1590);
        let x_1597 : vec3<f32> = txVec14;
        let x_1599 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1597.xy, x_1597.z);
        u_xlat10.x = x_1599;
        let x_1602 : f32 = u_xlat10.x;
        let x_1604 : f32 = u_xlat19.y;
        u_xlat10.x = (x_1602 * x_1604);
        let x_1608 : f32 = u_xlat19.x;
        let x_1609 : f32 = u_xlat74;
        let x_1612 : f32 = u_xlat10.x;
        u_xlat74 = ((x_1608 * x_1609) + x_1612);
        let x_1615 : vec2<f32> = u_xlat51;
        let x_1617 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec15;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1624.xy, x_1624.z);
        u_xlat51.x = x_1626;
        let x_1629 : f32 = u_xlat19.z;
        let x_1631 : f32 = u_xlat51.x;
        let x_1633 : f32 = u_xlat74;
        u_xlat51.x = ((x_1629 * x_1631) + x_1633);
        let x_1637 : vec4<f32> = u_xlat17;
        let x_1638 : vec2<f32> = vec2<f32>(x_1637.x, x_1637.y);
        let x_1640 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1638.x, x_1638.y, x_1640);
        let x_1648 : vec3<f32> = txVec16;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1648.xy, x_1648.z);
        u_xlat73 = x_1650;
        let x_1652 : f32 = u_xlat19.w;
        let x_1653 : f32 = u_xlat73;
        let x_1656 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1652 * x_1653) + x_1656);
        let x_1660 : vec4<f32> = u_xlat15;
        let x_1661 : vec2<f32> = vec2<f32>(x_1660.x, x_1660.y);
        let x_1663 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1661.x, x_1661.y, x_1663);
        let x_1670 : vec3<f32> = txVec17;
        let x_1672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1670.xy, x_1670.z);
        u_xlat73 = x_1672;
        let x_1674 : f32 = u_xlat20.x;
        let x_1675 : f32 = u_xlat73;
        let x_1678 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1674 * x_1675) + x_1678);
        let x_1682 : vec4<f32> = u_xlat15;
        let x_1683 : vec2<f32> = vec2<f32>(x_1682.z, x_1682.w);
        let x_1685 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1683.x, x_1683.y, x_1685);
        let x_1692 : vec3<f32> = txVec18;
        let x_1694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1692.xy, x_1692.z);
        u_xlat73 = x_1694;
        let x_1696 : f32 = u_xlat20.y;
        let x_1697 : f32 = u_xlat73;
        let x_1700 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1696 * x_1697) + x_1700);
        let x_1704 : vec4<f32> = u_xlat16;
        let x_1705 : vec2<f32> = vec2<f32>(x_1704.x, x_1704.y);
        let x_1707 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1705.x, x_1705.y, x_1707);
        let x_1714 : vec3<f32> = txVec19;
        let x_1716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1714.xy, x_1714.z);
        u_xlat73 = x_1716;
        let x_1718 : f32 = u_xlat20.z;
        let x_1719 : f32 = u_xlat73;
        let x_1722 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1718 * x_1719) + x_1722);
        let x_1726 : vec4<f32> = u_xlat17;
        let x_1727 : vec2<f32> = vec2<f32>(x_1726.z, x_1726.w);
        let x_1729 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1727.x, x_1727.y, x_1729);
        let x_1736 : vec3<f32> = txVec20;
        let x_1738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1736.xy, x_1736.z);
        u_xlat73 = x_1738;
        let x_1740 : f32 = u_xlat20.w;
        let x_1741 : f32 = u_xlat73;
        let x_1744 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1740 * x_1741) + x_1744);
        let x_1748 : vec4<f32> = u_xlat18;
        let x_1749 : vec2<f32> = vec2<f32>(x_1748.x, x_1748.y);
        let x_1751 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1749.x, x_1749.y, x_1751);
        let x_1758 : vec3<f32> = txVec21;
        let x_1760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1758.xy, x_1758.z);
        u_xlat73 = x_1760;
        let x_1762 : f32 = u_xlat21.x;
        let x_1763 : f32 = u_xlat73;
        let x_1766 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1762 * x_1763) + x_1766);
        let x_1770 : vec4<f32> = u_xlat18;
        let x_1771 : vec2<f32> = vec2<f32>(x_1770.z, x_1770.w);
        let x_1773 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1771.x, x_1771.y, x_1773);
        let x_1780 : vec3<f32> = txVec22;
        let x_1782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1780.xy, x_1780.z);
        u_xlat73 = x_1782;
        let x_1784 : f32 = u_xlat21.y;
        let x_1785 : f32 = u_xlat73;
        let x_1788 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1784 * x_1785) + x_1788);
        let x_1792 : vec3<f32> = u_xlat32;
        let x_1793 : vec2<f32> = vec2<f32>(x_1792.x, x_1792.y);
        let x_1795 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1793.x, x_1793.y, x_1795);
        let x_1802 : vec3<f32> = txVec23;
        let x_1804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1802.xy, x_1802.z);
        u_xlat73 = x_1804;
        let x_1806 : f32 = u_xlat21.z;
        let x_1807 : f32 = u_xlat73;
        let x_1810 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1806 * x_1807) + x_1810);
        let x_1814 : vec2<f32> = u_xlat60;
        let x_1816 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1814.x, x_1814.y, x_1816);
        let x_1823 : vec3<f32> = txVec24;
        let x_1825 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1823.xy, x_1823.z);
        u_xlat73 = x_1825;
        let x_1827 : f32 = u_xlat21.w;
        let x_1828 : f32 = u_xlat73;
        let x_1831 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1827 * x_1828) + x_1831);
        let x_1835 : vec4<f32> = u_xlat13;
        let x_1836 : vec2<f32> = vec2<f32>(x_1835.x, x_1835.y);
        let x_1838 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1836.x, x_1836.y, x_1838);
        let x_1845 : vec3<f32> = txVec25;
        let x_1847 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1845.xy, x_1845.z);
        u_xlat73 = x_1847;
        let x_1849 : f32 = u_xlat9.x;
        let x_1850 : f32 = u_xlat73;
        let x_1853 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1849 * x_1850) + x_1853);
        let x_1857 : vec4<f32> = u_xlat13;
        let x_1858 : vec2<f32> = vec2<f32>(x_1857.z, x_1857.w);
        let x_1860 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1858.x, x_1858.y, x_1860);
        let x_1867 : vec3<f32> = txVec26;
        let x_1869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1867.xy, x_1867.z);
        u_xlat73 = x_1869;
        let x_1871 : f32 = u_xlat9.y;
        let x_1872 : f32 = u_xlat73;
        let x_1875 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1871 * x_1872) + x_1875);
        let x_1879 : vec2<f32> = u_xlat55;
        let x_1881 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1879.x, x_1879.y, x_1881);
        let x_1888 : vec3<f32> = txVec27;
        let x_1890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1888.xy, x_1888.z);
        u_xlat73 = x_1890;
        let x_1892 : f32 = u_xlat9.z;
        let x_1893 : f32 = u_xlat73;
        let x_1896 : f32 = u_xlat51.x;
        u_xlat51.x = ((x_1892 * x_1893) + x_1896);
        let x_1900 : vec4<f32> = u_xlat7;
        let x_1901 : vec2<f32> = vec2<f32>(x_1900.x, x_1900.y);
        let x_1903 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1901.x, x_1901.y, x_1903);
        let x_1910 : vec3<f32> = txVec28;
        let x_1912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1910.xy, x_1910.z);
        u_xlat7.x = x_1912;
        let x_1915 : f32 = u_xlat9.w;
        let x_1917 : f32 = u_xlat7.x;
        let x_1920 : f32 = u_xlat51.x;
        u_xlat71 = ((x_1915 * x_1917) + x_1920);
      }
    }
  } else {
    let x_1924 : vec4<f32> = u_xlat5;
    let x_1925 : vec2<f32> = vec2<f32>(x_1924.x, x_1924.y);
    let x_1927 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1925.x, x_1925.y, x_1927);
    let x_1934 : vec3<f32> = txVec29;
    let x_1936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1934.xy, x_1934.z);
    u_xlat71 = x_1936;
  }
  let x_1938 : f32 = x_283.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1938) + 1.0f);
  let x_1942 : f32 = u_xlat71;
  let x_1944 : f32 = x_283.x_MainLightShadowParams.x;
  let x_1947 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1942 * x_1944) + x_1947);
  let x_1954 : f32 = u_xlat5.z;
  u_xlatb27.x = (0.0f >= x_1954);
  let x_1959 : f32 = u_xlat5.z;
  u_xlatb49 = (x_1959 >= 1.0f);
  let x_1961 : bool = u_xlatb49;
  let x_1963 : bool = u_xlatb27.x;
  u_xlatb27.x = (x_1961 | x_1963);
  let x_1967 : bool = u_xlatb27.x;
  if (x_1967) {
    x_1968 = 1.0f;
  } else {
    let x_1973 : f32 = u_xlat5.x;
    x_1968 = x_1973;
  }
  let x_1974 : f32 = x_1968;
  u_xlat5.x = x_1974;
  let x_1977 : vec3<f32> = vs_INTERP0;
  let x_1979 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat27 = (x_1977 + -(x_1979));
  let x_1982 : vec3<f32> = u_xlat27;
  let x_1983 : vec3<f32> = u_xlat27;
  u_xlat27.x = dot(x_1982, x_1983);
  let x_1987 : f32 = u_xlat27.x;
  let x_1989 : f32 = x_283.x_MainLightShadowParams.z;
  let x_1992 : f32 = x_283.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1987 * x_1989) + x_1992);
  let x_1996 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1996, 0.0f, 1.0f);
  let x_2001 : f32 = u_xlat5.x;
  u_xlat49 = (-(x_2001) + 1.0f);
  let x_2005 : f32 = u_xlat27.x;
  let x_2006 : f32 = u_xlat49;
  let x_2009 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2005 * x_2006) + x_2009);
  let x_2018 : f32 = x_2016.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_2018 == -1.0f));
  let x_2022 : bool = u_xlatb27.x;
  if (x_2022) {
    let x_2025 : vec3<f32> = vs_INTERP0;
    let x_2028 : vec4<f32> = x_2016.x_MainLightWorldToLight[1i];
    let x_2030 : vec2<f32> = (vec2<f32>(x_2025.y, x_2025.y) * vec2<f32>(x_2028.x, x_2028.y));
    let x_2031 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2030.x, x_2030.y, x_2031.z);
    let x_2034 : vec4<f32> = x_2016.x_MainLightWorldToLight[0i];
    let x_2036 : vec3<f32> = vs_INTERP0;
    let x_2039 : vec3<f32> = u_xlat27;
    let x_2041 : vec2<f32> = ((vec2<f32>(x_2034.x, x_2034.y) * vec2<f32>(x_2036.x, x_2036.x)) + vec2<f32>(x_2039.x, x_2039.y));
    let x_2042 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2041.x, x_2041.y, x_2042.z);
    let x_2045 : vec4<f32> = x_2016.x_MainLightWorldToLight[2i];
    let x_2047 : vec3<f32> = vs_INTERP0;
    let x_2050 : vec3<f32> = u_xlat27;
    let x_2052 : vec2<f32> = ((vec2<f32>(x_2045.x, x_2045.y) * vec2<f32>(x_2047.z, x_2047.z)) + vec2<f32>(x_2050.x, x_2050.y));
    let x_2053 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2052.x, x_2052.y, x_2053.z);
    let x_2055 : vec3<f32> = u_xlat27;
    let x_2058 : vec4<f32> = x_2016.x_MainLightWorldToLight[3i];
    let x_2060 : vec2<f32> = (vec2<f32>(x_2055.x, x_2055.y) + vec2<f32>(x_2058.x, x_2058.y));
    let x_2061 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2060.x, x_2060.y, x_2061.z);
    let x_2063 : vec3<f32> = u_xlat27;
    let x_2066 : vec2<f32> = ((vec2<f32>(x_2063.x, x_2063.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2067 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_2066.x, x_2066.y, x_2067.z);
    let x_2074 : vec3<f32> = u_xlat27;
    let x_2077 : f32 = x_45.x_GlobalMipBias.x;
    let x_2078 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2074.x, x_2074.y), x_2077);
    u_xlat7 = x_2078;
    let x_2080 : f32 = x_2016.x_MainLightCookieTextureFormat;
    let x_2082 : f32 = x_2016.x_MainLightCookieTextureFormat;
    let x_2084 : f32 = x_2016.x_MainLightCookieTextureFormat;
    let x_2086 : f32 = x_2016.x_MainLightCookieTextureFormat;
    let x_2087 : vec4<f32> = vec4<f32>(x_2080, x_2082, x_2084, x_2086);
    let x_2094 : vec4<bool> = (vec4<f32>(x_2087.x, x_2087.y, x_2087.z, x_2087.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_2094.x, x_2094.y);
    let x_2097 : bool = u_xlatb27.y;
    if (x_2097) {
      let x_2102 : f32 = u_xlat7.w;
      x_2098 = x_2102;
    } else {
      let x_2105 : f32 = u_xlat7.x;
      x_2098 = x_2105;
    }
    let x_2106 : f32 = x_2098;
    u_xlat49 = x_2106;
    let x_2108 : bool = u_xlatb27.x;
    if (x_2108) {
      let x_2112 : vec4<f32> = u_xlat7;
      x_2109 = vec3<f32>(x_2112.x, x_2112.y, x_2112.z);
    } else {
      let x_2115 : f32 = u_xlat49;
      x_2109 = vec3<f32>(x_2115, x_2115, x_2115);
    }
    let x_2117 : vec3<f32> = x_2109;
    u_xlat27 = x_2117;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_2122 : vec3<f32> = u_xlat27;
  let x_2124 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat27 = (x_2122 * vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
  let x_2127 : f32 = u_xlat72;
  let x_2129 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_2127, x_2127, x_2127) * x_2129);
  let x_2131 : vec3<f32> = u_xlat4;
  let x_2133 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_2131), vec3<f32>(x_2133.x, x_2133.y, x_2133.w));
  let x_2138 : f32 = u_xlat7.x;
  let x_2140 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2138 + x_2140);
  let x_2143 : vec4<f32> = u_xlat1;
  let x_2145 : vec4<f32> = u_xlat7;
  let x_2149 : vec3<f32> = u_xlat4;
  let x_2151 : vec3<f32> = ((vec3<f32>(x_2143.x, x_2143.y, x_2143.w) * -(vec3<f32>(x_2145.x, x_2145.x, x_2145.x))) + -(x_2149));
  let x_2152 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
  let x_2154 : vec4<f32> = u_xlat1;
  let x_2156 : vec3<f32> = u_xlat4;
  u_xlat73 = dot(vec3<f32>(x_2154.x, x_2154.y, x_2154.w), x_2156);
  let x_2158 : f32 = u_xlat73;
  u_xlat73 = clamp(x_2158, 0.0f, 1.0f);
  let x_2160 : f32 = u_xlat73;
  u_xlat73 = (-(x_2160) + 1.0f);
  let x_2163 : f32 = u_xlat73;
  let x_2164 : f32 = u_xlat73;
  u_xlat73 = (x_2163 * x_2164);
  let x_2166 : f32 = u_xlat73;
  let x_2167 : f32 = u_xlat73;
  u_xlat73 = (x_2166 * x_2167);
  let x_2169 : f32 = u_xlat68;
  u_xlat74 = ((-(x_2169) * 0.699999988f) + 1.700000048f);
  let x_2175 : f32 = u_xlat68;
  let x_2176 : f32 = u_xlat74;
  u_xlat2.w = (x_2175 * x_2176);
  let x_2179 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_2179 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_2192 : vec4<f32> = u_xlat7;
  let x_2195 : f32 = u_xlat2.w;
  let x_2196 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2192.x, x_2192.y, x_2192.z), x_2195);
  u_xlat9 = x_2196;
  let x_2198 : f32 = u_xlat9.w;
  u_xlat68 = (x_2198 + -1.0f);
  let x_2201 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_2202 : f32 = u_xlat68;
  u_xlat68 = ((x_2201 * x_2202) + 1.0f);
  let x_2205 : f32 = u_xlat68;
  u_xlat68 = max(x_2205, 0.0f);
  let x_2207 : f32 = u_xlat68;
  u_xlat68 = log2(x_2207);
  let x_2209 : f32 = u_xlat68;
  let x_2211 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat68 = (x_2209 * x_2211);
  let x_2213 : f32 = u_xlat68;
  u_xlat68 = exp2(x_2213);
  let x_2215 : f32 = u_xlat68;
  let x_2217 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat68 = (x_2215 * x_2217);
  let x_2219 : vec4<f32> = u_xlat9;
  let x_2221 : f32 = u_xlat68;
  let x_2223 : vec3<f32> = (vec3<f32>(x_2219.x, x_2219.y, x_2219.z) * vec3<f32>(x_2221, x_2221, x_2221));
  let x_2224 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2223.x, x_2223.y, x_2223.z, x_2224.w);
  let x_2226 : vec3<f32> = u_xlat3;
  let x_2228 : vec3<f32> = u_xlat3;
  let x_2232 : vec2<f32> = ((vec2<f32>(x_2226.x, x_2226.x) * vec2<f32>(x_2228.x, x_2228.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2233 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2232.x, x_2232.y, x_2233.z, x_2233.w);
  let x_2236 : f32 = u_xlat9.y;
  u_xlat68 = (1.0f / x_2236);
  let x_2238 : vec3<f32> = u_xlat0;
  let x_2240 : f32 = u_xlat69;
  u_xlat31 = (-(x_2238) + vec3<f32>(x_2240, x_2240, x_2240));
  let x_2243 : f32 = u_xlat73;
  let x_2245 : vec3<f32> = u_xlat31;
  let x_2247 : vec3<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_2243, x_2243, x_2243) * x_2245) + x_2247);
  let x_2249 : f32 = u_xlat68;
  let x_2251 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2249, x_2249, x_2249) * x_2251);
  let x_2253 : vec4<f32> = u_xlat7;
  let x_2255 : vec3<f32> = u_xlat31;
  let x_2256 : vec3<f32> = (vec3<f32>(x_2253.x, x_2253.y, x_2253.z) * x_2255);
  let x_2257 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
  let x_2259 : vec4<f32> = u_xlat6;
  let x_2261 : vec3<f32> = u_xlat8;
  let x_2263 : vec4<f32> = u_xlat7;
  let x_2265 : vec3<f32> = ((vec3<f32>(x_2259.x, x_2259.y, x_2259.z) * x_2261) + vec3<f32>(x_2263.x, x_2263.y, x_2263.z));
  let x_2266 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
  let x_2269 : f32 = u_xlat5.x;
  let x_2271 : f32 = x_120.unity_LightData.z;
  u_xlat68 = (x_2269 * x_2271);
  let x_2273 : vec4<f32> = u_xlat1;
  let x_2276 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2273.x, x_2273.y, x_2273.w), vec3<f32>(x_2276.x, x_2276.y, x_2276.z));
  let x_2281 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2281, 0.0f, 1.0f);
  let x_2284 : f32 = u_xlat68;
  let x_2286 : f32 = u_xlat3.x;
  u_xlat68 = (x_2284 * x_2286);
  let x_2288 : f32 = u_xlat68;
  let x_2290 : vec3<f32> = u_xlat27;
  let x_2291 : vec3<f32> = (vec3<f32>(x_2288, x_2288, x_2288) * x_2290);
  let x_2292 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);
  let x_2294 : vec3<f32> = u_xlat4;
  let x_2296 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2298 : vec3<f32> = (x_2294 + vec3<f32>(x_2296.x, x_2296.y, x_2296.z));
  let x_2299 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
  let x_2301 : vec4<f32> = u_xlat7;
  let x_2303 : vec4<f32> = u_xlat7;
  u_xlat68 = dot(vec3<f32>(x_2301.x, x_2301.y, x_2301.z), vec3<f32>(x_2303.x, x_2303.y, x_2303.z));
  let x_2306 : f32 = u_xlat68;
  u_xlat68 = max(x_2306, 1.17549435e-37f);
  let x_2309 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_2309);
  let x_2311 : f32 = u_xlat68;
  let x_2313 : vec4<f32> = u_xlat7;
  let x_2315 : vec3<f32> = (vec3<f32>(x_2311, x_2311, x_2311) * vec3<f32>(x_2313.x, x_2313.y, x_2313.z));
  let x_2316 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
  let x_2318 : vec4<f32> = u_xlat1;
  let x_2320 : vec4<f32> = u_xlat7;
  u_xlat68 = dot(vec3<f32>(x_2318.x, x_2318.y, x_2318.w), vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
  let x_2323 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2323, 0.0f, 1.0f);
  let x_2326 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2328 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_2326.x, x_2326.y, x_2326.z), vec3<f32>(x_2328.x, x_2328.y, x_2328.z));
  let x_2333 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2333, 0.0f, 1.0f);
  let x_2336 : f32 = u_xlat68;
  let x_2337 : f32 = u_xlat68;
  u_xlat68 = (x_2336 * x_2337);
  let x_2339 : f32 = u_xlat68;
  let x_2341 : f32 = u_xlat9.x;
  u_xlat68 = ((x_2339 * x_2341) + 1.000010014f);
  let x_2346 : f32 = u_xlat3.x;
  let x_2348 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2346 * x_2348);
  let x_2351 : f32 = u_xlat68;
  let x_2352 : f32 = u_xlat68;
  u_xlat68 = (x_2351 * x_2352);
  let x_2355 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2355, 0.100000001f);
  let x_2359 : f32 = u_xlat68;
  let x_2361 : f32 = u_xlat3.x;
  u_xlat68 = (x_2359 * x_2361);
  let x_2363 : f32 = u_xlat70;
  let x_2364 : f32 = u_xlat68;
  u_xlat68 = (x_2363 * x_2364);
  let x_2366 : f32 = u_xlat25;
  let x_2367 : f32 = u_xlat68;
  u_xlat68 = (x_2366 / x_2367);
  let x_2369 : vec3<f32> = u_xlat0;
  let x_2370 : f32 = u_xlat68;
  let x_2373 : vec3<f32> = u_xlat8;
  let x_2374 : vec3<f32> = ((x_2369 * vec3<f32>(x_2370, x_2370, x_2370)) + x_2373);
  let x_2375 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2374.x, x_2374.y, x_2374.z, x_2375.w);
  let x_2377 : vec4<f32> = u_xlat5;
  let x_2379 : vec4<f32> = u_xlat7;
  let x_2381 : vec3<f32> = (vec3<f32>(x_2377.x, x_2377.y, x_2377.z) * vec3<f32>(x_2379.x, x_2379.y, x_2379.z));
  let x_2382 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
  let x_2385 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2387 : f32 = x_120.unity_LightData.y;
  u_xlat68 = min(x_2385, x_2387);
  let x_2390 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_2390));
  let x_2395 : f32 = x_2016.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2397 : f32 = x_2016.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2399 : f32 = x_2016.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2401 : f32 = x_2016.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2402 : vec4<f32> = vec4<f32>(x_2395, x_2397, x_2399, x_2401);
  let x_2409 : vec4<bool> = (vec4<f32>(x_2402.x, x_2402.y, x_2402.z, x_2402.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2410 : vec2<bool> = vec2<bool>(x_2409.x, x_2409.w);
  let x_2411 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2410.x, x_2411.y, x_2411.z, x_2410.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2422 : u32 = u_xlatu_loop_1;
    let x_2423 : u32 = u_xlatu68;
    if ((x_2422 < x_2423)) {
    } else {
      break;
    }
    let x_2426 : u32 = u_xlatu_loop_1;
    u_xlatu73 = (x_2426 >> 2u);
    let x_2429 : u32 = u_xlatu_loop_1;
    u_xlati74 = bitcast<i32>((x_2429 & 3u));
    let x_2432 : u32 = u_xlatu73;
    let x_2435 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_2432)];
    let x_2445 : i32 = u_xlati74;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2450 : vec4<u32> = indexable[x_2445];
    u_xlat73 = dot(x_2435, bitcast<vec4<f32>>(x_2450));
    let x_2453 : f32 = u_xlat73;
    u_xlatu73 = bitcast<u32>(i32(x_2453));
    let x_2456 : vec3<f32> = vs_INTERP0;
    let x_2468 : u32 = u_xlatu73;
    let x_2471 : vec4<f32> = x_2467.x_AdditionalLightsPosition[bitcast<i32>(x_2468)];
    let x_2474 : u32 = u_xlatu73;
    let x_2477 : vec4<f32> = x_2467.x_AdditionalLightsPosition[bitcast<i32>(x_2474)];
    u_xlat31 = ((-(x_2456) * vec3<f32>(x_2471.w, x_2471.w, x_2471.w)) + vec3<f32>(x_2477.x, x_2477.y, x_2477.z));
    let x_2480 : vec3<f32> = u_xlat31;
    let x_2481 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2480, x_2481);
    let x_2483 : f32 = u_xlat74;
    u_xlat74 = max(x_2483, 6.10351562e-05f);
    let x_2486 : f32 = u_xlat74;
    u_xlat10.x = inverseSqrt(x_2486);
    let x_2489 : vec3<f32> = u_xlat31;
    let x_2490 : vec4<f32> = u_xlat10;
    u_xlat32 = (x_2489 * vec3<f32>(x_2490.x, x_2490.x, x_2490.x));
    let x_2493 : f32 = u_xlat74;
    u_xlat11.x = (1.0f / x_2493);
    let x_2496 : f32 = u_xlat74;
    let x_2497 : u32 = u_xlatu73;
    let x_2500 : f32 = x_2467.x_AdditionalLightsAttenuation[bitcast<i32>(x_2497)].x;
    u_xlat74 = (x_2496 * x_2500);
    let x_2502 : f32 = u_xlat74;
    let x_2504 : f32 = u_xlat74;
    u_xlat74 = ((-(x_2502) * x_2504) + 1.0f);
    let x_2507 : f32 = u_xlat74;
    u_xlat74 = max(x_2507, 0.0f);
    let x_2509 : f32 = u_xlat74;
    let x_2510 : f32 = u_xlat74;
    u_xlat74 = (x_2509 * x_2510);
    let x_2512 : f32 = u_xlat74;
    let x_2514 : f32 = u_xlat11.x;
    u_xlat74 = (x_2512 * x_2514);
    let x_2516 : u32 = u_xlatu73;
    let x_2519 : vec4<f32> = x_2467.x_AdditionalLightsSpotDir[bitcast<i32>(x_2516)];
    let x_2521 : vec3<f32> = u_xlat32;
    u_xlat11.x = dot(vec3<f32>(x_2519.x, x_2519.y, x_2519.z), x_2521);
    let x_2525 : f32 = u_xlat11.x;
    let x_2526 : u32 = u_xlatu73;
    let x_2529 : f32 = x_2467.x_AdditionalLightsAttenuation[bitcast<i32>(x_2526)].z;
    let x_2531 : u32 = u_xlatu73;
    let x_2534 : f32 = x_2467.x_AdditionalLightsAttenuation[bitcast<i32>(x_2531)].w;
    u_xlat11.x = ((x_2525 * x_2529) + x_2534);
    let x_2538 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_2538, 0.0f, 1.0f);
    let x_2542 : f32 = u_xlat11.x;
    let x_2544 : f32 = u_xlat11.x;
    u_xlat11.x = (x_2542 * x_2544);
    let x_2547 : f32 = u_xlat74;
    let x_2549 : f32 = u_xlat11.x;
    u_xlat74 = (x_2547 * x_2549);
    let x_2552 : u32 = u_xlatu73;
    u_xlatu11 = (x_2552 >> 5u);
    let x_2555 : u32 = u_xlatu73;
    u_xlati33 = (1i << bitcast<u32>((bitcast<i32>(x_2555) & 31i)));
    let x_2561 : i32 = u_xlati33;
    let x_2563 : u32 = u_xlatu11;
    let x_2566 : f32 = x_2016.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2563)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_2561) & bitcast<u32>(x_2566)));
    let x_2570 : i32 = u_xlati11;
    if ((x_2570 != 0i)) {
      let x_2580 : u32 = u_xlatu73;
      let x_2583 : f32 = x_2579.x_AdditionalLightsLightTypes[bitcast<i32>(x_2580)].el;
      u_xlati11 = i32(x_2583);
      let x_2585 : i32 = u_xlati11;
      u_xlati33 = select(1i, 0i, (x_2585 != 0i));
      let x_2589 : u32 = u_xlatu73;
      u_xlati55 = (bitcast<i32>(x_2589) << bitcast<u32>(2i));
      let x_2592 : i32 = u_xlati33;
      if ((x_2592 != 0i)) {
        let x_2596 : vec3<f32> = vs_INTERP0;
        let x_2598 : i32 = u_xlati55;
        let x_2601 : i32 = u_xlati55;
        let x_2605 : vec4<f32> = x_2579.x_AdditionalLightsWorldToLights[((x_2598 + 1i) / 4i)][((x_2601 + 1i) % 4i)];
        let x_2607 : vec3<f32> = (vec3<f32>(x_2596.y, x_2596.y, x_2596.y) * vec3<f32>(x_2605.x, x_2605.y, x_2605.w));
        let x_2608 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2607.x, x_2607.y, x_2607.z, x_2608.w);
        let x_2610 : i32 = u_xlati55;
        let x_2612 : i32 = u_xlati55;
        let x_2615 : vec4<f32> = x_2579.x_AdditionalLightsWorldToLights[(x_2610 / 4i)][(x_2612 % 4i)];
        let x_2617 : vec3<f32> = vs_INTERP0;
        let x_2620 : vec4<f32> = u_xlat12;
        let x_2622 : vec3<f32> = ((vec3<f32>(x_2615.x, x_2615.y, x_2615.w) * vec3<f32>(x_2617.x, x_2617.x, x_2617.x)) + vec3<f32>(x_2620.x, x_2620.y, x_2620.z));
        let x_2623 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2622.x, x_2622.y, x_2622.z, x_2623.w);
        let x_2625 : i32 = u_xlati55;
        let x_2628 : i32 = u_xlati55;
        let x_2632 : vec4<f32> = x_2579.x_AdditionalLightsWorldToLights[((x_2625 + 2i) / 4i)][((x_2628 + 2i) % 4i)];
        let x_2634 : vec3<f32> = vs_INTERP0;
        let x_2637 : vec4<f32> = u_xlat12;
        let x_2639 : vec3<f32> = ((vec3<f32>(x_2632.x, x_2632.y, x_2632.w) * vec3<f32>(x_2634.z, x_2634.z, x_2634.z)) + vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
        let x_2640 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
        let x_2642 : vec4<f32> = u_xlat12;
        let x_2644 : i32 = u_xlati55;
        let x_2647 : i32 = u_xlati55;
        let x_2651 : vec4<f32> = x_2579.x_AdditionalLightsWorldToLights[((x_2644 + 3i) / 4i)][((x_2647 + 3i) % 4i)];
        let x_2653 : vec3<f32> = (vec3<f32>(x_2642.x, x_2642.y, x_2642.z) + vec3<f32>(x_2651.x, x_2651.y, x_2651.w));
        let x_2654 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2653.x, x_2653.y, x_2653.z, x_2654.w);
        let x_2657 : vec4<f32> = u_xlat12;
        let x_2659 : vec4<f32> = u_xlat12;
        let x_2661 : vec2<f32> = (vec2<f32>(x_2657.x, x_2657.y) / vec2<f32>(x_2659.z, x_2659.z));
        let x_2662 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2661.x, x_2662.y, x_2661.y);
        let x_2664 : vec3<f32> = u_xlat33;
        let x_2667 : vec2<f32> = ((vec2<f32>(x_2664.x, x_2664.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2668 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2667.x, x_2668.y, x_2667.y);
        let x_2670 : vec3<f32> = u_xlat33;
        let x_2674 : vec2<f32> = clamp(vec2<f32>(x_2670.x, x_2670.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2675 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2674.x, x_2675.y, x_2674.y);
        let x_2677 : u32 = u_xlatu73;
        let x_2680 : vec4<f32> = x_2579.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2677)];
        let x_2682 : vec3<f32> = u_xlat33;
        let x_2685 : u32 = u_xlatu73;
        let x_2688 : vec4<f32> = x_2579.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2685)];
        let x_2690 : vec2<f32> = ((vec2<f32>(x_2680.x, x_2680.y) * vec2<f32>(x_2682.x, x_2682.z)) + vec2<f32>(x_2688.z, x_2688.w));
        let x_2691 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2690.x, x_2691.y, x_2690.y);
      } else {
        let x_2695 : i32 = u_xlati11;
        u_xlatb11 = (x_2695 == 1i);
        let x_2697 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_2697);
        let x_2699 : i32 = u_xlati11;
        if ((x_2699 != 0i)) {
          let x_2703 : vec3<f32> = vs_INTERP0;
          let x_2705 : i32 = u_xlati55;
          let x_2708 : i32 = u_xlati55;
          let x_2712 : vec4<f32> = x_2579.x_AdditionalLightsWorldToLights[((x_2705 + 1i) / 4i)][((x_2708 + 1i) % 4i)];
          let x_2714 : vec2<f32> = (vec2<f32>(x_2703.y, x_2703.y) * vec2<f32>(x_2712.x, x_2712.y));
          let x_2715 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2714.x, x_2714.y, x_2715.z, x_2715.w);
          let x_2717 : i32 = u_xlati55;
          let x_2719 : i32 = u_xlati55;
          let x_2722 : vec4<f32> = x_2579.x_AdditionalLightsWorldToLights[(x_2717 / 4i)][(x_2719 % 4i)];
          let x_2724 : vec3<f32> = vs_INTERP0;
          let x_2727 : vec4<f32> = u_xlat12;
          let x_2729 : vec2<f32> = ((vec2<f32>(x_2722.x, x_2722.y) * vec2<f32>(x_2724.x, x_2724.x)) + vec2<f32>(x_2727.x, x_2727.y));
          let x_2730 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2729.x, x_2729.y, x_2730.z, x_2730.w);
          let x_2732 : i32 = u_xlati55;
          let x_2735 : i32 = u_xlati55;
          let x_2739 : vec4<f32> = x_2579.x_AdditionalLightsWorldToLights[((x_2732 + 2i) / 4i)][((x_2735 + 2i) % 4i)];
          let x_2741 : vec3<f32> = vs_INTERP0;
          let x_2744 : vec4<f32> = u_xlat12;
          let x_2746 : vec2<f32> = ((vec2<f32>(x_2739.x, x_2739.y) * vec2<f32>(x_2741.z, x_2741.z)) + vec2<f32>(x_2744.x, x_2744.y));
          let x_2747 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2746.x, x_2746.y, x_2747.z, x_2747.w);
          let x_2749 : vec4<f32> = u_xlat12;
          let x_2751 : i32 = u_xlati55;
          let x_2754 : i32 = u_xlati55;
          let x_2758 : vec4<f32> = x_2579.x_AdditionalLightsWorldToLights[((x_2751 + 3i) / 4i)][((x_2754 + 3i) % 4i)];
          let x_2760 : vec2<f32> = (vec2<f32>(x_2749.x, x_2749.y) + vec2<f32>(x_2758.x, x_2758.y));
          let x_2761 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2760.x, x_2760.y, x_2761.z, x_2761.w);
          let x_2763 : vec4<f32> = u_xlat12;
          let x_2766 : vec2<f32> = ((vec2<f32>(x_2763.x, x_2763.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2767 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2766.x, x_2766.y, x_2767.z, x_2767.w);
          let x_2769 : vec4<f32> = u_xlat12;
          let x_2771 : vec2<f32> = fract(vec2<f32>(x_2769.x, x_2769.y));
          let x_2772 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2771.x, x_2771.y, x_2772.z, x_2772.w);
          let x_2774 : u32 = u_xlatu73;
          let x_2777 : vec4<f32> = x_2579.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2774)];
          let x_2779 : vec4<f32> = u_xlat12;
          let x_2782 : u32 = u_xlatu73;
          let x_2785 : vec4<f32> = x_2579.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2782)];
          let x_2787 : vec2<f32> = ((vec2<f32>(x_2777.x, x_2777.y) * vec2<f32>(x_2779.x, x_2779.y)) + vec2<f32>(x_2785.z, x_2785.w));
          let x_2788 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2787.x, x_2788.y, x_2787.y);
        } else {
          let x_2791 : vec3<f32> = vs_INTERP0;
          let x_2793 : i32 = u_xlati55;
          let x_2796 : i32 = u_xlati55;
          let x_2800 : vec4<f32> = x_2579.x_AdditionalLightsWorldToLights[((x_2793 + 1i) / 4i)][((x_2796 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2791.y, x_2791.y, x_2791.y, x_2791.y) * x_2800);
          let x_2802 : i32 = u_xlati55;
          let x_2804 : i32 = u_xlati55;
          let x_2807 : vec4<f32> = x_2579.x_AdditionalLightsWorldToLights[(x_2802 / 4i)][(x_2804 % 4i)];
          let x_2808 : vec3<f32> = vs_INTERP0;
          let x_2811 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2807 * vec4<f32>(x_2808.x, x_2808.x, x_2808.x, x_2808.x)) + x_2811);
          let x_2813 : i32 = u_xlati55;
          let x_2816 : i32 = u_xlati55;
          let x_2820 : vec4<f32> = x_2579.x_AdditionalLightsWorldToLights[((x_2813 + 2i) / 4i)][((x_2816 + 2i) % 4i)];
          let x_2821 : vec3<f32> = vs_INTERP0;
          let x_2824 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2820 * vec4<f32>(x_2821.z, x_2821.z, x_2821.z, x_2821.z)) + x_2824);
          let x_2826 : vec4<f32> = u_xlat12;
          let x_2827 : i32 = u_xlati55;
          let x_2830 : i32 = u_xlati55;
          let x_2834 : vec4<f32> = x_2579.x_AdditionalLightsWorldToLights[((x_2827 + 3i) / 4i)][((x_2830 + 3i) % 4i)];
          u_xlat12 = (x_2826 + x_2834);
          let x_2836 : vec4<f32> = u_xlat12;
          let x_2838 : vec4<f32> = u_xlat12;
          let x_2840 : vec3<f32> = (vec3<f32>(x_2836.x, x_2836.y, x_2836.z) / vec3<f32>(x_2838.w, x_2838.w, x_2838.w));
          let x_2841 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2841.w);
          let x_2843 : vec4<f32> = u_xlat12;
          let x_2845 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_2843.x, x_2843.y, x_2843.z), vec3<f32>(x_2845.x, x_2845.y, x_2845.z));
          let x_2850 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_2850);
          let x_2853 : vec4<f32> = u_xlat11;
          let x_2855 : vec4<f32> = u_xlat12;
          let x_2857 : vec3<f32> = (vec3<f32>(x_2853.x, x_2853.x, x_2853.x) * vec3<f32>(x_2855.x, x_2855.y, x_2855.z));
          let x_2858 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2857.x, x_2857.y, x_2857.z, x_2858.w);
          let x_2860 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_2860.x, x_2860.y, x_2860.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2867 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_2867, 0.000001f);
          let x_2872 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_2872);
          let x_2875 : vec4<f32> = u_xlat11;
          let x_2877 : vec4<f32> = u_xlat12;
          let x_2879 : vec3<f32> = (vec3<f32>(x_2875.x, x_2875.x, x_2875.x) * vec3<f32>(x_2877.z, x_2877.x, x_2877.y));
          let x_2880 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2879.x, x_2879.y, x_2879.z, x_2880.w);
          let x_2883 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2883);
          let x_2887 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2887, 0.0f, 1.0f);
          let x_2891 : vec4<f32> = u_xlat13;
          let x_2894 : vec4<bool> = (vec4<f32>(x_2891.y, x_2891.z, x_2891.y, x_2891.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb56 = vec2<bool>(x_2894.x, x_2894.y);
          let x_2898 : bool = u_xlatb56.x;
          if (x_2898) {
            let x_2903 : f32 = u_xlat13.x;
            x_2899 = x_2903;
          } else {
            let x_2906 : f32 = u_xlat13.x;
            x_2899 = -(x_2906);
          }
          let x_2908 : f32 = x_2899;
          u_xlat56.x = x_2908;
          let x_2911 : bool = u_xlatb56.y;
          if (x_2911) {
            let x_2916 : f32 = u_xlat13.x;
            x_2912 = x_2916;
          } else {
            let x_2919 : f32 = u_xlat13.x;
            x_2912 = -(x_2919);
          }
          let x_2921 : f32 = x_2912;
          u_xlat56.y = x_2921;
          let x_2923 : vec4<f32> = u_xlat12;
          let x_2925 : vec4<f32> = u_xlat11;
          let x_2928 : vec2<f32> = u_xlat56;
          let x_2929 : vec2<f32> = ((vec2<f32>(x_2923.x, x_2923.y) * vec2<f32>(x_2925.x, x_2925.x)) + x_2928);
          let x_2930 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2929.x, x_2930.y, x_2929.y, x_2930.w);
          let x_2932 : vec4<f32> = u_xlat11;
          let x_2935 : vec2<f32> = ((vec2<f32>(x_2932.x, x_2932.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2936 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2935.x, x_2936.y, x_2935.y, x_2936.w);
          let x_2938 : vec4<f32> = u_xlat11;
          let x_2942 : vec2<f32> = clamp(vec2<f32>(x_2938.x, x_2938.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2943 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2942.x, x_2943.y, x_2942.y, x_2943.w);
          let x_2945 : u32 = u_xlatu73;
          let x_2948 : vec4<f32> = x_2579.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2945)];
          let x_2950 : vec4<f32> = u_xlat11;
          let x_2953 : u32 = u_xlatu73;
          let x_2956 : vec4<f32> = x_2579.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2953)];
          let x_2958 : vec2<f32> = ((vec2<f32>(x_2948.x, x_2948.y) * vec2<f32>(x_2950.x, x_2950.z)) + vec2<f32>(x_2956.z, x_2956.w));
          let x_2959 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2958.x, x_2959.y, x_2958.y);
        }
      }
      let x_2966 : vec3<f32> = u_xlat33;
      let x_2969 : f32 = x_45.x_GlobalMipBias.x;
      let x_2970 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2966.x, x_2966.z), x_2969);
      u_xlat11 = x_2970;
      let x_2973 : bool = u_xlatb3.w;
      if (x_2973) {
        let x_2978 : f32 = u_xlat11.w;
        x_2974 = x_2978;
      } else {
        let x_2981 : f32 = u_xlat11.x;
        x_2974 = x_2981;
      }
      let x_2982 : f32 = x_2974;
      u_xlat77 = x_2982;
      let x_2984 : bool = u_xlatb3.x;
      if (x_2984) {
        let x_2988 : vec4<f32> = u_xlat11;
        x_2985 = vec3<f32>(x_2988.x, x_2988.y, x_2988.z);
      } else {
        let x_2991 : f32 = u_xlat77;
        x_2985 = vec3<f32>(x_2991, x_2991, x_2991);
      }
      let x_2993 : vec3<f32> = x_2985;
      let x_2994 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2993.x, x_2993.y, x_2993.z, x_2994.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3000 : vec4<f32> = u_xlat11;
    let x_3002 : u32 = u_xlatu73;
    let x_3005 : vec4<f32> = x_2467.x_AdditionalLightsColor[bitcast<i32>(x_3002)];
    let x_3007 : vec3<f32> = (vec3<f32>(x_3000.x, x_3000.y, x_3000.z) * vec3<f32>(x_3005.x, x_3005.y, x_3005.z));
    let x_3008 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3007.x, x_3007.y, x_3007.z, x_3008.w);
    let x_3010 : f32 = u_xlat72;
    let x_3012 : vec4<f32> = u_xlat11;
    let x_3014 : vec3<f32> = (vec3<f32>(x_3010, x_3010, x_3010) * vec3<f32>(x_3012.x, x_3012.y, x_3012.z));
    let x_3015 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3014.x, x_3014.y, x_3014.z, x_3015.w);
    let x_3017 : vec4<f32> = u_xlat1;
    let x_3019 : vec3<f32> = u_xlat32;
    u_xlat73 = dot(vec3<f32>(x_3017.x, x_3017.y, x_3017.w), x_3019);
    let x_3021 : f32 = u_xlat73;
    u_xlat73 = clamp(x_3021, 0.0f, 1.0f);
    let x_3023 : f32 = u_xlat73;
    let x_3024 : f32 = u_xlat74;
    u_xlat73 = (x_3023 * x_3024);
    let x_3026 : f32 = u_xlat73;
    let x_3028 : vec4<f32> = u_xlat11;
    let x_3030 : vec3<f32> = (vec3<f32>(x_3026, x_3026, x_3026) * vec3<f32>(x_3028.x, x_3028.y, x_3028.z));
    let x_3031 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3030.x, x_3030.y, x_3030.z, x_3031.w);
    let x_3033 : vec3<f32> = u_xlat31;
    let x_3034 : vec4<f32> = u_xlat10;
    let x_3037 : vec3<f32> = u_xlat4;
    u_xlat31 = ((x_3033 * vec3<f32>(x_3034.x, x_3034.x, x_3034.x)) + x_3037);
    let x_3039 : vec3<f32> = u_xlat31;
    let x_3040 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(x_3039, x_3040);
    let x_3042 : f32 = u_xlat73;
    u_xlat73 = max(x_3042, 1.17549435e-37f);
    let x_3044 : f32 = u_xlat73;
    u_xlat73 = inverseSqrt(x_3044);
    let x_3046 : f32 = u_xlat73;
    let x_3048 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_3046, x_3046, x_3046) * x_3048);
    let x_3050 : vec4<f32> = u_xlat1;
    let x_3052 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(vec3<f32>(x_3050.x, x_3050.y, x_3050.w), x_3052);
    let x_3054 : f32 = u_xlat73;
    u_xlat73 = clamp(x_3054, 0.0f, 1.0f);
    let x_3056 : vec3<f32> = u_xlat32;
    let x_3057 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_3056, x_3057);
    let x_3059 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3059, 0.0f, 1.0f);
    let x_3061 : f32 = u_xlat73;
    let x_3062 : f32 = u_xlat73;
    u_xlat73 = (x_3061 * x_3062);
    let x_3064 : f32 = u_xlat73;
    let x_3066 : f32 = u_xlat9.x;
    u_xlat73 = ((x_3064 * x_3066) + 1.000010014f);
    let x_3069 : f32 = u_xlat74;
    let x_3070 : f32 = u_xlat74;
    u_xlat74 = (x_3069 * x_3070);
    let x_3072 : f32 = u_xlat73;
    let x_3073 : f32 = u_xlat73;
    u_xlat73 = (x_3072 * x_3073);
    let x_3075 : f32 = u_xlat74;
    u_xlat74 = max(x_3075, 0.100000001f);
    let x_3077 : f32 = u_xlat73;
    let x_3078 : f32 = u_xlat74;
    u_xlat73 = (x_3077 * x_3078);
    let x_3080 : f32 = u_xlat70;
    let x_3081 : f32 = u_xlat73;
    u_xlat73 = (x_3080 * x_3081);
    let x_3083 : f32 = u_xlat25;
    let x_3084 : f32 = u_xlat73;
    u_xlat73 = (x_3083 / x_3084);
    let x_3086 : vec3<f32> = u_xlat0;
    let x_3087 : f32 = u_xlat73;
    let x_3090 : vec3<f32> = u_xlat8;
    u_xlat31 = ((x_3086 * vec3<f32>(x_3087, x_3087, x_3087)) + x_3090);
    let x_3092 : vec3<f32> = u_xlat31;
    let x_3093 : vec4<f32> = u_xlat11;
    let x_3096 : vec4<f32> = u_xlat7;
    let x_3098 : vec3<f32> = ((x_3092 * vec3<f32>(x_3093.x, x_3093.y, x_3093.z)) + vec3<f32>(x_3096.x, x_3096.y, x_3096.z));
    let x_3099 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3098.x, x_3098.y, x_3098.z, x_3099.w);

    continuing {
      let x_3101 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3101 + bitcast<u32>(1i));
    }
  }
  let x_3103 : vec4<f32> = u_xlat6;
  let x_3105 : f32 = u_xlat47;
  let x_3108 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_3103.x, x_3103.y, x_3103.z) * vec3<f32>(x_3105, x_3105, x_3105)) + vec3<f32>(x_3108.x, x_3108.y, x_3108.z));
  let x_3111 : vec4<f32> = u_xlat7;
  let x_3113 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3111.x, x_3111.y, x_3111.z) + x_3113);
  let x_3115 : vec4<f32> = u_xlat2;
  let x_3117 : f32 = u_xlat45;
  let x_3120 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_3115.x, x_3115.y, x_3115.z) * vec3<f32>(x_3117, x_3117, x_3117)) + x_3120);
  let x_3122 : f32 = u_xlat66;
  let x_3123 : f32 = u_xlat66;
  u_xlat66 = (x_3122 * -(x_3123));
  let x_3126 : f32 = u_xlat66;
  u_xlat66 = exp2(x_3126);
  let x_3128 : vec3<f32> = u_xlat0;
  let x_3131 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_3128 + -(vec3<f32>(x_3131.x, x_3131.y, x_3131.z)));
  let x_3137 : f32 = u_xlat66;
  let x_3139 : vec3<f32> = u_xlat0;
  let x_3142 : vec4<f32> = x_45.unity_FogColor;
  let x_3144 : vec3<f32> = ((vec3<f32>(x_3137, x_3137, x_3137) * x_3139) + vec3<f32>(x_3142.x, x_3142.y, x_3142.z));
  let x_3145 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3144.x, x_3144.y, x_3144.z, x_3145.w);
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

