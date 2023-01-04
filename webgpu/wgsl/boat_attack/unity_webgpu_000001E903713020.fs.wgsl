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

@group(1) @binding(4) var<uniform> x_1844 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2292 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2405 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_1927 : f32;
  var x_1938 : vec3<f32>;
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
  var x_2725 : f32;
  var x_2738 : f32;
  var u_xlat77 : f32;
  var x_2800 : f32;
  var x_2811 : vec3<f32>;
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
      let x_559 : vec4<f32> = x_541.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_556.x, x_556.y, x_556.x, x_556.y) + x_559);
      let x_562 : vec4<f32> = u_xlat8;
      let x_563 : vec2<f32> = vec2<f32>(x_562.x, x_562.y);
      let x_565 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_563.x, x_563.y, x_565);
      let x_578 : vec3<f32> = txVec0;
      let x_580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_578.xy, x_578.z);
      u_xlat9.x = x_580;
      let x_583 : vec4<f32> = u_xlat8;
      let x_584 : vec2<f32> = vec2<f32>(x_583.z, x_583.w);
      let x_586 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_584.x, x_584.y, x_586);
      let x_593 : vec3<f32> = txVec1;
      let x_595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_593.xy, x_593.z);
      u_xlat9.y = x_595;
      let x_597 : vec4<f32> = vs_INTERP8;
      let x_600 : vec4<f32> = x_541.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_597.x, x_597.y, x_597.x, x_597.y) + x_600);
      let x_603 : vec4<f32> = u_xlat8;
      let x_604 : vec2<f32> = vec2<f32>(x_603.x, x_603.y);
      let x_606 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_604.x, x_604.y, x_606);
      let x_613 : vec3<f32> = txVec2;
      let x_615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_613.xy, x_613.z);
      u_xlat9.z = x_615;
      let x_618 : vec4<f32> = u_xlat8;
      let x_619 : vec2<f32> = vec2<f32>(x_618.z, x_618.w);
      let x_621 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_619.x, x_619.y, x_621);
      let x_628 : vec3<f32> = txVec3;
      let x_630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_628.xy, x_628.z);
      u_xlat9.w = x_630;
      let x_632 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_632, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_641 : f32 = x_541.x_MainLightShadowParams.y;
      u_xlatb28.x = (x_641 == 2.0f);
      let x_645 : bool = u_xlatb28.x;
      if (x_645) {
        let x_649 : vec4<f32> = vs_INTERP8;
        let x_652 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_657 : vec2<f32> = ((vec2<f32>(x_649.x, x_649.y) * vec2<f32>(x_652.z, x_652.w)) + vec2<f32>(0.5f, 0.5f));
        let x_658 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_657.x, x_657.y, x_658.z);
        let x_660 : vec3<f32> = u_xlat28;
        let x_662 : vec2<f32> = floor(vec2<f32>(x_660.x, x_660.y));
        let x_663 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_662.x, x_662.y, x_663.z);
        let x_665 : vec4<f32> = vs_INTERP8;
        let x_668 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_671 : vec3<f32> = u_xlat28;
        let x_674 : vec2<f32> = ((vec2<f32>(x_665.x, x_665.y) * vec2<f32>(x_668.z, x_668.w)) + -(vec2<f32>(x_671.x, x_671.y)));
        let x_675 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
        let x_677 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_677.x, x_677.x, x_677.y, x_677.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_682 : vec4<f32> = u_xlat9;
        let x_684 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_682.x, x_682.x, x_682.z, x_682.z) * vec4<f32>(x_684.x, x_684.x, x_684.z, x_684.z));
        let x_689 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_689.y, x_689.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_694 : vec4<f32> = u_xlat10;
        let x_697 : vec4<f32> = u_xlat8;
        let x_700 : vec2<f32> = ((vec2<f32>(x_694.x, x_694.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_697.x, x_697.y)));
        let x_701 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_700.x, x_701.y, x_700.y, x_701.w);
        let x_703 : vec4<f32> = u_xlat8;
        let x_706 : vec2<f32> = (-(vec2<f32>(x_703.x, x_703.y)) + vec2<f32>(1.0f, 1.0f));
        let x_707 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_706.x, x_706.y, x_707.z, x_707.w);
        let x_710 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_710.x, x_710.y), vec2<f32>(0.0f, 0.0f));
        let x_714 : vec2<f32> = u_xlat54;
        let x_716 : vec2<f32> = u_xlat54;
        let x_718 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_714) * x_716) + vec2<f32>(x_718.x, x_718.y));
        let x_721 : vec4<f32> = u_xlat8;
        let x_723 : vec2<f32> = max(vec2<f32>(x_721.x, x_721.y), vec2<f32>(0.0f, 0.0f));
        let x_724 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_724.w);
        let x_726 : vec4<f32> = u_xlat8;
        let x_729 : vec4<f32> = u_xlat8;
        let x_732 : vec4<f32> = u_xlat9;
        let x_734 : vec2<f32> = ((-(vec2<f32>(x_726.x, x_726.y)) * vec2<f32>(x_729.x, x_729.y)) + vec2<f32>(x_732.y, x_732.w));
        let x_735 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_734.x, x_734.y, x_735.z, x_735.w);
        let x_737 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_737 + vec2<f32>(1.0f, 1.0f));
        let x_739 : vec4<f32> = u_xlat8;
        let x_741 : vec2<f32> = (vec2<f32>(x_739.x, x_739.y) + vec2<f32>(1.0f, 1.0f));
        let x_742 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_741.x, x_741.y, x_742.z, x_742.w);
        let x_745 : vec4<f32> = u_xlat9;
        let x_749 : vec2<f32> = (vec2<f32>(x_745.x, x_745.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_750 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_749.x, x_749.y, x_750.z, x_750.w);
        let x_753 : vec4<f32> = u_xlat10;
        let x_755 : vec2<f32> = (vec2<f32>(x_753.x, x_753.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_756 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
        let x_758 : vec2<f32> = u_xlat54;
        let x_759 : vec2<f32> = (x_758 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_760 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
        let x_763 : vec4<f32> = u_xlat8;
        let x_765 : vec2<f32> = (vec2<f32>(x_763.x, x_763.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_766 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
        let x_768 : vec4<f32> = u_xlat9;
        let x_770 : vec2<f32> = (vec2<f32>(x_768.y, x_768.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_771 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_770.x, x_770.y, x_771.z, x_771.w);
        let x_774 : f32 = u_xlat10.x;
        u_xlat11.z = x_774;
        let x_777 : f32 = u_xlat8.x;
        u_xlat11.w = x_777;
        let x_780 : f32 = u_xlat13.x;
        u_xlat12.z = x_780;
        let x_783 : f32 = u_xlat52.x;
        u_xlat12.w = x_783;
        let x_785 : vec4<f32> = u_xlat11;
        let x_787 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_785.z, x_785.w, x_785.x, x_785.z) + vec4<f32>(x_787.z, x_787.w, x_787.x, x_787.z));
        let x_791 : f32 = u_xlat11.y;
        u_xlat10.z = x_791;
        let x_794 : f32 = u_xlat8.y;
        u_xlat10.w = x_794;
        let x_797 : f32 = u_xlat12.y;
        u_xlat13.z = x_797;
        let x_800 : f32 = u_xlat52.y;
        u_xlat13.w = x_800;
        let x_802 : vec4<f32> = u_xlat10;
        let x_804 : vec4<f32> = u_xlat13;
        let x_806 : vec3<f32> = (vec3<f32>(x_802.z, x_802.y, x_802.w) + vec3<f32>(x_804.z, x_804.y, x_804.w));
        let x_807 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
        let x_809 : vec4<f32> = u_xlat12;
        let x_811 : vec4<f32> = u_xlat9;
        let x_813 : vec3<f32> = (vec3<f32>(x_809.x, x_809.z, x_809.w) / vec3<f32>(x_811.z, x_811.w, x_811.y));
        let x_814 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
        let x_816 : vec4<f32> = u_xlat10;
        let x_822 : vec3<f32> = (vec3<f32>(x_816.x, x_816.y, x_816.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_823 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
        let x_825 : vec4<f32> = u_xlat13;
        let x_827 : vec4<f32> = u_xlat8;
        let x_829 : vec3<f32> = (vec3<f32>(x_825.z, x_825.y, x_825.w) / vec3<f32>(x_827.x, x_827.y, x_827.z));
        let x_830 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
        let x_832 : vec4<f32> = u_xlat11;
        let x_834 : vec3<f32> = (vec3<f32>(x_832.x, x_832.y, x_832.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_835 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_837 : vec4<f32> = u_xlat10;
        let x_840 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_842 : vec3<f32> = (vec3<f32>(x_837.y, x_837.x, x_837.z) * vec3<f32>(x_840.x, x_840.x, x_840.x));
        let x_843 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
        let x_845 : vec4<f32> = u_xlat11;
        let x_848 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_850 : vec3<f32> = (vec3<f32>(x_845.x, x_845.y, x_845.z) * vec3<f32>(x_848.y, x_848.y, x_848.y));
        let x_851 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
        let x_854 : f32 = u_xlat11.x;
        u_xlat10.w = x_854;
        let x_856 : vec3<f32> = u_xlat28;
        let x_859 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_862 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_856.x, x_856.y, x_856.x, x_856.y) * vec4<f32>(x_859.x, x_859.y, x_859.x, x_859.y)) + vec4<f32>(x_862.y, x_862.w, x_862.x, x_862.w));
        let x_865 : vec3<f32> = u_xlat28;
        let x_868 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_871 : vec4<f32> = u_xlat10;
        let x_873 : vec2<f32> = ((vec2<f32>(x_865.x, x_865.y) * vec2<f32>(x_868.x, x_868.y)) + vec2<f32>(x_871.z, x_871.w));
        let x_874 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
        let x_877 : f32 = u_xlat10.y;
        u_xlat11.w = x_877;
        let x_879 : vec4<f32> = u_xlat11;
        let x_880 : vec2<f32> = vec2<f32>(x_879.y, x_879.z);
        let x_881 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_881.x, x_880.x, x_881.z, x_880.y);
        let x_884 : vec3<f32> = u_xlat28;
        let x_887 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_890 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_884.x, x_884.y, x_884.x, x_884.y) * vec4<f32>(x_887.x, x_887.y, x_887.x, x_887.y)) + vec4<f32>(x_890.x, x_890.y, x_890.z, x_890.y));
        let x_893 : vec3<f32> = u_xlat28;
        let x_896 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_899 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_893.x, x_893.y, x_893.x, x_893.y) * vec4<f32>(x_896.x, x_896.y, x_896.x, x_896.y)) + vec4<f32>(x_899.w, x_899.y, x_899.w, x_899.z));
        let x_902 : vec3<f32> = u_xlat28;
        let x_905 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_908 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_902.x, x_902.y, x_902.x, x_902.y) * vec4<f32>(x_905.x, x_905.y, x_905.x, x_905.y)) + vec4<f32>(x_908.x, x_908.w, x_908.z, x_908.w));
        let x_912 : vec4<f32> = u_xlat8;
        let x_914 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_912.x, x_912.x, x_912.x, x_912.y) * vec4<f32>(x_914.z, x_914.w, x_914.y, x_914.z));
        let x_918 : vec4<f32> = u_xlat8;
        let x_920 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_918.y, x_918.y, x_918.z, x_918.z) * x_920);
        let x_923 : f32 = u_xlat8.z;
        let x_925 : f32 = u_xlat9.y;
        u_xlat28.x = (x_923 * x_925);
        let x_929 : vec4<f32> = u_xlat12;
        let x_930 : vec2<f32> = vec2<f32>(x_929.x, x_929.y);
        let x_932 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_930.x, x_930.y, x_932);
        let x_940 : vec3<f32> = txVec4;
        let x_942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_940.xy, x_940.z);
        u_xlat50 = x_942;
        let x_944 : vec4<f32> = u_xlat12;
        let x_945 : vec2<f32> = vec2<f32>(x_944.z, x_944.w);
        let x_947 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_945.x, x_945.y, x_947);
        let x_955 : vec3<f32> = txVec5;
        let x_957 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_955.xy, x_955.z);
        u_xlat72 = x_957;
        let x_958 : f32 = u_xlat72;
        let x_960 : f32 = u_xlat15.y;
        u_xlat72 = (x_958 * x_960);
        let x_963 : f32 = u_xlat15.x;
        let x_964 : f32 = u_xlat50;
        let x_966 : f32 = u_xlat72;
        u_xlat50 = ((x_963 * x_964) + x_966);
        let x_969 : vec4<f32> = u_xlat13;
        let x_970 : vec2<f32> = vec2<f32>(x_969.x, x_969.y);
        let x_972 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_970.x, x_970.y, x_972);
        let x_979 : vec3<f32> = txVec6;
        let x_981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_979.xy, x_979.z);
        u_xlat72 = x_981;
        let x_983 : f32 = u_xlat15.z;
        let x_984 : f32 = u_xlat72;
        let x_986 : f32 = u_xlat50;
        u_xlat50 = ((x_983 * x_984) + x_986);
        let x_989 : vec4<f32> = u_xlat11;
        let x_990 : vec2<f32> = vec2<f32>(x_989.x, x_989.y);
        let x_992 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_990.x, x_990.y, x_992);
        let x_999 : vec3<f32> = txVec7;
        let x_1001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_999.xy, x_999.z);
        u_xlat72 = x_1001;
        let x_1003 : f32 = u_xlat15.w;
        let x_1004 : f32 = u_xlat72;
        let x_1006 : f32 = u_xlat50;
        u_xlat50 = ((x_1003 * x_1004) + x_1006);
        let x_1009 : vec4<f32> = u_xlat14;
        let x_1010 : vec2<f32> = vec2<f32>(x_1009.x, x_1009.y);
        let x_1012 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1010.x, x_1010.y, x_1012);
        let x_1019 : vec3<f32> = txVec8;
        let x_1021 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1019.xy, x_1019.z);
        u_xlat72 = x_1021;
        let x_1023 : f32 = u_xlat16.x;
        let x_1024 : f32 = u_xlat72;
        let x_1026 : f32 = u_xlat50;
        u_xlat50 = ((x_1023 * x_1024) + x_1026);
        let x_1029 : vec4<f32> = u_xlat14;
        let x_1030 : vec2<f32> = vec2<f32>(x_1029.z, x_1029.w);
        let x_1032 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1030.x, x_1030.y, x_1032);
        let x_1039 : vec3<f32> = txVec9;
        let x_1041 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1039.xy, x_1039.z);
        u_xlat72 = x_1041;
        let x_1043 : f32 = u_xlat16.y;
        let x_1044 : f32 = u_xlat72;
        let x_1046 : f32 = u_xlat50;
        u_xlat50 = ((x_1043 * x_1044) + x_1046);
        let x_1049 : vec4<f32> = u_xlat11;
        let x_1050 : vec2<f32> = vec2<f32>(x_1049.z, x_1049.w);
        let x_1052 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1050.x, x_1050.y, x_1052);
        let x_1059 : vec3<f32> = txVec10;
        let x_1061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1059.xy, x_1059.z);
        u_xlat72 = x_1061;
        let x_1063 : f32 = u_xlat16.z;
        let x_1064 : f32 = u_xlat72;
        let x_1066 : f32 = u_xlat50;
        u_xlat50 = ((x_1063 * x_1064) + x_1066);
        let x_1069 : vec4<f32> = u_xlat10;
        let x_1070 : vec2<f32> = vec2<f32>(x_1069.x, x_1069.y);
        let x_1072 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1070.x, x_1070.y, x_1072);
        let x_1079 : vec3<f32> = txVec11;
        let x_1081 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1079.xy, x_1079.z);
        u_xlat72 = x_1081;
        let x_1083 : f32 = u_xlat16.w;
        let x_1084 : f32 = u_xlat72;
        let x_1086 : f32 = u_xlat50;
        u_xlat50 = ((x_1083 * x_1084) + x_1086);
        let x_1089 : vec4<f32> = u_xlat10;
        let x_1090 : vec2<f32> = vec2<f32>(x_1089.z, x_1089.w);
        let x_1092 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1090.x, x_1090.y, x_1092);
        let x_1099 : vec3<f32> = txVec12;
        let x_1101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1099.xy, x_1099.z);
        u_xlat72 = x_1101;
        let x_1103 : f32 = u_xlat28.x;
        let x_1104 : f32 = u_xlat72;
        let x_1106 : f32 = u_xlat50;
        u_xlat71 = ((x_1103 * x_1104) + x_1106);
      } else {
        let x_1109 : vec4<f32> = vs_INTERP8;
        let x_1112 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1115 : vec2<f32> = ((vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(x_1112.z, x_1112.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1116 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1115.x, x_1115.y, x_1116.z);
        let x_1118 : vec3<f32> = u_xlat28;
        let x_1120 : vec2<f32> = floor(vec2<f32>(x_1118.x, x_1118.y));
        let x_1121 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1120.x, x_1120.y, x_1121.z);
        let x_1123 : vec4<f32> = vs_INTERP8;
        let x_1126 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1129 : vec3<f32> = u_xlat28;
        let x_1132 : vec2<f32> = ((vec2<f32>(x_1123.x, x_1123.y) * vec2<f32>(x_1126.z, x_1126.w)) + -(vec2<f32>(x_1129.x, x_1129.y)));
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1135.x, x_1135.x, x_1135.y, x_1135.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1138 : vec4<f32> = u_xlat9;
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1138.x, x_1138.x, x_1138.z, x_1138.z) * vec4<f32>(x_1140.x, x_1140.x, x_1140.z, x_1140.z));
        let x_1143 : vec4<f32> = u_xlat10;
        let x_1147 : vec2<f32> = (vec2<f32>(x_1143.y, x_1143.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1148 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1148.x, x_1147.x, x_1148.z, x_1147.y);
        let x_1150 : vec4<f32> = u_xlat10;
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1150.x, x_1150.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1153.x, x_1153.y)));
        let x_1157 : vec4<f32> = u_xlat8;
        let x_1160 : vec2<f32> = (-(vec2<f32>(x_1157.x, x_1157.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1160.x, x_1161.y, x_1160.y, x_1161.w);
        let x_1163 : vec4<f32> = u_xlat8;
        let x_1165 : vec2<f32> = min(vec2<f32>(x_1163.x, x_1163.y), vec2<f32>(0.0f, 0.0f));
        let x_1166 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat10;
        let x_1171 : vec4<f32> = u_xlat10;
        let x_1174 : vec4<f32> = u_xlat9;
        let x_1176 : vec2<f32> = ((-(vec2<f32>(x_1168.x, x_1168.y)) * vec2<f32>(x_1171.x, x_1171.y)) + vec2<f32>(x_1174.x, x_1174.z));
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1176.x, x_1177.y, x_1176.y, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat8;
        let x_1181 : vec2<f32> = max(vec2<f32>(x_1179.x, x_1179.y), vec2<f32>(0.0f, 0.0f));
        let x_1182 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
        let x_1184 : vec4<f32> = u_xlat10;
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1190 : vec4<f32> = u_xlat9;
        let x_1192 : vec2<f32> = ((-(vec2<f32>(x_1184.x, x_1184.y)) * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.y, x_1190.w));
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1193.x, x_1192.x, x_1193.z, x_1192.y);
        let x_1195 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1195 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1199 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1199 * 0.081632003f);
        let x_1203 : vec2<f32> = u_xlat52;
        let x_1206 : vec2<f32> = (vec2<f32>(x_1203.y, x_1203.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1207 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1209.x, x_1209.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1213 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1213 * 0.081632003f);
        let x_1217 : f32 = u_xlat12.y;
        u_xlat10.x = x_1217;
        let x_1219 : vec4<f32> = u_xlat8;
        let x_1226 : vec2<f32> = ((vec2<f32>(x_1219.x, x_1219.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1227 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1227.x, x_1226.x, x_1227.z, x_1226.y);
        let x_1229 : vec4<f32> = u_xlat8;
        let x_1233 : vec2<f32> = ((vec2<f32>(x_1229.x, x_1229.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1234 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1233.x, x_1234.y, x_1233.y, x_1234.w);
        let x_1237 : f32 = u_xlat52.x;
        u_xlat9.y = x_1237;
        let x_1240 : f32 = u_xlat11.y;
        u_xlat9.w = x_1240;
        let x_1242 : vec4<f32> = u_xlat9;
        let x_1243 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1242 + x_1243);
        let x_1245 : vec4<f32> = u_xlat8;
        let x_1248 : vec2<f32> = ((vec2<f32>(x_1245.y, x_1245.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1249 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1249.x, x_1248.x, x_1249.z, x_1248.y);
        let x_1251 : vec4<f32> = u_xlat8;
        let x_1254 : vec2<f32> = ((vec2<f32>(x_1251.y, x_1251.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1255 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1254.x, x_1255.y, x_1254.y, x_1255.w);
        let x_1258 : f32 = u_xlat52.y;
        u_xlat11.y = x_1258;
        let x_1260 : vec4<f32> = u_xlat11;
        let x_1261 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1260 + x_1261);
        let x_1263 : vec4<f32> = u_xlat9;
        let x_1264 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1263 / x_1264);
        let x_1266 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1266 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1272 : vec4<f32> = u_xlat11;
        let x_1273 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1272 / x_1273);
        let x_1275 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1275 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1277 : vec4<f32> = u_xlat9;
        let x_1280 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1277.w, x_1277.x, x_1277.y, x_1277.z) * vec4<f32>(x_1280.x, x_1280.x, x_1280.x, x_1280.x));
        let x_1283 : vec4<f32> = u_xlat11;
        let x_1286 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1283.x, x_1283.w, x_1283.y, x_1283.z) * vec4<f32>(x_1286.y, x_1286.y, x_1286.y, x_1286.y));
        let x_1289 : vec4<f32> = u_xlat9;
        let x_1290 : vec3<f32> = vec3<f32>(x_1289.y, x_1289.z, x_1289.w);
        let x_1291 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1290.x, x_1291.y, x_1290.y, x_1290.z);
        let x_1294 : f32 = u_xlat11.x;
        u_xlat12.y = x_1294;
        let x_1296 : vec3<f32> = u_xlat28;
        let x_1299 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1302 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y) * vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y)) + vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1302.y));
        let x_1305 : vec3<f32> = u_xlat28;
        let x_1308 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat12;
        let x_1313 : vec2<f32> = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(x_1308.x, x_1308.y)) + vec2<f32>(x_1311.w, x_1311.y));
        let x_1314 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
        let x_1317 : f32 = u_xlat12.y;
        u_xlat9.y = x_1317;
        let x_1320 : f32 = u_xlat11.z;
        u_xlat12.y = x_1320;
        let x_1322 : vec3<f32> = u_xlat28;
        let x_1325 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1322.x, x_1322.y, x_1322.x, x_1322.y) * vec4<f32>(x_1325.x, x_1325.y, x_1325.x, x_1325.y)) + vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1328.y));
        let x_1332 : vec3<f32> = u_xlat28;
        let x_1335 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1332.x, x_1332.y) * vec2<f32>(x_1335.x, x_1335.y)) + vec2<f32>(x_1338.w, x_1338.y));
        let x_1342 : f32 = u_xlat12.y;
        u_xlat9.z = x_1342;
        let x_1344 : vec3<f32> = u_xlat28;
        let x_1347 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1350 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1344.x, x_1344.y, x_1344.x, x_1344.y) * vec4<f32>(x_1347.x, x_1347.y, x_1347.x, x_1347.y)) + vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.z));
        let x_1354 : f32 = u_xlat11.w;
        u_xlat12.y = x_1354;
        let x_1357 : vec3<f32> = u_xlat28;
        let x_1360 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1363 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1357.x, x_1357.y, x_1357.x, x_1357.y) * vec4<f32>(x_1360.x, x_1360.y, x_1360.x, x_1360.y)) + vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1363.y));
        let x_1367 : vec3<f32> = u_xlat28;
        let x_1370 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1373 : vec4<f32> = u_xlat12;
        let x_1375 : vec2<f32> = ((vec2<f32>(x_1367.x, x_1367.y) * vec2<f32>(x_1370.x, x_1370.y)) + vec2<f32>(x_1373.w, x_1373.y));
        let x_1376 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1375.x, x_1375.y, x_1376.z);
        let x_1379 : f32 = u_xlat12.y;
        u_xlat9.w = x_1379;
        let x_1382 : vec3<f32> = u_xlat28;
        let x_1385 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1382.x, x_1382.y) * vec2<f32>(x_1385.x, x_1385.y)) + vec2<f32>(x_1388.x, x_1388.w));
        let x_1391 : vec4<f32> = u_xlat12;
        let x_1392 : vec3<f32> = vec3<f32>(x_1391.x, x_1391.z, x_1391.w);
        let x_1393 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1392.x, x_1393.y, x_1392.y, x_1392.z);
        let x_1395 : vec3<f32> = u_xlat28;
        let x_1398 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1401 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1395.x, x_1395.y, x_1395.x, x_1395.y) * vec4<f32>(x_1398.x, x_1398.y, x_1398.x, x_1398.y)) + vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1401.y));
        let x_1405 : vec3<f32> = u_xlat28;
        let x_1408 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1411 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1405.x, x_1405.y) * vec2<f32>(x_1408.x, x_1408.y)) + vec2<f32>(x_1411.w, x_1411.y));
        let x_1415 : f32 = u_xlat9.x;
        u_xlat11.x = x_1415;
        let x_1417 : vec3<f32> = u_xlat28;
        let x_1420 : vec4<f32> = x_541.x_MainLightShadowmapSize;
        let x_1423 : vec4<f32> = u_xlat11;
        let x_1425 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1420.x, x_1420.y)) + vec2<f32>(x_1423.x, x_1423.y));
        let x_1426 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1425.x, x_1425.y, x_1426.z);
        let x_1429 : vec4<f32> = u_xlat8;
        let x_1431 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1429.x, x_1429.x, x_1429.x, x_1429.x) * x_1431);
        let x_1434 : vec4<f32> = u_xlat8;
        let x_1436 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1434.y, x_1434.y, x_1434.y, x_1434.y) * x_1436);
        let x_1439 : vec4<f32> = u_xlat8;
        let x_1441 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1439.z, x_1439.z, x_1439.z, x_1439.z) * x_1441);
        let x_1443 : vec4<f32> = u_xlat8;
        let x_1445 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1443.w, x_1443.w, x_1443.w, x_1443.w) * x_1445);
        let x_1448 : vec4<f32> = u_xlat13;
        let x_1449 : vec2<f32> = vec2<f32>(x_1448.x, x_1448.y);
        let x_1451 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec13;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1458.xy, x_1458.z);
        u_xlat72 = x_1460;
        let x_1462 : vec4<f32> = u_xlat13;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.z, x_1462.w);
        let x_1465 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1473 : vec3<f32> = txVec14;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1473.xy, x_1473.z);
        u_xlat73 = x_1475;
        let x_1476 : f32 = u_xlat73;
        let x_1478 : f32 = u_xlat19.y;
        u_xlat73 = (x_1476 * x_1478);
        let x_1481 : f32 = u_xlat19.x;
        let x_1482 : f32 = u_xlat72;
        let x_1484 : f32 = u_xlat73;
        u_xlat72 = ((x_1481 * x_1482) + x_1484);
        let x_1487 : vec4<f32> = u_xlat14;
        let x_1488 : vec2<f32> = vec2<f32>(x_1487.x, x_1487.y);
        let x_1490 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec15;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1497.xy, x_1497.z);
        u_xlat73 = x_1499;
        let x_1501 : f32 = u_xlat19.z;
        let x_1502 : f32 = u_xlat73;
        let x_1504 : f32 = u_xlat72;
        u_xlat72 = ((x_1501 * x_1502) + x_1504);
        let x_1507 : vec4<f32> = u_xlat16;
        let x_1508 : vec2<f32> = vec2<f32>(x_1507.x, x_1507.y);
        let x_1510 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec16;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1517.xy, x_1517.z);
        u_xlat73 = x_1519;
        let x_1521 : f32 = u_xlat19.w;
        let x_1522 : f32 = u_xlat73;
        let x_1524 : f32 = u_xlat72;
        u_xlat72 = ((x_1521 * x_1522) + x_1524);
        let x_1527 : vec4<f32> = u_xlat15;
        let x_1528 : vec2<f32> = vec2<f32>(x_1527.x, x_1527.y);
        let x_1530 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec17;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1537.xy, x_1537.z);
        u_xlat73 = x_1539;
        let x_1541 : f32 = u_xlat20.x;
        let x_1542 : f32 = u_xlat73;
        let x_1544 : f32 = u_xlat72;
        u_xlat72 = ((x_1541 * x_1542) + x_1544);
        let x_1547 : vec4<f32> = u_xlat15;
        let x_1548 : vec2<f32> = vec2<f32>(x_1547.z, x_1547.w);
        let x_1550 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1548.x, x_1548.y, x_1550);
        let x_1557 : vec3<f32> = txVec18;
        let x_1559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1557.xy, x_1557.z);
        u_xlat73 = x_1559;
        let x_1561 : f32 = u_xlat20.y;
        let x_1562 : f32 = u_xlat73;
        let x_1564 : f32 = u_xlat72;
        u_xlat72 = ((x_1561 * x_1562) + x_1564);
        let x_1567 : vec2<f32> = u_xlat58;
        let x_1569 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1567.x, x_1567.y, x_1569);
        let x_1576 : vec3<f32> = txVec19;
        let x_1578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1576.xy, x_1576.z);
        u_xlat73 = x_1578;
        let x_1580 : f32 = u_xlat20.z;
        let x_1581 : f32 = u_xlat73;
        let x_1583 : f32 = u_xlat72;
        u_xlat72 = ((x_1580 * x_1581) + x_1583);
        let x_1586 : vec4<f32> = u_xlat16;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.z, x_1586.w);
        let x_1589 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec20;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1596.xy, x_1596.z);
        u_xlat73 = x_1598;
        let x_1600 : f32 = u_xlat20.w;
        let x_1601 : f32 = u_xlat73;
        let x_1603 : f32 = u_xlat72;
        u_xlat72 = ((x_1600 * x_1601) + x_1603);
        let x_1606 : vec4<f32> = u_xlat17;
        let x_1607 : vec2<f32> = vec2<f32>(x_1606.x, x_1606.y);
        let x_1609 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1607.x, x_1607.y, x_1609);
        let x_1616 : vec3<f32> = txVec21;
        let x_1618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1616.xy, x_1616.z);
        u_xlat73 = x_1618;
        let x_1620 : f32 = u_xlat21.x;
        let x_1621 : f32 = u_xlat73;
        let x_1623 : f32 = u_xlat72;
        u_xlat72 = ((x_1620 * x_1621) + x_1623);
        let x_1626 : vec4<f32> = u_xlat17;
        let x_1627 : vec2<f32> = vec2<f32>(x_1626.z, x_1626.w);
        let x_1629 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1627.x, x_1627.y, x_1629);
        let x_1636 : vec3<f32> = txVec22;
        let x_1638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1636.xy, x_1636.z);
        u_xlat73 = x_1638;
        let x_1640 : f32 = u_xlat21.y;
        let x_1641 : f32 = u_xlat73;
        let x_1643 : f32 = u_xlat72;
        u_xlat72 = ((x_1640 * x_1641) + x_1643);
        let x_1646 : vec3<f32> = u_xlat31;
        let x_1647 : vec2<f32> = vec2<f32>(x_1646.x, x_1646.y);
        let x_1649 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec23;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1656.xy, x_1656.z);
        u_xlat73 = x_1658;
        let x_1660 : f32 = u_xlat21.z;
        let x_1661 : f32 = u_xlat73;
        let x_1663 : f32 = u_xlat72;
        u_xlat72 = ((x_1660 * x_1661) + x_1663);
        let x_1666 : vec2<f32> = u_xlat18;
        let x_1668 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec24;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1675.xy, x_1675.z);
        u_xlat73 = x_1677;
        let x_1679 : f32 = u_xlat21.w;
        let x_1680 : f32 = u_xlat73;
        let x_1682 : f32 = u_xlat72;
        u_xlat72 = ((x_1679 * x_1680) + x_1682);
        let x_1685 : vec4<f32> = u_xlat12;
        let x_1686 : vec2<f32> = vec2<f32>(x_1685.x, x_1685.y);
        let x_1688 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1686.x, x_1686.y, x_1688);
        let x_1695 : vec3<f32> = txVec25;
        let x_1697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1695.xy, x_1695.z);
        u_xlat73 = x_1697;
        let x_1699 : f32 = u_xlat8.x;
        let x_1700 : f32 = u_xlat73;
        let x_1702 : f32 = u_xlat72;
        u_xlat72 = ((x_1699 * x_1700) + x_1702);
        let x_1705 : vec4<f32> = u_xlat12;
        let x_1706 : vec2<f32> = vec2<f32>(x_1705.z, x_1705.w);
        let x_1708 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1706.x, x_1706.y, x_1708);
        let x_1715 : vec3<f32> = txVec26;
        let x_1717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1715.xy, x_1715.z);
        u_xlat73 = x_1717;
        let x_1719 : f32 = u_xlat8.y;
        let x_1720 : f32 = u_xlat73;
        let x_1722 : f32 = u_xlat72;
        u_xlat72 = ((x_1719 * x_1720) + x_1722);
        let x_1725 : vec2<f32> = u_xlat55;
        let x_1727 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1725.x, x_1725.y, x_1727);
        let x_1734 : vec3<f32> = txVec27;
        let x_1736 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1734.xy, x_1734.z);
        u_xlat73 = x_1736;
        let x_1738 : f32 = u_xlat8.z;
        let x_1739 : f32 = u_xlat73;
        let x_1741 : f32 = u_xlat72;
        u_xlat72 = ((x_1738 * x_1739) + x_1741);
        let x_1744 : vec3<f32> = u_xlat28;
        let x_1745 : vec2<f32> = vec2<f32>(x_1744.x, x_1744.y);
        let x_1747 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1745.x, x_1745.y, x_1747);
        let x_1754 : vec3<f32> = txVec28;
        let x_1756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1754.xy, x_1754.z);
        u_xlat28.x = x_1756;
        let x_1759 : f32 = u_xlat8.w;
        let x_1761 : f32 = u_xlat28.x;
        let x_1763 : f32 = u_xlat72;
        u_xlat71 = ((x_1759 * x_1761) + x_1763);
      }
    }
  } else {
    let x_1767 : vec4<f32> = vs_INTERP8;
    let x_1768 : vec2<f32> = vec2<f32>(x_1767.x, x_1767.y);
    let x_1770 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1768.x, x_1768.y, x_1770);
    let x_1777 : vec3<f32> = txVec29;
    let x_1779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1777.xy, x_1777.z);
    u_xlat71 = x_1779;
  }
  let x_1781 : f32 = x_541.x_MainLightShadowParams.x;
  u_xlat28.x = (-(x_1781) + 1.0f);
  let x_1785 : f32 = u_xlat71;
  let x_1787 : f32 = x_541.x_MainLightShadowParams.x;
  let x_1790 : f32 = u_xlat28.x;
  u_xlat71 = ((x_1785 * x_1787) + x_1790);
  let x_1793 : f32 = vs_INTERP8.z;
  u_xlatb28.x = (0.0f >= x_1793);
  let x_1798 : f32 = vs_INTERP8.z;
  u_xlatb50 = (x_1798 >= 1.0f);
  let x_1800 : bool = u_xlatb50;
  let x_1802 : bool = u_xlatb28.x;
  u_xlatb28.x = (x_1800 | x_1802);
  let x_1806 : bool = u_xlatb28.x;
  let x_1807 : f32 = u_xlat71;
  u_xlat71 = select(x_1807, 1.0f, x_1806);
  let x_1809 : vec3<f32> = vs_INTERP0;
  let x_1811 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat28 = (x_1809 + -(x_1811));
  let x_1814 : vec3<f32> = u_xlat28;
  let x_1815 : vec3<f32> = u_xlat28;
  u_xlat28.x = dot(x_1814, x_1815);
  let x_1819 : f32 = u_xlat28.x;
  let x_1821 : f32 = x_541.x_MainLightShadowParams.z;
  let x_1824 : f32 = x_541.x_MainLightShadowParams.w;
  u_xlat28.x = ((x_1819 * x_1821) + x_1824);
  let x_1828 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_1828, 0.0f, 1.0f);
  let x_1831 : f32 = u_xlat71;
  u_xlat50 = (-(x_1831) + 1.0f);
  let x_1835 : f32 = u_xlat28.x;
  let x_1836 : f32 = u_xlat50;
  let x_1838 : f32 = u_xlat71;
  u_xlat71 = ((x_1835 * x_1836) + x_1838);
  let x_1846 : f32 = x_1844.x_MainLightCookieTextureFormat;
  u_xlatb28.x = !((x_1846 == -1.0f));
  let x_1850 : bool = u_xlatb28.x;
  if (x_1850) {
    let x_1853 : vec3<f32> = vs_INTERP0;
    let x_1856 : vec4<f32> = x_1844.x_MainLightWorldToLight[1i];
    let x_1858 : vec2<f32> = (vec2<f32>(x_1853.y, x_1853.y) * vec2<f32>(x_1856.x, x_1856.y));
    let x_1859 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1858.x, x_1858.y, x_1859.z);
    let x_1862 : vec4<f32> = x_1844.x_MainLightWorldToLight[0i];
    let x_1864 : vec3<f32> = vs_INTERP0;
    let x_1867 : vec3<f32> = u_xlat28;
    let x_1869 : vec2<f32> = ((vec2<f32>(x_1862.x, x_1862.y) * vec2<f32>(x_1864.x, x_1864.x)) + vec2<f32>(x_1867.x, x_1867.y));
    let x_1870 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1869.x, x_1869.y, x_1870.z);
    let x_1873 : vec4<f32> = x_1844.x_MainLightWorldToLight[2i];
    let x_1875 : vec3<f32> = vs_INTERP0;
    let x_1878 : vec3<f32> = u_xlat28;
    let x_1880 : vec2<f32> = ((vec2<f32>(x_1873.x, x_1873.y) * vec2<f32>(x_1875.z, x_1875.z)) + vec2<f32>(x_1878.x, x_1878.y));
    let x_1881 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1880.x, x_1880.y, x_1881.z);
    let x_1883 : vec3<f32> = u_xlat28;
    let x_1886 : vec4<f32> = x_1844.x_MainLightWorldToLight[3i];
    let x_1888 : vec2<f32> = (vec2<f32>(x_1883.x, x_1883.y) + vec2<f32>(x_1886.x, x_1886.y));
    let x_1889 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1888.x, x_1888.y, x_1889.z);
    let x_1891 : vec3<f32> = u_xlat28;
    let x_1894 : vec2<f32> = ((vec2<f32>(x_1891.x, x_1891.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1895 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_1894.x, x_1894.y, x_1895.z);
    let x_1902 : vec3<f32> = u_xlat28;
    let x_1905 : f32 = x_45.x_GlobalMipBias.x;
    let x_1906 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1902.x, x_1902.y), x_1905);
    u_xlat8 = x_1906;
    let x_1908 : f32 = x_1844.x_MainLightCookieTextureFormat;
    let x_1910 : f32 = x_1844.x_MainLightCookieTextureFormat;
    let x_1912 : f32 = x_1844.x_MainLightCookieTextureFormat;
    let x_1914 : f32 = x_1844.x_MainLightCookieTextureFormat;
    let x_1915 : vec4<f32> = vec4<f32>(x_1908, x_1910, x_1912, x_1914);
    let x_1923 : vec4<bool> = (vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1915.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb28 = vec2<bool>(x_1923.x, x_1923.y);
    let x_1926 : bool = u_xlatb28.y;
    if (x_1926) {
      let x_1931 : f32 = u_xlat8.w;
      x_1927 = x_1931;
    } else {
      let x_1934 : f32 = u_xlat8.x;
      x_1927 = x_1934;
    }
    let x_1935 : f32 = x_1927;
    u_xlat50 = x_1935;
    let x_1937 : bool = u_xlatb28.x;
    if (x_1937) {
      let x_1941 : vec4<f32> = u_xlat8;
      x_1938 = vec3<f32>(x_1941.x, x_1941.y, x_1941.z);
    } else {
      let x_1944 : f32 = u_xlat50;
      x_1938 = vec3<f32>(x_1944, x_1944, x_1944);
    }
    let x_1946 : vec3<f32> = x_1938;
    u_xlat28 = x_1946;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_1951 : vec3<f32> = u_xlat28;
  let x_1953 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat28 = (x_1951 * vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
  let x_1956 : vec4<f32> = u_xlat6;
  let x_1958 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1956.x, x_1956.x, x_1956.x) * x_1958);
  let x_1960 : vec4<f32> = u_xlat1;
  let x_1963 : vec4<f32> = u_xlat4;
  u_xlat73 = dot(-(vec3<f32>(x_1960.x, x_1960.y, x_1960.w)), vec3<f32>(x_1963.x, x_1963.y, x_1963.z));
  let x_1966 : f32 = u_xlat73;
  let x_1967 : f32 = u_xlat73;
  u_xlat73 = (x_1966 + x_1967);
  let x_1969 : vec4<f32> = u_xlat4;
  let x_1971 : f32 = u_xlat73;
  let x_1975 : vec4<f32> = u_xlat1;
  let x_1978 : vec3<f32> = ((vec3<f32>(x_1969.x, x_1969.y, x_1969.z) * -(vec3<f32>(x_1971, x_1971, x_1971))) + -(vec3<f32>(x_1975.x, x_1975.y, x_1975.w)));
  let x_1979 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
  let x_1981 : vec4<f32> = u_xlat4;
  let x_1983 : vec4<f32> = u_xlat1;
  u_xlat73 = dot(vec3<f32>(x_1981.x, x_1981.y, x_1981.z), vec3<f32>(x_1983.x, x_1983.y, x_1983.w));
  let x_1986 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1986, 0.0f, 1.0f);
  let x_1988 : f32 = u_xlat73;
  u_xlat73 = (-(x_1988) + 1.0f);
  let x_1991 : f32 = u_xlat73;
  let x_1992 : f32 = u_xlat73;
  u_xlat73 = (x_1991 * x_1992);
  let x_1994 : f32 = u_xlat73;
  let x_1995 : f32 = u_xlat73;
  u_xlat73 = (x_1994 * x_1995);
  let x_1998 : f32 = u_xlat68;
  u_xlat74 = ((-(x_1998) * 0.699999988f) + 1.700000048f);
  let x_2004 : f32 = u_xlat68;
  let x_2005 : f32 = u_xlat74;
  u_xlat2.w = (x_2004 * x_2005);
  let x_2008 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_2008 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_2021 : vec4<f32> = u_xlat8;
  let x_2024 : f32 = u_xlat2.w;
  let x_2025 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2021.x, x_2021.y, x_2021.z), x_2024);
  u_xlat8 = x_2025;
  let x_2027 : f32 = u_xlat8.w;
  u_xlat68 = (x_2027 + -1.0f);
  let x_2030 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_2031 : f32 = u_xlat68;
  u_xlat68 = ((x_2030 * x_2031) + 1.0f);
  let x_2034 : f32 = u_xlat68;
  u_xlat68 = max(x_2034, 0.0f);
  let x_2036 : f32 = u_xlat68;
  u_xlat68 = log2(x_2036);
  let x_2038 : f32 = u_xlat68;
  let x_2040 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat68 = (x_2038 * x_2040);
  let x_2042 : f32 = u_xlat68;
  u_xlat68 = exp2(x_2042);
  let x_2044 : f32 = u_xlat68;
  let x_2046 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat68 = (x_2044 * x_2046);
  let x_2048 : vec4<f32> = u_xlat8;
  let x_2050 : f32 = u_xlat68;
  let x_2052 : vec3<f32> = (vec3<f32>(x_2048.x, x_2048.y, x_2048.z) * vec3<f32>(x_2050, x_2050, x_2050));
  let x_2053 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2052.x, x_2052.y, x_2052.z, x_2053.w);
  let x_2055 : vec3<f32> = u_xlat3;
  let x_2057 : vec3<f32> = u_xlat3;
  let x_2061 : vec2<f32> = ((vec2<f32>(x_2055.x, x_2055.x) * vec2<f32>(x_2057.x, x_2057.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2062 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2061.x, x_2061.y, x_2062.z, x_2062.w);
  let x_2065 : f32 = u_xlat9.y;
  u_xlat68 = (1.0f / x_2065);
  let x_2067 : vec3<f32> = u_xlat0;
  let x_2069 : f32 = u_xlat69;
  u_xlat31 = (-(x_2067) + vec3<f32>(x_2069, x_2069, x_2069));
  let x_2072 : f32 = u_xlat73;
  let x_2074 : vec3<f32> = u_xlat31;
  let x_2076 : vec3<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_2072, x_2072, x_2072) * x_2074) + x_2076);
  let x_2078 : f32 = u_xlat68;
  let x_2080 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2078, x_2078, x_2078) * x_2080);
  let x_2082 : vec4<f32> = u_xlat8;
  let x_2084 : vec3<f32> = u_xlat31;
  let x_2085 : vec3<f32> = (vec3<f32>(x_2082.x, x_2082.y, x_2082.z) * x_2084);
  let x_2086 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2085.x, x_2085.y, x_2085.z, x_2086.w);
  let x_2088 : vec3<f32> = u_xlat5;
  let x_2089 : vec3<f32> = u_xlat7;
  let x_2091 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_2088 * x_2089) + vec3<f32>(x_2091.x, x_2091.y, x_2091.z));
  let x_2094 : f32 = u_xlat71;
  let x_2097 : f32 = x_120.unity_LightData.z;
  u_xlat68 = (x_2094 * x_2097);
  let x_2099 : vec4<f32> = u_xlat4;
  let x_2102 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2099.x, x_2099.y, x_2099.z), vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
  let x_2107 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2107, 0.0f, 1.0f);
  let x_2110 : f32 = u_xlat68;
  let x_2112 : f32 = u_xlat3.x;
  u_xlat68 = (x_2110 * x_2112);
  let x_2114 : f32 = u_xlat68;
  let x_2116 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2114, x_2114, x_2114) * x_2116);
  let x_2118 : vec4<f32> = u_xlat1;
  let x_2121 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2123 : vec3<f32> = (vec3<f32>(x_2118.x, x_2118.y, x_2118.w) + vec3<f32>(x_2121.x, x_2121.y, x_2121.z));
  let x_2124 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2123.x, x_2123.y, x_2123.z, x_2124.w);
  let x_2126 : vec4<f32> = u_xlat8;
  let x_2128 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2126.x, x_2126.y, x_2126.z), vec3<f32>(x_2128.x, x_2128.y, x_2128.z));
  let x_2131 : f32 = u_xlat68;
  u_xlat68 = max(x_2131, 1.17549435e-37f);
  let x_2134 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_2134);
  let x_2136 : f32 = u_xlat68;
  let x_2138 : vec4<f32> = u_xlat8;
  let x_2140 : vec3<f32> = (vec3<f32>(x_2136, x_2136, x_2136) * vec3<f32>(x_2138.x, x_2138.y, x_2138.z));
  let x_2141 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2140.x, x_2140.y, x_2140.z, x_2141.w);
  let x_2143 : vec4<f32> = u_xlat4;
  let x_2145 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2143.x, x_2143.y, x_2143.z), vec3<f32>(x_2145.x, x_2145.y, x_2145.z));
  let x_2148 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2148, 0.0f, 1.0f);
  let x_2151 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2153 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2151.x, x_2151.y, x_2151.z), vec3<f32>(x_2153.x, x_2153.y, x_2153.z));
  let x_2158 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2158, 0.0f, 1.0f);
  let x_2161 : f32 = u_xlat68;
  let x_2162 : f32 = u_xlat68;
  u_xlat68 = (x_2161 * x_2162);
  let x_2164 : f32 = u_xlat68;
  let x_2166 : f32 = u_xlat9.x;
  u_xlat68 = ((x_2164 * x_2166) + 1.000010014f);
  let x_2171 : f32 = u_xlat3.x;
  let x_2173 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2171 * x_2173);
  let x_2176 : f32 = u_xlat68;
  let x_2177 : f32 = u_xlat68;
  u_xlat68 = (x_2176 * x_2177);
  let x_2180 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2180, 0.100000001f);
  let x_2184 : f32 = u_xlat68;
  let x_2186 : f32 = u_xlat3.x;
  u_xlat68 = (x_2184 * x_2186);
  let x_2188 : f32 = u_xlat70;
  let x_2189 : f32 = u_xlat68;
  u_xlat68 = (x_2188 * x_2189);
  let x_2191 : f32 = u_xlat25;
  let x_2192 : f32 = u_xlat68;
  u_xlat68 = (x_2191 / x_2192);
  let x_2194 : vec3<f32> = u_xlat0;
  let x_2195 : f32 = u_xlat68;
  let x_2198 : vec3<f32> = u_xlat7;
  let x_2199 : vec3<f32> = ((x_2194 * vec3<f32>(x_2195, x_2195, x_2195)) + x_2198);
  let x_2200 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2199.x, x_2199.y, x_2199.z, x_2200.w);
  let x_2202 : vec3<f32> = u_xlat28;
  let x_2203 : vec4<f32> = u_xlat8;
  u_xlat28 = (x_2202 * vec3<f32>(x_2203.x, x_2203.y, x_2203.z));
  let x_2207 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2209 : f32 = x_120.unity_LightData.y;
  u_xlat68 = min(x_2207, x_2209);
  let x_2213 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_2213));
  let x_2219 : f32 = x_1844.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2221 : f32 = x_1844.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2223 : f32 = x_1844.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2225 : f32 = x_1844.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2226 : vec4<f32> = vec4<f32>(x_2219, x_2221, x_2223, x_2225);
  let x_2233 : vec4<bool> = (vec4<f32>(x_2226.x, x_2226.y, x_2226.z, x_2226.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2234 : vec2<bool> = vec2<bool>(x_2233.x, x_2233.w);
  let x_2235 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2234.x, x_2235.y, x_2235.z, x_2234.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2246 : u32 = u_xlatu_loop_1;
    let x_2247 : u32 = u_xlatu68;
    if ((x_2246 < x_2247)) {
    } else {
      break;
    }
    let x_2250 : u32 = u_xlatu_loop_1;
    u_xlatu73 = (x_2250 >> 2u);
    let x_2254 : u32 = u_xlatu_loop_1;
    u_xlati74 = bitcast<i32>((x_2254 & 3u));
    let x_2257 : u32 = u_xlatu73;
    let x_2260 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_2257)];
    let x_2270 : i32 = u_xlati74;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2275 : vec4<u32> = indexable[x_2270];
    u_xlat73 = dot(x_2260, bitcast<vec4<f32>>(x_2275));
    let x_2278 : f32 = u_xlat73;
    u_xlatu73 = bitcast<u32>(i32(x_2278));
    let x_2281 : vec3<f32> = vs_INTERP0;
    let x_2293 : u32 = u_xlatu73;
    let x_2296 : vec4<f32> = x_2292.x_AdditionalLightsPosition[bitcast<i32>(x_2293)];
    let x_2299 : u32 = u_xlatu73;
    let x_2302 : vec4<f32> = x_2292.x_AdditionalLightsPosition[bitcast<i32>(x_2299)];
    u_xlat31 = ((-(x_2281) * vec3<f32>(x_2296.w, x_2296.w, x_2296.w)) + vec3<f32>(x_2302.x, x_2302.y, x_2302.z));
    let x_2305 : vec3<f32> = u_xlat31;
    let x_2306 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2305, x_2306);
    let x_2308 : f32 = u_xlat74;
    u_xlat74 = max(x_2308, 6.10351562e-05f);
    let x_2311 : f32 = u_xlat74;
    u_xlat10.x = inverseSqrt(x_2311);
    let x_2315 : vec3<f32> = u_xlat31;
    let x_2316 : vec4<f32> = u_xlat10;
    u_xlat32 = (x_2315 * vec3<f32>(x_2316.x, x_2316.x, x_2316.x));
    let x_2319 : f32 = u_xlat74;
    u_xlat11.x = (1.0f / x_2319);
    let x_2322 : f32 = u_xlat74;
    let x_2323 : u32 = u_xlatu73;
    let x_2326 : f32 = x_2292.x_AdditionalLightsAttenuation[bitcast<i32>(x_2323)].x;
    u_xlat74 = (x_2322 * x_2326);
    let x_2328 : f32 = u_xlat74;
    let x_2330 : f32 = u_xlat74;
    u_xlat74 = ((-(x_2328) * x_2330) + 1.0f);
    let x_2333 : f32 = u_xlat74;
    u_xlat74 = max(x_2333, 0.0f);
    let x_2335 : f32 = u_xlat74;
    let x_2336 : f32 = u_xlat74;
    u_xlat74 = (x_2335 * x_2336);
    let x_2338 : f32 = u_xlat74;
    let x_2340 : f32 = u_xlat11.x;
    u_xlat74 = (x_2338 * x_2340);
    let x_2342 : u32 = u_xlatu73;
    let x_2345 : vec4<f32> = x_2292.x_AdditionalLightsSpotDir[bitcast<i32>(x_2342)];
    let x_2347 : vec3<f32> = u_xlat32;
    u_xlat11.x = dot(vec3<f32>(x_2345.x, x_2345.y, x_2345.z), x_2347);
    let x_2351 : f32 = u_xlat11.x;
    let x_2352 : u32 = u_xlatu73;
    let x_2355 : f32 = x_2292.x_AdditionalLightsAttenuation[bitcast<i32>(x_2352)].z;
    let x_2357 : u32 = u_xlatu73;
    let x_2360 : f32 = x_2292.x_AdditionalLightsAttenuation[bitcast<i32>(x_2357)].w;
    u_xlat11.x = ((x_2351 * x_2355) + x_2360);
    let x_2364 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_2364, 0.0f, 1.0f);
    let x_2368 : f32 = u_xlat11.x;
    let x_2370 : f32 = u_xlat11.x;
    u_xlat11.x = (x_2368 * x_2370);
    let x_2373 : f32 = u_xlat74;
    let x_2375 : f32 = u_xlat11.x;
    u_xlat74 = (x_2373 * x_2375);
    let x_2378 : u32 = u_xlatu73;
    u_xlatu11 = (x_2378 >> 5u);
    let x_2381 : u32 = u_xlatu73;
    u_xlati33 = (1i << bitcast<u32>((bitcast<i32>(x_2381) & 31i)));
    let x_2387 : i32 = u_xlati33;
    let x_2389 : u32 = u_xlatu11;
    let x_2392 : f32 = x_1844.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2389)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_2387) & bitcast<u32>(x_2392)));
    let x_2396 : i32 = u_xlati11;
    if ((x_2396 != 0i)) {
      let x_2406 : u32 = u_xlatu73;
      let x_2409 : f32 = x_2405.x_AdditionalLightsLightTypes[bitcast<i32>(x_2406)].el;
      u_xlati11 = i32(x_2409);
      let x_2411 : i32 = u_xlati11;
      u_xlati33 = select(1i, 0i, (x_2411 != 0i));
      let x_2415 : u32 = u_xlatu73;
      u_xlati55 = (bitcast<i32>(x_2415) << bitcast<u32>(2i));
      let x_2418 : i32 = u_xlati33;
      if ((x_2418 != 0i)) {
        let x_2422 : vec3<f32> = vs_INTERP0;
        let x_2424 : i32 = u_xlati55;
        let x_2427 : i32 = u_xlati55;
        let x_2431 : vec4<f32> = x_2405.x_AdditionalLightsWorldToLights[((x_2424 + 1i) / 4i)][((x_2427 + 1i) % 4i)];
        let x_2433 : vec3<f32> = (vec3<f32>(x_2422.y, x_2422.y, x_2422.y) * vec3<f32>(x_2431.x, x_2431.y, x_2431.w));
        let x_2434 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);
        let x_2436 : i32 = u_xlati55;
        let x_2438 : i32 = u_xlati55;
        let x_2441 : vec4<f32> = x_2405.x_AdditionalLightsWorldToLights[(x_2436 / 4i)][(x_2438 % 4i)];
        let x_2443 : vec3<f32> = vs_INTERP0;
        let x_2446 : vec4<f32> = u_xlat12;
        let x_2448 : vec3<f32> = ((vec3<f32>(x_2441.x, x_2441.y, x_2441.w) * vec3<f32>(x_2443.x, x_2443.x, x_2443.x)) + vec3<f32>(x_2446.x, x_2446.y, x_2446.z));
        let x_2449 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
        let x_2451 : i32 = u_xlati55;
        let x_2454 : i32 = u_xlati55;
        let x_2458 : vec4<f32> = x_2405.x_AdditionalLightsWorldToLights[((x_2451 + 2i) / 4i)][((x_2454 + 2i) % 4i)];
        let x_2460 : vec3<f32> = vs_INTERP0;
        let x_2463 : vec4<f32> = u_xlat12;
        let x_2465 : vec3<f32> = ((vec3<f32>(x_2458.x, x_2458.y, x_2458.w) * vec3<f32>(x_2460.z, x_2460.z, x_2460.z)) + vec3<f32>(x_2463.x, x_2463.y, x_2463.z));
        let x_2466 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
        let x_2468 : vec4<f32> = u_xlat12;
        let x_2470 : i32 = u_xlati55;
        let x_2473 : i32 = u_xlati55;
        let x_2477 : vec4<f32> = x_2405.x_AdditionalLightsWorldToLights[((x_2470 + 3i) / 4i)][((x_2473 + 3i) % 4i)];
        let x_2479 : vec3<f32> = (vec3<f32>(x_2468.x, x_2468.y, x_2468.z) + vec3<f32>(x_2477.x, x_2477.y, x_2477.w));
        let x_2480 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2479.x, x_2479.y, x_2479.z, x_2480.w);
        let x_2483 : vec4<f32> = u_xlat12;
        let x_2485 : vec4<f32> = u_xlat12;
        let x_2487 : vec2<f32> = (vec2<f32>(x_2483.x, x_2483.y) / vec2<f32>(x_2485.z, x_2485.z));
        let x_2488 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2487.x, x_2488.y, x_2487.y);
        let x_2490 : vec3<f32> = u_xlat33;
        let x_2493 : vec2<f32> = ((vec2<f32>(x_2490.x, x_2490.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2494 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2493.x, x_2494.y, x_2493.y);
        let x_2496 : vec3<f32> = u_xlat33;
        let x_2500 : vec2<f32> = clamp(vec2<f32>(x_2496.x, x_2496.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2501 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2500.x, x_2501.y, x_2500.y);
        let x_2503 : u32 = u_xlatu73;
        let x_2506 : vec4<f32> = x_2405.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2503)];
        let x_2508 : vec3<f32> = u_xlat33;
        let x_2511 : u32 = u_xlatu73;
        let x_2514 : vec4<f32> = x_2405.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2511)];
        let x_2516 : vec2<f32> = ((vec2<f32>(x_2506.x, x_2506.y) * vec2<f32>(x_2508.x, x_2508.z)) + vec2<f32>(x_2514.z, x_2514.w));
        let x_2517 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2516.x, x_2517.y, x_2516.y);
      } else {
        let x_2521 : i32 = u_xlati11;
        u_xlatb11 = (x_2521 == 1i);
        let x_2523 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_2523);
        let x_2525 : i32 = u_xlati11;
        if ((x_2525 != 0i)) {
          let x_2529 : vec3<f32> = vs_INTERP0;
          let x_2531 : i32 = u_xlati55;
          let x_2534 : i32 = u_xlati55;
          let x_2538 : vec4<f32> = x_2405.x_AdditionalLightsWorldToLights[((x_2531 + 1i) / 4i)][((x_2534 + 1i) % 4i)];
          let x_2540 : vec2<f32> = (vec2<f32>(x_2529.y, x_2529.y) * vec2<f32>(x_2538.x, x_2538.y));
          let x_2541 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2540.x, x_2540.y, x_2541.z, x_2541.w);
          let x_2543 : i32 = u_xlati55;
          let x_2545 : i32 = u_xlati55;
          let x_2548 : vec4<f32> = x_2405.x_AdditionalLightsWorldToLights[(x_2543 / 4i)][(x_2545 % 4i)];
          let x_2550 : vec3<f32> = vs_INTERP0;
          let x_2553 : vec4<f32> = u_xlat12;
          let x_2555 : vec2<f32> = ((vec2<f32>(x_2548.x, x_2548.y) * vec2<f32>(x_2550.x, x_2550.x)) + vec2<f32>(x_2553.x, x_2553.y));
          let x_2556 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2555.x, x_2555.y, x_2556.z, x_2556.w);
          let x_2558 : i32 = u_xlati55;
          let x_2561 : i32 = u_xlati55;
          let x_2565 : vec4<f32> = x_2405.x_AdditionalLightsWorldToLights[((x_2558 + 2i) / 4i)][((x_2561 + 2i) % 4i)];
          let x_2567 : vec3<f32> = vs_INTERP0;
          let x_2570 : vec4<f32> = u_xlat12;
          let x_2572 : vec2<f32> = ((vec2<f32>(x_2565.x, x_2565.y) * vec2<f32>(x_2567.z, x_2567.z)) + vec2<f32>(x_2570.x, x_2570.y));
          let x_2573 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2572.x, x_2572.y, x_2573.z, x_2573.w);
          let x_2575 : vec4<f32> = u_xlat12;
          let x_2577 : i32 = u_xlati55;
          let x_2580 : i32 = u_xlati55;
          let x_2584 : vec4<f32> = x_2405.x_AdditionalLightsWorldToLights[((x_2577 + 3i) / 4i)][((x_2580 + 3i) % 4i)];
          let x_2586 : vec2<f32> = (vec2<f32>(x_2575.x, x_2575.y) + vec2<f32>(x_2584.x, x_2584.y));
          let x_2587 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2586.x, x_2586.y, x_2587.z, x_2587.w);
          let x_2589 : vec4<f32> = u_xlat12;
          let x_2592 : vec2<f32> = ((vec2<f32>(x_2589.x, x_2589.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2593 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2592.x, x_2592.y, x_2593.z, x_2593.w);
          let x_2595 : vec4<f32> = u_xlat12;
          let x_2597 : vec2<f32> = fract(vec2<f32>(x_2595.x, x_2595.y));
          let x_2598 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2597.x, x_2597.y, x_2598.z, x_2598.w);
          let x_2600 : u32 = u_xlatu73;
          let x_2603 : vec4<f32> = x_2405.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2600)];
          let x_2605 : vec4<f32> = u_xlat12;
          let x_2608 : u32 = u_xlatu73;
          let x_2611 : vec4<f32> = x_2405.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2608)];
          let x_2613 : vec2<f32> = ((vec2<f32>(x_2603.x, x_2603.y) * vec2<f32>(x_2605.x, x_2605.y)) + vec2<f32>(x_2611.z, x_2611.w));
          let x_2614 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2613.x, x_2614.y, x_2613.y);
        } else {
          let x_2617 : vec3<f32> = vs_INTERP0;
          let x_2619 : i32 = u_xlati55;
          let x_2622 : i32 = u_xlati55;
          let x_2626 : vec4<f32> = x_2405.x_AdditionalLightsWorldToLights[((x_2619 + 1i) / 4i)][((x_2622 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2617.y, x_2617.y, x_2617.y, x_2617.y) * x_2626);
          let x_2628 : i32 = u_xlati55;
          let x_2630 : i32 = u_xlati55;
          let x_2633 : vec4<f32> = x_2405.x_AdditionalLightsWorldToLights[(x_2628 / 4i)][(x_2630 % 4i)];
          let x_2634 : vec3<f32> = vs_INTERP0;
          let x_2637 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2633 * vec4<f32>(x_2634.x, x_2634.x, x_2634.x, x_2634.x)) + x_2637);
          let x_2639 : i32 = u_xlati55;
          let x_2642 : i32 = u_xlati55;
          let x_2646 : vec4<f32> = x_2405.x_AdditionalLightsWorldToLights[((x_2639 + 2i) / 4i)][((x_2642 + 2i) % 4i)];
          let x_2647 : vec3<f32> = vs_INTERP0;
          let x_2650 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2646 * vec4<f32>(x_2647.z, x_2647.z, x_2647.z, x_2647.z)) + x_2650);
          let x_2652 : vec4<f32> = u_xlat12;
          let x_2653 : i32 = u_xlati55;
          let x_2656 : i32 = u_xlati55;
          let x_2660 : vec4<f32> = x_2405.x_AdditionalLightsWorldToLights[((x_2653 + 3i) / 4i)][((x_2656 + 3i) % 4i)];
          u_xlat12 = (x_2652 + x_2660);
          let x_2662 : vec4<f32> = u_xlat12;
          let x_2664 : vec4<f32> = u_xlat12;
          let x_2666 : vec3<f32> = (vec3<f32>(x_2662.x, x_2662.y, x_2662.z) / vec3<f32>(x_2664.w, x_2664.w, x_2664.w));
          let x_2667 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2666.x, x_2666.y, x_2666.z, x_2667.w);
          let x_2669 : vec4<f32> = u_xlat12;
          let x_2671 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_2669.x, x_2669.y, x_2669.z), vec3<f32>(x_2671.x, x_2671.y, x_2671.z));
          let x_2676 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_2676);
          let x_2679 : vec4<f32> = u_xlat11;
          let x_2681 : vec4<f32> = u_xlat12;
          let x_2683 : vec3<f32> = (vec3<f32>(x_2679.x, x_2679.x, x_2679.x) * vec3<f32>(x_2681.x, x_2681.y, x_2681.z));
          let x_2684 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2683.x, x_2683.y, x_2683.z, x_2684.w);
          let x_2686 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_2686.x, x_2686.y, x_2686.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2693 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_2693, 0.000001f);
          let x_2698 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_2698);
          let x_2701 : vec4<f32> = u_xlat11;
          let x_2703 : vec4<f32> = u_xlat12;
          let x_2705 : vec3<f32> = (vec3<f32>(x_2701.x, x_2701.x, x_2701.x) * vec3<f32>(x_2703.z, x_2703.x, x_2703.y));
          let x_2706 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2705.x, x_2705.y, x_2705.z, x_2706.w);
          let x_2709 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2709);
          let x_2713 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2713, 0.0f, 1.0f);
          let x_2717 : vec4<f32> = u_xlat13;
          let x_2720 : vec4<bool> = (vec4<f32>(x_2717.y, x_2717.z, x_2717.y, x_2717.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb56 = vec2<bool>(x_2720.x, x_2720.y);
          let x_2724 : bool = u_xlatb56.x;
          if (x_2724) {
            let x_2729 : f32 = u_xlat13.x;
            x_2725 = x_2729;
          } else {
            let x_2732 : f32 = u_xlat13.x;
            x_2725 = -(x_2732);
          }
          let x_2734 : f32 = x_2725;
          u_xlat56.x = x_2734;
          let x_2737 : bool = u_xlatb56.y;
          if (x_2737) {
            let x_2742 : f32 = u_xlat13.x;
            x_2738 = x_2742;
          } else {
            let x_2745 : f32 = u_xlat13.x;
            x_2738 = -(x_2745);
          }
          let x_2747 : f32 = x_2738;
          u_xlat56.y = x_2747;
          let x_2749 : vec4<f32> = u_xlat12;
          let x_2751 : vec4<f32> = u_xlat11;
          let x_2754 : vec2<f32> = u_xlat56;
          let x_2755 : vec2<f32> = ((vec2<f32>(x_2749.x, x_2749.y) * vec2<f32>(x_2751.x, x_2751.x)) + x_2754);
          let x_2756 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2755.x, x_2756.y, x_2755.y, x_2756.w);
          let x_2758 : vec4<f32> = u_xlat11;
          let x_2761 : vec2<f32> = ((vec2<f32>(x_2758.x, x_2758.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2762 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2761.x, x_2762.y, x_2761.y, x_2762.w);
          let x_2764 : vec4<f32> = u_xlat11;
          let x_2768 : vec2<f32> = clamp(vec2<f32>(x_2764.x, x_2764.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2769 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2768.x, x_2769.y, x_2768.y, x_2769.w);
          let x_2771 : u32 = u_xlatu73;
          let x_2774 : vec4<f32> = x_2405.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2771)];
          let x_2776 : vec4<f32> = u_xlat11;
          let x_2779 : u32 = u_xlatu73;
          let x_2782 : vec4<f32> = x_2405.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2779)];
          let x_2784 : vec2<f32> = ((vec2<f32>(x_2774.x, x_2774.y) * vec2<f32>(x_2776.x, x_2776.z)) + vec2<f32>(x_2782.z, x_2782.w));
          let x_2785 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2784.x, x_2785.y, x_2784.y);
        }
      }
      let x_2792 : vec3<f32> = u_xlat33;
      let x_2795 : f32 = x_45.x_GlobalMipBias.x;
      let x_2796 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2792.x, x_2792.z), x_2795);
      u_xlat11 = x_2796;
      let x_2799 : bool = u_xlatb3.w;
      if (x_2799) {
        let x_2804 : f32 = u_xlat11.w;
        x_2800 = x_2804;
      } else {
        let x_2807 : f32 = u_xlat11.x;
        x_2800 = x_2807;
      }
      let x_2808 : f32 = x_2800;
      u_xlat77 = x_2808;
      let x_2810 : bool = u_xlatb3.x;
      if (x_2810) {
        let x_2814 : vec4<f32> = u_xlat11;
        x_2811 = vec3<f32>(x_2814.x, x_2814.y, x_2814.z);
      } else {
        let x_2817 : f32 = u_xlat77;
        x_2811 = vec3<f32>(x_2817, x_2817, x_2817);
      }
      let x_2819 : vec3<f32> = x_2811;
      let x_2820 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2819.x, x_2819.y, x_2819.z, x_2820.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2826 : vec4<f32> = u_xlat11;
    let x_2828 : u32 = u_xlatu73;
    let x_2831 : vec4<f32> = x_2292.x_AdditionalLightsColor[bitcast<i32>(x_2828)];
    let x_2833 : vec3<f32> = (vec3<f32>(x_2826.x, x_2826.y, x_2826.z) * vec3<f32>(x_2831.x, x_2831.y, x_2831.z));
    let x_2834 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2833.x, x_2833.y, x_2833.z, x_2834.w);
    let x_2836 : vec4<f32> = u_xlat6;
    let x_2838 : vec4<f32> = u_xlat11;
    let x_2840 : vec3<f32> = (vec3<f32>(x_2836.x, x_2836.x, x_2836.x) * vec3<f32>(x_2838.x, x_2838.y, x_2838.z));
    let x_2841 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2841.w);
    let x_2843 : vec4<f32> = u_xlat4;
    let x_2845 : vec3<f32> = u_xlat32;
    u_xlat73 = dot(vec3<f32>(x_2843.x, x_2843.y, x_2843.z), x_2845);
    let x_2847 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2847, 0.0f, 1.0f);
    let x_2849 : f32 = u_xlat73;
    let x_2850 : f32 = u_xlat74;
    u_xlat73 = (x_2849 * x_2850);
    let x_2852 : f32 = u_xlat73;
    let x_2854 : vec4<f32> = u_xlat11;
    let x_2856 : vec3<f32> = (vec3<f32>(x_2852, x_2852, x_2852) * vec3<f32>(x_2854.x, x_2854.y, x_2854.z));
    let x_2857 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2856.x, x_2856.y, x_2856.z, x_2857.w);
    let x_2859 : vec3<f32> = u_xlat31;
    let x_2860 : vec4<f32> = u_xlat10;
    let x_2863 : vec4<f32> = u_xlat1;
    u_xlat31 = ((x_2859 * vec3<f32>(x_2860.x, x_2860.x, x_2860.x)) + vec3<f32>(x_2863.x, x_2863.y, x_2863.w));
    let x_2866 : vec3<f32> = u_xlat31;
    let x_2867 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(x_2866, x_2867);
    let x_2869 : f32 = u_xlat73;
    u_xlat73 = max(x_2869, 1.17549435e-37f);
    let x_2871 : f32 = u_xlat73;
    u_xlat73 = inverseSqrt(x_2871);
    let x_2873 : f32 = u_xlat73;
    let x_2875 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_2873, x_2873, x_2873) * x_2875);
    let x_2877 : vec4<f32> = u_xlat4;
    let x_2879 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(vec3<f32>(x_2877.x, x_2877.y, x_2877.z), x_2879);
    let x_2881 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2881, 0.0f, 1.0f);
    let x_2883 : vec3<f32> = u_xlat32;
    let x_2884 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(x_2883, x_2884);
    let x_2886 : f32 = u_xlat74;
    u_xlat74 = clamp(x_2886, 0.0f, 1.0f);
    let x_2888 : f32 = u_xlat73;
    let x_2889 : f32 = u_xlat73;
    u_xlat73 = (x_2888 * x_2889);
    let x_2891 : f32 = u_xlat73;
    let x_2893 : f32 = u_xlat9.x;
    u_xlat73 = ((x_2891 * x_2893) + 1.000010014f);
    let x_2896 : f32 = u_xlat74;
    let x_2897 : f32 = u_xlat74;
    u_xlat74 = (x_2896 * x_2897);
    let x_2899 : f32 = u_xlat73;
    let x_2900 : f32 = u_xlat73;
    u_xlat73 = (x_2899 * x_2900);
    let x_2902 : f32 = u_xlat74;
    u_xlat74 = max(x_2902, 0.100000001f);
    let x_2904 : f32 = u_xlat73;
    let x_2905 : f32 = u_xlat74;
    u_xlat73 = (x_2904 * x_2905);
    let x_2907 : f32 = u_xlat70;
    let x_2908 : f32 = u_xlat73;
    u_xlat73 = (x_2907 * x_2908);
    let x_2910 : f32 = u_xlat25;
    let x_2911 : f32 = u_xlat73;
    u_xlat73 = (x_2910 / x_2911);
    let x_2913 : vec3<f32> = u_xlat0;
    let x_2914 : f32 = u_xlat73;
    let x_2917 : vec3<f32> = u_xlat7;
    u_xlat31 = ((x_2913 * vec3<f32>(x_2914, x_2914, x_2914)) + x_2917);
    let x_2919 : vec3<f32> = u_xlat31;
    let x_2920 : vec4<f32> = u_xlat11;
    let x_2923 : vec4<f32> = u_xlat8;
    let x_2925 : vec3<f32> = ((x_2919 * vec3<f32>(x_2920.x, x_2920.y, x_2920.z)) + vec3<f32>(x_2923.x, x_2923.y, x_2923.z));
    let x_2926 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2925.x, x_2925.y, x_2925.z, x_2926.w);

    continuing {
      let x_2928 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2928 + bitcast<u32>(1i));
    }
  }
  let x_2930 : vec3<f32> = u_xlat5;
  let x_2931 : f32 = u_xlat47;
  let x_2934 : vec3<f32> = u_xlat28;
  u_xlat0 = ((x_2930 * vec3<f32>(x_2931, x_2931, x_2931)) + x_2934);
  let x_2936 : vec4<f32> = u_xlat8;
  let x_2938 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2936.x, x_2936.y, x_2936.z) + x_2938);
  let x_2940 : vec4<f32> = u_xlat2;
  let x_2942 : f32 = u_xlat45;
  let x_2945 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2940.x, x_2940.y, x_2940.z) * vec3<f32>(x_2942, x_2942, x_2942)) + x_2945);
  let x_2947 : f32 = u_xlat66;
  let x_2948 : f32 = u_xlat66;
  u_xlat66 = (x_2947 * -(x_2948));
  let x_2951 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2951);
  let x_2953 : vec3<f32> = u_xlat0;
  let x_2956 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_2953 + -(vec3<f32>(x_2956.x, x_2956.y, x_2956.z)));
  let x_2962 : f32 = u_xlat66;
  let x_2964 : vec3<f32> = u_xlat0;
  let x_2967 : vec4<f32> = x_45.unity_FogColor;
  let x_2969 : vec3<f32> = ((vec3<f32>(x_2962, x_2962, x_2962) * x_2964) + vec3<f32>(x_2967.x, x_2967.y, x_2967.z));
  let x_2970 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2969.x, x_2969.y, x_2969.z, x_2970.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

