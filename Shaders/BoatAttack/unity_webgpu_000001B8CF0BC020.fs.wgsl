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

@group(0) @binding(5) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(7) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(8) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_120 : UnityPerDraw;

@group(0) @binding(6) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_541 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1846 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2294 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2407 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat4 : vec4<f32>;
  var u_xlatb66 : bool;
  var u_xlat5 : vec3<f32>;
  var x_289 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat69 : f32;
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
  var x_1929 : f32;
  var x_1940 : vec3<f32>;
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
  var x_2727 : f32;
  var x_2740 : f32;
  var u_xlat77 : f32;
  var x_2802 : f32;
  var x_2813 : vec3<f32>;
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
  let x_185 : vec3<f32> = (vec3<f32>(x_181.z, x_181.x, x_181.y) * vec3<f32>(x_183.y, x_183.z, x_183.x));
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec3<f32> = vs_INTERP1;
  let x_190 : vec4<f32> = vs_INTERP2;
  let x_193 : vec4<f32> = u_xlat4;
  let x_196 : vec3<f32> = ((vec3<f32>(x_188.y, x_188.z, x_188.x) * vec3<f32>(x_190.z, x_190.x, x_190.y)) + -(vec3<f32>(x_193.x, x_193.y, x_193.z)));
  let x_197 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_199 : f32 = u_xlat67;
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec3<f32> = (vec3<f32>(x_199, x_199, x_199) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat1;
  let x_208 : vec4<f32> = u_xlat4;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.y, x_206.y, x_206.y) * vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec4<f32> = u_xlat1;
  let x_215 : vec4<f32> = vs_INTERP2;
  let x_218 : vec4<f32> = u_xlat4;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.x, x_213.x) * vec3<f32>(x_215.x, x_215.y, x_215.z)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_220.z);
  let x_223 : f32 = u_xlat66;
  let x_225 : vec3<f32> = vs_INTERP1;
  let x_227 : vec4<f32> = u_xlat1;
  let x_229 : vec3<f32> = ((vec3<f32>(x_223, x_223, x_223) * x_225) + vec3<f32>(x_227.x, x_227.y, x_227.w));
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_229.x, x_229.y, x_230.z, x_229.z);
  let x_232 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat66 = dot(vec3<f32>(x_232.x, x_232.y, x_232.w), vec3<f32>(x_234.x, x_234.y, x_234.w));
  let x_237 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_237);
  let x_239 : f32 = u_xlat66;
  let x_241 : vec4<f32> = u_xlat1;
  let x_243 : vec3<f32> = (vec3<f32>(x_239, x_239, x_239) * vec3<f32>(x_241.x, x_241.y, x_241.w));
  let x_244 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_249 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb66 = (x_249 == 0.0f);
  let x_252 : vec3<f32> = vs_INTERP0;
  let x_257 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_258 : vec3<f32> = (-(x_252) + x_257);
  let x_259 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_258.x, x_258.y, x_259.z, x_258.z);
  let x_261 : vec4<f32> = u_xlat1;
  let x_263 : vec4<f32> = u_xlat1;
  u_xlat68 = dot(vec3<f32>(x_261.x, x_261.y, x_261.w), vec3<f32>(x_263.x, x_263.y, x_263.w));
  let x_266 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_266);
  let x_268 : vec4<f32> = u_xlat1;
  let x_270 : f32 = u_xlat68;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.w) * vec3<f32>(x_270, x_270, x_270));
  let x_273 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_272.x, x_272.y, x_273.z, x_272.z);
  let x_278 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_278;
  let x_281 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_281;
  let x_286 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_286;
  let x_288 : bool = u_xlatb66;
  if (x_288) {
    let x_292 : vec4<f32> = u_xlat1;
    x_289 = vec3<f32>(x_292.x, x_292.y, x_292.w);
  } else {
    let x_295 : vec3<f32> = u_xlat5;
    x_289 = x_295;
  }
  let x_296 : vec3<f32> = x_289;
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_296.x, x_296.y, x_297.z, x_296.z);
  let x_300 : f32 = vs_INTERP0.y;
  let x_302 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat66 = (x_300 * x_302);
  let x_305 : f32 = x_45.unity_MatrixV[0i].z;
  let x_307 : f32 = vs_INTERP0.x;
  let x_309 : f32 = u_xlat66;
  u_xlat66 = ((x_305 * x_307) + x_309);
  let x_312 : f32 = x_45.unity_MatrixV[2i].z;
  let x_314 : f32 = vs_INTERP0.z;
  let x_316 : f32 = u_xlat66;
  u_xlat66 = ((x_312 * x_314) + x_316);
  let x_318 : f32 = u_xlat66;
  let x_320 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat66 = (x_318 + x_320);
  let x_322 : f32 = u_xlat66;
  let x_326 : f32 = x_45.x_ProjectionParams.y;
  u_xlat66 = (-(x_322) + -(x_326));
  let x_329 : f32 = u_xlat66;
  u_xlat66 = max(x_329, 0.0f);
  let x_331 : f32 = u_xlat66;
  let x_334 : f32 = x_45.unity_FogParams.x;
  u_xlat66 = (x_331 * x_334);
  u_xlat4.w = 1.0f;
  let x_339 : vec4<f32> = x_120.unity_SHAr;
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_339, x_340);
  let x_345 : vec4<f32> = x_120.unity_SHAg;
  let x_346 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_345, x_346);
  let x_351 : vec4<f32> = x_120.unity_SHAb;
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_351, x_352);
  let x_356 : vec4<f32> = u_xlat4;
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_356.y, x_356.z, x_356.z, x_356.x) * vec4<f32>(x_358.x, x_358.y, x_358.z, x_358.z));
  let x_364 : vec4<f32> = x_120.unity_SHBr;
  let x_365 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_364, x_365);
  let x_370 : vec4<f32> = x_120.unity_SHBg;
  let x_371 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_370, x_371);
  let x_376 : vec4<f32> = x_120.unity_SHBb;
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_376, x_377);
  let x_381 : f32 = u_xlat4.y;
  let x_383 : f32 = u_xlat4.y;
  u_xlat68 = (x_381 * x_383);
  let x_386 : f32 = u_xlat4.x;
  let x_388 : f32 = u_xlat4.x;
  let x_390 : f32 = u_xlat68;
  u_xlat68 = ((x_386 * x_388) + -(x_390));
  let x_395 : vec4<f32> = x_120.unity_SHC;
  let x_397 : f32 = u_xlat68;
  let x_400 : vec3<f32> = u_xlat7;
  let x_401 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397, x_397, x_397)) + x_400);
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec3<f32> = u_xlat5;
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_404 + vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_408, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_413 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_414 : vec2<f32> = vec2<f32>(x_413.x, x_413.y);
  let x_418 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_414.x, x_414.y));
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat6;
  let x_423 : vec4<f32> = hlslcc_FragCoord;
  let x_425 : vec2<f32> = (vec2<f32>(x_421.x, x_421.y) * vec2<f32>(x_423.x, x_423.y));
  let x_426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
  let x_429 : f32 = u_xlat6.y;
  let x_432 : f32 = x_45.x_ScaleBiasRt.x;
  let x_435 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat68 = ((x_429 * x_432) + x_435);
  let x_437 : f32 = u_xlat68;
  u_xlat6.z = (-(x_437) + 1.0f);
  let x_441 : vec3<f32> = u_xlat3;
  let x_442 : vec2<f32> = vec2<f32>(x_441.x, x_441.y);
  let x_443 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_442.x, x_442.y, x_443.z);
  let x_445 : vec3<f32> = u_xlat3;
  let x_449 : vec2<f32> = clamp(vec2<f32>(x_445.x, x_445.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_450 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_449.x, x_449.y, x_450.z);
  let x_453 : f32 = u_xlat3.x;
  u_xlat68 = ((-(x_453) * 0.959999979f) + 0.959999979f);
  let x_459 : f32 = u_xlat68;
  let x_462 : f32 = u_xlat3.y;
  u_xlat69 = (-(x_459) + x_462);
  let x_464 : vec3<f32> = u_xlat0;
  let x_465 : f32 = u_xlat68;
  u_xlat7 = (x_464 * vec3<f32>(x_465, x_465, x_465));
  let x_468 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_468 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_472 : vec3<f32> = u_xlat3;
  let x_474 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_472.x, x_472.x, x_472.x) * x_474) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_480 : f32 = u_xlat3.y;
  u_xlat68 = (-(x_480) + 1.0f);
  let x_483 : f32 = u_xlat68;
  let x_484 : f32 = u_xlat68;
  u_xlat3.x = (x_483 * x_484);
  let x_488 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_488, 0.0078125f);
  let x_494 : f32 = u_xlat3.x;
  let x_496 : f32 = u_xlat3.x;
  u_xlat25 = (x_494 * x_496);
  let x_498 : f32 = u_xlat69;
  u_xlat69 = (x_498 + 1.0f);
  let x_500 : f32 = u_xlat69;
  u_xlat69 = min(x_500, 1.0f);
  let x_504 : f32 = u_xlat3.x;
  u_xlat70 = ((x_504 * 4.0f) + 2.0f);
  let x_514 : vec4<f32> = u_xlat6;
  let x_517 : f32 = x_45.x_GlobalMipBias.x;
  let x_518 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_514.x, x_514.z), x_517);
  u_xlat71 = x_518.x;
  let x_520 : f32 = u_xlat71;
  u_xlat6.x = (x_520 + -1.0f);
  let x_525 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_527 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_525 * x_527) + 1.0f);
  let x_533 : f32 = u_xlat3.z;
  let x_534 : f32 = u_xlat71;
  u_xlat47 = min(x_533, x_534);
  let x_543 : f32 = x_541.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_543);
  let x_545 : bool = u_xlatb71;
  if (x_545) {
    let x_549 : f32 = x_541.x_MainLightShadowParams.y;
    u_xlatb71 = (x_549 == 1.0f);
    let x_551 : bool = u_xlatb71;
    if (x_551) {
      let x_556 : vec4<f32> = vs_INTERP8;
      let x_560 : vec4<f32> = x_541.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_556.x, x_556.y, x_556.x, x_556.y) + x_560);
      let x_563 : vec4<f32> = u_xlat8;
      let x_564 : vec2<f32> = vec2<f32>(x_563.x, x_563.y);
      let x_566 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_564.x, x_564.y, x_566);
      let x_579 : vec3<f32> = txVec0;
      let x_581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_579.xy, x_579.z);
      u_xlat9.x = x_581;
      let x_584 : vec4<f32> = u_xlat8;
      let x_585 : vec2<f32> = vec2<f32>(x_584.z, x_584.w);
      let x_587 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_585.x, x_585.y, x_587);
      let x_594 : vec3<f32> = txVec1;
      let x_596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_594.xy, x_594.z);
      u_xlat9.y = x_596;
      let x_598 : vec4<f32> = vs_INTERP8;
      let x_602 : vec4<f32> = x_541.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_598.x, x_598.y, x_598.x, x_598.y) + x_602);
      let x_605 : vec4<f32> = u_xlat8;
      let x_606 : vec2<f32> = vec2<f32>(x_605.x, x_605.y);
      let x_608 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_606.x, x_606.y, x_608);
      let x_615 : vec3<f32> = txVec2;
      let x_617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_615.xy, x_615.z);
      u_xlat9.z = x_617;
      let x_620 : vec4<f32> = u_xlat8;
      let x_621 : vec2<f32> = vec2<f32>(x_620.z, x_620.w);
      let x_623 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_621.x, x_621.y, x_623);
      let x_630 : vec3<f32> = txVec3;
      let x_632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_630.xy, x_630.z);
      u_xlat9.w = x_632;
      let x_634 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_634, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_643 : f32 = x_541.x_MainLightShadowParams.y;
      u_xlatb28.x = (x_643 == 2.0f);
      let x_647 : bool = u_xlatb28.x;
      if (x_647) {
        let x_651 : vec4<f32> = vs_INTERP8;
        let x_654 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_659 : vec2<f32> = ((vec2<f32>(x_651.x, x_651.y) * vec2<f32>(x_654.z, x_654.w)) + vec2<f32>(0.5f, 0.5f));
        let x_660 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_659.x, x_659.y, x_660.z);
        let x_662 : vec3<f32> = u_xlat28;
        let x_664 : vec2<f32> = floor(vec2<f32>(x_662.x, x_662.y));
        let x_665 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_664.x, x_664.y, x_665.z);
        let x_667 : vec4<f32> = vs_INTERP8;
        let x_670 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_673 : vec3<f32> = u_xlat28;
        let x_676 : vec2<f32> = ((vec2<f32>(x_667.x, x_667.y) * vec2<f32>(x_670.z, x_670.w)) + -(vec2<f32>(x_673.x, x_673.y)));
        let x_677 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
        let x_679 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_679.x, x_679.x, x_679.y, x_679.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_684 : vec4<f32> = u_xlat9;
        let x_686 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_684.x, x_684.x, x_684.z, x_684.z) * vec4<f32>(x_686.x, x_686.x, x_686.z, x_686.z));
        let x_691 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_691.y, x_691.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_696 : vec4<f32> = u_xlat10;
        let x_699 : vec4<f32> = u_xlat8;
        let x_702 : vec2<f32> = ((vec2<f32>(x_696.x, x_696.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_699.x, x_699.y)));
        let x_703 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_702.x, x_703.y, x_702.y, x_703.w);
        let x_705 : vec4<f32> = u_xlat8;
        let x_708 : vec2<f32> = (-(vec2<f32>(x_705.x, x_705.y)) + vec2<f32>(1.0f, 1.0f));
        let x_709 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_708.x, x_708.y, x_709.z, x_709.w);
        let x_712 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_712.x, x_712.y), vec2<f32>(0.0f, 0.0f));
        let x_716 : vec2<f32> = u_xlat54;
        let x_718 : vec2<f32> = u_xlat54;
        let x_720 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_716) * x_718) + vec2<f32>(x_720.x, x_720.y));
        let x_723 : vec4<f32> = u_xlat8;
        let x_725 : vec2<f32> = max(vec2<f32>(x_723.x, x_723.y), vec2<f32>(0.0f, 0.0f));
        let x_726 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat8;
        let x_731 : vec4<f32> = u_xlat8;
        let x_734 : vec4<f32> = u_xlat9;
        let x_736 : vec2<f32> = ((-(vec2<f32>(x_728.x, x_728.y)) * vec2<f32>(x_731.x, x_731.y)) + vec2<f32>(x_734.y, x_734.w));
        let x_737 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_736.x, x_736.y, x_737.z, x_737.w);
        let x_739 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_739 + vec2<f32>(1.0f, 1.0f));
        let x_741 : vec4<f32> = u_xlat8;
        let x_743 : vec2<f32> = (vec2<f32>(x_741.x, x_741.y) + vec2<f32>(1.0f, 1.0f));
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_743.x, x_743.y, x_744.z, x_744.w);
        let x_747 : vec4<f32> = u_xlat9;
        let x_751 : vec2<f32> = (vec2<f32>(x_747.x, x_747.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_752 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
        let x_755 : vec4<f32> = u_xlat10;
        let x_757 : vec2<f32> = (vec2<f32>(x_755.x, x_755.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_758 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
        let x_760 : vec2<f32> = u_xlat54;
        let x_761 : vec2<f32> = (x_760 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_762 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_761.x, x_761.y, x_762.z, x_762.w);
        let x_765 : vec4<f32> = u_xlat8;
        let x_767 : vec2<f32> = (vec2<f32>(x_765.x, x_765.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_768 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_767.x, x_767.y, x_768.z, x_768.w);
        let x_770 : vec4<f32> = u_xlat9;
        let x_772 : vec2<f32> = (vec2<f32>(x_770.y, x_770.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_773 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_772.x, x_772.y, x_773.z, x_773.w);
        let x_776 : f32 = u_xlat10.x;
        u_xlat11.z = x_776;
        let x_779 : f32 = u_xlat8.x;
        u_xlat11.w = x_779;
        let x_782 : f32 = u_xlat13.x;
        u_xlat12.z = x_782;
        let x_785 : f32 = u_xlat52.x;
        u_xlat12.w = x_785;
        let x_787 : vec4<f32> = u_xlat11;
        let x_789 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_787.z, x_787.w, x_787.x, x_787.z) + vec4<f32>(x_789.z, x_789.w, x_789.x, x_789.z));
        let x_793 : f32 = u_xlat11.y;
        u_xlat10.z = x_793;
        let x_796 : f32 = u_xlat8.y;
        u_xlat10.w = x_796;
        let x_799 : f32 = u_xlat12.y;
        u_xlat13.z = x_799;
        let x_802 : f32 = u_xlat52.y;
        u_xlat13.w = x_802;
        let x_804 : vec4<f32> = u_xlat10;
        let x_806 : vec4<f32> = u_xlat13;
        let x_808 : vec3<f32> = (vec3<f32>(x_804.z, x_804.y, x_804.w) + vec3<f32>(x_806.z, x_806.y, x_806.w));
        let x_809 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
        let x_811 : vec4<f32> = u_xlat12;
        let x_813 : vec4<f32> = u_xlat9;
        let x_815 : vec3<f32> = (vec3<f32>(x_811.x, x_811.z, x_811.w) / vec3<f32>(x_813.z, x_813.w, x_813.y));
        let x_816 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
        let x_818 : vec4<f32> = u_xlat10;
        let x_824 : vec3<f32> = (vec3<f32>(x_818.x, x_818.y, x_818.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_825 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
        let x_827 : vec4<f32> = u_xlat13;
        let x_829 : vec4<f32> = u_xlat8;
        let x_831 : vec3<f32> = (vec3<f32>(x_827.z, x_827.y, x_827.w) / vec3<f32>(x_829.x, x_829.y, x_829.z));
        let x_832 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
        let x_834 : vec4<f32> = u_xlat11;
        let x_836 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_837 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
        let x_839 : vec4<f32> = u_xlat10;
        let x_842 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_844 : vec3<f32> = (vec3<f32>(x_839.y, x_839.x, x_839.z) * vec3<f32>(x_842.x, x_842.x, x_842.x));
        let x_845 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
        let x_847 : vec4<f32> = u_xlat11;
        let x_850 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_852 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(x_850.y, x_850.y, x_850.y));
        let x_853 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
        let x_856 : f32 = u_xlat11.x;
        u_xlat10.w = x_856;
        let x_858 : vec3<f32> = u_xlat28;
        let x_861 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_864 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_858.x, x_858.y, x_858.x, x_858.y) * vec4<f32>(x_861.x, x_861.y, x_861.x, x_861.y)) + vec4<f32>(x_864.y, x_864.w, x_864.x, x_864.w));
        let x_867 : vec3<f32> = u_xlat28;
        let x_870 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_873 : vec4<f32> = u_xlat10;
        let x_875 : vec2<f32> = ((vec2<f32>(x_867.x, x_867.y) * vec2<f32>(x_870.x, x_870.y)) + vec2<f32>(x_873.z, x_873.w));
        let x_876 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_879 : f32 = u_xlat10.y;
        u_xlat11.w = x_879;
        let x_881 : vec4<f32> = u_xlat11;
        let x_882 : vec2<f32> = vec2<f32>(x_881.y, x_881.z);
        let x_883 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_883.x, x_882.x, x_883.z, x_882.y);
        let x_886 : vec3<f32> = u_xlat28;
        let x_889 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_892 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_886.x, x_886.y, x_886.x, x_886.y) * vec4<f32>(x_889.x, x_889.y, x_889.x, x_889.y)) + vec4<f32>(x_892.x, x_892.y, x_892.z, x_892.y));
        let x_895 : vec3<f32> = u_xlat28;
        let x_898 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_901 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_895.x, x_895.y, x_895.x, x_895.y) * vec4<f32>(x_898.x, x_898.y, x_898.x, x_898.y)) + vec4<f32>(x_901.w, x_901.y, x_901.w, x_901.z));
        let x_904 : vec3<f32> = u_xlat28;
        let x_907 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_910 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_904.x, x_904.y, x_904.x, x_904.y) * vec4<f32>(x_907.x, x_907.y, x_907.x, x_907.y)) + vec4<f32>(x_910.x, x_910.w, x_910.z, x_910.w));
        let x_914 : vec4<f32> = u_xlat8;
        let x_916 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_914.x, x_914.x, x_914.x, x_914.y) * vec4<f32>(x_916.z, x_916.w, x_916.y, x_916.z));
        let x_920 : vec4<f32> = u_xlat8;
        let x_922 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_920.y, x_920.y, x_920.z, x_920.z) * x_922);
        let x_925 : f32 = u_xlat8.z;
        let x_927 : f32 = u_xlat9.y;
        u_xlat28.x = (x_925 * x_927);
        let x_931 : vec4<f32> = u_xlat12;
        let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
        let x_934 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_932.x, x_932.y, x_934);
        let x_942 : vec3<f32> = txVec4;
        let x_944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_942.xy, x_942.z);
        u_xlat50 = x_944;
        let x_946 : vec4<f32> = u_xlat12;
        let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
        let x_949 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_947.x, x_947.y, x_949);
        let x_957 : vec3<f32> = txVec5;
        let x_959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_957.xy, x_957.z);
        u_xlat72 = x_959;
        let x_960 : f32 = u_xlat72;
        let x_962 : f32 = u_xlat15.y;
        u_xlat72 = (x_960 * x_962);
        let x_965 : f32 = u_xlat15.x;
        let x_966 : f32 = u_xlat50;
        let x_968 : f32 = u_xlat72;
        u_xlat50 = ((x_965 * x_966) + x_968);
        let x_971 : vec4<f32> = u_xlat13;
        let x_972 : vec2<f32> = vec2<f32>(x_971.x, x_971.y);
        let x_974 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_972.x, x_972.y, x_974);
        let x_981 : vec3<f32> = txVec6;
        let x_983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_981.xy, x_981.z);
        u_xlat72 = x_983;
        let x_985 : f32 = u_xlat15.z;
        let x_986 : f32 = u_xlat72;
        let x_988 : f32 = u_xlat50;
        u_xlat50 = ((x_985 * x_986) + x_988);
        let x_991 : vec4<f32> = u_xlat11;
        let x_992 : vec2<f32> = vec2<f32>(x_991.x, x_991.y);
        let x_994 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_992.x, x_992.y, x_994);
        let x_1001 : vec3<f32> = txVec7;
        let x_1003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1001.xy, x_1001.z);
        u_xlat72 = x_1003;
        let x_1005 : f32 = u_xlat15.w;
        let x_1006 : f32 = u_xlat72;
        let x_1008 : f32 = u_xlat50;
        u_xlat50 = ((x_1005 * x_1006) + x_1008);
        let x_1011 : vec4<f32> = u_xlat14;
        let x_1012 : vec2<f32> = vec2<f32>(x_1011.x, x_1011.y);
        let x_1014 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1012.x, x_1012.y, x_1014);
        let x_1021 : vec3<f32> = txVec8;
        let x_1023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1021.xy, x_1021.z);
        u_xlat72 = x_1023;
        let x_1025 : f32 = u_xlat16.x;
        let x_1026 : f32 = u_xlat72;
        let x_1028 : f32 = u_xlat50;
        u_xlat50 = ((x_1025 * x_1026) + x_1028);
        let x_1031 : vec4<f32> = u_xlat14;
        let x_1032 : vec2<f32> = vec2<f32>(x_1031.z, x_1031.w);
        let x_1034 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1032.x, x_1032.y, x_1034);
        let x_1041 : vec3<f32> = txVec9;
        let x_1043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1041.xy, x_1041.z);
        u_xlat72 = x_1043;
        let x_1045 : f32 = u_xlat16.y;
        let x_1046 : f32 = u_xlat72;
        let x_1048 : f32 = u_xlat50;
        u_xlat50 = ((x_1045 * x_1046) + x_1048);
        let x_1051 : vec4<f32> = u_xlat11;
        let x_1052 : vec2<f32> = vec2<f32>(x_1051.z, x_1051.w);
        let x_1054 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1052.x, x_1052.y, x_1054);
        let x_1061 : vec3<f32> = txVec10;
        let x_1063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1061.xy, x_1061.z);
        u_xlat72 = x_1063;
        let x_1065 : f32 = u_xlat16.z;
        let x_1066 : f32 = u_xlat72;
        let x_1068 : f32 = u_xlat50;
        u_xlat50 = ((x_1065 * x_1066) + x_1068);
        let x_1071 : vec4<f32> = u_xlat10;
        let x_1072 : vec2<f32> = vec2<f32>(x_1071.x, x_1071.y);
        let x_1074 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1072.x, x_1072.y, x_1074);
        let x_1081 : vec3<f32> = txVec11;
        let x_1083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1081.xy, x_1081.z);
        u_xlat72 = x_1083;
        let x_1085 : f32 = u_xlat16.w;
        let x_1086 : f32 = u_xlat72;
        let x_1088 : f32 = u_xlat50;
        u_xlat50 = ((x_1085 * x_1086) + x_1088);
        let x_1091 : vec4<f32> = u_xlat10;
        let x_1092 : vec2<f32> = vec2<f32>(x_1091.z, x_1091.w);
        let x_1094 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1092.x, x_1092.y, x_1094);
        let x_1101 : vec3<f32> = txVec12;
        let x_1103 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1101.xy, x_1101.z);
        u_xlat72 = x_1103;
        let x_1105 : f32 = u_xlat28.x;
        let x_1106 : f32 = u_xlat72;
        let x_1108 : f32 = u_xlat50;
        u_xlat71 = ((x_1105 * x_1106) + x_1108);
      } else {
        let x_1111 : vec4<f32> = vs_INTERP8;
        let x_1114 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1117 : vec2<f32> = ((vec2<f32>(x_1111.x, x_1111.y) * vec2<f32>(x_1114.z, x_1114.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1118 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1117.x, x_1117.y, x_1118.z);
        let x_1120 : vec3<f32> = u_xlat28;
        let x_1122 : vec2<f32> = floor(vec2<f32>(x_1120.x, x_1120.y));
        let x_1123 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1122.x, x_1122.y, x_1123.z);
        let x_1125 : vec4<f32> = vs_INTERP8;
        let x_1128 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1131 : vec3<f32> = u_xlat28;
        let x_1134 : vec2<f32> = ((vec2<f32>(x_1125.x, x_1125.y) * vec2<f32>(x_1128.z, x_1128.w)) + -(vec2<f32>(x_1131.x, x_1131.y)));
        let x_1135 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1134.x, x_1134.y, x_1135.z, x_1135.w);
        let x_1137 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1137.x, x_1137.x, x_1137.y, x_1137.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1140 : vec4<f32> = u_xlat9;
        let x_1142 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1140.x, x_1140.x, x_1140.z, x_1140.z) * vec4<f32>(x_1142.x, x_1142.x, x_1142.z, x_1142.z));
        let x_1145 : vec4<f32> = u_xlat10;
        let x_1149 : vec2<f32> = (vec2<f32>(x_1145.y, x_1145.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1150 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1150.x, x_1149.x, x_1150.z, x_1149.y);
        let x_1152 : vec4<f32> = u_xlat10;
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1152.x, x_1152.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1155.x, x_1155.y)));
        let x_1159 : vec4<f32> = u_xlat8;
        let x_1162 : vec2<f32> = (-(vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1163 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1162.x, x_1163.y, x_1162.y, x_1163.w);
        let x_1165 : vec4<f32> = u_xlat8;
        let x_1167 : vec2<f32> = min(vec2<f32>(x_1165.x, x_1165.y), vec2<f32>(0.0f, 0.0f));
        let x_1168 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1167.x, x_1167.y, x_1168.z, x_1168.w);
        let x_1170 : vec4<f32> = u_xlat10;
        let x_1173 : vec4<f32> = u_xlat10;
        let x_1176 : vec4<f32> = u_xlat9;
        let x_1178 : vec2<f32> = ((-(vec2<f32>(x_1170.x, x_1170.y)) * vec2<f32>(x_1173.x, x_1173.y)) + vec2<f32>(x_1176.x, x_1176.z));
        let x_1179 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1179.w);
        let x_1181 : vec4<f32> = u_xlat8;
        let x_1183 : vec2<f32> = max(vec2<f32>(x_1181.x, x_1181.y), vec2<f32>(0.0f, 0.0f));
        let x_1184 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1183.x, x_1183.y, x_1184.z, x_1184.w);
        let x_1186 : vec4<f32> = u_xlat10;
        let x_1189 : vec4<f32> = u_xlat10;
        let x_1192 : vec4<f32> = u_xlat9;
        let x_1194 : vec2<f32> = ((-(vec2<f32>(x_1186.x, x_1186.y)) * vec2<f32>(x_1189.x, x_1189.y)) + vec2<f32>(x_1192.y, x_1192.w));
        let x_1195 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1195.x, x_1194.x, x_1195.z, x_1194.y);
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1197 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1201 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1201 * 0.081632003f);
        let x_1205 : vec2<f32> = u_xlat52;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1205.y, x_1205.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1209 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1211 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1211.x, x_1211.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1215 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1215 * 0.081632003f);
        let x_1219 : f32 = u_xlat12.y;
        u_xlat10.x = x_1219;
        let x_1221 : vec4<f32> = u_xlat8;
        let x_1228 : vec2<f32> = ((vec2<f32>(x_1221.x, x_1221.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1229 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1229.x, x_1228.x, x_1229.z, x_1228.y);
        let x_1231 : vec4<f32> = u_xlat8;
        let x_1235 : vec2<f32> = ((vec2<f32>(x_1231.x, x_1231.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1236 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1235.x, x_1236.y, x_1235.y, x_1236.w);
        let x_1239 : f32 = u_xlat52.x;
        u_xlat9.y = x_1239;
        let x_1242 : f32 = u_xlat11.y;
        u_xlat9.w = x_1242;
        let x_1244 : vec4<f32> = u_xlat9;
        let x_1245 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1244 + x_1245);
        let x_1247 : vec4<f32> = u_xlat8;
        let x_1250 : vec2<f32> = ((vec2<f32>(x_1247.y, x_1247.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1251 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1251.x, x_1250.x, x_1251.z, x_1250.y);
        let x_1253 : vec4<f32> = u_xlat8;
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1253.y, x_1253.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1257 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1256.x, x_1257.y, x_1256.y, x_1257.w);
        let x_1260 : f32 = u_xlat52.y;
        u_xlat11.y = x_1260;
        let x_1262 : vec4<f32> = u_xlat11;
        let x_1263 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1262 + x_1263);
        let x_1265 : vec4<f32> = u_xlat9;
        let x_1266 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1265 / x_1266);
        let x_1268 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1268 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1274 : vec4<f32> = u_xlat11;
        let x_1275 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1274 / x_1275);
        let x_1277 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1277 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1279 : vec4<f32> = u_xlat9;
        let x_1282 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1279.w, x_1279.x, x_1279.y, x_1279.z) * vec4<f32>(x_1282.x, x_1282.x, x_1282.x, x_1282.x));
        let x_1285 : vec4<f32> = u_xlat11;
        let x_1288 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1285.x, x_1285.w, x_1285.y, x_1285.z) * vec4<f32>(x_1288.y, x_1288.y, x_1288.y, x_1288.y));
        let x_1291 : vec4<f32> = u_xlat9;
        let x_1292 : vec3<f32> = vec3<f32>(x_1291.y, x_1291.z, x_1291.w);
        let x_1293 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1292.x, x_1293.y, x_1292.y, x_1292.z);
        let x_1296 : f32 = u_xlat11.x;
        u_xlat12.y = x_1296;
        let x_1298 : vec3<f32> = u_xlat28;
        let x_1301 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y) * vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y)) + vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1304.y));
        let x_1307 : vec3<f32> = u_xlat28;
        let x_1310 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat12;
        let x_1315 : vec2<f32> = ((vec2<f32>(x_1307.x, x_1307.y) * vec2<f32>(x_1310.x, x_1310.y)) + vec2<f32>(x_1313.w, x_1313.y));
        let x_1316 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1319 : f32 = u_xlat12.y;
        u_xlat9.y = x_1319;
        let x_1322 : f32 = u_xlat11.z;
        u_xlat12.y = x_1322;
        let x_1324 : vec3<f32> = u_xlat28;
        let x_1327 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1324.x, x_1324.y, x_1324.x, x_1324.y) * vec4<f32>(x_1327.x, x_1327.y, x_1327.x, x_1327.y)) + vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1330.y));
        let x_1334 : vec3<f32> = u_xlat28;
        let x_1337 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(x_1337.x, x_1337.y)) + vec2<f32>(x_1340.w, x_1340.y));
        let x_1344 : f32 = u_xlat12.y;
        u_xlat9.z = x_1344;
        let x_1346 : vec3<f32> = u_xlat28;
        let x_1349 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1352 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1346.x, x_1346.y, x_1346.x, x_1346.y) * vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y)) + vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.z));
        let x_1356 : f32 = u_xlat11.w;
        u_xlat12.y = x_1356;
        let x_1359 : vec3<f32> = u_xlat28;
        let x_1362 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y) * vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y)) + vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1365.y));
        let x_1369 : vec3<f32> = u_xlat28;
        let x_1372 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat12;
        let x_1377 : vec2<f32> = ((vec2<f32>(x_1369.x, x_1369.y) * vec2<f32>(x_1372.x, x_1372.y)) + vec2<f32>(x_1375.w, x_1375.y));
        let x_1378 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1377.x, x_1377.y, x_1378.z);
        let x_1381 : f32 = u_xlat12.y;
        u_xlat9.w = x_1381;
        let x_1384 : vec3<f32> = u_xlat28;
        let x_1387 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1390 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1384.x, x_1384.y) * vec2<f32>(x_1387.x, x_1387.y)) + vec2<f32>(x_1390.x, x_1390.w));
        let x_1393 : vec4<f32> = u_xlat12;
        let x_1394 : vec3<f32> = vec3<f32>(x_1393.x, x_1393.z, x_1393.w);
        let x_1395 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1394.x, x_1395.y, x_1394.y, x_1394.z);
        let x_1397 : vec3<f32> = u_xlat28;
        let x_1400 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1403 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1397.x, x_1397.y, x_1397.x, x_1397.y) * vec4<f32>(x_1400.x, x_1400.y, x_1400.x, x_1400.y)) + vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1403.y));
        let x_1407 : vec3<f32> = u_xlat28;
        let x_1410 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1413 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1407.x, x_1407.y) * vec2<f32>(x_1410.x, x_1410.y)) + vec2<f32>(x_1413.w, x_1413.y));
        let x_1417 : f32 = u_xlat9.x;
        u_xlat11.x = x_1417;
        let x_1419 : vec3<f32> = u_xlat28;
        let x_1422 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1425 : vec4<f32> = u_xlat11;
        let x_1427 : vec2<f32> = ((vec2<f32>(x_1419.x, x_1419.y) * vec2<f32>(x_1422.x, x_1422.y)) + vec2<f32>(x_1425.x, x_1425.y));
        let x_1428 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1427.x, x_1427.y, x_1428.z);
        let x_1431 : vec4<f32> = u_xlat8;
        let x_1433 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1431.x, x_1431.x, x_1431.x, x_1431.x) * x_1433);
        let x_1436 : vec4<f32> = u_xlat8;
        let x_1438 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1436.y, x_1436.y, x_1436.y, x_1436.y) * x_1438);
        let x_1441 : vec4<f32> = u_xlat8;
        let x_1443 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1441.z, x_1441.z, x_1441.z, x_1441.z) * x_1443);
        let x_1445 : vec4<f32> = u_xlat8;
        let x_1447 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1445.w, x_1445.w, x_1445.w, x_1445.w) * x_1447);
        let x_1450 : vec4<f32> = u_xlat13;
        let x_1451 : vec2<f32> = vec2<f32>(x_1450.x, x_1450.y);
        let x_1453 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec13;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1460.xy, x_1460.z);
        u_xlat72 = x_1462;
        let x_1464 : vec4<f32> = u_xlat13;
        let x_1465 : vec2<f32> = vec2<f32>(x_1464.z, x_1464.w);
        let x_1467 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1475 : vec3<f32> = txVec14;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1475.xy, x_1475.z);
        u_xlat73 = x_1477;
        let x_1478 : f32 = u_xlat73;
        let x_1480 : f32 = u_xlat19.y;
        u_xlat73 = (x_1478 * x_1480);
        let x_1483 : f32 = u_xlat19.x;
        let x_1484 : f32 = u_xlat72;
        let x_1486 : f32 = u_xlat73;
        u_xlat72 = ((x_1483 * x_1484) + x_1486);
        let x_1489 : vec4<f32> = u_xlat14;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
        let x_1492 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec15;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1499.xy, x_1499.z);
        u_xlat73 = x_1501;
        let x_1503 : f32 = u_xlat19.z;
        let x_1504 : f32 = u_xlat73;
        let x_1506 : f32 = u_xlat72;
        u_xlat72 = ((x_1503 * x_1504) + x_1506);
        let x_1509 : vec4<f32> = u_xlat16;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.x, x_1509.y);
        let x_1512 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec16;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1519.xy, x_1519.z);
        u_xlat73 = x_1521;
        let x_1523 : f32 = u_xlat19.w;
        let x_1524 : f32 = u_xlat73;
        let x_1526 : f32 = u_xlat72;
        u_xlat72 = ((x_1523 * x_1524) + x_1526);
        let x_1529 : vec4<f32> = u_xlat15;
        let x_1530 : vec2<f32> = vec2<f32>(x_1529.x, x_1529.y);
        let x_1532 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec17;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1539.xy, x_1539.z);
        u_xlat73 = x_1541;
        let x_1543 : f32 = u_xlat20.x;
        let x_1544 : f32 = u_xlat73;
        let x_1546 : f32 = u_xlat72;
        u_xlat72 = ((x_1543 * x_1544) + x_1546);
        let x_1549 : vec4<f32> = u_xlat15;
        let x_1550 : vec2<f32> = vec2<f32>(x_1549.z, x_1549.w);
        let x_1552 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
        let x_1559 : vec3<f32> = txVec18;
        let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1559.xy, x_1559.z);
        u_xlat73 = x_1561;
        let x_1563 : f32 = u_xlat20.y;
        let x_1564 : f32 = u_xlat73;
        let x_1566 : f32 = u_xlat72;
        u_xlat72 = ((x_1563 * x_1564) + x_1566);
        let x_1569 : vec2<f32> = u_xlat58;
        let x_1571 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec19;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1578.xy, x_1578.z);
        u_xlat73 = x_1580;
        let x_1582 : f32 = u_xlat20.z;
        let x_1583 : f32 = u_xlat73;
        let x_1585 : f32 = u_xlat72;
        u_xlat72 = ((x_1582 * x_1583) + x_1585);
        let x_1588 : vec4<f32> = u_xlat16;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.z, x_1588.w);
        let x_1591 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec20;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1598.xy, x_1598.z);
        u_xlat73 = x_1600;
        let x_1602 : f32 = u_xlat20.w;
        let x_1603 : f32 = u_xlat73;
        let x_1605 : f32 = u_xlat72;
        u_xlat72 = ((x_1602 * x_1603) + x_1605);
        let x_1608 : vec4<f32> = u_xlat17;
        let x_1609 : vec2<f32> = vec2<f32>(x_1608.x, x_1608.y);
        let x_1611 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec21;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1618.xy, x_1618.z);
        u_xlat73 = x_1620;
        let x_1622 : f32 = u_xlat21.x;
        let x_1623 : f32 = u_xlat73;
        let x_1625 : f32 = u_xlat72;
        u_xlat72 = ((x_1622 * x_1623) + x_1625);
        let x_1628 : vec4<f32> = u_xlat17;
        let x_1629 : vec2<f32> = vec2<f32>(x_1628.z, x_1628.w);
        let x_1631 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1629.x, x_1629.y, x_1631);
        let x_1638 : vec3<f32> = txVec22;
        let x_1640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1638.xy, x_1638.z);
        u_xlat73 = x_1640;
        let x_1642 : f32 = u_xlat21.y;
        let x_1643 : f32 = u_xlat73;
        let x_1645 : f32 = u_xlat72;
        u_xlat72 = ((x_1642 * x_1643) + x_1645);
        let x_1648 : vec3<f32> = u_xlat31;
        let x_1649 : vec2<f32> = vec2<f32>(x_1648.x, x_1648.y);
        let x_1651 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1649.x, x_1649.y, x_1651);
        let x_1658 : vec3<f32> = txVec23;
        let x_1660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1658.xy, x_1658.z);
        u_xlat73 = x_1660;
        let x_1662 : f32 = u_xlat21.z;
        let x_1663 : f32 = u_xlat73;
        let x_1665 : f32 = u_xlat72;
        u_xlat72 = ((x_1662 * x_1663) + x_1665);
        let x_1668 : vec2<f32> = u_xlat18;
        let x_1670 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1668.x, x_1668.y, x_1670);
        let x_1677 : vec3<f32> = txVec24;
        let x_1679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1677.xy, x_1677.z);
        u_xlat73 = x_1679;
        let x_1681 : f32 = u_xlat21.w;
        let x_1682 : f32 = u_xlat73;
        let x_1684 : f32 = u_xlat72;
        u_xlat72 = ((x_1681 * x_1682) + x_1684);
        let x_1687 : vec4<f32> = u_xlat12;
        let x_1688 : vec2<f32> = vec2<f32>(x_1687.x, x_1687.y);
        let x_1690 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1688.x, x_1688.y, x_1690);
        let x_1697 : vec3<f32> = txVec25;
        let x_1699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1697.xy, x_1697.z);
        u_xlat73 = x_1699;
        let x_1701 : f32 = u_xlat8.x;
        let x_1702 : f32 = u_xlat73;
        let x_1704 : f32 = u_xlat72;
        u_xlat72 = ((x_1701 * x_1702) + x_1704);
        let x_1707 : vec4<f32> = u_xlat12;
        let x_1708 : vec2<f32> = vec2<f32>(x_1707.z, x_1707.w);
        let x_1710 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1708.x, x_1708.y, x_1710);
        let x_1717 : vec3<f32> = txVec26;
        let x_1719 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1717.xy, x_1717.z);
        u_xlat73 = x_1719;
        let x_1721 : f32 = u_xlat8.y;
        let x_1722 : f32 = u_xlat73;
        let x_1724 : f32 = u_xlat72;
        u_xlat72 = ((x_1721 * x_1722) + x_1724);
        let x_1727 : vec2<f32> = u_xlat55;
        let x_1729 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1727.x, x_1727.y, x_1729);
        let x_1736 : vec3<f32> = txVec27;
        let x_1738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1736.xy, x_1736.z);
        u_xlat73 = x_1738;
        let x_1740 : f32 = u_xlat8.z;
        let x_1741 : f32 = u_xlat73;
        let x_1743 : f32 = u_xlat72;
        u_xlat72 = ((x_1740 * x_1741) + x_1743);
        let x_1746 : vec3<f32> = u_xlat28;
        let x_1747 : vec2<f32> = vec2<f32>(x_1746.x, x_1746.y);
        let x_1749 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1747.x, x_1747.y, x_1749);
        let x_1756 : vec3<f32> = txVec28;
        let x_1758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1756.xy, x_1756.z);
        u_xlat28.x = x_1758;
        let x_1761 : f32 = u_xlat8.w;
        let x_1763 : f32 = u_xlat28.x;
        let x_1765 : f32 = u_xlat72;
        u_xlat71 = ((x_1761 * x_1763) + x_1765);
      }
    }
  } else {
    let x_1769 : vec4<f32> = vs_INTERP8;
    let x_1770 : vec2<f32> = vec2<f32>(x_1769.x, x_1769.y);
    let x_1772 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1770.x, x_1770.y, x_1772);
    let x_1779 : vec3<f32> = txVec29;
    let x_1781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1779.xy, x_1779.z);
    u_xlat71 = x_1781;
  }
  let x_1783 : f32 = x_541.x_MainLightShadowParams.x;
  u_xlat28.x = (-(x_1783) + 1.0f);
  let x_1787 : f32 = u_xlat71;
  let x_1789 : f32 = x_541.x_MainLightShadowParams.x;
  let x_1792 : f32 = u_xlat28.x;
  u_xlat71 = ((x_1787 * x_1789) + x_1792);
  let x_1795 : f32 = vs_INTERP8.z;
  u_xlatb28.x = (0.0f >= x_1795);
  let x_1800 : f32 = vs_INTERP8.z;
  u_xlatb50 = (x_1800 >= 1.0f);
  let x_1802 : bool = u_xlatb50;
  let x_1804 : bool = u_xlatb28.x;
  u_xlatb28.x = (x_1802 | x_1804);
  let x_1808 : bool = u_xlatb28.x;
  let x_1809 : f32 = u_xlat71;
  u_xlat71 = select(x_1809, 1.0f, x_1808);
  let x_1811 : vec3<f32> = vs_INTERP0;
  let x_1813 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat28 = (x_1811 + -(x_1813));
  let x_1816 : vec3<f32> = u_xlat28;
  let x_1817 : vec3<f32> = u_xlat28;
  u_xlat28.x = dot(x_1816, x_1817);
  let x_1821 : f32 = u_xlat28.x;
  let x_1823 : f32 = x_541.x_MainLightShadowParams.z;
  let x_1826 : f32 = x_541.x_MainLightShadowParams.w;
  u_xlat28.x = ((x_1821 * x_1823) + x_1826);
  let x_1830 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_1830, 0.0f, 1.0f);
  let x_1833 : f32 = u_xlat71;
  u_xlat50 = (-(x_1833) + 1.0f);
  let x_1837 : f32 = u_xlat28.x;
  let x_1838 : f32 = u_xlat50;
  let x_1840 : f32 = u_xlat71;
  u_xlat71 = ((x_1837 * x_1838) + x_1840);
  let x_1848 : f32 = x_1846.x_MainLightCookieTextureFormat;
  u_xlatb28.x = !((x_1848 == -1.0f));
  let x_1852 : bool = u_xlatb28.x;
  if (x_1852) {
    let x_1855 : vec3<f32> = vs_INTERP0;
    let x_1858 : vec4<f32> = x_1846.x_MainLightWorldToLight[1i];
    let x_1860 : vec2<f32> = (vec2<f32>(x_1855.y, x_1855.y) * vec2<f32>(x_1858.x, x_1858.y));
    let x_1861 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1860.x, x_1860.y, x_1861.z);
    let x_1864 : vec4<f32> = x_1846.x_MainLightWorldToLight[0i];
    let x_1866 : vec3<f32> = vs_INTERP0;
    let x_1869 : vec3<f32> = u_xlat28;
    let x_1871 : vec2<f32> = ((vec2<f32>(x_1864.x, x_1864.y) * vec2<f32>(x_1866.x, x_1866.x)) + vec2<f32>(x_1869.x, x_1869.y));
    let x_1872 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1871.x, x_1871.y, x_1872.z);
    let x_1875 : vec4<f32> = x_1846.x_MainLightWorldToLight[2i];
    let x_1877 : vec3<f32> = vs_INTERP0;
    let x_1880 : vec3<f32> = u_xlat28;
    let x_1882 : vec2<f32> = ((vec2<f32>(x_1875.x, x_1875.y) * vec2<f32>(x_1877.z, x_1877.z)) + vec2<f32>(x_1880.x, x_1880.y));
    let x_1883 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1882.x, x_1882.y, x_1883.z);
    let x_1885 : vec3<f32> = u_xlat28;
    let x_1888 : vec4<f32> = x_1846.x_MainLightWorldToLight[3i];
    let x_1890 : vec2<f32> = (vec2<f32>(x_1885.x, x_1885.y) + vec2<f32>(x_1888.x, x_1888.y));
    let x_1891 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1890.x, x_1890.y, x_1891.z);
    let x_1893 : vec3<f32> = u_xlat28;
    let x_1896 : vec2<f32> = ((vec2<f32>(x_1893.x, x_1893.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1897 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1896.x, x_1896.y, x_1897.z);
    let x_1904 : vec3<f32> = u_xlat28;
    let x_1907 : f32 = x_45.x_GlobalMipBias.x;
    let x_1908 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1904.x, x_1904.y), x_1907);
    u_xlat8 = x_1908;
    let x_1910 : f32 = x_1846.x_MainLightCookieTextureFormat;
    let x_1912 : f32 = x_1846.x_MainLightCookieTextureFormat;
    let x_1914 : f32 = x_1846.x_MainLightCookieTextureFormat;
    let x_1916 : f32 = x_1846.x_MainLightCookieTextureFormat;
    let x_1917 : vec4<f32> = vec4<f32>(x_1910, x_1912, x_1914, x_1916);
    let x_1925 : vec4<bool> = (vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1917.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb28 = vec2<bool>(x_1925.x, x_1925.y);
    let x_1928 : bool = u_xlatb28.y;
    if (x_1928) {
      let x_1933 : f32 = u_xlat8.w;
      x_1929 = x_1933;
    } else {
      let x_1936 : f32 = u_xlat8.x;
      x_1929 = x_1936;
    }
    let x_1937 : f32 = x_1929;
    u_xlat50 = x_1937;
    let x_1939 : bool = u_xlatb28.x;
    if (x_1939) {
      let x_1943 : vec4<f32> = u_xlat8;
      x_1940 = vec3<f32>(x_1943.x, x_1943.y, x_1943.z);
    } else {
      let x_1946 : f32 = u_xlat50;
      x_1940 = vec3<f32>(x_1946, x_1946, x_1946);
    }
    let x_1948 : vec3<f32> = x_1940;
    u_xlat28 = x_1948;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_1953 : vec3<f32> = u_xlat28;
  let x_1955 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat28 = (x_1953 * vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
  let x_1958 : vec4<f32> = u_xlat6;
  let x_1960 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1958.x, x_1958.x, x_1958.x) * x_1960);
  let x_1962 : vec4<f32> = u_xlat1;
  let x_1965 : vec4<f32> = u_xlat4;
  u_xlat73 = dot(-(vec3<f32>(x_1962.x, x_1962.y, x_1962.w)), vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
  let x_1968 : f32 = u_xlat73;
  let x_1969 : f32 = u_xlat73;
  u_xlat73 = (x_1968 + x_1969);
  let x_1971 : vec4<f32> = u_xlat4;
  let x_1973 : f32 = u_xlat73;
  let x_1977 : vec4<f32> = u_xlat1;
  let x_1980 : vec3<f32> = ((vec3<f32>(x_1971.x, x_1971.y, x_1971.z) * -(vec3<f32>(x_1973, x_1973, x_1973))) + -(vec3<f32>(x_1977.x, x_1977.y, x_1977.w)));
  let x_1981 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
  let x_1983 : vec4<f32> = u_xlat4;
  let x_1985 : vec4<f32> = u_xlat1;
  u_xlat73 = dot(vec3<f32>(x_1983.x, x_1983.y, x_1983.z), vec3<f32>(x_1985.x, x_1985.y, x_1985.w));
  let x_1988 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1988, 0.0f, 1.0f);
  let x_1990 : f32 = u_xlat73;
  u_xlat73 = (-(x_1990) + 1.0f);
  let x_1993 : f32 = u_xlat73;
  let x_1994 : f32 = u_xlat73;
  u_xlat73 = (x_1993 * x_1994);
  let x_1996 : f32 = u_xlat73;
  let x_1997 : f32 = u_xlat73;
  u_xlat73 = (x_1996 * x_1997);
  let x_2000 : f32 = u_xlat68;
  u_xlat74 = ((-(x_2000) * 0.699999988f) + 1.700000048f);
  let x_2006 : f32 = u_xlat68;
  let x_2007 : f32 = u_xlat74;
  u_xlat2.w = (x_2006 * x_2007);
  let x_2010 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_2010 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_2023 : vec4<f32> = u_xlat8;
  let x_2026 : f32 = u_xlat2.w;
  let x_2027 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2023.x, x_2023.y, x_2023.z), x_2026);
  u_xlat8 = x_2027;
  let x_2029 : f32 = u_xlat8.w;
  u_xlat68 = (x_2029 + -1.0f);
  let x_2032 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_2033 : f32 = u_xlat68;
  u_xlat68 = ((x_2032 * x_2033) + 1.0f);
  let x_2036 : f32 = u_xlat68;
  u_xlat68 = max(x_2036, 0.0f);
  let x_2038 : f32 = u_xlat68;
  u_xlat68 = log2(x_2038);
  let x_2040 : f32 = u_xlat68;
  let x_2042 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat68 = (x_2040 * x_2042);
  let x_2044 : f32 = u_xlat68;
  u_xlat68 = exp2(x_2044);
  let x_2046 : f32 = u_xlat68;
  let x_2048 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat68 = (x_2046 * x_2048);
  let x_2050 : vec4<f32> = u_xlat8;
  let x_2052 : f32 = u_xlat68;
  let x_2054 : vec3<f32> = (vec3<f32>(x_2050.x, x_2050.y, x_2050.z) * vec3<f32>(x_2052, x_2052, x_2052));
  let x_2055 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
  let x_2057 : vec3<f32> = u_xlat3;
  let x_2059 : vec3<f32> = u_xlat3;
  let x_2063 : vec2<f32> = ((vec2<f32>(x_2057.x, x_2057.x) * vec2<f32>(x_2059.x, x_2059.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2064 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2063.x, x_2063.y, x_2064.z, x_2064.w);
  let x_2067 : f32 = u_xlat9.y;
  u_xlat68 = (1.0f / x_2067);
  let x_2069 : vec3<f32> = u_xlat0;
  let x_2071 : f32 = u_xlat69;
  u_xlat31 = (-(x_2069) + vec3<f32>(x_2071, x_2071, x_2071));
  let x_2074 : f32 = u_xlat73;
  let x_2076 : vec3<f32> = u_xlat31;
  let x_2078 : vec3<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_2074, x_2074, x_2074) * x_2076) + x_2078);
  let x_2080 : f32 = u_xlat68;
  let x_2082 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2080, x_2080, x_2080) * x_2082);
  let x_2084 : vec4<f32> = u_xlat8;
  let x_2086 : vec3<f32> = u_xlat31;
  let x_2087 : vec3<f32> = (vec3<f32>(x_2084.x, x_2084.y, x_2084.z) * x_2086);
  let x_2088 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2087.x, x_2087.y, x_2087.z, x_2088.w);
  let x_2090 : vec3<f32> = u_xlat5;
  let x_2091 : vec3<f32> = u_xlat7;
  let x_2093 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_2090 * x_2091) + vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
  let x_2096 : f32 = u_xlat71;
  let x_2099 : f32 = x_120.unity_LightData.z;
  u_xlat68 = (x_2096 * x_2099);
  let x_2101 : vec4<f32> = u_xlat4;
  let x_2104 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2101.x, x_2101.y, x_2101.z), vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
  let x_2109 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2109, 0.0f, 1.0f);
  let x_2112 : f32 = u_xlat68;
  let x_2114 : f32 = u_xlat3.x;
  u_xlat68 = (x_2112 * x_2114);
  let x_2116 : f32 = u_xlat68;
  let x_2118 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2116, x_2116, x_2116) * x_2118);
  let x_2120 : vec4<f32> = u_xlat1;
  let x_2123 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2125 : vec3<f32> = (vec3<f32>(x_2120.x, x_2120.y, x_2120.w) + vec3<f32>(x_2123.x, x_2123.y, x_2123.z));
  let x_2126 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);
  let x_2128 : vec4<f32> = u_xlat8;
  let x_2130 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2128.x, x_2128.y, x_2128.z), vec3<f32>(x_2130.x, x_2130.y, x_2130.z));
  let x_2133 : f32 = u_xlat68;
  u_xlat68 = max(x_2133, 1.17549435e-37f);
  let x_2136 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_2136);
  let x_2138 : f32 = u_xlat68;
  let x_2140 : vec4<f32> = u_xlat8;
  let x_2142 : vec3<f32> = (vec3<f32>(x_2138, x_2138, x_2138) * vec3<f32>(x_2140.x, x_2140.y, x_2140.z));
  let x_2143 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2142.x, x_2142.y, x_2142.z, x_2143.w);
  let x_2145 : vec4<f32> = u_xlat4;
  let x_2147 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2145.x, x_2145.y, x_2145.z), vec3<f32>(x_2147.x, x_2147.y, x_2147.z));
  let x_2150 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2150, 0.0f, 1.0f);
  let x_2153 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2155 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2153.x, x_2153.y, x_2153.z), vec3<f32>(x_2155.x, x_2155.y, x_2155.z));
  let x_2160 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2160, 0.0f, 1.0f);
  let x_2163 : f32 = u_xlat68;
  let x_2164 : f32 = u_xlat68;
  u_xlat68 = (x_2163 * x_2164);
  let x_2166 : f32 = u_xlat68;
  let x_2168 : f32 = u_xlat9.x;
  u_xlat68 = ((x_2166 * x_2168) + 1.000010014f);
  let x_2173 : f32 = u_xlat3.x;
  let x_2175 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2173 * x_2175);
  let x_2178 : f32 = u_xlat68;
  let x_2179 : f32 = u_xlat68;
  u_xlat68 = (x_2178 * x_2179);
  let x_2182 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2182, 0.100000001f);
  let x_2186 : f32 = u_xlat68;
  let x_2188 : f32 = u_xlat3.x;
  u_xlat68 = (x_2186 * x_2188);
  let x_2190 : f32 = u_xlat70;
  let x_2191 : f32 = u_xlat68;
  u_xlat68 = (x_2190 * x_2191);
  let x_2193 : f32 = u_xlat25;
  let x_2194 : f32 = u_xlat68;
  u_xlat68 = (x_2193 / x_2194);
  let x_2196 : vec3<f32> = u_xlat0;
  let x_2197 : f32 = u_xlat68;
  let x_2200 : vec3<f32> = u_xlat7;
  let x_2201 : vec3<f32> = ((x_2196 * vec3<f32>(x_2197, x_2197, x_2197)) + x_2200);
  let x_2202 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2202.w);
  let x_2204 : vec3<f32> = u_xlat28;
  let x_2205 : vec4<f32> = u_xlat8;
  u_xlat28 = (x_2204 * vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
  let x_2209 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2211 : f32 = x_120.unity_LightData.y;
  u_xlat68 = min(x_2209, x_2211);
  let x_2215 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_2215));
  let x_2221 : f32 = x_1846.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2223 : f32 = x_1846.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2225 : f32 = x_1846.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2227 : f32 = x_1846.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2228 : vec4<f32> = vec4<f32>(x_2221, x_2223, x_2225, x_2227);
  let x_2235 : vec4<bool> = (vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2228.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2236 : vec2<bool> = vec2<bool>(x_2235.x, x_2235.w);
  let x_2237 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2236.x, x_2237.y, x_2237.z, x_2236.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2248 : u32 = u_xlatu_loop_1;
    let x_2249 : u32 = u_xlatu68;
    if ((x_2248 < x_2249)) {
    } else {
      break;
    }
    let x_2252 : u32 = u_xlatu_loop_1;
    u_xlatu73 = (x_2252 >> 2u);
    let x_2256 : u32 = u_xlatu_loop_1;
    u_xlati74 = bitcast<i32>((x_2256 & 3u));
    let x_2259 : u32 = u_xlatu73;
    let x_2262 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_2259)];
    let x_2272 : i32 = u_xlati74;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2277 : vec4<u32> = indexable[x_2272];
    u_xlat73 = dot(x_2262, bitcast<vec4<f32>>(x_2277));
    let x_2280 : f32 = u_xlat73;
    u_xlatu73 = bitcast<u32>(i32(x_2280));
    let x_2283 : vec3<f32> = vs_INTERP0;
    let x_2295 : u32 = u_xlatu73;
    let x_2298 : vec4<f32> = x_2294.x_AdditionalLightsPosition[bitcast<i32>(x_2295)];
    let x_2301 : u32 = u_xlatu73;
    let x_2304 : vec4<f32> = x_2294.x_AdditionalLightsPosition[bitcast<i32>(x_2301)];
    u_xlat31 = ((-(x_2283) * vec3<f32>(x_2298.w, x_2298.w, x_2298.w)) + vec3<f32>(x_2304.x, x_2304.y, x_2304.z));
    let x_2307 : vec3<f32> = u_xlat31;
    let x_2308 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2307, x_2308);
    let x_2310 : f32 = u_xlat74;
    u_xlat74 = max(x_2310, 6.10351562e-05f);
    let x_2313 : f32 = u_xlat74;
    u_xlat10.x = inverseSqrt(x_2313);
    let x_2317 : vec3<f32> = u_xlat31;
    let x_2318 : vec4<f32> = u_xlat10;
    u_xlat32 = (x_2317 * vec3<f32>(x_2318.x, x_2318.x, x_2318.x));
    let x_2321 : f32 = u_xlat74;
    u_xlat11.x = (1.0f / x_2321);
    let x_2324 : f32 = u_xlat74;
    let x_2325 : u32 = u_xlatu73;
    let x_2328 : f32 = x_2294.x_AdditionalLightsAttenuation[bitcast<i32>(x_2325)].x;
    u_xlat74 = (x_2324 * x_2328);
    let x_2330 : f32 = u_xlat74;
    let x_2332 : f32 = u_xlat74;
    u_xlat74 = ((-(x_2330) * x_2332) + 1.0f);
    let x_2335 : f32 = u_xlat74;
    u_xlat74 = max(x_2335, 0.0f);
    let x_2337 : f32 = u_xlat74;
    let x_2338 : f32 = u_xlat74;
    u_xlat74 = (x_2337 * x_2338);
    let x_2340 : f32 = u_xlat74;
    let x_2342 : f32 = u_xlat11.x;
    u_xlat74 = (x_2340 * x_2342);
    let x_2344 : u32 = u_xlatu73;
    let x_2347 : vec4<f32> = x_2294.x_AdditionalLightsSpotDir[bitcast<i32>(x_2344)];
    let x_2349 : vec3<f32> = u_xlat32;
    u_xlat11.x = dot(vec3<f32>(x_2347.x, x_2347.y, x_2347.z), x_2349);
    let x_2353 : f32 = u_xlat11.x;
    let x_2354 : u32 = u_xlatu73;
    let x_2357 : f32 = x_2294.x_AdditionalLightsAttenuation[bitcast<i32>(x_2354)].z;
    let x_2359 : u32 = u_xlatu73;
    let x_2362 : f32 = x_2294.x_AdditionalLightsAttenuation[bitcast<i32>(x_2359)].w;
    u_xlat11.x = ((x_2353 * x_2357) + x_2362);
    let x_2366 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_2366, 0.0f, 1.0f);
    let x_2370 : f32 = u_xlat11.x;
    let x_2372 : f32 = u_xlat11.x;
    u_xlat11.x = (x_2370 * x_2372);
    let x_2375 : f32 = u_xlat74;
    let x_2377 : f32 = u_xlat11.x;
    u_xlat74 = (x_2375 * x_2377);
    let x_2380 : u32 = u_xlatu73;
    u_xlatu11 = (x_2380 >> 5u);
    let x_2383 : u32 = u_xlatu73;
    u_xlati33 = (1i << bitcast<u32>((bitcast<i32>(x_2383) & 31i)));
    let x_2389 : i32 = u_xlati33;
    let x_2391 : u32 = u_xlatu11;
    let x_2394 : f32 = x_1846.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2391)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_2389) & bitcast<u32>(x_2394)));
    let x_2398 : i32 = u_xlati11;
    if ((x_2398 != 0i)) {
      let x_2408 : u32 = u_xlatu73;
      let x_2411 : f32 = x_2407.x_AdditionalLightsLightTypes[bitcast<i32>(x_2408)].el;
      u_xlati11 = i32(x_2411);
      let x_2413 : i32 = u_xlati11;
      u_xlati33 = select(1i, 0i, (x_2413 != 0i));
      let x_2417 : u32 = u_xlatu73;
      u_xlati55 = (bitcast<i32>(x_2417) << bitcast<u32>(2i));
      let x_2420 : i32 = u_xlati33;
      if ((x_2420 != 0i)) {
        let x_2424 : vec3<f32> = vs_INTERP0;
        let x_2426 : i32 = u_xlati55;
        let x_2429 : i32 = u_xlati55;
        let x_2433 : vec4<f32> = x_2407.x_AdditionalLightsWorldToLights[((x_2426 + 1i) / 4i)][((x_2429 + 1i) % 4i)];
        let x_2435 : vec3<f32> = (vec3<f32>(x_2424.y, x_2424.y, x_2424.y) * vec3<f32>(x_2433.x, x_2433.y, x_2433.w));
        let x_2436 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
        let x_2438 : i32 = u_xlati55;
        let x_2440 : i32 = u_xlati55;
        let x_2443 : vec4<f32> = x_2407.x_AdditionalLightsWorldToLights[(x_2438 / 4i)][(x_2440 % 4i)];
        let x_2445 : vec3<f32> = vs_INTERP0;
        let x_2448 : vec4<f32> = u_xlat12;
        let x_2450 : vec3<f32> = ((vec3<f32>(x_2443.x, x_2443.y, x_2443.w) * vec3<f32>(x_2445.x, x_2445.x, x_2445.x)) + vec3<f32>(x_2448.x, x_2448.y, x_2448.z));
        let x_2451 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2450.x, x_2450.y, x_2450.z, x_2451.w);
        let x_2453 : i32 = u_xlati55;
        let x_2456 : i32 = u_xlati55;
        let x_2460 : vec4<f32> = x_2407.x_AdditionalLightsWorldToLights[((x_2453 + 2i) / 4i)][((x_2456 + 2i) % 4i)];
        let x_2462 : vec3<f32> = vs_INTERP0;
        let x_2465 : vec4<f32> = u_xlat12;
        let x_2467 : vec3<f32> = ((vec3<f32>(x_2460.x, x_2460.y, x_2460.w) * vec3<f32>(x_2462.z, x_2462.z, x_2462.z)) + vec3<f32>(x_2465.x, x_2465.y, x_2465.z));
        let x_2468 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2467.x, x_2467.y, x_2467.z, x_2468.w);
        let x_2470 : vec4<f32> = u_xlat12;
        let x_2472 : i32 = u_xlati55;
        let x_2475 : i32 = u_xlati55;
        let x_2479 : vec4<f32> = x_2407.x_AdditionalLightsWorldToLights[((x_2472 + 3i) / 4i)][((x_2475 + 3i) % 4i)];
        let x_2481 : vec3<f32> = (vec3<f32>(x_2470.x, x_2470.y, x_2470.z) + vec3<f32>(x_2479.x, x_2479.y, x_2479.w));
        let x_2482 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2481.x, x_2481.y, x_2481.z, x_2482.w);
        let x_2485 : vec4<f32> = u_xlat12;
        let x_2487 : vec4<f32> = u_xlat12;
        let x_2489 : vec2<f32> = (vec2<f32>(x_2485.x, x_2485.y) / vec2<f32>(x_2487.z, x_2487.z));
        let x_2490 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2489.x, x_2490.y, x_2489.y);
        let x_2492 : vec3<f32> = u_xlat33;
        let x_2495 : vec2<f32> = ((vec2<f32>(x_2492.x, x_2492.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2496 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2495.x, x_2496.y, x_2495.y);
        let x_2498 : vec3<f32> = u_xlat33;
        let x_2502 : vec2<f32> = clamp(vec2<f32>(x_2498.x, x_2498.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2503 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2502.x, x_2503.y, x_2502.y);
        let x_2505 : u32 = u_xlatu73;
        let x_2508 : vec4<f32> = x_2407.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2505)];
        let x_2510 : vec3<f32> = u_xlat33;
        let x_2513 : u32 = u_xlatu73;
        let x_2516 : vec4<f32> = x_2407.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2513)];
        let x_2518 : vec2<f32> = ((vec2<f32>(x_2508.x, x_2508.y) * vec2<f32>(x_2510.x, x_2510.z)) + vec2<f32>(x_2516.z, x_2516.w));
        let x_2519 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2518.x, x_2519.y, x_2518.y);
      } else {
        let x_2523 : i32 = u_xlati11;
        u_xlatb11 = (x_2523 == 1i);
        let x_2525 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_2525);
        let x_2527 : i32 = u_xlati11;
        if ((x_2527 != 0i)) {
          let x_2531 : vec3<f32> = vs_INTERP0;
          let x_2533 : i32 = u_xlati55;
          let x_2536 : i32 = u_xlati55;
          let x_2540 : vec4<f32> = x_2407.x_AdditionalLightsWorldToLights[((x_2533 + 1i) / 4i)][((x_2536 + 1i) % 4i)];
          let x_2542 : vec2<f32> = (vec2<f32>(x_2531.y, x_2531.y) * vec2<f32>(x_2540.x, x_2540.y));
          let x_2543 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2542.x, x_2542.y, x_2543.z, x_2543.w);
          let x_2545 : i32 = u_xlati55;
          let x_2547 : i32 = u_xlati55;
          let x_2550 : vec4<f32> = x_2407.x_AdditionalLightsWorldToLights[(x_2545 / 4i)][(x_2547 % 4i)];
          let x_2552 : vec3<f32> = vs_INTERP0;
          let x_2555 : vec4<f32> = u_xlat12;
          let x_2557 : vec2<f32> = ((vec2<f32>(x_2550.x, x_2550.y) * vec2<f32>(x_2552.x, x_2552.x)) + vec2<f32>(x_2555.x, x_2555.y));
          let x_2558 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2557.x, x_2557.y, x_2558.z, x_2558.w);
          let x_2560 : i32 = u_xlati55;
          let x_2563 : i32 = u_xlati55;
          let x_2567 : vec4<f32> = x_2407.x_AdditionalLightsWorldToLights[((x_2560 + 2i) / 4i)][((x_2563 + 2i) % 4i)];
          let x_2569 : vec3<f32> = vs_INTERP0;
          let x_2572 : vec4<f32> = u_xlat12;
          let x_2574 : vec2<f32> = ((vec2<f32>(x_2567.x, x_2567.y) * vec2<f32>(x_2569.z, x_2569.z)) + vec2<f32>(x_2572.x, x_2572.y));
          let x_2575 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2574.x, x_2574.y, x_2575.z, x_2575.w);
          let x_2577 : vec4<f32> = u_xlat12;
          let x_2579 : i32 = u_xlati55;
          let x_2582 : i32 = u_xlati55;
          let x_2586 : vec4<f32> = x_2407.x_AdditionalLightsWorldToLights[((x_2579 + 3i) / 4i)][((x_2582 + 3i) % 4i)];
          let x_2588 : vec2<f32> = (vec2<f32>(x_2577.x, x_2577.y) + vec2<f32>(x_2586.x, x_2586.y));
          let x_2589 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2588.x, x_2588.y, x_2589.z, x_2589.w);
          let x_2591 : vec4<f32> = u_xlat12;
          let x_2594 : vec2<f32> = ((vec2<f32>(x_2591.x, x_2591.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2595 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2594.x, x_2594.y, x_2595.z, x_2595.w);
          let x_2597 : vec4<f32> = u_xlat12;
          let x_2599 : vec2<f32> = fract(vec2<f32>(x_2597.x, x_2597.y));
          let x_2600 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2599.x, x_2599.y, x_2600.z, x_2600.w);
          let x_2602 : u32 = u_xlatu73;
          let x_2605 : vec4<f32> = x_2407.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2602)];
          let x_2607 : vec4<f32> = u_xlat12;
          let x_2610 : u32 = u_xlatu73;
          let x_2613 : vec4<f32> = x_2407.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2610)];
          let x_2615 : vec2<f32> = ((vec2<f32>(x_2605.x, x_2605.y) * vec2<f32>(x_2607.x, x_2607.y)) + vec2<f32>(x_2613.z, x_2613.w));
          let x_2616 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2615.x, x_2616.y, x_2615.y);
        } else {
          let x_2619 : vec3<f32> = vs_INTERP0;
          let x_2621 : i32 = u_xlati55;
          let x_2624 : i32 = u_xlati55;
          let x_2628 : vec4<f32> = x_2407.x_AdditionalLightsWorldToLights[((x_2621 + 1i) / 4i)][((x_2624 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2619.y, x_2619.y, x_2619.y, x_2619.y) * x_2628);
          let x_2630 : i32 = u_xlati55;
          let x_2632 : i32 = u_xlati55;
          let x_2635 : vec4<f32> = x_2407.x_AdditionalLightsWorldToLights[(x_2630 / 4i)][(x_2632 % 4i)];
          let x_2636 : vec3<f32> = vs_INTERP0;
          let x_2639 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2635 * vec4<f32>(x_2636.x, x_2636.x, x_2636.x, x_2636.x)) + x_2639);
          let x_2641 : i32 = u_xlati55;
          let x_2644 : i32 = u_xlati55;
          let x_2648 : vec4<f32> = x_2407.x_AdditionalLightsWorldToLights[((x_2641 + 2i) / 4i)][((x_2644 + 2i) % 4i)];
          let x_2649 : vec3<f32> = vs_INTERP0;
          let x_2652 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2648 * vec4<f32>(x_2649.z, x_2649.z, x_2649.z, x_2649.z)) + x_2652);
          let x_2654 : vec4<f32> = u_xlat12;
          let x_2655 : i32 = u_xlati55;
          let x_2658 : i32 = u_xlati55;
          let x_2662 : vec4<f32> = x_2407.x_AdditionalLightsWorldToLights[((x_2655 + 3i) / 4i)][((x_2658 + 3i) % 4i)];
          u_xlat12 = (x_2654 + x_2662);
          let x_2664 : vec4<f32> = u_xlat12;
          let x_2666 : vec4<f32> = u_xlat12;
          let x_2668 : vec3<f32> = (vec3<f32>(x_2664.x, x_2664.y, x_2664.z) / vec3<f32>(x_2666.w, x_2666.w, x_2666.w));
          let x_2669 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2669.w);
          let x_2671 : vec4<f32> = u_xlat12;
          let x_2673 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_2671.x, x_2671.y, x_2671.z), vec3<f32>(x_2673.x, x_2673.y, x_2673.z));
          let x_2678 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_2678);
          let x_2681 : vec4<f32> = u_xlat11;
          let x_2683 : vec4<f32> = u_xlat12;
          let x_2685 : vec3<f32> = (vec3<f32>(x_2681.x, x_2681.x, x_2681.x) * vec3<f32>(x_2683.x, x_2683.y, x_2683.z));
          let x_2686 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);
          let x_2688 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_2688.x, x_2688.y, x_2688.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2695 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_2695, 0.000001f);
          let x_2700 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_2700);
          let x_2703 : vec4<f32> = u_xlat11;
          let x_2705 : vec4<f32> = u_xlat12;
          let x_2707 : vec3<f32> = (vec3<f32>(x_2703.x, x_2703.x, x_2703.x) * vec3<f32>(x_2705.z, x_2705.x, x_2705.y));
          let x_2708 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2707.x, x_2707.y, x_2707.z, x_2708.w);
          let x_2711 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2711);
          let x_2715 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2715, 0.0f, 1.0f);
          let x_2719 : vec4<f32> = u_xlat13;
          let x_2722 : vec4<bool> = (vec4<f32>(x_2719.y, x_2719.z, x_2719.y, x_2719.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb56 = vec2<bool>(x_2722.x, x_2722.y);
          let x_2726 : bool = u_xlatb56.x;
          if (x_2726) {
            let x_2731 : f32 = u_xlat13.x;
            x_2727 = x_2731;
          } else {
            let x_2734 : f32 = u_xlat13.x;
            x_2727 = -(x_2734);
          }
          let x_2736 : f32 = x_2727;
          u_xlat56.x = x_2736;
          let x_2739 : bool = u_xlatb56.y;
          if (x_2739) {
            let x_2744 : f32 = u_xlat13.x;
            x_2740 = x_2744;
          } else {
            let x_2747 : f32 = u_xlat13.x;
            x_2740 = -(x_2747);
          }
          let x_2749 : f32 = x_2740;
          u_xlat56.y = x_2749;
          let x_2751 : vec4<f32> = u_xlat12;
          let x_2753 : vec4<f32> = u_xlat11;
          let x_2756 : vec2<f32> = u_xlat56;
          let x_2757 : vec2<f32> = ((vec2<f32>(x_2751.x, x_2751.y) * vec2<f32>(x_2753.x, x_2753.x)) + x_2756);
          let x_2758 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2757.x, x_2758.y, x_2757.y, x_2758.w);
          let x_2760 : vec4<f32> = u_xlat11;
          let x_2763 : vec2<f32> = ((vec2<f32>(x_2760.x, x_2760.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2764 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2763.x, x_2764.y, x_2763.y, x_2764.w);
          let x_2766 : vec4<f32> = u_xlat11;
          let x_2770 : vec2<f32> = clamp(vec2<f32>(x_2766.x, x_2766.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2771 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2770.x, x_2771.y, x_2770.y, x_2771.w);
          let x_2773 : u32 = u_xlatu73;
          let x_2776 : vec4<f32> = x_2407.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2773)];
          let x_2778 : vec4<f32> = u_xlat11;
          let x_2781 : u32 = u_xlatu73;
          let x_2784 : vec4<f32> = x_2407.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2781)];
          let x_2786 : vec2<f32> = ((vec2<f32>(x_2776.x, x_2776.y) * vec2<f32>(x_2778.x, x_2778.z)) + vec2<f32>(x_2784.z, x_2784.w));
          let x_2787 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2786.x, x_2787.y, x_2786.y);
        }
      }
      let x_2794 : vec3<f32> = u_xlat33;
      let x_2797 : f32 = x_45.x_GlobalMipBias.x;
      let x_2798 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2794.x, x_2794.z), x_2797);
      u_xlat11 = x_2798;
      let x_2801 : bool = u_xlatb3.w;
      if (x_2801) {
        let x_2806 : f32 = u_xlat11.w;
        x_2802 = x_2806;
      } else {
        let x_2809 : f32 = u_xlat11.x;
        x_2802 = x_2809;
      }
      let x_2810 : f32 = x_2802;
      u_xlat77 = x_2810;
      let x_2812 : bool = u_xlatb3.x;
      if (x_2812) {
        let x_2816 : vec4<f32> = u_xlat11;
        x_2813 = vec3<f32>(x_2816.x, x_2816.y, x_2816.z);
      } else {
        let x_2819 : f32 = u_xlat77;
        x_2813 = vec3<f32>(x_2819, x_2819, x_2819);
      }
      let x_2821 : vec3<f32> = x_2813;
      let x_2822 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2821.x, x_2821.y, x_2821.z, x_2822.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2828 : vec4<f32> = u_xlat11;
    let x_2830 : u32 = u_xlatu73;
    let x_2833 : vec4<f32> = x_2294.x_AdditionalLightsColor[bitcast<i32>(x_2830)];
    let x_2835 : vec3<f32> = (vec3<f32>(x_2828.x, x_2828.y, x_2828.z) * vec3<f32>(x_2833.x, x_2833.y, x_2833.z));
    let x_2836 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2835.x, x_2835.y, x_2835.z, x_2836.w);
    let x_2838 : vec4<f32> = u_xlat6;
    let x_2840 : vec4<f32> = u_xlat11;
    let x_2842 : vec3<f32> = (vec3<f32>(x_2838.x, x_2838.x, x_2838.x) * vec3<f32>(x_2840.x, x_2840.y, x_2840.z));
    let x_2843 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2842.x, x_2842.y, x_2842.z, x_2843.w);
    let x_2845 : vec4<f32> = u_xlat4;
    let x_2847 : vec3<f32> = u_xlat32;
    u_xlat73 = dot(vec3<f32>(x_2845.x, x_2845.y, x_2845.z), x_2847);
    let x_2849 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2849, 0.0f, 1.0f);
    let x_2851 : f32 = u_xlat73;
    let x_2852 : f32 = u_xlat74;
    u_xlat73 = (x_2851 * x_2852);
    let x_2854 : f32 = u_xlat73;
    let x_2856 : vec4<f32> = u_xlat11;
    let x_2858 : vec3<f32> = (vec3<f32>(x_2854, x_2854, x_2854) * vec3<f32>(x_2856.x, x_2856.y, x_2856.z));
    let x_2859 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2858.x, x_2858.y, x_2858.z, x_2859.w);
    let x_2861 : vec3<f32> = u_xlat31;
    let x_2862 : vec4<f32> = u_xlat10;
    let x_2865 : vec4<f32> = u_xlat1;
    u_xlat31 = ((x_2861 * vec3<f32>(x_2862.x, x_2862.x, x_2862.x)) + vec3<f32>(x_2865.x, x_2865.y, x_2865.w));
    let x_2868 : vec3<f32> = u_xlat31;
    let x_2869 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(x_2868, x_2869);
    let x_2871 : f32 = u_xlat73;
    u_xlat73 = max(x_2871, 1.17549435e-37f);
    let x_2873 : f32 = u_xlat73;
    u_xlat73 = inverseSqrt(x_2873);
    let x_2875 : f32 = u_xlat73;
    let x_2877 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_2875, x_2875, x_2875) * x_2877);
    let x_2879 : vec4<f32> = u_xlat4;
    let x_2881 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(vec3<f32>(x_2879.x, x_2879.y, x_2879.z), x_2881);
    let x_2883 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2883, 0.0f, 1.0f);
    let x_2885 : vec3<f32> = u_xlat32;
    let x_2886 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2885, x_2886);
    let x_2888 : f32 = u_xlat74;
    u_xlat74 = clamp(x_2888, 0.0f, 1.0f);
    let x_2890 : f32 = u_xlat73;
    let x_2891 : f32 = u_xlat73;
    u_xlat73 = (x_2890 * x_2891);
    let x_2893 : f32 = u_xlat73;
    let x_2895 : f32 = u_xlat9.x;
    u_xlat73 = ((x_2893 * x_2895) + 1.000010014f);
    let x_2898 : f32 = u_xlat74;
    let x_2899 : f32 = u_xlat74;
    u_xlat74 = (x_2898 * x_2899);
    let x_2901 : f32 = u_xlat73;
    let x_2902 : f32 = u_xlat73;
    u_xlat73 = (x_2901 * x_2902);
    let x_2904 : f32 = u_xlat74;
    u_xlat74 = max(x_2904, 0.100000001f);
    let x_2906 : f32 = u_xlat73;
    let x_2907 : f32 = u_xlat74;
    u_xlat73 = (x_2906 * x_2907);
    let x_2909 : f32 = u_xlat70;
    let x_2910 : f32 = u_xlat73;
    u_xlat73 = (x_2909 * x_2910);
    let x_2912 : f32 = u_xlat25;
    let x_2913 : f32 = u_xlat73;
    u_xlat73 = (x_2912 / x_2913);
    let x_2915 : vec3<f32> = u_xlat0;
    let x_2916 : f32 = u_xlat73;
    let x_2919 : vec3<f32> = u_xlat7;
    u_xlat31 = ((x_2915 * vec3<f32>(x_2916, x_2916, x_2916)) + x_2919);
    let x_2921 : vec3<f32> = u_xlat31;
    let x_2922 : vec4<f32> = u_xlat11;
    let x_2925 : vec4<f32> = u_xlat8;
    let x_2927 : vec3<f32> = ((x_2921 * vec3<f32>(x_2922.x, x_2922.y, x_2922.z)) + vec3<f32>(x_2925.x, x_2925.y, x_2925.z));
    let x_2928 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2927.x, x_2927.y, x_2927.z, x_2928.w);

    continuing {
      let x_2930 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2930 + bitcast<u32>(1i));
    }
  }
  let x_2932 : vec3<f32> = u_xlat5;
  let x_2933 : f32 = u_xlat47;
  let x_2936 : vec3<f32> = u_xlat28;
  u_xlat0 = ((x_2932 * vec3<f32>(x_2933, x_2933, x_2933)) + x_2936);
  let x_2938 : vec4<f32> = u_xlat8;
  let x_2940 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2938.x, x_2938.y, x_2938.z) + x_2940);
  let x_2942 : vec4<f32> = u_xlat2;
  let x_2944 : f32 = u_xlat45;
  let x_2947 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2942.x, x_2942.y, x_2942.z) * vec3<f32>(x_2944, x_2944, x_2944)) + x_2947);
  let x_2949 : f32 = u_xlat66;
  let x_2950 : f32 = u_xlat66;
  u_xlat66 = (x_2949 * -(x_2950));
  let x_2953 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2953);
  let x_2955 : vec3<f32> = u_xlat0;
  let x_2958 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_2955 + -(vec3<f32>(x_2958.x, x_2958.y, x_2958.z)));
  let x_2964 : f32 = u_xlat66;
  let x_2966 : vec3<f32> = u_xlat0;
  let x_2969 : vec4<f32> = x_45.unity_FogColor;
  let x_2971 : vec3<f32> = ((vec3<f32>(x_2964, x_2964, x_2964) * x_2966) + vec3<f32>(x_2969.x, x_2969.y, x_2969.z));
  let x_2972 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2971.x, x_2971.y, x_2971.z, x_2972.w);
  let x_2977 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_2979 : f32 = x_120.unity_RenderingLayer.x;
  u_xlatu0 = (x_2977 & bitcast<u32>(x_2979));
  let x_2982 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2982);
  let x_2987 : f32 = u_xlat0.x;
  let x_2989 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2987 * x_2989);
  let x_2994 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2994, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2998 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2998.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

