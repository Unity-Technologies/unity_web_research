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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_499 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1802 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2249 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2362 : AdditionalLightsCookies;

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
  var x_1885 : f32;
  var x_1896 : vec3<f32>;
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
  var x_2682 : f32;
  var x_2695 : f32;
  var u_xlat77 : f32;
  var x_2757 : f32;
  var x_2768 : vec3<f32>;
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
  let x_279 : f32 = vs_INTERP0.y;
  let x_281 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat66 = (x_279 * x_281);
  let x_284 : f32 = x_45.unity_MatrixV[0i].z;
  let x_286 : f32 = vs_INTERP0.x;
  let x_288 : f32 = u_xlat66;
  u_xlat66 = ((x_284 * x_286) + x_288);
  let x_291 : f32 = x_45.unity_MatrixV[2i].z;
  let x_293 : f32 = vs_INTERP0.z;
  let x_295 : f32 = u_xlat66;
  u_xlat66 = ((x_291 * x_293) + x_295);
  let x_297 : f32 = u_xlat66;
  let x_299 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat66 = (x_297 + x_299);
  let x_301 : f32 = u_xlat66;
  let x_305 : f32 = x_45.x_ProjectionParams.y;
  u_xlat66 = (-(x_301) + -(x_305));
  let x_308 : f32 = u_xlat66;
  u_xlat66 = max(x_308, 0.0f);
  let x_310 : f32 = u_xlat66;
  let x_313 : f32 = x_45.unity_FogParams.x;
  u_xlat66 = (x_310 * x_313);
  let x_322 : vec2<f32> = vs_INTERP4;
  let x_324 : f32 = x_45.x_GlobalMipBias.x;
  let x_325 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_322, x_324);
  u_xlat5 = x_325;
  let x_331 : vec2<f32> = vs_INTERP4;
  let x_333 : f32 = x_45.x_GlobalMipBias.x;
  let x_334 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_331, x_333);
  u_xlat6 = vec3<f32>(x_334.x, x_334.y, x_334.z);
  let x_336 : vec4<f32> = u_xlat5;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_341 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat68 = dot(vec3<f32>(x_343.x, x_343.y, x_343.w), vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : f32 = u_xlat68;
  u_xlat68 = (x_348 + 0.5f);
  let x_351 : f32 = u_xlat68;
  let x_353 : vec3<f32> = u_xlat6;
  let x_354 : vec3<f32> = (vec3<f32>(x_351, x_351, x_351) * x_353);
  let x_355 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : f32 = u_xlat5.w;
  u_xlat68 = max(x_358, 0.0001f);
  let x_361 : vec4<f32> = u_xlat5;
  let x_363 : f32 = u_xlat68;
  let x_365 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) / vec3<f32>(x_363, x_363, x_363));
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_370 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_371 : vec2<f32> = vec2<f32>(x_370.x, x_370.y);
  let x_375 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_371.x, x_371.y));
  let x_376 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_375.x, x_375.y, x_376.z);
  let x_378 : vec3<f32> = u_xlat6;
  let x_380 : vec4<f32> = hlslcc_FragCoord;
  let x_382 : vec2<f32> = (vec2<f32>(x_378.x, x_378.y) * vec2<f32>(x_380.x, x_380.y));
  let x_383 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_382.x, x_382.y, x_383.z);
  let x_386 : f32 = u_xlat6.y;
  let x_389 : f32 = x_45.x_ScaleBiasRt.x;
  let x_392 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat68 = ((x_386 * x_389) + x_392);
  let x_394 : f32 = u_xlat68;
  u_xlat6.z = (-(x_394) + 1.0f);
  let x_398 : vec3<f32> = u_xlat3;
  let x_399 : vec2<f32> = vec2<f32>(x_398.x, x_398.y);
  let x_400 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_399.x, x_399.y, x_400.z);
  let x_402 : vec3<f32> = u_xlat3;
  let x_406 : vec2<f32> = clamp(vec2<f32>(x_402.x, x_402.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_407 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_406.x, x_406.y, x_407.z);
  let x_410 : f32 = u_xlat3.x;
  u_xlat68 = ((-(x_410) * 0.959999979f) + 0.959999979f);
  let x_416 : f32 = u_xlat68;
  let x_419 : f32 = u_xlat3.y;
  u_xlat69 = (-(x_416) + x_419);
  let x_422 : vec3<f32> = u_xlat0;
  let x_423 : f32 = u_xlat68;
  u_xlat7 = (x_422 * vec3<f32>(x_423, x_423, x_423));
  let x_426 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_426 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_430 : vec3<f32> = u_xlat3;
  let x_432 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_430.x, x_430.x, x_430.x) * x_432) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_438 : f32 = u_xlat3.y;
  u_xlat68 = (-(x_438) + 1.0f);
  let x_441 : f32 = u_xlat68;
  let x_442 : f32 = u_xlat68;
  u_xlat3.x = (x_441 * x_442);
  let x_446 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_446, 0.0078125f);
  let x_452 : f32 = u_xlat3.x;
  let x_454 : f32 = u_xlat3.x;
  u_xlat25 = (x_452 * x_454);
  let x_456 : f32 = u_xlat69;
  u_xlat69 = (x_456 + 1.0f);
  let x_458 : f32 = u_xlat69;
  u_xlat69 = min(x_458, 1.0f);
  let x_462 : f32 = u_xlat3.x;
  u_xlat70 = ((x_462 * 4.0f) + 2.0f);
  let x_472 : vec3<f32> = u_xlat6;
  let x_475 : f32 = x_45.x_GlobalMipBias.x;
  let x_476 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_472.x, x_472.z), x_475);
  u_xlat71 = x_476.x;
  let x_478 : f32 = u_xlat71;
  u_xlat6.x = (x_478 + -1.0f);
  let x_483 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_485 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_483 * x_485) + 1.0f);
  let x_491 : f32 = u_xlat3.z;
  let x_492 : f32 = u_xlat71;
  u_xlat47 = min(x_491, x_492);
  let x_501 : f32 = x_499.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_501);
  let x_503 : bool = u_xlatb71;
  if (x_503) {
    let x_507 : f32 = x_499.x_MainLightShadowParams.y;
    u_xlatb71 = (x_507 == 1.0f);
    let x_509 : bool = u_xlatb71;
    if (x_509) {
      let x_514 : vec4<f32> = vs_INTERP8;
      let x_518 : vec4<f32> = x_499.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_514.x, x_514.y, x_514.x, x_514.y) + x_518);
      let x_521 : vec4<f32> = u_xlat8;
      let x_522 : vec2<f32> = vec2<f32>(x_521.x, x_521.y);
      let x_524 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_522.x, x_522.y, x_524);
      let x_537 : vec3<f32> = txVec0;
      let x_539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_537.xy, x_537.z);
      u_xlat9.x = x_539;
      let x_542 : vec4<f32> = u_xlat8;
      let x_543 : vec2<f32> = vec2<f32>(x_542.z, x_542.w);
      let x_545 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_543.x, x_543.y, x_545);
      let x_552 : vec3<f32> = txVec1;
      let x_554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_552.xy, x_552.z);
      u_xlat9.y = x_554;
      let x_556 : vec4<f32> = vs_INTERP8;
      let x_560 : vec4<f32> = x_499.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_556.x, x_556.y, x_556.x, x_556.y) + x_560);
      let x_563 : vec4<f32> = u_xlat8;
      let x_564 : vec2<f32> = vec2<f32>(x_563.x, x_563.y);
      let x_566 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_564.x, x_564.y, x_566);
      let x_573 : vec3<f32> = txVec2;
      let x_575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_573.xy, x_573.z);
      u_xlat9.z = x_575;
      let x_578 : vec4<f32> = u_xlat8;
      let x_579 : vec2<f32> = vec2<f32>(x_578.z, x_578.w);
      let x_581 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_579.x, x_579.y, x_581);
      let x_588 : vec3<f32> = txVec3;
      let x_590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_588.xy, x_588.z);
      u_xlat9.w = x_590;
      let x_592 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_592, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_601 : f32 = x_499.x_MainLightShadowParams.y;
      u_xlatb28.x = (x_601 == 2.0f);
      let x_605 : bool = u_xlatb28.x;
      if (x_605) {
        let x_609 : vec4<f32> = vs_INTERP8;
        let x_612 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_616 : vec2<f32> = ((vec2<f32>(x_609.x, x_609.y) * vec2<f32>(x_612.z, x_612.w)) + vec2<f32>(0.5f, 0.5f));
        let x_617 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_616.x, x_616.y, x_617.z);
        let x_619 : vec3<f32> = u_xlat28;
        let x_621 : vec2<f32> = floor(vec2<f32>(x_619.x, x_619.y));
        let x_622 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_621.x, x_621.y, x_622.z);
        let x_624 : vec4<f32> = vs_INTERP8;
        let x_627 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_630 : vec3<f32> = u_xlat28;
        let x_633 : vec2<f32> = ((vec2<f32>(x_624.x, x_624.y) * vec2<f32>(x_627.z, x_627.w)) + -(vec2<f32>(x_630.x, x_630.y)));
        let x_634 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
        let x_636 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_636.x, x_636.x, x_636.y, x_636.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_641 : vec4<f32> = u_xlat9;
        let x_643 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_641.x, x_641.x, x_641.z, x_641.z) * vec4<f32>(x_643.x, x_643.x, x_643.z, x_643.z));
        let x_648 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_648.y, x_648.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_653 : vec4<f32> = u_xlat10;
        let x_656 : vec4<f32> = u_xlat8;
        let x_659 : vec2<f32> = ((vec2<f32>(x_653.x, x_653.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_656.x, x_656.y)));
        let x_660 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_659.x, x_660.y, x_659.y, x_660.w);
        let x_662 : vec4<f32> = u_xlat8;
        let x_665 : vec2<f32> = (-(vec2<f32>(x_662.x, x_662.y)) + vec2<f32>(1.0f, 1.0f));
        let x_666 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
        let x_669 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_669.x, x_669.y), vec2<f32>(0.0f, 0.0f));
        let x_673 : vec2<f32> = u_xlat54;
        let x_675 : vec2<f32> = u_xlat54;
        let x_677 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_673) * x_675) + vec2<f32>(x_677.x, x_677.y));
        let x_680 : vec4<f32> = u_xlat8;
        let x_682 : vec2<f32> = max(vec2<f32>(x_680.x, x_680.y), vec2<f32>(0.0f, 0.0f));
        let x_683 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
        let x_685 : vec4<f32> = u_xlat8;
        let x_688 : vec4<f32> = u_xlat8;
        let x_691 : vec4<f32> = u_xlat9;
        let x_693 : vec2<f32> = ((-(vec2<f32>(x_685.x, x_685.y)) * vec2<f32>(x_688.x, x_688.y)) + vec2<f32>(x_691.y, x_691.w));
        let x_694 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_696 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_696 + vec2<f32>(1.0f, 1.0f));
        let x_698 : vec4<f32> = u_xlat8;
        let x_700 : vec2<f32> = (vec2<f32>(x_698.x, x_698.y) + vec2<f32>(1.0f, 1.0f));
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_701.z, x_701.w);
        let x_704 : vec4<f32> = u_xlat9;
        let x_708 : vec2<f32> = (vec2<f32>(x_704.x, x_704.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_709 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_708.x, x_708.y, x_709.z, x_709.w);
        let x_712 : vec4<f32> = u_xlat10;
        let x_714 : vec2<f32> = (vec2<f32>(x_712.x, x_712.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_715 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_714.x, x_714.y, x_715.z, x_715.w);
        let x_717 : vec2<f32> = u_xlat54;
        let x_718 : vec2<f32> = (x_717 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_719 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_718.x, x_718.y, x_719.z, x_719.w);
        let x_722 : vec4<f32> = u_xlat8;
        let x_724 : vec2<f32> = (vec2<f32>(x_722.x, x_722.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_725 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_724.x, x_724.y, x_725.z, x_725.w);
        let x_727 : vec4<f32> = u_xlat9;
        let x_729 : vec2<f32> = (vec2<f32>(x_727.y, x_727.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_730 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_729.x, x_729.y, x_730.z, x_730.w);
        let x_733 : f32 = u_xlat10.x;
        u_xlat11.z = x_733;
        let x_736 : f32 = u_xlat8.x;
        u_xlat11.w = x_736;
        let x_739 : f32 = u_xlat13.x;
        u_xlat12.z = x_739;
        let x_742 : f32 = u_xlat52.x;
        u_xlat12.w = x_742;
        let x_744 : vec4<f32> = u_xlat11;
        let x_746 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_744.z, x_744.w, x_744.x, x_744.z) + vec4<f32>(x_746.z, x_746.w, x_746.x, x_746.z));
        let x_750 : f32 = u_xlat11.y;
        u_xlat10.z = x_750;
        let x_753 : f32 = u_xlat8.y;
        u_xlat10.w = x_753;
        let x_756 : f32 = u_xlat12.y;
        u_xlat13.z = x_756;
        let x_759 : f32 = u_xlat52.y;
        u_xlat13.w = x_759;
        let x_761 : vec4<f32> = u_xlat10;
        let x_763 : vec4<f32> = u_xlat13;
        let x_765 : vec3<f32> = (vec3<f32>(x_761.z, x_761.y, x_761.w) + vec3<f32>(x_763.z, x_763.y, x_763.w));
        let x_766 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
        let x_768 : vec4<f32> = u_xlat12;
        let x_770 : vec4<f32> = u_xlat9;
        let x_772 : vec3<f32> = (vec3<f32>(x_768.x, x_768.z, x_768.w) / vec3<f32>(x_770.z, x_770.w, x_770.y));
        let x_773 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
        let x_775 : vec4<f32> = u_xlat10;
        let x_780 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_781 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
        let x_783 : vec4<f32> = u_xlat13;
        let x_785 : vec4<f32> = u_xlat8;
        let x_787 : vec3<f32> = (vec3<f32>(x_783.z, x_783.y, x_783.w) / vec3<f32>(x_785.x, x_785.y, x_785.z));
        let x_788 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
        let x_790 : vec4<f32> = u_xlat11;
        let x_792 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_793 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
        let x_795 : vec4<f32> = u_xlat10;
        let x_798 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_800 : vec3<f32> = (vec3<f32>(x_795.y, x_795.x, x_795.z) * vec3<f32>(x_798.x, x_798.x, x_798.x));
        let x_801 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
        let x_803 : vec4<f32> = u_xlat11;
        let x_806 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_808 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_806.y, x_806.y, x_806.y));
        let x_809 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
        let x_812 : f32 = u_xlat11.x;
        u_xlat10.w = x_812;
        let x_814 : vec3<f32> = u_xlat28;
        let x_817 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_820 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.y) * vec4<f32>(x_817.x, x_817.y, x_817.x, x_817.y)) + vec4<f32>(x_820.y, x_820.w, x_820.x, x_820.w));
        let x_823 : vec3<f32> = u_xlat28;
        let x_826 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_829 : vec4<f32> = u_xlat10;
        let x_831 : vec2<f32> = ((vec2<f32>(x_823.x, x_823.y) * vec2<f32>(x_826.x, x_826.y)) + vec2<f32>(x_829.z, x_829.w));
        let x_832 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_831.x, x_831.y, x_832.z, x_832.w);
        let x_835 : f32 = u_xlat10.y;
        u_xlat11.w = x_835;
        let x_837 : vec4<f32> = u_xlat11;
        let x_838 : vec2<f32> = vec2<f32>(x_837.y, x_837.z);
        let x_839 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_839.x, x_838.x, x_839.z, x_838.y);
        let x_842 : vec3<f32> = u_xlat28;
        let x_845 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_848 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_842.x, x_842.y, x_842.x, x_842.y) * vec4<f32>(x_845.x, x_845.y, x_845.x, x_845.y)) + vec4<f32>(x_848.x, x_848.y, x_848.z, x_848.y));
        let x_851 : vec3<f32> = u_xlat28;
        let x_854 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_857 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_851.x, x_851.y, x_851.x, x_851.y) * vec4<f32>(x_854.x, x_854.y, x_854.x, x_854.y)) + vec4<f32>(x_857.w, x_857.y, x_857.w, x_857.z));
        let x_860 : vec3<f32> = u_xlat28;
        let x_863 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_866 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_860.x, x_860.y, x_860.x, x_860.y) * vec4<f32>(x_863.x, x_863.y, x_863.x, x_863.y)) + vec4<f32>(x_866.x, x_866.w, x_866.z, x_866.w));
        let x_870 : vec4<f32> = u_xlat8;
        let x_872 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_870.x, x_870.x, x_870.x, x_870.y) * vec4<f32>(x_872.z, x_872.w, x_872.y, x_872.z));
        let x_876 : vec4<f32> = u_xlat8;
        let x_878 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_876.y, x_876.y, x_876.z, x_876.z) * x_878);
        let x_881 : f32 = u_xlat8.z;
        let x_883 : f32 = u_xlat9.y;
        u_xlat28.x = (x_881 * x_883);
        let x_887 : vec4<f32> = u_xlat12;
        let x_888 : vec2<f32> = vec2<f32>(x_887.x, x_887.y);
        let x_890 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_898 : vec3<f32> = txVec4;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_898.xy, x_898.z);
        u_xlat50 = x_900;
        let x_902 : vec4<f32> = u_xlat12;
        let x_903 : vec2<f32> = vec2<f32>(x_902.z, x_902.w);
        let x_905 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_903.x, x_903.y, x_905);
        let x_913 : vec3<f32> = txVec5;
        let x_915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_913.xy, x_913.z);
        u_xlat72 = x_915;
        let x_916 : f32 = u_xlat72;
        let x_918 : f32 = u_xlat15.y;
        u_xlat72 = (x_916 * x_918);
        let x_921 : f32 = u_xlat15.x;
        let x_922 : f32 = u_xlat50;
        let x_924 : f32 = u_xlat72;
        u_xlat50 = ((x_921 * x_922) + x_924);
        let x_927 : vec4<f32> = u_xlat13;
        let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
        let x_930 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_928.x, x_928.y, x_930);
        let x_937 : vec3<f32> = txVec6;
        let x_939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_937.xy, x_937.z);
        u_xlat72 = x_939;
        let x_941 : f32 = u_xlat15.z;
        let x_942 : f32 = u_xlat72;
        let x_944 : f32 = u_xlat50;
        u_xlat50 = ((x_941 * x_942) + x_944);
        let x_947 : vec4<f32> = u_xlat11;
        let x_948 : vec2<f32> = vec2<f32>(x_947.x, x_947.y);
        let x_950 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_948.x, x_948.y, x_950);
        let x_957 : vec3<f32> = txVec7;
        let x_959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_957.xy, x_957.z);
        u_xlat72 = x_959;
        let x_961 : f32 = u_xlat15.w;
        let x_962 : f32 = u_xlat72;
        let x_964 : f32 = u_xlat50;
        u_xlat50 = ((x_961 * x_962) + x_964);
        let x_967 : vec4<f32> = u_xlat14;
        let x_968 : vec2<f32> = vec2<f32>(x_967.x, x_967.y);
        let x_970 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_968.x, x_968.y, x_970);
        let x_977 : vec3<f32> = txVec8;
        let x_979 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_977.xy, x_977.z);
        u_xlat72 = x_979;
        let x_981 : f32 = u_xlat16.x;
        let x_982 : f32 = u_xlat72;
        let x_984 : f32 = u_xlat50;
        u_xlat50 = ((x_981 * x_982) + x_984);
        let x_987 : vec4<f32> = u_xlat14;
        let x_988 : vec2<f32> = vec2<f32>(x_987.z, x_987.w);
        let x_990 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_988.x, x_988.y, x_990);
        let x_997 : vec3<f32> = txVec9;
        let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_997.xy, x_997.z);
        u_xlat72 = x_999;
        let x_1001 : f32 = u_xlat16.y;
        let x_1002 : f32 = u_xlat72;
        let x_1004 : f32 = u_xlat50;
        u_xlat50 = ((x_1001 * x_1002) + x_1004);
        let x_1007 : vec4<f32> = u_xlat11;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.z, x_1007.w);
        let x_1010 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec10;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1017.xy, x_1017.z);
        u_xlat72 = x_1019;
        let x_1021 : f32 = u_xlat16.z;
        let x_1022 : f32 = u_xlat72;
        let x_1024 : f32 = u_xlat50;
        u_xlat50 = ((x_1021 * x_1022) + x_1024);
        let x_1027 : vec4<f32> = u_xlat10;
        let x_1028 : vec2<f32> = vec2<f32>(x_1027.x, x_1027.y);
        let x_1030 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1028.x, x_1028.y, x_1030);
        let x_1037 : vec3<f32> = txVec11;
        let x_1039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1037.xy, x_1037.z);
        u_xlat72 = x_1039;
        let x_1041 : f32 = u_xlat16.w;
        let x_1042 : f32 = u_xlat72;
        let x_1044 : f32 = u_xlat50;
        u_xlat50 = ((x_1041 * x_1042) + x_1044);
        let x_1047 : vec4<f32> = u_xlat10;
        let x_1048 : vec2<f32> = vec2<f32>(x_1047.z, x_1047.w);
        let x_1050 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
        let x_1057 : vec3<f32> = txVec12;
        let x_1059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1057.xy, x_1057.z);
        u_xlat72 = x_1059;
        let x_1061 : f32 = u_xlat28.x;
        let x_1062 : f32 = u_xlat72;
        let x_1064 : f32 = u_xlat50;
        u_xlat71 = ((x_1061 * x_1062) + x_1064);
      } else {
        let x_1067 : vec4<f32> = vs_INTERP8;
        let x_1070 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_1073 : vec2<f32> = ((vec2<f32>(x_1067.x, x_1067.y) * vec2<f32>(x_1070.z, x_1070.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1074 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1073.x, x_1073.y, x_1074.z);
        let x_1076 : vec3<f32> = u_xlat28;
        let x_1078 : vec2<f32> = floor(vec2<f32>(x_1076.x, x_1076.y));
        let x_1079 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1078.x, x_1078.y, x_1079.z);
        let x_1081 : vec4<f32> = vs_INTERP8;
        let x_1084 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_1087 : vec3<f32> = u_xlat28;
        let x_1090 : vec2<f32> = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1084.z, x_1084.w)) + -(vec2<f32>(x_1087.x, x_1087.y)));
        let x_1091 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1093 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1093.x, x_1093.x, x_1093.y, x_1093.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1096 : vec4<f32> = u_xlat9;
        let x_1098 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1096.x, x_1096.x, x_1096.z, x_1096.z) * vec4<f32>(x_1098.x, x_1098.x, x_1098.z, x_1098.z));
        let x_1101 : vec4<f32> = u_xlat10;
        let x_1105 : vec2<f32> = (vec2<f32>(x_1101.y, x_1101.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1106 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1106.x, x_1105.x, x_1106.z, x_1105.y);
        let x_1108 : vec4<f32> = u_xlat10;
        let x_1111 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1108.x, x_1108.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1111.x, x_1111.y)));
        let x_1115 : vec4<f32> = u_xlat8;
        let x_1118 : vec2<f32> = (-(vec2<f32>(x_1115.x, x_1115.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1119 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1118.x, x_1119.y, x_1118.y, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat8;
        let x_1123 : vec2<f32> = min(vec2<f32>(x_1121.x, x_1121.y), vec2<f32>(0.0f, 0.0f));
        let x_1124 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
        let x_1126 : vec4<f32> = u_xlat10;
        let x_1129 : vec4<f32> = u_xlat10;
        let x_1132 : vec4<f32> = u_xlat9;
        let x_1134 : vec2<f32> = ((-(vec2<f32>(x_1126.x, x_1126.y)) * vec2<f32>(x_1129.x, x_1129.y)) + vec2<f32>(x_1132.x, x_1132.z));
        let x_1135 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1134.x, x_1135.y, x_1134.y, x_1135.w);
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1139 : vec2<f32> = max(vec2<f32>(x_1137.x, x_1137.y), vec2<f32>(0.0f, 0.0f));
        let x_1140 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1140.w);
        let x_1142 : vec4<f32> = u_xlat10;
        let x_1145 : vec4<f32> = u_xlat10;
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1150 : vec2<f32> = ((-(vec2<f32>(x_1142.x, x_1142.y)) * vec2<f32>(x_1145.x, x_1145.y)) + vec2<f32>(x_1148.y, x_1148.w));
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1151.x, x_1150.x, x_1151.z, x_1150.y);
        let x_1153 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1153 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1157 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1157 * 0.081632003f);
        let x_1161 : vec2<f32> = u_xlat52;
        let x_1164 : vec2<f32> = (vec2<f32>(x_1161.y, x_1161.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1165 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1167.x, x_1167.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1171 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1171 * 0.081632003f);
        let x_1175 : f32 = u_xlat12.y;
        u_xlat10.x = x_1175;
        let x_1177 : vec4<f32> = u_xlat8;
        let x_1184 : vec2<f32> = ((vec2<f32>(x_1177.x, x_1177.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1185 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1185.x, x_1184.x, x_1185.z, x_1184.y);
        let x_1187 : vec4<f32> = u_xlat8;
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1187.x, x_1187.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1191.x, x_1192.y, x_1191.y, x_1192.w);
        let x_1195 : f32 = u_xlat52.x;
        u_xlat9.y = x_1195;
        let x_1198 : f32 = u_xlat11.y;
        u_xlat9.w = x_1198;
        let x_1200 : vec4<f32> = u_xlat9;
        let x_1201 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1200 + x_1201);
        let x_1203 : vec4<f32> = u_xlat8;
        let x_1206 : vec2<f32> = ((vec2<f32>(x_1203.y, x_1203.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1207 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1207.x, x_1206.x, x_1207.z, x_1206.y);
        let x_1209 : vec4<f32> = u_xlat8;
        let x_1212 : vec2<f32> = ((vec2<f32>(x_1209.y, x_1209.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1213 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1212.x, x_1213.y, x_1212.y, x_1213.w);
        let x_1216 : f32 = u_xlat52.y;
        u_xlat11.y = x_1216;
        let x_1218 : vec4<f32> = u_xlat11;
        let x_1219 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1218 + x_1219);
        let x_1221 : vec4<f32> = u_xlat9;
        let x_1222 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1221 / x_1222);
        let x_1224 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1224 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1230 : vec4<f32> = u_xlat11;
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1230 / x_1231);
        let x_1233 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1233 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1235 : vec4<f32> = u_xlat9;
        let x_1238 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1235.w, x_1235.x, x_1235.y, x_1235.z) * vec4<f32>(x_1238.x, x_1238.x, x_1238.x, x_1238.x));
        let x_1241 : vec4<f32> = u_xlat11;
        let x_1244 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1241.x, x_1241.w, x_1241.y, x_1241.z) * vec4<f32>(x_1244.y, x_1244.y, x_1244.y, x_1244.y));
        let x_1247 : vec4<f32> = u_xlat9;
        let x_1248 : vec3<f32> = vec3<f32>(x_1247.y, x_1247.z, x_1247.w);
        let x_1249 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1248.x, x_1249.y, x_1248.y, x_1248.z);
        let x_1252 : f32 = u_xlat11.x;
        u_xlat12.y = x_1252;
        let x_1254 : vec3<f32> = u_xlat28;
        let x_1257 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1254.x, x_1254.y, x_1254.x, x_1254.y) * vec4<f32>(x_1257.x, x_1257.y, x_1257.x, x_1257.y)) + vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1260.y));
        let x_1263 : vec3<f32> = u_xlat28;
        let x_1266 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat12;
        let x_1271 : vec2<f32> = ((vec2<f32>(x_1263.x, x_1263.y) * vec2<f32>(x_1266.x, x_1266.y)) + vec2<f32>(x_1269.w, x_1269.y));
        let x_1272 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1271.x, x_1271.y, x_1272.z, x_1272.w);
        let x_1275 : f32 = u_xlat12.y;
        u_xlat9.y = x_1275;
        let x_1278 : f32 = u_xlat11.z;
        u_xlat12.y = x_1278;
        let x_1280 : vec3<f32> = u_xlat28;
        let x_1283 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y) * vec4<f32>(x_1283.x, x_1283.y, x_1283.x, x_1283.y)) + vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1286.y));
        let x_1290 : vec3<f32> = u_xlat28;
        let x_1293 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1290.x, x_1290.y) * vec2<f32>(x_1293.x, x_1293.y)) + vec2<f32>(x_1296.w, x_1296.y));
        let x_1300 : f32 = u_xlat12.y;
        u_xlat9.z = x_1300;
        let x_1302 : vec3<f32> = u_xlat28;
        let x_1305 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.y) * vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y)) + vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.z));
        let x_1312 : f32 = u_xlat11.w;
        u_xlat12.y = x_1312;
        let x_1315 : vec3<f32> = u_xlat28;
        let x_1318 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.y) * vec4<f32>(x_1318.x, x_1318.y, x_1318.x, x_1318.y)) + vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1321.y));
        let x_1325 : vec3<f32> = u_xlat28;
        let x_1328 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_1331 : vec4<f32> = u_xlat12;
        let x_1333 : vec2<f32> = ((vec2<f32>(x_1325.x, x_1325.y) * vec2<f32>(x_1328.x, x_1328.y)) + vec2<f32>(x_1331.w, x_1331.y));
        let x_1334 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1333.x, x_1333.y, x_1334.z);
        let x_1337 : f32 = u_xlat12.y;
        u_xlat9.w = x_1337;
        let x_1340 : vec3<f32> = u_xlat28;
        let x_1343 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1340.x, x_1340.y) * vec2<f32>(x_1343.x, x_1343.y)) + vec2<f32>(x_1346.x, x_1346.w));
        let x_1349 : vec4<f32> = u_xlat12;
        let x_1350 : vec3<f32> = vec3<f32>(x_1349.x, x_1349.z, x_1349.w);
        let x_1351 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1350.x, x_1351.y, x_1350.y, x_1350.z);
        let x_1353 : vec3<f32> = u_xlat28;
        let x_1356 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_1359 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1353.x, x_1353.y, x_1353.x, x_1353.y) * vec4<f32>(x_1356.x, x_1356.y, x_1356.x, x_1356.y)) + vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1359.y));
        let x_1363 : vec3<f32> = u_xlat28;
        let x_1366 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_1369 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1363.x, x_1363.y) * vec2<f32>(x_1366.x, x_1366.y)) + vec2<f32>(x_1369.w, x_1369.y));
        let x_1373 : f32 = u_xlat9.x;
        u_xlat11.x = x_1373;
        let x_1375 : vec3<f32> = u_xlat28;
        let x_1378 : vec4<f32> = x_499.x_MainLightShadowmapSize;
        let x_1381 : vec4<f32> = u_xlat11;
        let x_1383 : vec2<f32> = ((vec2<f32>(x_1375.x, x_1375.y) * vec2<f32>(x_1378.x, x_1378.y)) + vec2<f32>(x_1381.x, x_1381.y));
        let x_1384 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1383.x, x_1383.y, x_1384.z);
        let x_1387 : vec4<f32> = u_xlat8;
        let x_1389 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1387.x, x_1387.x, x_1387.x, x_1387.x) * x_1389);
        let x_1392 : vec4<f32> = u_xlat8;
        let x_1394 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1392.y, x_1392.y, x_1392.y, x_1392.y) * x_1394);
        let x_1397 : vec4<f32> = u_xlat8;
        let x_1399 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1397.z, x_1397.z, x_1397.z, x_1397.z) * x_1399);
        let x_1401 : vec4<f32> = u_xlat8;
        let x_1403 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1401.w, x_1401.w, x_1401.w, x_1401.w) * x_1403);
        let x_1406 : vec4<f32> = u_xlat13;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.x, x_1406.y);
        let x_1409 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec13;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1416.xy, x_1416.z);
        u_xlat72 = x_1418;
        let x_1420 : vec4<f32> = u_xlat13;
        let x_1421 : vec2<f32> = vec2<f32>(x_1420.z, x_1420.w);
        let x_1423 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1421.x, x_1421.y, x_1423);
        let x_1431 : vec3<f32> = txVec14;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1431.xy, x_1431.z);
        u_xlat73 = x_1433;
        let x_1434 : f32 = u_xlat73;
        let x_1436 : f32 = u_xlat19.y;
        u_xlat73 = (x_1434 * x_1436);
        let x_1439 : f32 = u_xlat19.x;
        let x_1440 : f32 = u_xlat72;
        let x_1442 : f32 = u_xlat73;
        u_xlat72 = ((x_1439 * x_1440) + x_1442);
        let x_1445 : vec4<f32> = u_xlat14;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.x, x_1445.y);
        let x_1448 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec15;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1455.xy, x_1455.z);
        u_xlat73 = x_1457;
        let x_1459 : f32 = u_xlat19.z;
        let x_1460 : f32 = u_xlat73;
        let x_1462 : f32 = u_xlat72;
        u_xlat72 = ((x_1459 * x_1460) + x_1462);
        let x_1465 : vec4<f32> = u_xlat16;
        let x_1466 : vec2<f32> = vec2<f32>(x_1465.x, x_1465.y);
        let x_1468 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec16;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1475.xy, x_1475.z);
        u_xlat73 = x_1477;
        let x_1479 : f32 = u_xlat19.w;
        let x_1480 : f32 = u_xlat73;
        let x_1482 : f32 = u_xlat72;
        u_xlat72 = ((x_1479 * x_1480) + x_1482);
        let x_1485 : vec4<f32> = u_xlat15;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec17;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1495.xy, x_1495.z);
        u_xlat73 = x_1497;
        let x_1499 : f32 = u_xlat20.x;
        let x_1500 : f32 = u_xlat73;
        let x_1502 : f32 = u_xlat72;
        u_xlat72 = ((x_1499 * x_1500) + x_1502);
        let x_1505 : vec4<f32> = u_xlat15;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.z, x_1505.w);
        let x_1508 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec18;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1515.xy, x_1515.z);
        u_xlat73 = x_1517;
        let x_1519 : f32 = u_xlat20.y;
        let x_1520 : f32 = u_xlat73;
        let x_1522 : f32 = u_xlat72;
        u_xlat72 = ((x_1519 * x_1520) + x_1522);
        let x_1525 : vec2<f32> = u_xlat58;
        let x_1527 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec19;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1534.xy, x_1534.z);
        u_xlat73 = x_1536;
        let x_1538 : f32 = u_xlat20.z;
        let x_1539 : f32 = u_xlat73;
        let x_1541 : f32 = u_xlat72;
        u_xlat72 = ((x_1538 * x_1539) + x_1541);
        let x_1544 : vec4<f32> = u_xlat16;
        let x_1545 : vec2<f32> = vec2<f32>(x_1544.z, x_1544.w);
        let x_1547 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1554 : vec3<f32> = txVec20;
        let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1554.xy, x_1554.z);
        u_xlat73 = x_1556;
        let x_1558 : f32 = u_xlat20.w;
        let x_1559 : f32 = u_xlat73;
        let x_1561 : f32 = u_xlat72;
        u_xlat72 = ((x_1558 * x_1559) + x_1561);
        let x_1564 : vec4<f32> = u_xlat17;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.x, x_1564.y);
        let x_1567 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec21;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1574.xy, x_1574.z);
        u_xlat73 = x_1576;
        let x_1578 : f32 = u_xlat21.x;
        let x_1579 : f32 = u_xlat73;
        let x_1581 : f32 = u_xlat72;
        u_xlat72 = ((x_1578 * x_1579) + x_1581);
        let x_1584 : vec4<f32> = u_xlat17;
        let x_1585 : vec2<f32> = vec2<f32>(x_1584.z, x_1584.w);
        let x_1587 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec22;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1594.xy, x_1594.z);
        u_xlat73 = x_1596;
        let x_1598 : f32 = u_xlat21.y;
        let x_1599 : f32 = u_xlat73;
        let x_1601 : f32 = u_xlat72;
        u_xlat72 = ((x_1598 * x_1599) + x_1601);
        let x_1604 : vec3<f32> = u_xlat31;
        let x_1605 : vec2<f32> = vec2<f32>(x_1604.x, x_1604.y);
        let x_1607 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1605.x, x_1605.y, x_1607);
        let x_1614 : vec3<f32> = txVec23;
        let x_1616 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1614.xy, x_1614.z);
        u_xlat73 = x_1616;
        let x_1618 : f32 = u_xlat21.z;
        let x_1619 : f32 = u_xlat73;
        let x_1621 : f32 = u_xlat72;
        u_xlat72 = ((x_1618 * x_1619) + x_1621);
        let x_1624 : vec2<f32> = u_xlat18;
        let x_1626 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1624.x, x_1624.y, x_1626);
        let x_1633 : vec3<f32> = txVec24;
        let x_1635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1633.xy, x_1633.z);
        u_xlat73 = x_1635;
        let x_1637 : f32 = u_xlat21.w;
        let x_1638 : f32 = u_xlat73;
        let x_1640 : f32 = u_xlat72;
        u_xlat72 = ((x_1637 * x_1638) + x_1640);
        let x_1643 : vec4<f32> = u_xlat12;
        let x_1644 : vec2<f32> = vec2<f32>(x_1643.x, x_1643.y);
        let x_1646 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1644.x, x_1644.y, x_1646);
        let x_1653 : vec3<f32> = txVec25;
        let x_1655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1653.xy, x_1653.z);
        u_xlat73 = x_1655;
        let x_1657 : f32 = u_xlat8.x;
        let x_1658 : f32 = u_xlat73;
        let x_1660 : f32 = u_xlat72;
        u_xlat72 = ((x_1657 * x_1658) + x_1660);
        let x_1663 : vec4<f32> = u_xlat12;
        let x_1664 : vec2<f32> = vec2<f32>(x_1663.z, x_1663.w);
        let x_1666 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1664.x, x_1664.y, x_1666);
        let x_1673 : vec3<f32> = txVec26;
        let x_1675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1673.xy, x_1673.z);
        u_xlat73 = x_1675;
        let x_1677 : f32 = u_xlat8.y;
        let x_1678 : f32 = u_xlat73;
        let x_1680 : f32 = u_xlat72;
        u_xlat72 = ((x_1677 * x_1678) + x_1680);
        let x_1683 : vec2<f32> = u_xlat55;
        let x_1685 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1683.x, x_1683.y, x_1685);
        let x_1692 : vec3<f32> = txVec27;
        let x_1694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1692.xy, x_1692.z);
        u_xlat73 = x_1694;
        let x_1696 : f32 = u_xlat8.z;
        let x_1697 : f32 = u_xlat73;
        let x_1699 : f32 = u_xlat72;
        u_xlat72 = ((x_1696 * x_1697) + x_1699);
        let x_1702 : vec3<f32> = u_xlat28;
        let x_1703 : vec2<f32> = vec2<f32>(x_1702.x, x_1702.y);
        let x_1705 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1703.x, x_1703.y, x_1705);
        let x_1712 : vec3<f32> = txVec28;
        let x_1714 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1712.xy, x_1712.z);
        u_xlat28.x = x_1714;
        let x_1717 : f32 = u_xlat8.w;
        let x_1719 : f32 = u_xlat28.x;
        let x_1721 : f32 = u_xlat72;
        u_xlat71 = ((x_1717 * x_1719) + x_1721);
      }
    }
  } else {
    let x_1725 : vec4<f32> = vs_INTERP8;
    let x_1726 : vec2<f32> = vec2<f32>(x_1725.x, x_1725.y);
    let x_1728 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1726.x, x_1726.y, x_1728);
    let x_1735 : vec3<f32> = txVec29;
    let x_1737 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1735.xy, x_1735.z);
    u_xlat71 = x_1737;
  }
  let x_1739 : f32 = x_499.x_MainLightShadowParams.x;
  u_xlat28.x = (-(x_1739) + 1.0f);
  let x_1743 : f32 = u_xlat71;
  let x_1745 : f32 = x_499.x_MainLightShadowParams.x;
  let x_1748 : f32 = u_xlat28.x;
  u_xlat71 = ((x_1743 * x_1745) + x_1748);
  let x_1751 : f32 = vs_INTERP8.z;
  u_xlatb28.x = (0.0f >= x_1751);
  let x_1756 : f32 = vs_INTERP8.z;
  u_xlatb50 = (x_1756 >= 1.0f);
  let x_1758 : bool = u_xlatb50;
  let x_1760 : bool = u_xlatb28.x;
  u_xlatb28.x = (x_1758 | x_1760);
  let x_1764 : bool = u_xlatb28.x;
  let x_1765 : f32 = u_xlat71;
  u_xlat71 = select(x_1765, 1.0f, x_1764);
  let x_1767 : vec3<f32> = vs_INTERP0;
  let x_1769 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat28 = (x_1767 + -(x_1769));
  let x_1772 : vec3<f32> = u_xlat28;
  let x_1773 : vec3<f32> = u_xlat28;
  u_xlat28.x = dot(x_1772, x_1773);
  let x_1777 : f32 = u_xlat28.x;
  let x_1779 : f32 = x_499.x_MainLightShadowParams.z;
  let x_1782 : f32 = x_499.x_MainLightShadowParams.w;
  u_xlat28.x = ((x_1777 * x_1779) + x_1782);
  let x_1786 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_1786, 0.0f, 1.0f);
  let x_1789 : f32 = u_xlat71;
  u_xlat50 = (-(x_1789) + 1.0f);
  let x_1793 : f32 = u_xlat28.x;
  let x_1794 : f32 = u_xlat50;
  let x_1796 : f32 = u_xlat71;
  u_xlat71 = ((x_1793 * x_1794) + x_1796);
  let x_1804 : f32 = x_1802.x_MainLightCookieTextureFormat;
  u_xlatb28.x = !((x_1804 == -1.0f));
  let x_1808 : bool = u_xlatb28.x;
  if (x_1808) {
    let x_1811 : vec3<f32> = vs_INTERP0;
    let x_1814 : vec4<f32> = x_1802.x_MainLightWorldToLight[1i];
    let x_1816 : vec2<f32> = (vec2<f32>(x_1811.y, x_1811.y) * vec2<f32>(x_1814.x, x_1814.y));
    let x_1817 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1816.x, x_1816.y, x_1817.z);
    let x_1820 : vec4<f32> = x_1802.x_MainLightWorldToLight[0i];
    let x_1822 : vec3<f32> = vs_INTERP0;
    let x_1825 : vec3<f32> = u_xlat28;
    let x_1827 : vec2<f32> = ((vec2<f32>(x_1820.x, x_1820.y) * vec2<f32>(x_1822.x, x_1822.x)) + vec2<f32>(x_1825.x, x_1825.y));
    let x_1828 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1827.x, x_1827.y, x_1828.z);
    let x_1831 : vec4<f32> = x_1802.x_MainLightWorldToLight[2i];
    let x_1833 : vec3<f32> = vs_INTERP0;
    let x_1836 : vec3<f32> = u_xlat28;
    let x_1838 : vec2<f32> = ((vec2<f32>(x_1831.x, x_1831.y) * vec2<f32>(x_1833.z, x_1833.z)) + vec2<f32>(x_1836.x, x_1836.y));
    let x_1839 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1838.x, x_1838.y, x_1839.z);
    let x_1841 : vec3<f32> = u_xlat28;
    let x_1844 : vec4<f32> = x_1802.x_MainLightWorldToLight[3i];
    let x_1846 : vec2<f32> = (vec2<f32>(x_1841.x, x_1841.y) + vec2<f32>(x_1844.x, x_1844.y));
    let x_1847 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1846.x, x_1846.y, x_1847.z);
    let x_1849 : vec3<f32> = u_xlat28;
    let x_1852 : vec2<f32> = ((vec2<f32>(x_1849.x, x_1849.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1853 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1852.x, x_1852.y, x_1853.z);
    let x_1860 : vec3<f32> = u_xlat28;
    let x_1863 : f32 = x_45.x_GlobalMipBias.x;
    let x_1864 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1860.x, x_1860.y), x_1863);
    u_xlat8 = x_1864;
    let x_1866 : f32 = x_1802.x_MainLightCookieTextureFormat;
    let x_1868 : f32 = x_1802.x_MainLightCookieTextureFormat;
    let x_1870 : f32 = x_1802.x_MainLightCookieTextureFormat;
    let x_1872 : f32 = x_1802.x_MainLightCookieTextureFormat;
    let x_1873 : vec4<f32> = vec4<f32>(x_1866, x_1868, x_1870, x_1872);
    let x_1881 : vec4<bool> = (vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1873.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb28 = vec2<bool>(x_1881.x, x_1881.y);
    let x_1884 : bool = u_xlatb28.y;
    if (x_1884) {
      let x_1889 : f32 = u_xlat8.w;
      x_1885 = x_1889;
    } else {
      let x_1892 : f32 = u_xlat8.x;
      x_1885 = x_1892;
    }
    let x_1893 : f32 = x_1885;
    u_xlat50 = x_1893;
    let x_1895 : bool = u_xlatb28.x;
    if (x_1895) {
      let x_1899 : vec4<f32> = u_xlat8;
      x_1896 = vec3<f32>(x_1899.x, x_1899.y, x_1899.z);
    } else {
      let x_1902 : f32 = u_xlat50;
      x_1896 = vec3<f32>(x_1902, x_1902, x_1902);
    }
    let x_1904 : vec3<f32> = x_1896;
    u_xlat28 = x_1904;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_1909 : vec3<f32> = u_xlat28;
  let x_1911 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat28 = (x_1909 * vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
  let x_1914 : vec3<f32> = u_xlat6;
  let x_1916 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1914.x, x_1914.x, x_1914.x) * x_1916);
  let x_1918 : vec3<f32> = u_xlat4;
  let x_1920 : vec4<f32> = u_xlat1;
  u_xlat73 = dot(-(x_1918), vec3<f32>(x_1920.x, x_1920.y, x_1920.w));
  let x_1923 : f32 = u_xlat73;
  let x_1924 : f32 = u_xlat73;
  u_xlat73 = (x_1923 + x_1924);
  let x_1926 : vec4<f32> = u_xlat1;
  let x_1928 : f32 = u_xlat73;
  let x_1932 : vec3<f32> = u_xlat4;
  let x_1934 : vec3<f32> = ((vec3<f32>(x_1926.x, x_1926.y, x_1926.w) * -(vec3<f32>(x_1928, x_1928, x_1928))) + -(x_1932));
  let x_1935 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
  let x_1937 : vec4<f32> = u_xlat1;
  let x_1939 : vec3<f32> = u_xlat4;
  u_xlat73 = dot(vec3<f32>(x_1937.x, x_1937.y, x_1937.w), x_1939);
  let x_1941 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1941, 0.0f, 1.0f);
  let x_1943 : f32 = u_xlat73;
  u_xlat73 = (-(x_1943) + 1.0f);
  let x_1946 : f32 = u_xlat73;
  let x_1947 : f32 = u_xlat73;
  u_xlat73 = (x_1946 * x_1947);
  let x_1949 : f32 = u_xlat73;
  let x_1950 : f32 = u_xlat73;
  u_xlat73 = (x_1949 * x_1950);
  let x_1953 : f32 = u_xlat68;
  u_xlat74 = ((-(x_1953) * 0.699999988f) + 1.700000048f);
  let x_1959 : f32 = u_xlat68;
  let x_1960 : f32 = u_xlat74;
  u_xlat2.w = (x_1959 * x_1960);
  let x_1963 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1963 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_1976 : vec4<f32> = u_xlat8;
  let x_1979 : f32 = u_xlat2.w;
  let x_1980 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1976.x, x_1976.y, x_1976.z), x_1979);
  u_xlat8 = x_1980;
  let x_1982 : f32 = u_xlat8.w;
  u_xlat68 = (x_1982 + -1.0f);
  let x_1985 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_1986 : f32 = u_xlat68;
  u_xlat68 = ((x_1985 * x_1986) + 1.0f);
  let x_1989 : f32 = u_xlat68;
  u_xlat68 = max(x_1989, 0.0f);
  let x_1991 : f32 = u_xlat68;
  u_xlat68 = log2(x_1991);
  let x_1993 : f32 = u_xlat68;
  let x_1995 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat68 = (x_1993 * x_1995);
  let x_1997 : f32 = u_xlat68;
  u_xlat68 = exp2(x_1997);
  let x_1999 : f32 = u_xlat68;
  let x_2001 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat68 = (x_1999 * x_2001);
  let x_2003 : vec4<f32> = u_xlat8;
  let x_2005 : f32 = u_xlat68;
  let x_2007 : vec3<f32> = (vec3<f32>(x_2003.x, x_2003.y, x_2003.z) * vec3<f32>(x_2005, x_2005, x_2005));
  let x_2008 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2008.w);
  let x_2010 : vec3<f32> = u_xlat3;
  let x_2012 : vec3<f32> = u_xlat3;
  let x_2016 : vec2<f32> = ((vec2<f32>(x_2010.x, x_2010.x) * vec2<f32>(x_2012.x, x_2012.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2017 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2016.x, x_2016.y, x_2017.z, x_2017.w);
  let x_2020 : f32 = u_xlat9.y;
  u_xlat68 = (1.0f / x_2020);
  let x_2022 : vec3<f32> = u_xlat0;
  let x_2024 : f32 = u_xlat69;
  u_xlat31 = (-(x_2022) + vec3<f32>(x_2024, x_2024, x_2024));
  let x_2027 : f32 = u_xlat73;
  let x_2029 : vec3<f32> = u_xlat31;
  let x_2031 : vec3<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_2027, x_2027, x_2027) * x_2029) + x_2031);
  let x_2033 : f32 = u_xlat68;
  let x_2035 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2033, x_2033, x_2033) * x_2035);
  let x_2037 : vec4<f32> = u_xlat8;
  let x_2039 : vec3<f32> = u_xlat31;
  let x_2040 : vec3<f32> = (vec3<f32>(x_2037.x, x_2037.y, x_2037.z) * x_2039);
  let x_2041 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2040.x, x_2040.y, x_2040.z, x_2041.w);
  let x_2043 : vec4<f32> = u_xlat5;
  let x_2045 : vec3<f32> = u_xlat7;
  let x_2047 : vec4<f32> = u_xlat8;
  let x_2049 : vec3<f32> = ((vec3<f32>(x_2043.x, x_2043.y, x_2043.z) * x_2045) + vec3<f32>(x_2047.x, x_2047.y, x_2047.z));
  let x_2050 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2049.x, x_2049.y, x_2049.z, x_2050.w);
  let x_2052 : f32 = u_xlat71;
  let x_2055 : f32 = x_120.unity_LightData.z;
  u_xlat68 = (x_2052 * x_2055);
  let x_2057 : vec4<f32> = u_xlat1;
  let x_2060 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2057.x, x_2057.y, x_2057.w), vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
  let x_2065 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2065, 0.0f, 1.0f);
  let x_2068 : f32 = u_xlat68;
  let x_2070 : f32 = u_xlat3.x;
  u_xlat68 = (x_2068 * x_2070);
  let x_2072 : f32 = u_xlat68;
  let x_2074 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2072, x_2072, x_2072) * x_2074);
  let x_2076 : vec3<f32> = u_xlat4;
  let x_2078 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2080 : vec3<f32> = (x_2076 + vec3<f32>(x_2078.x, x_2078.y, x_2078.z));
  let x_2081 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2080.x, x_2080.y, x_2080.z, x_2081.w);
  let x_2083 : vec4<f32> = u_xlat8;
  let x_2085 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2083.x, x_2083.y, x_2083.z), vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
  let x_2088 : f32 = u_xlat68;
  u_xlat68 = max(x_2088, 1.17549435e-37f);
  let x_2091 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_2091);
  let x_2093 : f32 = u_xlat68;
  let x_2095 : vec4<f32> = u_xlat8;
  let x_2097 : vec3<f32> = (vec3<f32>(x_2093, x_2093, x_2093) * vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
  let x_2098 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
  let x_2100 : vec4<f32> = u_xlat1;
  let x_2102 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2100.x, x_2100.y, x_2100.w), vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
  let x_2105 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2105, 0.0f, 1.0f);
  let x_2108 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2110 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2108.x, x_2108.y, x_2108.z), vec3<f32>(x_2110.x, x_2110.y, x_2110.z));
  let x_2115 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2115, 0.0f, 1.0f);
  let x_2118 : f32 = u_xlat68;
  let x_2119 : f32 = u_xlat68;
  u_xlat68 = (x_2118 * x_2119);
  let x_2121 : f32 = u_xlat68;
  let x_2123 : f32 = u_xlat9.x;
  u_xlat68 = ((x_2121 * x_2123) + 1.000010014f);
  let x_2128 : f32 = u_xlat3.x;
  let x_2130 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2128 * x_2130);
  let x_2133 : f32 = u_xlat68;
  let x_2134 : f32 = u_xlat68;
  u_xlat68 = (x_2133 * x_2134);
  let x_2137 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2137, 0.100000001f);
  let x_2141 : f32 = u_xlat68;
  let x_2143 : f32 = u_xlat3.x;
  u_xlat68 = (x_2141 * x_2143);
  let x_2145 : f32 = u_xlat70;
  let x_2146 : f32 = u_xlat68;
  u_xlat68 = (x_2145 * x_2146);
  let x_2148 : f32 = u_xlat25;
  let x_2149 : f32 = u_xlat68;
  u_xlat68 = (x_2148 / x_2149);
  let x_2151 : vec3<f32> = u_xlat0;
  let x_2152 : f32 = u_xlat68;
  let x_2155 : vec3<f32> = u_xlat7;
  let x_2156 : vec3<f32> = ((x_2151 * vec3<f32>(x_2152, x_2152, x_2152)) + x_2155);
  let x_2157 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2156.x, x_2156.y, x_2156.z, x_2157.w);
  let x_2159 : vec3<f32> = u_xlat28;
  let x_2160 : vec4<f32> = u_xlat8;
  u_xlat28 = (x_2159 * vec3<f32>(x_2160.x, x_2160.y, x_2160.z));
  let x_2164 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2166 : f32 = x_120.unity_LightData.y;
  u_xlat68 = min(x_2164, x_2166);
  let x_2170 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_2170));
  let x_2176 : f32 = x_1802.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2178 : f32 = x_1802.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2180 : f32 = x_1802.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2182 : f32 = x_1802.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2183 : vec4<f32> = vec4<f32>(x_2176, x_2178, x_2180, x_2182);
  let x_2190 : vec4<bool> = (vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2183.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2191 : vec2<bool> = vec2<bool>(x_2190.x, x_2190.w);
  let x_2192 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2191.x, x_2192.y, x_2192.z, x_2191.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2203 : u32 = u_xlatu_loop_1;
    let x_2204 : u32 = u_xlatu68;
    if ((x_2203 < x_2204)) {
    } else {
      break;
    }
    let x_2207 : u32 = u_xlatu_loop_1;
    u_xlatu73 = (x_2207 >> 2u);
    let x_2211 : u32 = u_xlatu_loop_1;
    u_xlati74 = bitcast<i32>((x_2211 & 3u));
    let x_2214 : u32 = u_xlatu73;
    let x_2217 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_2214)];
    let x_2227 : i32 = u_xlati74;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2232 : vec4<u32> = indexable[x_2227];
    u_xlat73 = dot(x_2217, bitcast<vec4<f32>>(x_2232));
    let x_2235 : f32 = u_xlat73;
    u_xlatu73 = bitcast<u32>(i32(x_2235));
    let x_2238 : vec3<f32> = vs_INTERP0;
    let x_2250 : u32 = u_xlatu73;
    let x_2253 : vec4<f32> = x_2249.x_AdditionalLightsPosition[bitcast<i32>(x_2250)];
    let x_2256 : u32 = u_xlatu73;
    let x_2259 : vec4<f32> = x_2249.x_AdditionalLightsPosition[bitcast<i32>(x_2256)];
    u_xlat31 = ((-(x_2238) * vec3<f32>(x_2253.w, x_2253.w, x_2253.w)) + vec3<f32>(x_2259.x, x_2259.y, x_2259.z));
    let x_2262 : vec3<f32> = u_xlat31;
    let x_2263 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2262, x_2263);
    let x_2265 : f32 = u_xlat74;
    u_xlat74 = max(x_2265, 6.10351562e-05f);
    let x_2268 : f32 = u_xlat74;
    u_xlat10.x = inverseSqrt(x_2268);
    let x_2272 : vec3<f32> = u_xlat31;
    let x_2273 : vec4<f32> = u_xlat10;
    u_xlat32 = (x_2272 * vec3<f32>(x_2273.x, x_2273.x, x_2273.x));
    let x_2276 : f32 = u_xlat74;
    u_xlat11.x = (1.0f / x_2276);
    let x_2279 : f32 = u_xlat74;
    let x_2280 : u32 = u_xlatu73;
    let x_2283 : f32 = x_2249.x_AdditionalLightsAttenuation[bitcast<i32>(x_2280)].x;
    u_xlat74 = (x_2279 * x_2283);
    let x_2285 : f32 = u_xlat74;
    let x_2287 : f32 = u_xlat74;
    u_xlat74 = ((-(x_2285) * x_2287) + 1.0f);
    let x_2290 : f32 = u_xlat74;
    u_xlat74 = max(x_2290, 0.0f);
    let x_2292 : f32 = u_xlat74;
    let x_2293 : f32 = u_xlat74;
    u_xlat74 = (x_2292 * x_2293);
    let x_2295 : f32 = u_xlat74;
    let x_2297 : f32 = u_xlat11.x;
    u_xlat74 = (x_2295 * x_2297);
    let x_2299 : u32 = u_xlatu73;
    let x_2302 : vec4<f32> = x_2249.x_AdditionalLightsSpotDir[bitcast<i32>(x_2299)];
    let x_2304 : vec3<f32> = u_xlat32;
    u_xlat11.x = dot(vec3<f32>(x_2302.x, x_2302.y, x_2302.z), x_2304);
    let x_2308 : f32 = u_xlat11.x;
    let x_2309 : u32 = u_xlatu73;
    let x_2312 : f32 = x_2249.x_AdditionalLightsAttenuation[bitcast<i32>(x_2309)].z;
    let x_2314 : u32 = u_xlatu73;
    let x_2317 : f32 = x_2249.x_AdditionalLightsAttenuation[bitcast<i32>(x_2314)].w;
    u_xlat11.x = ((x_2308 * x_2312) + x_2317);
    let x_2321 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_2321, 0.0f, 1.0f);
    let x_2325 : f32 = u_xlat11.x;
    let x_2327 : f32 = u_xlat11.x;
    u_xlat11.x = (x_2325 * x_2327);
    let x_2330 : f32 = u_xlat74;
    let x_2332 : f32 = u_xlat11.x;
    u_xlat74 = (x_2330 * x_2332);
    let x_2335 : u32 = u_xlatu73;
    u_xlatu11 = (x_2335 >> 5u);
    let x_2338 : u32 = u_xlatu73;
    u_xlati33 = (1i << bitcast<u32>((bitcast<i32>(x_2338) & 31i)));
    let x_2344 : i32 = u_xlati33;
    let x_2346 : u32 = u_xlatu11;
    let x_2349 : f32 = x_1802.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2346)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_2344) & bitcast<u32>(x_2349)));
    let x_2353 : i32 = u_xlati11;
    if ((x_2353 != 0i)) {
      let x_2363 : u32 = u_xlatu73;
      let x_2366 : f32 = x_2362.x_AdditionalLightsLightTypes[bitcast<i32>(x_2363)].el;
      u_xlati11 = i32(x_2366);
      let x_2368 : i32 = u_xlati11;
      u_xlati33 = select(1i, 0i, (x_2368 != 0i));
      let x_2372 : u32 = u_xlatu73;
      u_xlati55 = (bitcast<i32>(x_2372) << bitcast<u32>(2i));
      let x_2375 : i32 = u_xlati33;
      if ((x_2375 != 0i)) {
        let x_2379 : vec3<f32> = vs_INTERP0;
        let x_2381 : i32 = u_xlati55;
        let x_2384 : i32 = u_xlati55;
        let x_2388 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2381 + 1i) / 4i)][((x_2384 + 1i) % 4i)];
        let x_2390 : vec3<f32> = (vec3<f32>(x_2379.y, x_2379.y, x_2379.y) * vec3<f32>(x_2388.x, x_2388.y, x_2388.w));
        let x_2391 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
        let x_2393 : i32 = u_xlati55;
        let x_2395 : i32 = u_xlati55;
        let x_2398 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[(x_2393 / 4i)][(x_2395 % 4i)];
        let x_2400 : vec3<f32> = vs_INTERP0;
        let x_2403 : vec4<f32> = u_xlat12;
        let x_2405 : vec3<f32> = ((vec3<f32>(x_2398.x, x_2398.y, x_2398.w) * vec3<f32>(x_2400.x, x_2400.x, x_2400.x)) + vec3<f32>(x_2403.x, x_2403.y, x_2403.z));
        let x_2406 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
        let x_2408 : i32 = u_xlati55;
        let x_2411 : i32 = u_xlati55;
        let x_2415 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2408 + 2i) / 4i)][((x_2411 + 2i) % 4i)];
        let x_2417 : vec3<f32> = vs_INTERP0;
        let x_2420 : vec4<f32> = u_xlat12;
        let x_2422 : vec3<f32> = ((vec3<f32>(x_2415.x, x_2415.y, x_2415.w) * vec3<f32>(x_2417.z, x_2417.z, x_2417.z)) + vec3<f32>(x_2420.x, x_2420.y, x_2420.z));
        let x_2423 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2422.x, x_2422.y, x_2422.z, x_2423.w);
        let x_2425 : vec4<f32> = u_xlat12;
        let x_2427 : i32 = u_xlati55;
        let x_2430 : i32 = u_xlati55;
        let x_2434 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2427 + 3i) / 4i)][((x_2430 + 3i) % 4i)];
        let x_2436 : vec3<f32> = (vec3<f32>(x_2425.x, x_2425.y, x_2425.z) + vec3<f32>(x_2434.x, x_2434.y, x_2434.w));
        let x_2437 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2436.x, x_2436.y, x_2436.z, x_2437.w);
        let x_2440 : vec4<f32> = u_xlat12;
        let x_2442 : vec4<f32> = u_xlat12;
        let x_2444 : vec2<f32> = (vec2<f32>(x_2440.x, x_2440.y) / vec2<f32>(x_2442.z, x_2442.z));
        let x_2445 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2444.x, x_2445.y, x_2444.y);
        let x_2447 : vec3<f32> = u_xlat33;
        let x_2450 : vec2<f32> = ((vec2<f32>(x_2447.x, x_2447.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2451 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2450.x, x_2451.y, x_2450.y);
        let x_2453 : vec3<f32> = u_xlat33;
        let x_2457 : vec2<f32> = clamp(vec2<f32>(x_2453.x, x_2453.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2458 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2457.x, x_2458.y, x_2457.y);
        let x_2460 : u32 = u_xlatu73;
        let x_2463 : vec4<f32> = x_2362.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2460)];
        let x_2465 : vec3<f32> = u_xlat33;
        let x_2468 : u32 = u_xlatu73;
        let x_2471 : vec4<f32> = x_2362.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2468)];
        let x_2473 : vec2<f32> = ((vec2<f32>(x_2463.x, x_2463.y) * vec2<f32>(x_2465.x, x_2465.z)) + vec2<f32>(x_2471.z, x_2471.w));
        let x_2474 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2473.x, x_2474.y, x_2473.y);
      } else {
        let x_2478 : i32 = u_xlati11;
        u_xlatb11 = (x_2478 == 1i);
        let x_2480 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_2480);
        let x_2482 : i32 = u_xlati11;
        if ((x_2482 != 0i)) {
          let x_2486 : vec3<f32> = vs_INTERP0;
          let x_2488 : i32 = u_xlati55;
          let x_2491 : i32 = u_xlati55;
          let x_2495 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2488 + 1i) / 4i)][((x_2491 + 1i) % 4i)];
          let x_2497 : vec2<f32> = (vec2<f32>(x_2486.y, x_2486.y) * vec2<f32>(x_2495.x, x_2495.y));
          let x_2498 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2497.x, x_2497.y, x_2498.z, x_2498.w);
          let x_2500 : i32 = u_xlati55;
          let x_2502 : i32 = u_xlati55;
          let x_2505 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[(x_2500 / 4i)][(x_2502 % 4i)];
          let x_2507 : vec3<f32> = vs_INTERP0;
          let x_2510 : vec4<f32> = u_xlat12;
          let x_2512 : vec2<f32> = ((vec2<f32>(x_2505.x, x_2505.y) * vec2<f32>(x_2507.x, x_2507.x)) + vec2<f32>(x_2510.x, x_2510.y));
          let x_2513 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2512.x, x_2512.y, x_2513.z, x_2513.w);
          let x_2515 : i32 = u_xlati55;
          let x_2518 : i32 = u_xlati55;
          let x_2522 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2515 + 2i) / 4i)][((x_2518 + 2i) % 4i)];
          let x_2524 : vec3<f32> = vs_INTERP0;
          let x_2527 : vec4<f32> = u_xlat12;
          let x_2529 : vec2<f32> = ((vec2<f32>(x_2522.x, x_2522.y) * vec2<f32>(x_2524.z, x_2524.z)) + vec2<f32>(x_2527.x, x_2527.y));
          let x_2530 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2529.x, x_2529.y, x_2530.z, x_2530.w);
          let x_2532 : vec4<f32> = u_xlat12;
          let x_2534 : i32 = u_xlati55;
          let x_2537 : i32 = u_xlati55;
          let x_2541 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2534 + 3i) / 4i)][((x_2537 + 3i) % 4i)];
          let x_2543 : vec2<f32> = (vec2<f32>(x_2532.x, x_2532.y) + vec2<f32>(x_2541.x, x_2541.y));
          let x_2544 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2543.x, x_2543.y, x_2544.z, x_2544.w);
          let x_2546 : vec4<f32> = u_xlat12;
          let x_2549 : vec2<f32> = ((vec2<f32>(x_2546.x, x_2546.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2550 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2549.x, x_2549.y, x_2550.z, x_2550.w);
          let x_2552 : vec4<f32> = u_xlat12;
          let x_2554 : vec2<f32> = fract(vec2<f32>(x_2552.x, x_2552.y));
          let x_2555 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2554.x, x_2554.y, x_2555.z, x_2555.w);
          let x_2557 : u32 = u_xlatu73;
          let x_2560 : vec4<f32> = x_2362.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2557)];
          let x_2562 : vec4<f32> = u_xlat12;
          let x_2565 : u32 = u_xlatu73;
          let x_2568 : vec4<f32> = x_2362.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2565)];
          let x_2570 : vec2<f32> = ((vec2<f32>(x_2560.x, x_2560.y) * vec2<f32>(x_2562.x, x_2562.y)) + vec2<f32>(x_2568.z, x_2568.w));
          let x_2571 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2570.x, x_2571.y, x_2570.y);
        } else {
          let x_2574 : vec3<f32> = vs_INTERP0;
          let x_2576 : i32 = u_xlati55;
          let x_2579 : i32 = u_xlati55;
          let x_2583 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2576 + 1i) / 4i)][((x_2579 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2574.y, x_2574.y, x_2574.y, x_2574.y) * x_2583);
          let x_2585 : i32 = u_xlati55;
          let x_2587 : i32 = u_xlati55;
          let x_2590 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[(x_2585 / 4i)][(x_2587 % 4i)];
          let x_2591 : vec3<f32> = vs_INTERP0;
          let x_2594 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2590 * vec4<f32>(x_2591.x, x_2591.x, x_2591.x, x_2591.x)) + x_2594);
          let x_2596 : i32 = u_xlati55;
          let x_2599 : i32 = u_xlati55;
          let x_2603 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2596 + 2i) / 4i)][((x_2599 + 2i) % 4i)];
          let x_2604 : vec3<f32> = vs_INTERP0;
          let x_2607 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2603 * vec4<f32>(x_2604.z, x_2604.z, x_2604.z, x_2604.z)) + x_2607);
          let x_2609 : vec4<f32> = u_xlat12;
          let x_2610 : i32 = u_xlati55;
          let x_2613 : i32 = u_xlati55;
          let x_2617 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2610 + 3i) / 4i)][((x_2613 + 3i) % 4i)];
          u_xlat12 = (x_2609 + x_2617);
          let x_2619 : vec4<f32> = u_xlat12;
          let x_2621 : vec4<f32> = u_xlat12;
          let x_2623 : vec3<f32> = (vec3<f32>(x_2619.x, x_2619.y, x_2619.z) / vec3<f32>(x_2621.w, x_2621.w, x_2621.w));
          let x_2624 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2623.x, x_2623.y, x_2623.z, x_2624.w);
          let x_2626 : vec4<f32> = u_xlat12;
          let x_2628 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_2626.x, x_2626.y, x_2626.z), vec3<f32>(x_2628.x, x_2628.y, x_2628.z));
          let x_2633 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_2633);
          let x_2636 : vec4<f32> = u_xlat11;
          let x_2638 : vec4<f32> = u_xlat12;
          let x_2640 : vec3<f32> = (vec3<f32>(x_2636.x, x_2636.x, x_2636.x) * vec3<f32>(x_2638.x, x_2638.y, x_2638.z));
          let x_2641 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2641.w);
          let x_2643 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_2643.x, x_2643.y, x_2643.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2650 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_2650, 0.000001f);
          let x_2655 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_2655);
          let x_2658 : vec4<f32> = u_xlat11;
          let x_2660 : vec4<f32> = u_xlat12;
          let x_2662 : vec3<f32> = (vec3<f32>(x_2658.x, x_2658.x, x_2658.x) * vec3<f32>(x_2660.z, x_2660.x, x_2660.y));
          let x_2663 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2662.x, x_2662.y, x_2662.z, x_2663.w);
          let x_2666 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2666);
          let x_2670 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2670, 0.0f, 1.0f);
          let x_2674 : vec4<f32> = u_xlat13;
          let x_2677 : vec4<bool> = (vec4<f32>(x_2674.y, x_2674.z, x_2674.y, x_2674.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb56 = vec2<bool>(x_2677.x, x_2677.y);
          let x_2681 : bool = u_xlatb56.x;
          if (x_2681) {
            let x_2686 : f32 = u_xlat13.x;
            x_2682 = x_2686;
          } else {
            let x_2689 : f32 = u_xlat13.x;
            x_2682 = -(x_2689);
          }
          let x_2691 : f32 = x_2682;
          u_xlat56.x = x_2691;
          let x_2694 : bool = u_xlatb56.y;
          if (x_2694) {
            let x_2699 : f32 = u_xlat13.x;
            x_2695 = x_2699;
          } else {
            let x_2702 : f32 = u_xlat13.x;
            x_2695 = -(x_2702);
          }
          let x_2704 : f32 = x_2695;
          u_xlat56.y = x_2704;
          let x_2706 : vec4<f32> = u_xlat12;
          let x_2708 : vec4<f32> = u_xlat11;
          let x_2711 : vec2<f32> = u_xlat56;
          let x_2712 : vec2<f32> = ((vec2<f32>(x_2706.x, x_2706.y) * vec2<f32>(x_2708.x, x_2708.x)) + x_2711);
          let x_2713 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2712.x, x_2713.y, x_2712.y, x_2713.w);
          let x_2715 : vec4<f32> = u_xlat11;
          let x_2718 : vec2<f32> = ((vec2<f32>(x_2715.x, x_2715.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2719 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2718.x, x_2719.y, x_2718.y, x_2719.w);
          let x_2721 : vec4<f32> = u_xlat11;
          let x_2725 : vec2<f32> = clamp(vec2<f32>(x_2721.x, x_2721.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2726 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2725.x, x_2726.y, x_2725.y, x_2726.w);
          let x_2728 : u32 = u_xlatu73;
          let x_2731 : vec4<f32> = x_2362.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2728)];
          let x_2733 : vec4<f32> = u_xlat11;
          let x_2736 : u32 = u_xlatu73;
          let x_2739 : vec4<f32> = x_2362.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2736)];
          let x_2741 : vec2<f32> = ((vec2<f32>(x_2731.x, x_2731.y) * vec2<f32>(x_2733.x, x_2733.z)) + vec2<f32>(x_2739.z, x_2739.w));
          let x_2742 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2741.x, x_2742.y, x_2741.y);
        }
      }
      let x_2749 : vec3<f32> = u_xlat33;
      let x_2752 : f32 = x_45.x_GlobalMipBias.x;
      let x_2753 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2749.x, x_2749.z), x_2752);
      u_xlat11 = x_2753;
      let x_2756 : bool = u_xlatb3.w;
      if (x_2756) {
        let x_2761 : f32 = u_xlat11.w;
        x_2757 = x_2761;
      } else {
        let x_2764 : f32 = u_xlat11.x;
        x_2757 = x_2764;
      }
      let x_2765 : f32 = x_2757;
      u_xlat77 = x_2765;
      let x_2767 : bool = u_xlatb3.x;
      if (x_2767) {
        let x_2771 : vec4<f32> = u_xlat11;
        x_2768 = vec3<f32>(x_2771.x, x_2771.y, x_2771.z);
      } else {
        let x_2774 : f32 = u_xlat77;
        x_2768 = vec3<f32>(x_2774, x_2774, x_2774);
      }
      let x_2776 : vec3<f32> = x_2768;
      let x_2777 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2776.x, x_2776.y, x_2776.z, x_2777.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2783 : vec4<f32> = u_xlat11;
    let x_2785 : u32 = u_xlatu73;
    let x_2788 : vec4<f32> = x_2249.x_AdditionalLightsColor[bitcast<i32>(x_2785)];
    let x_2790 : vec3<f32> = (vec3<f32>(x_2783.x, x_2783.y, x_2783.z) * vec3<f32>(x_2788.x, x_2788.y, x_2788.z));
    let x_2791 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2790.x, x_2790.y, x_2790.z, x_2791.w);
    let x_2793 : vec3<f32> = u_xlat6;
    let x_2795 : vec4<f32> = u_xlat11;
    let x_2797 : vec3<f32> = (vec3<f32>(x_2793.x, x_2793.x, x_2793.x) * vec3<f32>(x_2795.x, x_2795.y, x_2795.z));
    let x_2798 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2797.x, x_2797.y, x_2797.z, x_2798.w);
    let x_2800 : vec4<f32> = u_xlat1;
    let x_2802 : vec3<f32> = u_xlat32;
    u_xlat73 = dot(vec3<f32>(x_2800.x, x_2800.y, x_2800.w), x_2802);
    let x_2804 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2804, 0.0f, 1.0f);
    let x_2806 : f32 = u_xlat73;
    let x_2807 : f32 = u_xlat74;
    u_xlat73 = (x_2806 * x_2807);
    let x_2809 : f32 = u_xlat73;
    let x_2811 : vec4<f32> = u_xlat11;
    let x_2813 : vec3<f32> = (vec3<f32>(x_2809, x_2809, x_2809) * vec3<f32>(x_2811.x, x_2811.y, x_2811.z));
    let x_2814 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2813.x, x_2813.y, x_2813.z, x_2814.w);
    let x_2816 : vec3<f32> = u_xlat31;
    let x_2817 : vec4<f32> = u_xlat10;
    let x_2820 : vec3<f32> = u_xlat4;
    u_xlat31 = ((x_2816 * vec3<f32>(x_2817.x, x_2817.x, x_2817.x)) + x_2820);
    let x_2822 : vec3<f32> = u_xlat31;
    let x_2823 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(x_2822, x_2823);
    let x_2825 : f32 = u_xlat73;
    u_xlat73 = max(x_2825, 1.17549435e-37f);
    let x_2827 : f32 = u_xlat73;
    u_xlat73 = inverseSqrt(x_2827);
    let x_2829 : f32 = u_xlat73;
    let x_2831 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_2829, x_2829, x_2829) * x_2831);
    let x_2833 : vec4<f32> = u_xlat1;
    let x_2835 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(vec3<f32>(x_2833.x, x_2833.y, x_2833.w), x_2835);
    let x_2837 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2837, 0.0f, 1.0f);
    let x_2839 : vec3<f32> = u_xlat32;
    let x_2840 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2839, x_2840);
    let x_2842 : f32 = u_xlat74;
    u_xlat74 = clamp(x_2842, 0.0f, 1.0f);
    let x_2844 : f32 = u_xlat73;
    let x_2845 : f32 = u_xlat73;
    u_xlat73 = (x_2844 * x_2845);
    let x_2847 : f32 = u_xlat73;
    let x_2849 : f32 = u_xlat9.x;
    u_xlat73 = ((x_2847 * x_2849) + 1.000010014f);
    let x_2852 : f32 = u_xlat74;
    let x_2853 : f32 = u_xlat74;
    u_xlat74 = (x_2852 * x_2853);
    let x_2855 : f32 = u_xlat73;
    let x_2856 : f32 = u_xlat73;
    u_xlat73 = (x_2855 * x_2856);
    let x_2858 : f32 = u_xlat74;
    u_xlat74 = max(x_2858, 0.100000001f);
    let x_2860 : f32 = u_xlat73;
    let x_2861 : f32 = u_xlat74;
    u_xlat73 = (x_2860 * x_2861);
    let x_2863 : f32 = u_xlat70;
    let x_2864 : f32 = u_xlat73;
    u_xlat73 = (x_2863 * x_2864);
    let x_2866 : f32 = u_xlat25;
    let x_2867 : f32 = u_xlat73;
    u_xlat73 = (x_2866 / x_2867);
    let x_2869 : vec3<f32> = u_xlat0;
    let x_2870 : f32 = u_xlat73;
    let x_2873 : vec3<f32> = u_xlat7;
    u_xlat31 = ((x_2869 * vec3<f32>(x_2870, x_2870, x_2870)) + x_2873);
    let x_2875 : vec3<f32> = u_xlat31;
    let x_2876 : vec4<f32> = u_xlat11;
    let x_2879 : vec4<f32> = u_xlat8;
    let x_2881 : vec3<f32> = ((x_2875 * vec3<f32>(x_2876.x, x_2876.y, x_2876.z)) + vec3<f32>(x_2879.x, x_2879.y, x_2879.z));
    let x_2882 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2881.x, x_2881.y, x_2881.z, x_2882.w);

    continuing {
      let x_2884 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2884 + bitcast<u32>(1i));
    }
  }
  let x_2886 : vec4<f32> = u_xlat5;
  let x_2888 : f32 = u_xlat47;
  let x_2891 : vec3<f32> = u_xlat28;
  u_xlat0 = ((vec3<f32>(x_2886.x, x_2886.y, x_2886.z) * vec3<f32>(x_2888, x_2888, x_2888)) + x_2891);
  let x_2893 : vec4<f32> = u_xlat8;
  let x_2895 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2893.x, x_2893.y, x_2893.z) + x_2895);
  let x_2897 : vec4<f32> = u_xlat2;
  let x_2899 : f32 = u_xlat45;
  let x_2902 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2897.x, x_2897.y, x_2897.z) * vec3<f32>(x_2899, x_2899, x_2899)) + x_2902);
  let x_2904 : f32 = u_xlat66;
  let x_2905 : f32 = u_xlat66;
  u_xlat66 = (x_2904 * -(x_2905));
  let x_2908 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2908);
  let x_2910 : vec3<f32> = u_xlat0;
  let x_2913 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_2910 + -(vec3<f32>(x_2913.x, x_2913.y, x_2913.z)));
  let x_2919 : f32 = u_xlat66;
  let x_2921 : vec3<f32> = u_xlat0;
  let x_2924 : vec4<f32> = x_45.unity_FogColor;
  let x_2926 : vec3<f32> = ((vec3<f32>(x_2919, x_2919, x_2919) * x_2921) + vec3<f32>(x_2924.x, x_2924.y, x_2924.z));
  let x_2927 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2926.x, x_2926.y, x_2926.z, x_2927.w);
  let x_2932 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_2934 : f32 = x_120.unity_RenderingLayer.x;
  u_xlatu0 = (x_2932 & bitcast<u32>(x_2934));
  let x_2937 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2937);
  let x_2942 : f32 = u_xlat0.x;
  let x_2944 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2942 * x_2944);
  let x_2949 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2949, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2954 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2954.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

