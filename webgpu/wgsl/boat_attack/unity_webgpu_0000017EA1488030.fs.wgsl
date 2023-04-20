diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Shininess : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_8,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat23 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb46 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb69 : bool;

@group(1) @binding(4) var<uniform> x_261 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb70 : bool;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb71 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_1535 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_1660 : UnityPerDraw;

var<private> u_xlatu69 : u32;

var<private> u_xlatu72 : u32;

var<private> u_xlati73 : i32;

var<private> u_xlati72 : i32;

@group(1) @binding(1) var<uniform> x_1784 : AdditionalLights;

var<private> u_xlat73 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb74 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat75 : f32;

var<private> u_xlat74 : f32;

var<private> u_xlatb51 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlatb75 : bool;

var<private> u_xlati74 : i32;

var<private> u_xlati75 : i32;

var<private> u_xlati76 : i32;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlatb54 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu71 : u32;

var<private> u_xlatb72 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_72 : f32;
  var x_121 : f32;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
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
  var x_1622 : f32;
  var x_1633 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1924 : f32;
  var x_1934 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3509 : f32;
  var x_3522 : f32;
  var x_3570 : f32;
  var x_3581 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_53 * x_55);
  let x_62 : f32 = u_xlat1.w;
  let x_68 : f32 = x_65.x_Cutoff;
  u_xlatb0 = (x_62 >= x_68);
  let x_70 : bool = u_xlatb0;
  if (x_70) {
    let x_76 : f32 = u_xlat1.w;
    x_72 = x_76;
  } else {
    x_72 = 0.0f;
  }
  let x_79 : f32 = x_72;
  u_xlat0.x = x_79;
  let x_83 : f32 = u_xlat0.w;
  let x_85 : f32 = vs_TEXCOORD7.w;
  let x_88 : f32 = x_65.x_Cutoff;
  u_xlat23 = ((x_83 * x_85) + -(x_88));
  let x_93 : f32 = u_xlat1.w;
  u_xlat46 = dpdxCoarse(x_93);
  let x_97 : f32 = u_xlat1.w;
  u_xlat69 = dpdyCoarse(x_97);
  let x_99 : f32 = u_xlat69;
  let x_101 : f32 = u_xlat46;
  u_xlat46 = (abs(x_99) + abs(x_101));
  let x_104 : f32 = u_xlat46;
  u_xlat46 = max(x_104, 0.00009999999747378752f);
  let x_107 : f32 = u_xlat23;
  let x_108 : f32 = u_xlat46;
  u_xlat23 = (x_107 / x_108);
  let x_110 : f32 = u_xlat23;
  u_xlat23 = (x_110 + 0.5f);
  let x_113 : f32 = u_xlat23;
  u_xlat23 = clamp(x_113, 0.0f, 1.0f);
  let x_118 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_118 == 0.0f));
  let x_120 : bool = u_xlatb46;
  if (x_120) {
    let x_124 : f32 = u_xlat23;
    x_121 = x_124;
  } else {
    let x_127 : f32 = u_xlat0.x;
    x_121 = x_127;
  }
  let x_128 : f32 = x_121;
  u_xlat0.x = x_128;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = (x_131 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat0.x;
  u_xlatb0 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb0;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  let x_149 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_153);
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_158.x, x_158.x, x_158.x) * x_160);
  let x_163 : f32 = hlslcc_FragCoord.w;
  let x_166 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_163 * x_166);
  let x_170 : f32 = u_xlat0.x;
  let x_174 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_170 / x_174);
  let x_178 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_178) + 1.0f);
  let x_183 : f32 = u_xlat0.x;
  let x_185 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_183 * x_185);
  let x_189 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_189, 0.0f);
  let x_193 : f32 = u_xlat0.x;
  let x_196 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_193 * x_196);
  let x_206 : vec2<f32> = vs_TEXCOORD1;
  let x_208 : f32 = x_44.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_206, x_208);
  u_xlat3 = x_209;
  let x_215 : vec2<f32> = vs_TEXCOORD1;
  let x_217 : f32 = x_44.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_215, x_217);
  let x_219 : vec3<f32> = vec3<f32>(x_218.x, x_218.y, x_218.z);
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat3;
  let x_226 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_227 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec3<f32> = u_xlat2;
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(x_229, vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : f32 = u_xlat69;
  u_xlat69 = (x_233 + 0.5f);
  let x_235 : f32 = u_xlat69;
  let x_237 : vec4<f32> = u_xlat4;
  let x_239 : vec3<f32> = (vec3<f32>(x_235, x_235, x_235) * vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_243 : f32 = u_xlat3.w;
  u_xlat69 = max(x_243, 0.00009999999747378752f);
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : f32 = u_xlat69;
  let x_249 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) / vec3<f32>(x_247, x_247, x_247));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_264 : f32 = x_261.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_264);
  let x_266 : bool = u_xlatb69;
  if (x_266) {
    let x_270 : f32 = x_261.x_MainLightShadowParams.y;
    u_xlatb69 = (x_270 == 1.0f);
    let x_272 : bool = u_xlatb69;
    if (x_272) {
      let x_276 : vec4<f32> = vs_TEXCOORD6;
      let x_280 : vec4<f32> = x_261.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_276.x, x_276.y, x_276.x, x_276.y) + x_280);
      let x_284 : vec4<f32> = u_xlat4;
      let x_285 : vec2<f32> = vec2<f32>(x_284.x, x_284.y);
      let x_287 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_285.x, x_285.y, x_287);
      let x_300 : vec3<f32> = txVec0;
      let x_302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_300.xy, x_300.z);
      u_xlat5.x = x_302;
      let x_305 : vec4<f32> = u_xlat4;
      let x_306 : vec2<f32> = vec2<f32>(x_305.z, x_305.w);
      let x_308 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_306.x, x_306.y, x_308);
      let x_315 : vec3<f32> = txVec1;
      let x_317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_315.xy, x_315.z);
      u_xlat5.y = x_317;
      let x_319 : vec4<f32> = vs_TEXCOORD6;
      let x_322 : vec4<f32> = x_261.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_319.x, x_319.y, x_319.x, x_319.y) + x_322);
      let x_325 : vec4<f32> = u_xlat4;
      let x_326 : vec2<f32> = vec2<f32>(x_325.x, x_325.y);
      let x_328 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_326.x, x_326.y, x_328);
      let x_335 : vec3<f32> = txVec2;
      let x_337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_335.xy, x_335.z);
      u_xlat5.z = x_337;
      let x_340 : vec4<f32> = u_xlat4;
      let x_341 : vec2<f32> = vec2<f32>(x_340.z, x_340.w);
      let x_343 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_341.x, x_341.y, x_343);
      let x_350 : vec3<f32> = txVec3;
      let x_352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_350.xy, x_350.z);
      u_xlat5.w = x_352;
      let x_354 : vec4<f32> = u_xlat5;
      u_xlat69 = dot(x_354, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_361 : f32 = x_261.x_MainLightShadowParams.y;
      u_xlatb70 = (x_361 == 2.0f);
      let x_364 : bool = u_xlatb70;
      if (x_364) {
        let x_367 : vec4<f32> = vs_TEXCOORD6;
        let x_371 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_375 : vec2<f32> = ((vec2<f32>(x_367.x, x_367.y) * vec2<f32>(x_371.z, x_371.w)) + vec2<f32>(0.5f, 0.5f));
        let x_376 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_375.x, x_375.y, x_376.z, x_376.w);
        let x_378 : vec4<f32> = u_xlat4;
        let x_380 : vec2<f32> = floor(vec2<f32>(x_378.x, x_378.y));
        let x_381 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_380.x, x_380.y, x_381.z, x_381.w);
        let x_385 : vec4<f32> = vs_TEXCOORD6;
        let x_388 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_391 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(x_388.z, x_388.w)) + -(vec2<f32>(x_391.x, x_391.y)));
        let x_395 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_395.x, x_395.x, x_395.y, x_395.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_400 : vec4<f32> = u_xlat5;
        let x_402 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_400.x, x_400.x, x_400.z, x_400.z) * vec4<f32>(x_402.x, x_402.x, x_402.z, x_402.z));
        let x_405 : vec4<f32> = u_xlat6;
        let x_409 : vec2<f32> = (vec2<f32>(x_405.y, x_405.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_410 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_409.x, x_410.y, x_409.y, x_410.w);
        let x_412 : vec4<f32> = u_xlat6;
        let x_415 : vec2<f32> = u_xlat50;
        let x_417 : vec2<f32> = ((vec2<f32>(x_412.x, x_412.z) * vec2<f32>(0.5f, 0.5f)) + -(x_415));
        let x_418 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
        let x_421 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_421) + vec2<f32>(1.0f, 1.0f));
        let x_426 : vec2<f32> = u_xlat50;
        let x_428 : vec2<f32> = min(x_426, vec2<f32>(0.0f, 0.0f));
        let x_429 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
        let x_431 : vec4<f32> = u_xlat7;
        let x_434 : vec4<f32> = u_xlat7;
        let x_437 : vec2<f32> = u_xlat52;
        let x_438 : vec2<f32> = ((-(vec2<f32>(x_431.x, x_431.y)) * vec2<f32>(x_434.x, x_434.y)) + x_437);
        let x_439 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
        let x_441 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_441, vec2<f32>(0.0f, 0.0f));
        let x_443 : vec2<f32> = u_xlat50;
        let x_445 : vec2<f32> = u_xlat50;
        let x_447 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_443) * x_445) + vec2<f32>(x_447.y, x_447.w));
        let x_450 : vec4<f32> = u_xlat7;
        let x_452 : vec2<f32> = (vec2<f32>(x_450.x, x_450.y) + vec2<f32>(1.0f, 1.0f));
        let x_453 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_455 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_455 + vec2<f32>(1.0f, 1.0f));
        let x_458 : vec4<f32> = u_xlat6;
        let x_462 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_463 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
        let x_465 : vec2<f32> = u_xlat52;
        let x_466 : vec2<f32> = (x_465 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_467 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
        let x_469 : vec4<f32> = u_xlat7;
        let x_471 : vec2<f32> = (vec2<f32>(x_469.x, x_469.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_472 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
        let x_475 : vec2<f32> = u_xlat50;
        let x_476 : vec2<f32> = (x_475 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_477 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
        let x_479 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_479.y, x_479.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_483 : f32 = u_xlat7.x;
        u_xlat8.z = x_483;
        let x_486 : f32 = u_xlat50.x;
        u_xlat8.w = x_486;
        let x_489 : f32 = u_xlat9.x;
        u_xlat6.z = x_489;
        let x_492 : f32 = u_xlat5.x;
        u_xlat6.w = x_492;
        let x_495 : vec4<f32> = u_xlat6;
        let x_497 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_495.z, x_495.w, x_495.x, x_495.z) + vec4<f32>(x_497.z, x_497.w, x_497.x, x_497.z));
        let x_501 : f32 = u_xlat8.y;
        u_xlat7.z = x_501;
        let x_504 : f32 = u_xlat50.y;
        u_xlat7.w = x_504;
        let x_507 : f32 = u_xlat6.y;
        u_xlat9.z = x_507;
        let x_510 : f32 = u_xlat5.z;
        u_xlat9.w = x_510;
        let x_512 : vec4<f32> = u_xlat7;
        let x_514 : vec4<f32> = u_xlat9;
        let x_516 : vec3<f32> = (vec3<f32>(x_512.z, x_512.y, x_512.w) + vec3<f32>(x_514.z, x_514.y, x_514.w));
        let x_517 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
        let x_519 : vec4<f32> = u_xlat6;
        let x_521 : vec4<f32> = u_xlat10;
        let x_523 : vec3<f32> = (vec3<f32>(x_519.x, x_519.z, x_519.w) / vec3<f32>(x_521.z, x_521.w, x_521.y));
        let x_524 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
        let x_526 : vec4<f32> = u_xlat6;
        let x_531 : vec3<f32> = (vec3<f32>(x_526.x, x_526.y, x_526.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_532 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
        let x_534 : vec4<f32> = u_xlat9;
        let x_536 : vec4<f32> = u_xlat5;
        let x_538 : vec3<f32> = (vec3<f32>(x_534.z, x_534.y, x_534.w) / vec3<f32>(x_536.x, x_536.y, x_536.z));
        let x_539 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
        let x_541 : vec4<f32> = u_xlat7;
        let x_543 : vec3<f32> = (vec3<f32>(x_541.x, x_541.y, x_541.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_544 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
        let x_546 : vec4<f32> = u_xlat6;
        let x_549 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_551 : vec3<f32> = (vec3<f32>(x_546.y, x_546.x, x_546.z) * vec3<f32>(x_549.x, x_549.x, x_549.x));
        let x_552 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
        let x_554 : vec4<f32> = u_xlat7;
        let x_557 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_559 : vec3<f32> = (vec3<f32>(x_554.x, x_554.y, x_554.z) * vec3<f32>(x_557.y, x_557.y, x_557.y));
        let x_560 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
        let x_563 : f32 = u_xlat7.x;
        u_xlat6.w = x_563;
        let x_565 : vec4<f32> = u_xlat4;
        let x_568 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_571 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_565.x, x_565.y, x_565.x, x_565.y) * vec4<f32>(x_568.x, x_568.y, x_568.x, x_568.y)) + vec4<f32>(x_571.y, x_571.w, x_571.x, x_571.w));
        let x_574 : vec4<f32> = u_xlat4;
        let x_577 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_580 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_574.x, x_574.y) * vec2<f32>(x_577.x, x_577.y)) + vec2<f32>(x_580.z, x_580.w));
        let x_584 : f32 = u_xlat6.y;
        u_xlat7.w = x_584;
        let x_586 : vec4<f32> = u_xlat7;
        let x_587 : vec2<f32> = vec2<f32>(x_586.y, x_586.z);
        let x_588 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_588.x, x_587.x, x_588.z, x_587.y);
        let x_590 : vec4<f32> = u_xlat4;
        let x_593 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_596 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_590.x, x_590.y, x_590.x, x_590.y) * vec4<f32>(x_593.x, x_593.y, x_593.x, x_593.y)) + vec4<f32>(x_596.x, x_596.y, x_596.z, x_596.y));
        let x_599 : vec4<f32> = u_xlat4;
        let x_602 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_605 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_599.x, x_599.y, x_599.x, x_599.y) * vec4<f32>(x_602.x, x_602.y, x_602.x, x_602.y)) + vec4<f32>(x_605.w, x_605.y, x_605.w, x_605.z));
        let x_608 : vec4<f32> = u_xlat4;
        let x_611 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_614 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y) * vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y)) + vec4<f32>(x_614.x, x_614.w, x_614.z, x_614.w));
        let x_618 : vec4<f32> = u_xlat5;
        let x_620 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_618.x, x_618.x, x_618.x, x_618.y) * vec4<f32>(x_620.z, x_620.w, x_620.y, x_620.z));
        let x_624 : vec4<f32> = u_xlat5;
        let x_626 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_624.y, x_624.y, x_624.z, x_624.z) * x_626);
        let x_630 : f32 = u_xlat5.z;
        let x_632 : f32 = u_xlat10.y;
        u_xlat70 = (x_630 * x_632);
        let x_635 : vec4<f32> = u_xlat8;
        let x_636 : vec2<f32> = vec2<f32>(x_635.x, x_635.y);
        let x_638 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_636.x, x_636.y, x_638);
        let x_646 : vec3<f32> = txVec4;
        let x_648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_646.xy, x_646.z);
        u_xlat71 = x_648;
        let x_650 : vec4<f32> = u_xlat8;
        let x_651 : vec2<f32> = vec2<f32>(x_650.z, x_650.w);
        let x_653 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_651.x, x_651.y, x_653);
        let x_661 : vec3<f32> = txVec5;
        let x_663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_661.xy, x_661.z);
        u_xlat72 = x_663;
        let x_664 : f32 = u_xlat72;
        let x_666 : f32 = u_xlat11.y;
        u_xlat72 = (x_664 * x_666);
        let x_669 : f32 = u_xlat11.x;
        let x_670 : f32 = u_xlat71;
        let x_672 : f32 = u_xlat72;
        u_xlat71 = ((x_669 * x_670) + x_672);
        let x_675 : vec2<f32> = u_xlat50;
        let x_677 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_675.x, x_675.y, x_677);
        let x_684 : vec3<f32> = txVec6;
        let x_686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_684.xy, x_684.z);
        u_xlat72 = x_686;
        let x_688 : f32 = u_xlat11.z;
        let x_689 : f32 = u_xlat72;
        let x_691 : f32 = u_xlat71;
        u_xlat71 = ((x_688 * x_689) + x_691);
        let x_694 : vec4<f32> = u_xlat7;
        let x_695 : vec2<f32> = vec2<f32>(x_694.x, x_694.y);
        let x_697 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_695.x, x_695.y, x_697);
        let x_704 : vec3<f32> = txVec7;
        let x_706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_704.xy, x_704.z);
        u_xlat72 = x_706;
        let x_708 : f32 = u_xlat11.w;
        let x_709 : f32 = u_xlat72;
        let x_711 : f32 = u_xlat71;
        u_xlat71 = ((x_708 * x_709) + x_711);
        let x_714 : vec4<f32> = u_xlat9;
        let x_715 : vec2<f32> = vec2<f32>(x_714.x, x_714.y);
        let x_717 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_715.x, x_715.y, x_717);
        let x_724 : vec3<f32> = txVec8;
        let x_726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_724.xy, x_724.z);
        u_xlat72 = x_726;
        let x_728 : f32 = u_xlat12.x;
        let x_729 : f32 = u_xlat72;
        let x_731 : f32 = u_xlat71;
        u_xlat71 = ((x_728 * x_729) + x_731);
        let x_734 : vec4<f32> = u_xlat9;
        let x_735 : vec2<f32> = vec2<f32>(x_734.z, x_734.w);
        let x_737 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_735.x, x_735.y, x_737);
        let x_744 : vec3<f32> = txVec9;
        let x_746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_744.xy, x_744.z);
        u_xlat72 = x_746;
        let x_748 : f32 = u_xlat12.y;
        let x_749 : f32 = u_xlat72;
        let x_751 : f32 = u_xlat71;
        u_xlat71 = ((x_748 * x_749) + x_751);
        let x_754 : vec4<f32> = u_xlat7;
        let x_755 : vec2<f32> = vec2<f32>(x_754.z, x_754.w);
        let x_757 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_755.x, x_755.y, x_757);
        let x_764 : vec3<f32> = txVec10;
        let x_766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_764.xy, x_764.z);
        u_xlat72 = x_766;
        let x_768 : f32 = u_xlat12.z;
        let x_769 : f32 = u_xlat72;
        let x_771 : f32 = u_xlat71;
        u_xlat71 = ((x_768 * x_769) + x_771);
        let x_774 : vec4<f32> = u_xlat6;
        let x_775 : vec2<f32> = vec2<f32>(x_774.x, x_774.y);
        let x_777 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_775.x, x_775.y, x_777);
        let x_784 : vec3<f32> = txVec11;
        let x_786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_784.xy, x_784.z);
        u_xlat72 = x_786;
        let x_788 : f32 = u_xlat12.w;
        let x_789 : f32 = u_xlat72;
        let x_791 : f32 = u_xlat71;
        u_xlat71 = ((x_788 * x_789) + x_791);
        let x_794 : vec4<f32> = u_xlat6;
        let x_795 : vec2<f32> = vec2<f32>(x_794.z, x_794.w);
        let x_797 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_795.x, x_795.y, x_797);
        let x_804 : vec3<f32> = txVec12;
        let x_806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_804.xy, x_804.z);
        u_xlat72 = x_806;
        let x_807 : f32 = u_xlat70;
        let x_808 : f32 = u_xlat72;
        let x_810 : f32 = u_xlat71;
        u_xlat69 = ((x_807 * x_808) + x_810);
      } else {
        let x_813 : vec4<f32> = vs_TEXCOORD6;
        let x_816 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_819 : vec2<f32> = ((vec2<f32>(x_813.x, x_813.y) * vec2<f32>(x_816.z, x_816.w)) + vec2<f32>(0.5f, 0.5f));
        let x_820 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat4;
        let x_824 : vec2<f32> = floor(vec2<f32>(x_822.x, x_822.y));
        let x_825 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_827 : vec4<f32> = vs_TEXCOORD6;
        let x_830 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_833 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_827.x, x_827.y) * vec2<f32>(x_830.z, x_830.w)) + -(vec2<f32>(x_833.x, x_833.y)));
        let x_837 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_837.x, x_837.x, x_837.y, x_837.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_840 : vec4<f32> = u_xlat5;
        let x_842 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_840.x, x_840.x, x_840.z, x_840.z) * vec4<f32>(x_842.x, x_842.x, x_842.z, x_842.z));
        let x_845 : vec4<f32> = u_xlat6;
        let x_849 : vec2<f32> = (vec2<f32>(x_845.y, x_845.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_850 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_850.x, x_849.x, x_850.z, x_849.y);
        let x_852 : vec4<f32> = u_xlat6;
        let x_855 : vec2<f32> = u_xlat50;
        let x_857 : vec2<f32> = ((vec2<f32>(x_852.x, x_852.z) * vec2<f32>(0.5f, 0.5f)) + -(x_855));
        let x_858 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_857.x, x_858.y, x_857.y, x_858.w);
        let x_860 : vec2<f32> = u_xlat50;
        let x_862 : vec2<f32> = (-(x_860) + vec2<f32>(1.0f, 1.0f));
        let x_863 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
        let x_865 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_865, vec2<f32>(0.0f, 0.0f));
        let x_867 : vec2<f32> = u_xlat52;
        let x_869 : vec2<f32> = u_xlat52;
        let x_871 : vec4<f32> = u_xlat6;
        let x_873 : vec2<f32> = ((-(x_867) * x_869) + vec2<f32>(x_871.x, x_871.y));
        let x_874 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
        let x_876 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_876, vec2<f32>(0.0f, 0.0f));
        let x_879 : vec2<f32> = u_xlat52;
        let x_881 : vec2<f32> = u_xlat52;
        let x_883 : vec4<f32> = u_xlat5;
        let x_885 : vec2<f32> = ((-(x_879) * x_881) + vec2<f32>(x_883.y, x_883.w));
        let x_886 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_885.x, x_886.y, x_885.y);
        let x_888 : vec4<f32> = u_xlat6;
        let x_891 : vec2<f32> = (vec2<f32>(x_888.x, x_888.y) + vec2<f32>(2.0f, 2.0f));
        let x_892 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_891.x, x_891.y, x_892.z, x_892.w);
        let x_894 : vec3<f32> = u_xlat28;
        let x_896 : vec2<f32> = (vec2<f32>(x_894.x, x_894.z) + vec2<f32>(2.0f, 2.0f));
        let x_897 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_897.x, x_896.x, x_897.z, x_896.y);
        let x_900 : f32 = u_xlat5.y;
        u_xlat8.z = (x_900 * 0.08163200318813323975f);
        let x_904 : vec4<f32> = u_xlat5;
        let x_907 : vec3<f32> = (vec3<f32>(x_904.z, x_904.x, x_904.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_908 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
        let x_910 : vec4<f32> = u_xlat6;
        let x_913 : vec2<f32> = (vec2<f32>(x_910.x, x_910.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_914 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_913.x, x_913.y, x_914.z, x_914.w);
        let x_917 : f32 = u_xlat9.y;
        u_xlat8.x = x_917;
        let x_919 : vec2<f32> = u_xlat50;
        let x_926 : vec2<f32> = ((vec2<f32>(x_919.x, x_919.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_927 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_927.x, x_926.x, x_927.z, x_926.y);
        let x_929 : vec2<f32> = u_xlat50;
        let x_933 : vec2<f32> = ((vec2<f32>(x_929.x, x_929.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_934 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_933.x, x_934.y, x_933.y, x_934.w);
        let x_937 : f32 = u_xlat5.x;
        u_xlat6.y = x_937;
        let x_940 : f32 = u_xlat7.y;
        u_xlat6.w = x_940;
        let x_942 : vec4<f32> = u_xlat6;
        let x_943 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_942 + x_943);
        let x_945 : vec2<f32> = u_xlat50;
        let x_948 : vec2<f32> = ((vec2<f32>(x_945.y, x_945.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_949 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_949.x, x_948.x, x_949.z, x_948.y);
        let x_951 : vec2<f32> = u_xlat50;
        let x_954 : vec2<f32> = ((vec2<f32>(x_951.y, x_951.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_955 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_954.x, x_955.y, x_954.y, x_955.w);
        let x_958 : f32 = u_xlat5.y;
        u_xlat7.y = x_958;
        let x_960 : vec4<f32> = u_xlat7;
        let x_961 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_960 + x_961);
        let x_963 : vec4<f32> = u_xlat6;
        let x_964 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_963 / x_964);
        let x_966 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_966 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_972 : vec4<f32> = u_xlat7;
        let x_973 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_972 / x_973);
        let x_975 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_975 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_977 : vec4<f32> = u_xlat6;
        let x_980 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_977.w, x_977.x, x_977.y, x_977.z) * vec4<f32>(x_980.x, x_980.x, x_980.x, x_980.x));
        let x_983 : vec4<f32> = u_xlat7;
        let x_986 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_983.x, x_983.w, x_983.y, x_983.z) * vec4<f32>(x_986.y, x_986.y, x_986.y, x_986.y));
        let x_989 : vec4<f32> = u_xlat6;
        let x_990 : vec3<f32> = vec3<f32>(x_989.y, x_989.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_990.x, x_991.y, x_990.y, x_990.z);
        let x_994 : f32 = u_xlat7.x;
        u_xlat9.y = x_994;
        let x_996 : vec4<f32> = u_xlat4;
        let x_999 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1002 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_996.x, x_996.y, x_996.x, x_996.y) * vec4<f32>(x_999.x, x_999.y, x_999.x, x_999.y)) + vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1002.y));
        let x_1005 : vec4<f32> = u_xlat4;
        let x_1008 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1011 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1005.x, x_1005.y) * vec2<f32>(x_1008.x, x_1008.y)) + vec2<f32>(x_1011.w, x_1011.y));
        let x_1015 : f32 = u_xlat9.y;
        u_xlat6.y = x_1015;
        let x_1018 : f32 = u_xlat7.z;
        u_xlat9.y = x_1018;
        let x_1020 : vec4<f32> = u_xlat4;
        let x_1023 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1026 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1020.x, x_1020.y, x_1020.x, x_1020.y) * vec4<f32>(x_1023.x, x_1023.y, x_1023.x, x_1023.y)) + vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1026.y));
        let x_1029 : vec4<f32> = u_xlat4;
        let x_1032 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1035 : vec4<f32> = u_xlat9;
        let x_1037 : vec2<f32> = ((vec2<f32>(x_1029.x, x_1029.y) * vec2<f32>(x_1032.x, x_1032.y)) + vec2<f32>(x_1035.w, x_1035.y));
        let x_1038 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1037.x, x_1037.y, x_1038.z, x_1038.w);
        let x_1041 : f32 = u_xlat9.y;
        u_xlat6.z = x_1041;
        let x_1044 : vec4<f32> = u_xlat4;
        let x_1047 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1050 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y) * vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.y)) + vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.z));
        let x_1054 : f32 = u_xlat7.w;
        u_xlat9.y = x_1054;
        let x_1057 : vec4<f32> = u_xlat4;
        let x_1060 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y) * vec4<f32>(x_1060.x, x_1060.y, x_1060.x, x_1060.y)) + vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1063.y));
        let x_1067 : vec4<f32> = u_xlat4;
        let x_1070 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1073 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1067.x, x_1067.y) * vec2<f32>(x_1070.x, x_1070.y)) + vec2<f32>(x_1073.w, x_1073.y));
        let x_1077 : f32 = u_xlat9.y;
        u_xlat6.w = x_1077;
        let x_1080 : vec4<f32> = u_xlat4;
        let x_1083 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1080.x, x_1080.y) * vec2<f32>(x_1083.x, x_1083.y)) + vec2<f32>(x_1086.x, x_1086.w));
        let x_1089 : vec4<f32> = u_xlat9;
        let x_1090 : vec3<f32> = vec3<f32>(x_1089.x, x_1089.z, x_1089.w);
        let x_1091 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1090.x, x_1091.y, x_1090.y, x_1090.z);
        let x_1093 : vec4<f32> = u_xlat4;
        let x_1096 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y) * vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y)) + vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1099.y));
        let x_1103 : vec4<f32> = u_xlat4;
        let x_1106 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1109 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1106.x, x_1106.y)) + vec2<f32>(x_1109.w, x_1109.y));
        let x_1113 : f32 = u_xlat6.x;
        u_xlat7.x = x_1113;
        let x_1115 : vec4<f32> = u_xlat4;
        let x_1118 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1121 : vec4<f32> = u_xlat7;
        let x_1123 : vec2<f32> = ((vec2<f32>(x_1115.x, x_1115.y) * vec2<f32>(x_1118.x, x_1118.y)) + vec2<f32>(x_1121.x, x_1121.y));
        let x_1124 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
        let x_1127 : vec4<f32> = u_xlat5;
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1127.x, x_1127.x, x_1127.x, x_1127.x) * x_1129);
        let x_1132 : vec4<f32> = u_xlat5;
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1132.y, x_1132.y, x_1132.y, x_1132.y) * x_1134);
        let x_1137 : vec4<f32> = u_xlat5;
        let x_1139 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1137.z, x_1137.z, x_1137.z, x_1137.z) * x_1139);
        let x_1141 : vec4<f32> = u_xlat5;
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1141.w, x_1141.w, x_1141.w, x_1141.w) * x_1143);
        let x_1146 : vec4<f32> = u_xlat10;
        let x_1147 : vec2<f32> = vec2<f32>(x_1146.x, x_1146.y);
        let x_1149 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1147.x, x_1147.y, x_1149);
        let x_1156 : vec3<f32> = txVec13;
        let x_1158 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1156.xy, x_1156.z);
        u_xlat70 = x_1158;
        let x_1160 : vec4<f32> = u_xlat10;
        let x_1161 : vec2<f32> = vec2<f32>(x_1160.z, x_1160.w);
        let x_1163 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1161.x, x_1161.y, x_1163);
        let x_1170 : vec3<f32> = txVec14;
        let x_1172 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1170.xy, x_1170.z);
        u_xlat71 = x_1172;
        let x_1173 : f32 = u_xlat71;
        let x_1175 : f32 = u_xlat15.y;
        u_xlat71 = (x_1173 * x_1175);
        let x_1178 : f32 = u_xlat15.x;
        let x_1179 : f32 = u_xlat70;
        let x_1181 : f32 = u_xlat71;
        u_xlat70 = ((x_1178 * x_1179) + x_1181);
        let x_1184 : vec2<f32> = u_xlat50;
        let x_1186 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1184.x, x_1184.y, x_1186);
        let x_1193 : vec3<f32> = txVec15;
        let x_1195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1193.xy, x_1193.z);
        u_xlat71 = x_1195;
        let x_1197 : f32 = u_xlat15.z;
        let x_1198 : f32 = u_xlat71;
        let x_1200 : f32 = u_xlat70;
        u_xlat70 = ((x_1197 * x_1198) + x_1200);
        let x_1203 : vec4<f32> = u_xlat13;
        let x_1204 : vec2<f32> = vec2<f32>(x_1203.x, x_1203.y);
        let x_1206 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1204.x, x_1204.y, x_1206);
        let x_1213 : vec3<f32> = txVec16;
        let x_1215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1213.xy, x_1213.z);
        u_xlat71 = x_1215;
        let x_1217 : f32 = u_xlat15.w;
        let x_1218 : f32 = u_xlat71;
        let x_1220 : f32 = u_xlat70;
        u_xlat70 = ((x_1217 * x_1218) + x_1220);
        let x_1223 : vec4<f32> = u_xlat11;
        let x_1224 : vec2<f32> = vec2<f32>(x_1223.x, x_1223.y);
        let x_1226 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1224.x, x_1224.y, x_1226);
        let x_1233 : vec3<f32> = txVec17;
        let x_1235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1233.xy, x_1233.z);
        u_xlat71 = x_1235;
        let x_1237 : f32 = u_xlat16.x;
        let x_1238 : f32 = u_xlat71;
        let x_1240 : f32 = u_xlat70;
        u_xlat70 = ((x_1237 * x_1238) + x_1240);
        let x_1243 : vec4<f32> = u_xlat11;
        let x_1244 : vec2<f32> = vec2<f32>(x_1243.z, x_1243.w);
        let x_1246 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1244.x, x_1244.y, x_1246);
        let x_1253 : vec3<f32> = txVec18;
        let x_1255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1253.xy, x_1253.z);
        u_xlat71 = x_1255;
        let x_1257 : f32 = u_xlat16.y;
        let x_1258 : f32 = u_xlat71;
        let x_1260 : f32 = u_xlat70;
        u_xlat70 = ((x_1257 * x_1258) + x_1260);
        let x_1263 : vec4<f32> = u_xlat12;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.x, x_1263.y);
        let x_1266 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec19;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1273.xy, x_1273.z);
        u_xlat71 = x_1275;
        let x_1277 : f32 = u_xlat16.z;
        let x_1278 : f32 = u_xlat71;
        let x_1280 : f32 = u_xlat70;
        u_xlat70 = ((x_1277 * x_1278) + x_1280);
        let x_1283 : vec4<f32> = u_xlat13;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.z, x_1283.w);
        let x_1286 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1293 : vec3<f32> = txVec20;
        let x_1295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1293.xy, x_1293.z);
        u_xlat71 = x_1295;
        let x_1297 : f32 = u_xlat16.w;
        let x_1298 : f32 = u_xlat71;
        let x_1300 : f32 = u_xlat70;
        u_xlat70 = ((x_1297 * x_1298) + x_1300);
        let x_1303 : vec4<f32> = u_xlat14;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.x, x_1303.y);
        let x_1306 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec21;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1313.xy, x_1313.z);
        u_xlat71 = x_1315;
        let x_1317 : f32 = u_xlat17.x;
        let x_1318 : f32 = u_xlat71;
        let x_1320 : f32 = u_xlat70;
        u_xlat70 = ((x_1317 * x_1318) + x_1320);
        let x_1323 : vec4<f32> = u_xlat14;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.z, x_1323.w);
        let x_1326 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec22;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1333.xy, x_1333.z);
        u_xlat71 = x_1335;
        let x_1337 : f32 = u_xlat17.y;
        let x_1338 : f32 = u_xlat71;
        let x_1340 : f32 = u_xlat70;
        u_xlat70 = ((x_1337 * x_1338) + x_1340);
        let x_1343 : vec2<f32> = u_xlat29;
        let x_1345 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec23;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1352.xy, x_1352.z);
        u_xlat71 = x_1354;
        let x_1356 : f32 = u_xlat17.z;
        let x_1357 : f32 = u_xlat71;
        let x_1359 : f32 = u_xlat70;
        u_xlat70 = ((x_1356 * x_1357) + x_1359);
        let x_1362 : vec2<f32> = u_xlat58;
        let x_1364 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec24;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1371.xy, x_1371.z);
        u_xlat71 = x_1373;
        let x_1375 : f32 = u_xlat17.w;
        let x_1376 : f32 = u_xlat71;
        let x_1378 : f32 = u_xlat70;
        u_xlat70 = ((x_1375 * x_1376) + x_1378);
        let x_1381 : vec4<f32> = u_xlat9;
        let x_1382 : vec2<f32> = vec2<f32>(x_1381.x, x_1381.y);
        let x_1384 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec25;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
        u_xlat71 = x_1393;
        let x_1395 : f32 = u_xlat5.x;
        let x_1396 : f32 = u_xlat71;
        let x_1398 : f32 = u_xlat70;
        u_xlat70 = ((x_1395 * x_1396) + x_1398);
        let x_1401 : vec4<f32> = u_xlat9;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.z, x_1401.w);
        let x_1404 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec26;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1411.xy, x_1411.z);
        u_xlat71 = x_1413;
        let x_1415 : f32 = u_xlat5.y;
        let x_1416 : f32 = u_xlat71;
        let x_1418 : f32 = u_xlat70;
        u_xlat70 = ((x_1415 * x_1416) + x_1418);
        let x_1421 : vec2<f32> = u_xlat53;
        let x_1423 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1421.x, x_1421.y, x_1423);
        let x_1430 : vec3<f32> = txVec27;
        let x_1432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1430.xy, x_1430.z);
        u_xlat71 = x_1432;
        let x_1434 : f32 = u_xlat5.z;
        let x_1435 : f32 = u_xlat71;
        let x_1437 : f32 = u_xlat70;
        u_xlat70 = ((x_1434 * x_1435) + x_1437);
        let x_1440 : vec4<f32> = u_xlat4;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.x, x_1440.y);
        let x_1443 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec28;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat71 = x_1452;
        let x_1454 : f32 = u_xlat5.w;
        let x_1455 : f32 = u_xlat71;
        let x_1457 : f32 = u_xlat70;
        u_xlat69 = ((x_1454 * x_1455) + x_1457);
      }
    }
  } else {
    let x_1461 : vec4<f32> = vs_TEXCOORD6;
    let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
    let x_1464 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
    let x_1471 : vec3<f32> = txVec29;
    let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
    u_xlat69 = x_1473;
  }
  let x_1475 : f32 = x_261.x_MainLightShadowParams.x;
  u_xlat70 = (-(x_1475) + 1.0f);
  let x_1478 : f32 = u_xlat69;
  let x_1480 : f32 = x_261.x_MainLightShadowParams.x;
  let x_1482 : f32 = u_xlat70;
  u_xlat69 = ((x_1478 * x_1480) + x_1482);
  let x_1485 : f32 = vs_TEXCOORD6.z;
  u_xlatb70 = (0.0f >= x_1485);
  let x_1489 : f32 = vs_TEXCOORD6.z;
  u_xlatb71 = (x_1489 >= 1.0f);
  let x_1491 : bool = u_xlatb70;
  let x_1492 : bool = u_xlatb71;
  u_xlatb70 = (x_1491 | x_1492);
  let x_1494 : bool = u_xlatb70;
  let x_1495 : f32 = u_xlat69;
  u_xlat69 = select(x_1495, 1.0f, x_1494);
  let x_1498 : vec4<f32> = vs_TEXCOORD2;
  let x_1503 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1505 : vec3<f32> = (vec3<f32>(x_1498.x, x_1498.y, x_1498.z) + -(x_1503));
  let x_1506 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
  let x_1508 : vec4<f32> = u_xlat4;
  let x_1510 : vec4<f32> = u_xlat4;
  u_xlat70 = dot(vec3<f32>(x_1508.x, x_1508.y, x_1508.z), vec3<f32>(x_1510.x, x_1510.y, x_1510.z));
  let x_1513 : f32 = u_xlat70;
  let x_1515 : f32 = x_261.x_MainLightShadowParams.z;
  let x_1518 : f32 = x_261.x_MainLightShadowParams.w;
  u_xlat71 = ((x_1513 * x_1515) + x_1518);
  let x_1520 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1520, 0.0f, 1.0f);
  let x_1522 : f32 = u_xlat69;
  u_xlat72 = (-(x_1522) + 1.0f);
  let x_1525 : f32 = u_xlat71;
  let x_1526 : f32 = u_xlat72;
  let x_1528 : f32 = u_xlat69;
  u_xlat69 = ((x_1525 * x_1526) + x_1528);
  let x_1538 : f32 = x_1535.x_MainLightCookieTextureFormat;
  u_xlatb71 = !((x_1538 == -1.0f));
  let x_1541 : bool = u_xlatb71;
  if (x_1541) {
    let x_1544 : vec4<f32> = vs_TEXCOORD2;
    let x_1547 : vec4<f32> = x_1535.x_MainLightWorldToLight[1i];
    let x_1549 : vec2<f32> = (vec2<f32>(x_1544.y, x_1544.y) * vec2<f32>(x_1547.x, x_1547.y));
    let x_1550 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1549.x, x_1549.y, x_1550.z, x_1550.w);
    let x_1553 : vec4<f32> = x_1535.x_MainLightWorldToLight[0i];
    let x_1555 : vec4<f32> = vs_TEXCOORD2;
    let x_1558 : vec4<f32> = u_xlat4;
    let x_1560 : vec2<f32> = ((vec2<f32>(x_1553.x, x_1553.y) * vec2<f32>(x_1555.x, x_1555.x)) + vec2<f32>(x_1558.x, x_1558.y));
    let x_1561 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1560.x, x_1560.y, x_1561.z, x_1561.w);
    let x_1564 : vec4<f32> = x_1535.x_MainLightWorldToLight[2i];
    let x_1566 : vec4<f32> = vs_TEXCOORD2;
    let x_1569 : vec4<f32> = u_xlat4;
    let x_1571 : vec2<f32> = ((vec2<f32>(x_1564.x, x_1564.y) * vec2<f32>(x_1566.z, x_1566.z)) + vec2<f32>(x_1569.x, x_1569.y));
    let x_1572 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1571.x, x_1571.y, x_1572.z, x_1572.w);
    let x_1574 : vec4<f32> = u_xlat4;
    let x_1578 : vec4<f32> = x_1535.x_MainLightWorldToLight[3i];
    let x_1580 : vec2<f32> = (vec2<f32>(x_1574.x, x_1574.y) + vec2<f32>(x_1578.x, x_1578.y));
    let x_1581 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1580.x, x_1580.y, x_1581.z, x_1581.w);
    let x_1583 : vec4<f32> = u_xlat4;
    let x_1586 : vec2<f32> = ((vec2<f32>(x_1583.x, x_1583.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1587 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1586.x, x_1586.y, x_1587.z, x_1587.w);
    let x_1594 : vec4<f32> = u_xlat4;
    let x_1597 : f32 = x_44.x_GlobalMipBias.x;
    let x_1598 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1594.x, x_1594.y), x_1597);
    u_xlat4 = x_1598;
    let x_1603 : f32 = x_1535.x_MainLightCookieTextureFormat;
    let x_1605 : f32 = x_1535.x_MainLightCookieTextureFormat;
    let x_1607 : f32 = x_1535.x_MainLightCookieTextureFormat;
    let x_1609 : f32 = x_1535.x_MainLightCookieTextureFormat;
    let x_1610 : vec4<f32> = vec4<f32>(x_1603, x_1605, x_1607, x_1609);
    let x_1618 : vec4<bool> = (vec4<f32>(x_1610.x, x_1610.y, x_1610.z, x_1610.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1618.x, x_1618.y);
    let x_1621 : bool = u_xlatb5.y;
    if (x_1621) {
      let x_1626 : f32 = u_xlat4.w;
      x_1622 = x_1626;
    } else {
      let x_1629 : f32 = u_xlat4.x;
      x_1622 = x_1629;
    }
    let x_1630 : f32 = x_1622;
    u_xlat71 = x_1630;
    let x_1632 : bool = u_xlatb5.x;
    if (x_1632) {
      let x_1636 : vec4<f32> = u_xlat4;
      x_1633 = vec3<f32>(x_1636.x, x_1636.y, x_1636.z);
    } else {
      let x_1639 : f32 = u_xlat71;
      x_1633 = vec3<f32>(x_1639, x_1639, x_1639);
    }
    let x_1641 : vec3<f32> = x_1633;
    let x_1642 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1641.x, x_1641.y, x_1641.z, x_1642.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1648 : vec4<f32> = u_xlat4;
  let x_1651 : vec4<f32> = x_44.x_MainLightColor;
  let x_1653 : vec3<f32> = (vec3<f32>(x_1648.x, x_1648.y, x_1648.z) * vec3<f32>(x_1651.x, x_1651.y, x_1651.z));
  let x_1654 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1654.w);
  let x_1656 : f32 = u_xlat69;
  let x_1662 : f32 = x_1660.unity_LightData.z;
  u_xlat69 = (x_1656 * x_1662);
  let x_1664 : f32 = u_xlat69;
  let x_1666 : vec4<f32> = u_xlat4;
  let x_1668 : vec3<f32> = (vec3<f32>(x_1664, x_1664, x_1664) * vec3<f32>(x_1666.x, x_1666.y, x_1666.z));
  let x_1669 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1668.x, x_1668.y, x_1668.z, x_1669.w);
  let x_1671 : vec3<f32> = u_xlat2;
  let x_1673 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat69 = dot(x_1671, vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
  let x_1676 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1676, 0.0f, 1.0f);
  let x_1678 : f32 = u_xlat69;
  let x_1680 : vec4<f32> = u_xlat4;
  let x_1682 : vec3<f32> = (vec3<f32>(x_1678, x_1678, x_1678) * vec3<f32>(x_1680.x, x_1680.y, x_1680.z));
  let x_1683 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1682.x, x_1682.y, x_1682.z, x_1683.w);
  let x_1685 : vec4<f32> = u_xlat1;
  let x_1687 : vec4<f32> = u_xlat4;
  let x_1689 : vec3<f32> = (vec3<f32>(x_1685.x, x_1685.y, x_1685.z) * vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
  let x_1690 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
  let x_1693 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1695 : f32 = x_1660.unity_LightData.y;
  u_xlat69 = min(x_1693, x_1695);
  let x_1699 : f32 = u_xlat69;
  u_xlatu69 = bitcast<u32>(i32(x_1699));
  let x_1702 : f32 = u_xlat70;
  let x_1705 : f32 = x_261.x_AdditionalShadowFadeParams.x;
  let x_1708 : f32 = x_261.x_AdditionalShadowFadeParams.y;
  u_xlat70 = ((x_1702 * x_1705) + x_1708);
  let x_1710 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1710, 0.0f, 1.0f);
  let x_1713 : f32 = x_1535.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1715 : f32 = x_1535.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1717 : f32 = x_1535.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1719 : f32 = x_1535.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1720 : vec4<f32> = vec4<f32>(x_1713, x_1715, x_1717, x_1719);
  let x_1726 : vec4<bool> = (vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1720.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1726.x, x_1726.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1738 : u32 = u_xlatu_loop_1;
    let x_1739 : u32 = u_xlatu69;
    if ((x_1738 < x_1739)) {
    } else {
      break;
    }
    let x_1742 : u32 = u_xlatu_loop_1;
    u_xlatu72 = (x_1742 >> 2u);
    let x_1746 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_1746 & 3u));
    let x_1749 : u32 = u_xlatu72;
    let x_1752 : vec4<f32> = x_1660.unity_LightIndices[bitcast<i32>(x_1749)];
    let x_1762 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1767 : vec4<u32> = indexable[x_1762];
    u_xlat72 = dot(x_1752, bitcast<vec4<f32>>(x_1767));
    let x_1771 : f32 = u_xlat72;
    u_xlati72 = i32(x_1771);
    let x_1773 : vec4<f32> = vs_TEXCOORD2;
    let x_1785 : i32 = u_xlati72;
    let x_1787 : vec4<f32> = x_1784.x_AdditionalLightsPosition[x_1785];
    let x_1790 : i32 = u_xlati72;
    let x_1792 : vec4<f32> = x_1784.x_AdditionalLightsPosition[x_1790];
    let x_1794 : vec3<f32> = ((-(vec3<f32>(x_1773.x, x_1773.y, x_1773.z)) * vec3<f32>(x_1787.w, x_1787.w, x_1787.w)) + vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
    let x_1795 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1794.x, x_1794.y, x_1794.z, x_1795.w);
    let x_1798 : vec4<f32> = u_xlat7;
    let x_1800 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_1798.x, x_1798.y, x_1798.z), vec3<f32>(x_1800.x, x_1800.y, x_1800.z));
    let x_1803 : f32 = u_xlat73;
    u_xlat73 = max(x_1803, 0.00006103515625f);
    let x_1807 : f32 = u_xlat73;
    u_xlat51 = inverseSqrt(x_1807);
    let x_1809 : f32 = u_xlat51;
    let x_1811 : vec4<f32> = u_xlat7;
    let x_1813 : vec3<f32> = (vec3<f32>(x_1809, x_1809, x_1809) * vec3<f32>(x_1811.x, x_1811.y, x_1811.z));
    let x_1814 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
    let x_1816 : f32 = u_xlat73;
    u_xlat51 = (1.0f / x_1816);
    let x_1818 : f32 = u_xlat73;
    let x_1819 : i32 = u_xlati72;
    let x_1821 : f32 = x_1784.x_AdditionalLightsAttenuation[x_1819].x;
    u_xlat73 = (x_1818 * x_1821);
    let x_1823 : f32 = u_xlat73;
    let x_1825 : f32 = u_xlat73;
    u_xlat73 = ((-(x_1823) * x_1825) + 1.0f);
    let x_1828 : f32 = u_xlat73;
    u_xlat73 = max(x_1828, 0.0f);
    let x_1830 : f32 = u_xlat73;
    let x_1831 : f32 = u_xlat73;
    u_xlat73 = (x_1830 * x_1831);
    let x_1833 : f32 = u_xlat73;
    let x_1834 : f32 = u_xlat51;
    u_xlat73 = (x_1833 * x_1834);
    let x_1836 : i32 = u_xlati72;
    let x_1838 : vec4<f32> = x_1784.x_AdditionalLightsSpotDir[x_1836];
    let x_1840 : vec4<f32> = u_xlat7;
    u_xlat51 = dot(vec3<f32>(x_1838.x, x_1838.y, x_1838.z), vec3<f32>(x_1840.x, x_1840.y, x_1840.z));
    let x_1843 : f32 = u_xlat51;
    let x_1844 : i32 = u_xlati72;
    let x_1846 : f32 = x_1784.x_AdditionalLightsAttenuation[x_1844].z;
    let x_1848 : i32 = u_xlati72;
    let x_1850 : f32 = x_1784.x_AdditionalLightsAttenuation[x_1848].w;
    u_xlat51 = ((x_1843 * x_1846) + x_1850);
    let x_1852 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1852, 0.0f, 1.0f);
    let x_1854 : f32 = u_xlat51;
    let x_1855 : f32 = u_xlat51;
    u_xlat51 = (x_1854 * x_1855);
    let x_1857 : f32 = u_xlat73;
    let x_1858 : f32 = u_xlat51;
    u_xlat73 = (x_1857 * x_1858);
    let x_1862 : i32 = u_xlati72;
    let x_1864 : f32 = x_261.x_AdditionalShadowParams[x_1862].w;
    u_xlati51 = i32(x_1864);
    let x_1867 : i32 = u_xlati51;
    u_xlatb74 = (x_1867 >= 0i);
    let x_1869 : bool = u_xlatb74;
    if (x_1869) {
      let x_1873 : i32 = u_xlati72;
      let x_1875 : f32 = x_261.x_AdditionalShadowParams[x_1873].z;
      u_xlatb74 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1875, x_1875, x_1875, x_1875))));
      let x_1879 : bool = u_xlatb74;
      if (x_1879) {
        let x_1884 : vec4<f32> = u_xlat7;
        let x_1887 : vec4<f32> = u_xlat7;
        let x_1890 : vec4<bool> = (abs(vec4<f32>(x_1884.z, x_1884.z, x_1884.y, x_1884.z)) >= abs(vec4<f32>(x_1887.x, x_1887.y, x_1887.x, x_1887.x)));
        let x_1892 : vec3<bool> = vec3<bool>(x_1890.x, x_1890.y, x_1890.z);
        let x_1893 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
        let x_1896 : bool = u_xlatb8.y;
        let x_1898 : bool = u_xlatb8.x;
        u_xlatb74 = (x_1896 & x_1898);
        let x_1900 : vec4<f32> = u_xlat7;
        let x_1903 : vec4<bool> = (-(vec4<f32>(x_1900.z, x_1900.y, x_1900.z, x_1900.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1904 : vec3<bool> = vec3<bool>(x_1903.x, x_1903.y, x_1903.w);
        let x_1905 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1904.x, x_1904.y, x_1905.z, x_1904.z);
        let x_1908 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1908);
        let x_1914 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1914);
        let x_1920 : bool = u_xlatb8.w;
        u_xlat75 = select(0.0f, 1.0f, x_1920);
        let x_1923 : bool = u_xlatb8.z;
        if (x_1923) {
          let x_1928 : f32 = u_xlat8.y;
          x_1924 = x_1928;
        } else {
          let x_1930 : f32 = u_xlat75;
          x_1924 = x_1930;
        }
        let x_1931 : f32 = x_1924;
        u_xlat75 = x_1931;
        let x_1933 : bool = u_xlatb74;
        if (x_1933) {
          let x_1938 : f32 = u_xlat8.x;
          x_1934 = x_1938;
        } else {
          let x_1940 : f32 = u_xlat75;
          x_1934 = x_1940;
        }
        let x_1941 : f32 = x_1934;
        u_xlat74 = x_1941;
        let x_1942 : i32 = u_xlati72;
        let x_1944 : f32 = x_261.x_AdditionalShadowParams[x_1942].w;
        u_xlat75 = trunc(x_1944);
        let x_1946 : f32 = u_xlat74;
        let x_1947 : f32 = u_xlat75;
        u_xlat74 = (x_1946 + x_1947);
        let x_1949 : f32 = u_xlat74;
        u_xlati51 = i32(x_1949);
      }
      let x_1951 : i32 = u_xlati51;
      u_xlati51 = (x_1951 << bitcast<u32>(2i));
      let x_1953 : vec4<f32> = vs_TEXCOORD2;
      let x_1956 : i32 = u_xlati51;
      let x_1959 : i32 = u_xlati51;
      let x_1963 : vec4<f32> = x_261.x_AdditionalLightsWorldToShadow[((x_1956 + 1i) / 4i)][((x_1959 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1953.y, x_1953.y, x_1953.y, x_1953.y) * x_1963);
      let x_1965 : i32 = u_xlati51;
      let x_1967 : i32 = u_xlati51;
      let x_1970 : vec4<f32> = x_261.x_AdditionalLightsWorldToShadow[(x_1965 / 4i)][(x_1967 % 4i)];
      let x_1971 : vec4<f32> = vs_TEXCOORD2;
      let x_1974 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1970 * vec4<f32>(x_1971.x, x_1971.x, x_1971.x, x_1971.x)) + x_1974);
      let x_1976 : i32 = u_xlati51;
      let x_1979 : i32 = u_xlati51;
      let x_1983 : vec4<f32> = x_261.x_AdditionalLightsWorldToShadow[((x_1976 + 2i) / 4i)][((x_1979 + 2i) % 4i)];
      let x_1984 : vec4<f32> = vs_TEXCOORD2;
      let x_1987 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1983 * vec4<f32>(x_1984.z, x_1984.z, x_1984.z, x_1984.z)) + x_1987);
      let x_1989 : vec4<f32> = u_xlat8;
      let x_1990 : i32 = u_xlati51;
      let x_1993 : i32 = u_xlati51;
      let x_1997 : vec4<f32> = x_261.x_AdditionalLightsWorldToShadow[((x_1990 + 3i) / 4i)][((x_1993 + 3i) % 4i)];
      u_xlat8 = (x_1989 + x_1997);
      let x_1999 : vec4<f32> = u_xlat8;
      let x_2001 : vec4<f32> = u_xlat8;
      let x_2003 : vec3<f32> = (vec3<f32>(x_1999.x, x_1999.y, x_1999.z) / vec3<f32>(x_2001.w, x_2001.w, x_2001.w));
      let x_2004 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2003.x, x_2003.y, x_2003.z, x_2004.w);
      let x_2007 : i32 = u_xlati72;
      let x_2009 : f32 = x_261.x_AdditionalShadowParams[x_2007].y;
      u_xlatb51 = (0.0f < x_2009);
      let x_2011 : bool = u_xlatb51;
      if (x_2011) {
        let x_2014 : i32 = u_xlati72;
        let x_2016 : f32 = x_261.x_AdditionalShadowParams[x_2014].y;
        u_xlatb51 = (1.0f == x_2016);
        let x_2018 : bool = u_xlatb51;
        if (x_2018) {
          let x_2021 : vec4<f32> = u_xlat8;
          let x_2025 : vec4<f32> = x_261.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2021.x, x_2021.y, x_2021.x, x_2021.y) + x_2025);
          let x_2028 : vec4<f32> = u_xlat9;
          let x_2029 : vec2<f32> = vec2<f32>(x_2028.x, x_2028.y);
          let x_2031 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2029.x, x_2029.y, x_2031);
          let x_2039 : vec3<f32> = txVec30;
          let x_2041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2039.xy, x_2039.z);
          u_xlat10.x = x_2041;
          let x_2044 : vec4<f32> = u_xlat9;
          let x_2045 : vec2<f32> = vec2<f32>(x_2044.z, x_2044.w);
          let x_2047 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2045.x, x_2045.y, x_2047);
          let x_2054 : vec3<f32> = txVec31;
          let x_2056 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2054.xy, x_2054.z);
          u_xlat10.y = x_2056;
          let x_2058 : vec4<f32> = u_xlat8;
          let x_2062 : vec4<f32> = x_261.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2058.x, x_2058.y, x_2058.x, x_2058.y) + x_2062);
          let x_2065 : vec4<f32> = u_xlat9;
          let x_2066 : vec2<f32> = vec2<f32>(x_2065.x, x_2065.y);
          let x_2068 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2066.x, x_2066.y, x_2068);
          let x_2075 : vec3<f32> = txVec32;
          let x_2077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2075.xy, x_2075.z);
          u_xlat10.z = x_2077;
          let x_2080 : vec4<f32> = u_xlat9;
          let x_2081 : vec2<f32> = vec2<f32>(x_2080.z, x_2080.w);
          let x_2083 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2081.x, x_2081.y, x_2083);
          let x_2090 : vec3<f32> = txVec33;
          let x_2092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2090.xy, x_2090.z);
          u_xlat10.w = x_2092;
          let x_2094 : vec4<f32> = u_xlat10;
          u_xlat51 = dot(x_2094, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2097 : i32 = u_xlati72;
          let x_2099 : f32 = x_261.x_AdditionalShadowParams[x_2097].y;
          u_xlatb74 = (2.0f == x_2099);
          let x_2101 : bool = u_xlatb74;
          if (x_2101) {
            let x_2104 : vec4<f32> = u_xlat8;
            let x_2108 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2111 : vec2<f32> = ((vec2<f32>(x_2104.x, x_2104.y) * vec2<f32>(x_2108.z, x_2108.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2112 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2111.x, x_2111.y, x_2112.z, x_2112.w);
            let x_2114 : vec4<f32> = u_xlat9;
            let x_2116 : vec2<f32> = floor(vec2<f32>(x_2114.x, x_2114.y));
            let x_2117 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2116.x, x_2116.y, x_2117.z, x_2117.w);
            let x_2120 : vec4<f32> = u_xlat8;
            let x_2123 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2126 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2120.x, x_2120.y) * vec2<f32>(x_2123.z, x_2123.w)) + -(vec2<f32>(x_2126.x, x_2126.y)));
            let x_2130 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2130.x, x_2130.x, x_2130.y, x_2130.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2133 : vec4<f32> = u_xlat10;
            let x_2135 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2133.x, x_2133.x, x_2133.z, x_2133.z) * vec4<f32>(x_2135.x, x_2135.x, x_2135.z, x_2135.z));
            let x_2138 : vec4<f32> = u_xlat11;
            let x_2140 : vec2<f32> = (vec2<f32>(x_2138.y, x_2138.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2141 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2140.x, x_2141.y, x_2140.y, x_2141.w);
            let x_2143 : vec4<f32> = u_xlat11;
            let x_2146 : vec2<f32> = u_xlat55;
            let x_2148 : vec2<f32> = ((vec2<f32>(x_2143.x, x_2143.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2146));
            let x_2149 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2148.x, x_2148.y, x_2149.z, x_2149.w);
            let x_2152 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2152) + vec2<f32>(1.0f, 1.0f));
            let x_2155 : vec2<f32> = u_xlat55;
            let x_2156 : vec2<f32> = min(x_2155, vec2<f32>(0.0f, 0.0f));
            let x_2157 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2156.x, x_2156.y, x_2157.z, x_2157.w);
            let x_2159 : vec4<f32> = u_xlat12;
            let x_2162 : vec4<f32> = u_xlat12;
            let x_2165 : vec2<f32> = u_xlat57;
            let x_2166 : vec2<f32> = ((-(vec2<f32>(x_2159.x, x_2159.y)) * vec2<f32>(x_2162.x, x_2162.y)) + x_2165);
            let x_2167 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2166.x, x_2166.y, x_2167.z, x_2167.w);
            let x_2169 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2169, vec2<f32>(0.0f, 0.0f));
            let x_2171 : vec2<f32> = u_xlat55;
            let x_2173 : vec2<f32> = u_xlat55;
            let x_2175 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2171) * x_2173) + vec2<f32>(x_2175.y, x_2175.w));
            let x_2178 : vec4<f32> = u_xlat12;
            let x_2180 : vec2<f32> = (vec2<f32>(x_2178.x, x_2178.y) + vec2<f32>(1.0f, 1.0f));
            let x_2181 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2180.x, x_2180.y, x_2181.z, x_2181.w);
            let x_2183 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2183 + vec2<f32>(1.0f, 1.0f));
            let x_2185 : vec4<f32> = u_xlat11;
            let x_2187 : vec2<f32> = (vec2<f32>(x_2185.x, x_2185.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2188 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2187.x, x_2187.y, x_2188.z, x_2188.w);
            let x_2190 : vec2<f32> = u_xlat57;
            let x_2191 : vec2<f32> = (x_2190 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2192 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2191.x, x_2191.y, x_2192.z, x_2192.w);
            let x_2194 : vec4<f32> = u_xlat12;
            let x_2196 : vec2<f32> = (vec2<f32>(x_2194.x, x_2194.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2197 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2196.x, x_2196.y, x_2197.z, x_2197.w);
            let x_2199 : vec2<f32> = u_xlat55;
            let x_2200 : vec2<f32> = (x_2199 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2201 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2200.x, x_2200.y, x_2201.z, x_2201.w);
            let x_2203 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2203.y, x_2203.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2207 : f32 = u_xlat12.x;
            u_xlat13.z = x_2207;
            let x_2210 : f32 = u_xlat55.x;
            u_xlat13.w = x_2210;
            let x_2213 : f32 = u_xlat14.x;
            u_xlat11.z = x_2213;
            let x_2216 : f32 = u_xlat10.x;
            u_xlat11.w = x_2216;
            let x_2218 : vec4<f32> = u_xlat11;
            let x_2220 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2218.z, x_2218.w, x_2218.x, x_2218.z) + vec4<f32>(x_2220.z, x_2220.w, x_2220.x, x_2220.z));
            let x_2224 : f32 = u_xlat13.y;
            u_xlat12.z = x_2224;
            let x_2227 : f32 = u_xlat55.y;
            u_xlat12.w = x_2227;
            let x_2230 : f32 = u_xlat11.y;
            u_xlat14.z = x_2230;
            let x_2233 : f32 = u_xlat10.z;
            u_xlat14.w = x_2233;
            let x_2235 : vec4<f32> = u_xlat12;
            let x_2237 : vec4<f32> = u_xlat14;
            let x_2239 : vec3<f32> = (vec3<f32>(x_2235.z, x_2235.y, x_2235.w) + vec3<f32>(x_2237.z, x_2237.y, x_2237.w));
            let x_2240 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2239.x, x_2239.y, x_2239.z, x_2240.w);
            let x_2242 : vec4<f32> = u_xlat11;
            let x_2244 : vec4<f32> = u_xlat15;
            let x_2246 : vec3<f32> = (vec3<f32>(x_2242.x, x_2242.z, x_2242.w) / vec3<f32>(x_2244.z, x_2244.w, x_2244.y));
            let x_2247 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
            let x_2249 : vec4<f32> = u_xlat11;
            let x_2251 : vec3<f32> = (vec3<f32>(x_2249.x, x_2249.y, x_2249.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2252 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
            let x_2254 : vec4<f32> = u_xlat14;
            let x_2256 : vec4<f32> = u_xlat10;
            let x_2258 : vec3<f32> = (vec3<f32>(x_2254.z, x_2254.y, x_2254.w) / vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
            let x_2259 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
            let x_2261 : vec4<f32> = u_xlat12;
            let x_2263 : vec3<f32> = (vec3<f32>(x_2261.x, x_2261.y, x_2261.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2264 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
            let x_2266 : vec4<f32> = u_xlat11;
            let x_2269 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2271 : vec3<f32> = (vec3<f32>(x_2266.y, x_2266.x, x_2266.z) * vec3<f32>(x_2269.x, x_2269.x, x_2269.x));
            let x_2272 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
            let x_2274 : vec4<f32> = u_xlat12;
            let x_2277 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2279 : vec3<f32> = (vec3<f32>(x_2274.x, x_2274.y, x_2274.z) * vec3<f32>(x_2277.y, x_2277.y, x_2277.y));
            let x_2280 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
            let x_2283 : f32 = u_xlat12.x;
            u_xlat11.w = x_2283;
            let x_2285 : vec4<f32> = u_xlat9;
            let x_2288 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2291 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2285.x, x_2285.y, x_2285.x, x_2285.y) * vec4<f32>(x_2288.x, x_2288.y, x_2288.x, x_2288.y)) + vec4<f32>(x_2291.y, x_2291.w, x_2291.x, x_2291.w));
            let x_2294 : vec4<f32> = u_xlat9;
            let x_2297 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2300 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2294.x, x_2294.y) * vec2<f32>(x_2297.x, x_2297.y)) + vec2<f32>(x_2300.z, x_2300.w));
            let x_2304 : f32 = u_xlat11.y;
            u_xlat12.w = x_2304;
            let x_2306 : vec4<f32> = u_xlat12;
            let x_2307 : vec2<f32> = vec2<f32>(x_2306.y, x_2306.z);
            let x_2308 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2308.x, x_2307.x, x_2308.z, x_2307.y);
            let x_2310 : vec4<f32> = u_xlat9;
            let x_2313 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2316 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2310.x, x_2310.y, x_2310.x, x_2310.y) * vec4<f32>(x_2313.x, x_2313.y, x_2313.x, x_2313.y)) + vec4<f32>(x_2316.x, x_2316.y, x_2316.z, x_2316.y));
            let x_2319 : vec4<f32> = u_xlat9;
            let x_2322 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2325 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2319.x, x_2319.y, x_2319.x, x_2319.y) * vec4<f32>(x_2322.x, x_2322.y, x_2322.x, x_2322.y)) + vec4<f32>(x_2325.w, x_2325.y, x_2325.w, x_2325.z));
            let x_2328 : vec4<f32> = u_xlat9;
            let x_2331 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2334 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2328.x, x_2328.y, x_2328.x, x_2328.y) * vec4<f32>(x_2331.x, x_2331.y, x_2331.x, x_2331.y)) + vec4<f32>(x_2334.x, x_2334.w, x_2334.z, x_2334.w));
            let x_2337 : vec4<f32> = u_xlat10;
            let x_2339 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2337.x, x_2337.x, x_2337.x, x_2337.y) * vec4<f32>(x_2339.z, x_2339.w, x_2339.y, x_2339.z));
            let x_2342 : vec4<f32> = u_xlat10;
            let x_2344 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2342.y, x_2342.y, x_2342.z, x_2342.z) * x_2344);
            let x_2347 : f32 = u_xlat10.z;
            let x_2349 : f32 = u_xlat15.y;
            u_xlat74 = (x_2347 * x_2349);
            let x_2352 : vec4<f32> = u_xlat13;
            let x_2353 : vec2<f32> = vec2<f32>(x_2352.x, x_2352.y);
            let x_2355 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2353.x, x_2353.y, x_2355);
            let x_2362 : vec3<f32> = txVec34;
            let x_2364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2362.xy, x_2362.z);
            u_xlat75 = x_2364;
            let x_2366 : vec4<f32> = u_xlat13;
            let x_2367 : vec2<f32> = vec2<f32>(x_2366.z, x_2366.w);
            let x_2369 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2367.x, x_2367.y, x_2369);
            let x_2377 : vec3<f32> = txVec35;
            let x_2379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2377.xy, x_2377.z);
            u_xlat76 = x_2379;
            let x_2380 : f32 = u_xlat76;
            let x_2382 : f32 = u_xlat16.y;
            u_xlat76 = (x_2380 * x_2382);
            let x_2385 : f32 = u_xlat16.x;
            let x_2386 : f32 = u_xlat75;
            let x_2388 : f32 = u_xlat76;
            u_xlat75 = ((x_2385 * x_2386) + x_2388);
            let x_2391 : vec2<f32> = u_xlat55;
            let x_2393 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2391.x, x_2391.y, x_2393);
            let x_2400 : vec3<f32> = txVec36;
            let x_2402 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2400.xy, x_2400.z);
            u_xlat76 = x_2402;
            let x_2404 : f32 = u_xlat16.z;
            let x_2405 : f32 = u_xlat76;
            let x_2407 : f32 = u_xlat75;
            u_xlat75 = ((x_2404 * x_2405) + x_2407);
            let x_2410 : vec4<f32> = u_xlat12;
            let x_2411 : vec2<f32> = vec2<f32>(x_2410.x, x_2410.y);
            let x_2413 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2411.x, x_2411.y, x_2413);
            let x_2420 : vec3<f32> = txVec37;
            let x_2422 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2420.xy, x_2420.z);
            u_xlat76 = x_2422;
            let x_2424 : f32 = u_xlat16.w;
            let x_2425 : f32 = u_xlat76;
            let x_2427 : f32 = u_xlat75;
            u_xlat75 = ((x_2424 * x_2425) + x_2427);
            let x_2430 : vec4<f32> = u_xlat14;
            let x_2431 : vec2<f32> = vec2<f32>(x_2430.x, x_2430.y);
            let x_2433 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2431.x, x_2431.y, x_2433);
            let x_2440 : vec3<f32> = txVec38;
            let x_2442 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2440.xy, x_2440.z);
            u_xlat76 = x_2442;
            let x_2444 : f32 = u_xlat17.x;
            let x_2445 : f32 = u_xlat76;
            let x_2447 : f32 = u_xlat75;
            u_xlat75 = ((x_2444 * x_2445) + x_2447);
            let x_2450 : vec4<f32> = u_xlat14;
            let x_2451 : vec2<f32> = vec2<f32>(x_2450.z, x_2450.w);
            let x_2453 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2451.x, x_2451.y, x_2453);
            let x_2460 : vec3<f32> = txVec39;
            let x_2462 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2460.xy, x_2460.z);
            u_xlat76 = x_2462;
            let x_2464 : f32 = u_xlat17.y;
            let x_2465 : f32 = u_xlat76;
            let x_2467 : f32 = u_xlat75;
            u_xlat75 = ((x_2464 * x_2465) + x_2467);
            let x_2470 : vec4<f32> = u_xlat12;
            let x_2471 : vec2<f32> = vec2<f32>(x_2470.z, x_2470.w);
            let x_2473 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2471.x, x_2471.y, x_2473);
            let x_2480 : vec3<f32> = txVec40;
            let x_2482 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2480.xy, x_2480.z);
            u_xlat76 = x_2482;
            let x_2484 : f32 = u_xlat17.z;
            let x_2485 : f32 = u_xlat76;
            let x_2487 : f32 = u_xlat75;
            u_xlat75 = ((x_2484 * x_2485) + x_2487);
            let x_2490 : vec4<f32> = u_xlat11;
            let x_2491 : vec2<f32> = vec2<f32>(x_2490.x, x_2490.y);
            let x_2493 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2491.x, x_2491.y, x_2493);
            let x_2500 : vec3<f32> = txVec41;
            let x_2502 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2500.xy, x_2500.z);
            u_xlat76 = x_2502;
            let x_2504 : f32 = u_xlat17.w;
            let x_2505 : f32 = u_xlat76;
            let x_2507 : f32 = u_xlat75;
            u_xlat75 = ((x_2504 * x_2505) + x_2507);
            let x_2510 : vec4<f32> = u_xlat11;
            let x_2511 : vec2<f32> = vec2<f32>(x_2510.z, x_2510.w);
            let x_2513 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2511.x, x_2511.y, x_2513);
            let x_2520 : vec3<f32> = txVec42;
            let x_2522 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2520.xy, x_2520.z);
            u_xlat76 = x_2522;
            let x_2523 : f32 = u_xlat74;
            let x_2524 : f32 = u_xlat76;
            let x_2526 : f32 = u_xlat75;
            u_xlat51 = ((x_2523 * x_2524) + x_2526);
          } else {
            let x_2529 : vec4<f32> = u_xlat8;
            let x_2532 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2535 : vec2<f32> = ((vec2<f32>(x_2529.x, x_2529.y) * vec2<f32>(x_2532.z, x_2532.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2536 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2535.x, x_2535.y, x_2536.z, x_2536.w);
            let x_2538 : vec4<f32> = u_xlat9;
            let x_2540 : vec2<f32> = floor(vec2<f32>(x_2538.x, x_2538.y));
            let x_2541 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2540.x, x_2540.y, x_2541.z, x_2541.w);
            let x_2543 : vec4<f32> = u_xlat8;
            let x_2546 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2549 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2543.x, x_2543.y) * vec2<f32>(x_2546.z, x_2546.w)) + -(vec2<f32>(x_2549.x, x_2549.y)));
            let x_2553 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2553.x, x_2553.x, x_2553.y, x_2553.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2556 : vec4<f32> = u_xlat10;
            let x_2558 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2556.x, x_2556.x, x_2556.z, x_2556.z) * vec4<f32>(x_2558.x, x_2558.x, x_2558.z, x_2558.z));
            let x_2561 : vec4<f32> = u_xlat11;
            let x_2563 : vec2<f32> = (vec2<f32>(x_2561.y, x_2561.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2564 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2564.x, x_2563.x, x_2564.z, x_2563.y);
            let x_2566 : vec4<f32> = u_xlat11;
            let x_2569 : vec2<f32> = u_xlat55;
            let x_2571 : vec2<f32> = ((vec2<f32>(x_2566.x, x_2566.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2569));
            let x_2572 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2571.x, x_2572.y, x_2571.y, x_2572.w);
            let x_2574 : vec2<f32> = u_xlat55;
            let x_2576 : vec2<f32> = (-(x_2574) + vec2<f32>(1.0f, 1.0f));
            let x_2577 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2576.x, x_2576.y, x_2577.z, x_2577.w);
            let x_2579 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2579, vec2<f32>(0.0f, 0.0f));
            let x_2581 : vec2<f32> = u_xlat57;
            let x_2583 : vec2<f32> = u_xlat57;
            let x_2585 : vec4<f32> = u_xlat11;
            let x_2587 : vec2<f32> = ((-(x_2581) * x_2583) + vec2<f32>(x_2585.x, x_2585.y));
            let x_2588 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2587.x, x_2587.y, x_2588.z, x_2588.w);
            let x_2590 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2590, vec2<f32>(0.0f, 0.0f));
            let x_2593 : vec2<f32> = u_xlat57;
            let x_2595 : vec2<f32> = u_xlat57;
            let x_2597 : vec4<f32> = u_xlat10;
            let x_2599 : vec2<f32> = ((-(x_2593) * x_2595) + vec2<f32>(x_2597.y, x_2597.w));
            let x_2600 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2599.x, x_2600.y, x_2599.y);
            let x_2602 : vec4<f32> = u_xlat11;
            let x_2604 : vec2<f32> = (vec2<f32>(x_2602.x, x_2602.y) + vec2<f32>(2.0f, 2.0f));
            let x_2605 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2604.x, x_2604.y, x_2605.z, x_2605.w);
            let x_2607 : vec3<f32> = u_xlat33;
            let x_2609 : vec2<f32> = (vec2<f32>(x_2607.x, x_2607.z) + vec2<f32>(2.0f, 2.0f));
            let x_2610 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2610.x, x_2609.x, x_2610.z, x_2609.y);
            let x_2613 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2613 * 0.08163200318813323975f);
            let x_2616 : vec4<f32> = u_xlat10;
            let x_2618 : vec3<f32> = (vec3<f32>(x_2616.z, x_2616.x, x_2616.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2619 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
            let x_2621 : vec4<f32> = u_xlat11;
            let x_2623 : vec2<f32> = (vec2<f32>(x_2621.x, x_2621.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2624 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2623.x, x_2623.y, x_2624.z, x_2624.w);
            let x_2627 : f32 = u_xlat14.y;
            u_xlat13.x = x_2627;
            let x_2629 : vec2<f32> = u_xlat55;
            let x_2632 : vec2<f32> = ((vec2<f32>(x_2629.x, x_2629.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2633 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2633.x, x_2632.x, x_2633.z, x_2632.y);
            let x_2635 : vec2<f32> = u_xlat55;
            let x_2638 : vec2<f32> = ((vec2<f32>(x_2635.x, x_2635.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2639 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2638.x, x_2639.y, x_2638.y, x_2639.w);
            let x_2642 : f32 = u_xlat10.x;
            u_xlat11.y = x_2642;
            let x_2645 : f32 = u_xlat12.y;
            u_xlat11.w = x_2645;
            let x_2647 : vec4<f32> = u_xlat11;
            let x_2648 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2647 + x_2648);
            let x_2650 : vec2<f32> = u_xlat55;
            let x_2653 : vec2<f32> = ((vec2<f32>(x_2650.y, x_2650.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2654 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2654.x, x_2653.x, x_2654.z, x_2653.y);
            let x_2656 : vec2<f32> = u_xlat55;
            let x_2659 : vec2<f32> = ((vec2<f32>(x_2656.y, x_2656.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2660 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2659.x, x_2660.y, x_2659.y, x_2660.w);
            let x_2663 : f32 = u_xlat10.y;
            u_xlat12.y = x_2663;
            let x_2665 : vec4<f32> = u_xlat12;
            let x_2666 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2665 + x_2666);
            let x_2668 : vec4<f32> = u_xlat11;
            let x_2669 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2668 / x_2669);
            let x_2671 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2671 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2673 : vec4<f32> = u_xlat12;
            let x_2674 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2673 / x_2674);
            let x_2676 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2676 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2678 : vec4<f32> = u_xlat11;
            let x_2681 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2678.w, x_2678.x, x_2678.y, x_2678.z) * vec4<f32>(x_2681.x, x_2681.x, x_2681.x, x_2681.x));
            let x_2684 : vec4<f32> = u_xlat12;
            let x_2687 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2684.x, x_2684.w, x_2684.y, x_2684.z) * vec4<f32>(x_2687.y, x_2687.y, x_2687.y, x_2687.y));
            let x_2690 : vec4<f32> = u_xlat11;
            let x_2691 : vec3<f32> = vec3<f32>(x_2690.y, x_2690.z, x_2690.w);
            let x_2692 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2691.x, x_2692.y, x_2691.y, x_2691.z);
            let x_2695 : f32 = u_xlat12.x;
            u_xlat14.y = x_2695;
            let x_2697 : vec4<f32> = u_xlat9;
            let x_2700 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2703 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2697.x, x_2697.y, x_2697.x, x_2697.y) * vec4<f32>(x_2700.x, x_2700.y, x_2700.x, x_2700.y)) + vec4<f32>(x_2703.x, x_2703.y, x_2703.z, x_2703.y));
            let x_2706 : vec4<f32> = u_xlat9;
            let x_2709 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2712 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2706.x, x_2706.y) * vec2<f32>(x_2709.x, x_2709.y)) + vec2<f32>(x_2712.w, x_2712.y));
            let x_2716 : f32 = u_xlat14.y;
            u_xlat11.y = x_2716;
            let x_2719 : f32 = u_xlat12.z;
            u_xlat14.y = x_2719;
            let x_2721 : vec4<f32> = u_xlat9;
            let x_2724 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2727 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2721.x, x_2721.y, x_2721.x, x_2721.y) * vec4<f32>(x_2724.x, x_2724.y, x_2724.x, x_2724.y)) + vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2727.y));
            let x_2730 : vec4<f32> = u_xlat9;
            let x_2733 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2736 : vec4<f32> = u_xlat14;
            let x_2738 : vec2<f32> = ((vec2<f32>(x_2730.x, x_2730.y) * vec2<f32>(x_2733.x, x_2733.y)) + vec2<f32>(x_2736.w, x_2736.y));
            let x_2739 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2738.x, x_2738.y, x_2739.z, x_2739.w);
            let x_2742 : f32 = u_xlat14.y;
            u_xlat11.z = x_2742;
            let x_2745 : vec4<f32> = u_xlat9;
            let x_2748 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2751 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2745.x, x_2745.y, x_2745.x, x_2745.y) * vec4<f32>(x_2748.x, x_2748.y, x_2748.x, x_2748.y)) + vec4<f32>(x_2751.x, x_2751.y, x_2751.x, x_2751.z));
            let x_2755 : f32 = u_xlat12.w;
            u_xlat14.y = x_2755;
            let x_2758 : vec4<f32> = u_xlat9;
            let x_2761 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2764 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2758.x, x_2758.y, x_2758.x, x_2758.y) * vec4<f32>(x_2761.x, x_2761.y, x_2761.x, x_2761.y)) + vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2764.y));
            let x_2768 : vec4<f32> = u_xlat9;
            let x_2771 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2774 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2768.x, x_2768.y) * vec2<f32>(x_2771.x, x_2771.y)) + vec2<f32>(x_2774.w, x_2774.y));
            let x_2778 : f32 = u_xlat14.y;
            u_xlat11.w = x_2778;
            let x_2781 : vec4<f32> = u_xlat9;
            let x_2784 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2787 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2781.x, x_2781.y) * vec2<f32>(x_2784.x, x_2784.y)) + vec2<f32>(x_2787.x, x_2787.w));
            let x_2790 : vec4<f32> = u_xlat14;
            let x_2791 : vec3<f32> = vec3<f32>(x_2790.x, x_2790.z, x_2790.w);
            let x_2792 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2791.x, x_2792.y, x_2791.y, x_2791.z);
            let x_2794 : vec4<f32> = u_xlat9;
            let x_2797 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2800 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2794.x, x_2794.y, x_2794.x, x_2794.y) * vec4<f32>(x_2797.x, x_2797.y, x_2797.x, x_2797.y)) + vec4<f32>(x_2800.x, x_2800.y, x_2800.z, x_2800.y));
            let x_2803 : vec4<f32> = u_xlat9;
            let x_2806 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2809 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2803.x, x_2803.y) * vec2<f32>(x_2806.x, x_2806.y)) + vec2<f32>(x_2809.w, x_2809.y));
            let x_2813 : f32 = u_xlat11.x;
            u_xlat12.x = x_2813;
            let x_2815 : vec4<f32> = u_xlat9;
            let x_2818 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2821 : vec4<f32> = u_xlat12;
            let x_2823 : vec2<f32> = ((vec2<f32>(x_2815.x, x_2815.y) * vec2<f32>(x_2818.x, x_2818.y)) + vec2<f32>(x_2821.x, x_2821.y));
            let x_2824 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2823.x, x_2823.y, x_2824.z, x_2824.w);
            let x_2827 : vec4<f32> = u_xlat10;
            let x_2829 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_2827.x, x_2827.x, x_2827.x, x_2827.x) * x_2829);
            let x_2832 : vec4<f32> = u_xlat10;
            let x_2834 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_2832.y, x_2832.y, x_2832.y, x_2832.y) * x_2834);
            let x_2837 : vec4<f32> = u_xlat10;
            let x_2839 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_2837.z, x_2837.z, x_2837.z, x_2837.z) * x_2839);
            let x_2841 : vec4<f32> = u_xlat10;
            let x_2843 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2841.w, x_2841.w, x_2841.w, x_2841.w) * x_2843);
            let x_2846 : vec4<f32> = u_xlat15;
            let x_2847 : vec2<f32> = vec2<f32>(x_2846.x, x_2846.y);
            let x_2849 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2847.x, x_2847.y, x_2849);
            let x_2856 : vec3<f32> = txVec43;
            let x_2858 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2856.xy, x_2856.z);
            u_xlat74 = x_2858;
            let x_2860 : vec4<f32> = u_xlat15;
            let x_2861 : vec2<f32> = vec2<f32>(x_2860.z, x_2860.w);
            let x_2863 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_2861.x, x_2861.y, x_2863);
            let x_2870 : vec3<f32> = txVec44;
            let x_2872 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2870.xy, x_2870.z);
            u_xlat75 = x_2872;
            let x_2873 : f32 = u_xlat75;
            let x_2875 : f32 = u_xlat20.y;
            u_xlat75 = (x_2873 * x_2875);
            let x_2878 : f32 = u_xlat20.x;
            let x_2879 : f32 = u_xlat74;
            let x_2881 : f32 = u_xlat75;
            u_xlat74 = ((x_2878 * x_2879) + x_2881);
            let x_2884 : vec2<f32> = u_xlat55;
            let x_2886 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_2884.x, x_2884.y, x_2886);
            let x_2893 : vec3<f32> = txVec45;
            let x_2895 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2893.xy, x_2893.z);
            u_xlat75 = x_2895;
            let x_2897 : f32 = u_xlat20.z;
            let x_2898 : f32 = u_xlat75;
            let x_2900 : f32 = u_xlat74;
            u_xlat74 = ((x_2897 * x_2898) + x_2900);
            let x_2903 : vec4<f32> = u_xlat18;
            let x_2904 : vec2<f32> = vec2<f32>(x_2903.x, x_2903.y);
            let x_2906 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_2904.x, x_2904.y, x_2906);
            let x_2913 : vec3<f32> = txVec46;
            let x_2915 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2913.xy, x_2913.z);
            u_xlat75 = x_2915;
            let x_2917 : f32 = u_xlat20.w;
            let x_2918 : f32 = u_xlat75;
            let x_2920 : f32 = u_xlat74;
            u_xlat74 = ((x_2917 * x_2918) + x_2920);
            let x_2923 : vec4<f32> = u_xlat16;
            let x_2924 : vec2<f32> = vec2<f32>(x_2923.x, x_2923.y);
            let x_2926 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_2924.x, x_2924.y, x_2926);
            let x_2933 : vec3<f32> = txVec47;
            let x_2935 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2933.xy, x_2933.z);
            u_xlat75 = x_2935;
            let x_2937 : f32 = u_xlat21.x;
            let x_2938 : f32 = u_xlat75;
            let x_2940 : f32 = u_xlat74;
            u_xlat74 = ((x_2937 * x_2938) + x_2940);
            let x_2943 : vec4<f32> = u_xlat16;
            let x_2944 : vec2<f32> = vec2<f32>(x_2943.z, x_2943.w);
            let x_2946 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_2944.x, x_2944.y, x_2946);
            let x_2953 : vec3<f32> = txVec48;
            let x_2955 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2953.xy, x_2953.z);
            u_xlat75 = x_2955;
            let x_2957 : f32 = u_xlat21.y;
            let x_2958 : f32 = u_xlat75;
            let x_2960 : f32 = u_xlat74;
            u_xlat74 = ((x_2957 * x_2958) + x_2960);
            let x_2963 : vec4<f32> = u_xlat17;
            let x_2964 : vec2<f32> = vec2<f32>(x_2963.x, x_2963.y);
            let x_2966 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_2964.x, x_2964.y, x_2966);
            let x_2973 : vec3<f32> = txVec49;
            let x_2975 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2973.xy, x_2973.z);
            u_xlat75 = x_2975;
            let x_2977 : f32 = u_xlat21.z;
            let x_2978 : f32 = u_xlat75;
            let x_2980 : f32 = u_xlat74;
            u_xlat74 = ((x_2977 * x_2978) + x_2980);
            let x_2983 : vec4<f32> = u_xlat18;
            let x_2984 : vec2<f32> = vec2<f32>(x_2983.z, x_2983.w);
            let x_2986 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_2984.x, x_2984.y, x_2986);
            let x_2993 : vec3<f32> = txVec50;
            let x_2995 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2993.xy, x_2993.z);
            u_xlat75 = x_2995;
            let x_2997 : f32 = u_xlat21.w;
            let x_2998 : f32 = u_xlat75;
            let x_3000 : f32 = u_xlat74;
            u_xlat74 = ((x_2997 * x_2998) + x_3000);
            let x_3003 : vec4<f32> = u_xlat19;
            let x_3004 : vec2<f32> = vec2<f32>(x_3003.x, x_3003.y);
            let x_3006 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3004.x, x_3004.y, x_3006);
            let x_3013 : vec3<f32> = txVec51;
            let x_3015 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3013.xy, x_3013.z);
            u_xlat75 = x_3015;
            let x_3017 : f32 = u_xlat22.x;
            let x_3018 : f32 = u_xlat75;
            let x_3020 : f32 = u_xlat74;
            u_xlat74 = ((x_3017 * x_3018) + x_3020);
            let x_3023 : vec4<f32> = u_xlat19;
            let x_3024 : vec2<f32> = vec2<f32>(x_3023.z, x_3023.w);
            let x_3026 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3024.x, x_3024.y, x_3026);
            let x_3033 : vec3<f32> = txVec52;
            let x_3035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3033.xy, x_3033.z);
            u_xlat75 = x_3035;
            let x_3037 : f32 = u_xlat22.y;
            let x_3038 : f32 = u_xlat75;
            let x_3040 : f32 = u_xlat74;
            u_xlat74 = ((x_3037 * x_3038) + x_3040);
            let x_3043 : vec2<f32> = u_xlat34;
            let x_3045 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3043.x, x_3043.y, x_3045);
            let x_3052 : vec3<f32> = txVec53;
            let x_3054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3052.xy, x_3052.z);
            u_xlat75 = x_3054;
            let x_3056 : f32 = u_xlat22.z;
            let x_3057 : f32 = u_xlat75;
            let x_3059 : f32 = u_xlat74;
            u_xlat74 = ((x_3056 * x_3057) + x_3059);
            let x_3062 : vec2<f32> = u_xlat63;
            let x_3064 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3062.x, x_3062.y, x_3064);
            let x_3071 : vec3<f32> = txVec54;
            let x_3073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3071.xy, x_3071.z);
            u_xlat75 = x_3073;
            let x_3075 : f32 = u_xlat22.w;
            let x_3076 : f32 = u_xlat75;
            let x_3078 : f32 = u_xlat74;
            u_xlat74 = ((x_3075 * x_3076) + x_3078);
            let x_3081 : vec4<f32> = u_xlat14;
            let x_3082 : vec2<f32> = vec2<f32>(x_3081.x, x_3081.y);
            let x_3084 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3082.x, x_3082.y, x_3084);
            let x_3091 : vec3<f32> = txVec55;
            let x_3093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3091.xy, x_3091.z);
            u_xlat75 = x_3093;
            let x_3095 : f32 = u_xlat10.x;
            let x_3096 : f32 = u_xlat75;
            let x_3098 : f32 = u_xlat74;
            u_xlat74 = ((x_3095 * x_3096) + x_3098);
            let x_3101 : vec4<f32> = u_xlat14;
            let x_3102 : vec2<f32> = vec2<f32>(x_3101.z, x_3101.w);
            let x_3104 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3102.x, x_3102.y, x_3104);
            let x_3111 : vec3<f32> = txVec56;
            let x_3113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3111.xy, x_3111.z);
            u_xlat75 = x_3113;
            let x_3115 : f32 = u_xlat10.y;
            let x_3116 : f32 = u_xlat75;
            let x_3118 : f32 = u_xlat74;
            u_xlat74 = ((x_3115 * x_3116) + x_3118);
            let x_3121 : vec2<f32> = u_xlat58;
            let x_3123 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3121.x, x_3121.y, x_3123);
            let x_3130 : vec3<f32> = txVec57;
            let x_3132 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3130.xy, x_3130.z);
            u_xlat75 = x_3132;
            let x_3134 : f32 = u_xlat10.z;
            let x_3135 : f32 = u_xlat75;
            let x_3137 : f32 = u_xlat74;
            u_xlat74 = ((x_3134 * x_3135) + x_3137);
            let x_3140 : vec4<f32> = u_xlat9;
            let x_3141 : vec2<f32> = vec2<f32>(x_3140.x, x_3140.y);
            let x_3143 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3141.x, x_3141.y, x_3143);
            let x_3150 : vec3<f32> = txVec58;
            let x_3152 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3150.xy, x_3150.z);
            u_xlat75 = x_3152;
            let x_3154 : f32 = u_xlat10.w;
            let x_3155 : f32 = u_xlat75;
            let x_3157 : f32 = u_xlat74;
            u_xlat51 = ((x_3154 * x_3155) + x_3157);
          }
        }
      } else {
        let x_3161 : vec4<f32> = u_xlat8;
        let x_3162 : vec2<f32> = vec2<f32>(x_3161.x, x_3161.y);
        let x_3164 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3162.x, x_3162.y, x_3164);
        let x_3171 : vec3<f32> = txVec59;
        let x_3173 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3171.xy, x_3171.z);
        u_xlat51 = x_3173;
      }
      let x_3174 : i32 = u_xlati72;
      let x_3176 : f32 = x_261.x_AdditionalShadowParams[x_3174].x;
      u_xlat74 = (1.0f + -(x_3176));
      let x_3179 : f32 = u_xlat51;
      let x_3180 : i32 = u_xlati72;
      let x_3182 : f32 = x_261.x_AdditionalShadowParams[x_3180].x;
      let x_3184 : f32 = u_xlat74;
      u_xlat51 = ((x_3179 * x_3182) + x_3184);
      let x_3187 : f32 = u_xlat8.z;
      u_xlatb74 = (0.0f >= x_3187);
      let x_3191 : f32 = u_xlat8.z;
      u_xlatb75 = (x_3191 >= 1.0f);
      let x_3193 : bool = u_xlatb74;
      let x_3194 : bool = u_xlatb75;
      u_xlatb74 = (x_3193 | x_3194);
      let x_3196 : bool = u_xlatb74;
      let x_3197 : f32 = u_xlat51;
      u_xlat51 = select(x_3197, 1.0f, x_3196);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_3200 : f32 = u_xlat51;
    u_xlat74 = (-(x_3200) + 1.0f);
    let x_3203 : f32 = u_xlat70;
    let x_3204 : f32 = u_xlat74;
    let x_3206 : f32 = u_xlat51;
    u_xlat51 = ((x_3203 * x_3204) + x_3206);
    let x_3209 : i32 = u_xlati72;
    u_xlati74 = (1i << bitcast<u32>((x_3209 & 31i)));
    let x_3213 : i32 = u_xlati74;
    let x_3216 : f32 = x_1535.x_AdditionalLightsCookieEnableBits;
    u_xlati74 = bitcast<i32>((bitcast<u32>(x_3213) & bitcast<u32>(x_3216)));
    let x_3220 : i32 = u_xlati74;
    if ((x_3220 != 0i)) {
      let x_3224 : i32 = u_xlati72;
      let x_3226 : f32 = x_1535.x_AdditionalLightsLightTypes[x_3224].el;
      u_xlati74 = i32(x_3226);
      let x_3229 : i32 = u_xlati74;
      u_xlati75 = select(1i, 0i, (x_3229 != 0i));
      let x_3233 : i32 = u_xlati72;
      u_xlati76 = (x_3233 << bitcast<u32>(2i));
      let x_3235 : i32 = u_xlati75;
      if ((x_3235 != 0i)) {
        let x_3239 : vec4<f32> = vs_TEXCOORD2;
        let x_3241 : i32 = u_xlati76;
        let x_3244 : i32 = u_xlati76;
        let x_3248 : vec4<f32> = x_1535.x_AdditionalLightsWorldToLights[((x_3241 + 1i) / 4i)][((x_3244 + 1i) % 4i)];
        let x_3250 : vec3<f32> = (vec3<f32>(x_3239.y, x_3239.y, x_3239.y) * vec3<f32>(x_3248.x, x_3248.y, x_3248.w));
        let x_3251 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3250.x, x_3250.y, x_3250.z, x_3251.w);
        let x_3253 : i32 = u_xlati76;
        let x_3255 : i32 = u_xlati76;
        let x_3258 : vec4<f32> = x_1535.x_AdditionalLightsWorldToLights[(x_3253 / 4i)][(x_3255 % 4i)];
        let x_3260 : vec4<f32> = vs_TEXCOORD2;
        let x_3263 : vec4<f32> = u_xlat8;
        let x_3265 : vec3<f32> = ((vec3<f32>(x_3258.x, x_3258.y, x_3258.w) * vec3<f32>(x_3260.x, x_3260.x, x_3260.x)) + vec3<f32>(x_3263.x, x_3263.y, x_3263.z));
        let x_3266 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3265.x, x_3265.y, x_3265.z, x_3266.w);
        let x_3268 : i32 = u_xlati76;
        let x_3271 : i32 = u_xlati76;
        let x_3275 : vec4<f32> = x_1535.x_AdditionalLightsWorldToLights[((x_3268 + 2i) / 4i)][((x_3271 + 2i) % 4i)];
        let x_3277 : vec4<f32> = vs_TEXCOORD2;
        let x_3280 : vec4<f32> = u_xlat8;
        let x_3282 : vec3<f32> = ((vec3<f32>(x_3275.x, x_3275.y, x_3275.w) * vec3<f32>(x_3277.z, x_3277.z, x_3277.z)) + vec3<f32>(x_3280.x, x_3280.y, x_3280.z));
        let x_3283 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3282.x, x_3282.y, x_3282.z, x_3283.w);
        let x_3285 : vec4<f32> = u_xlat8;
        let x_3287 : i32 = u_xlati76;
        let x_3290 : i32 = u_xlati76;
        let x_3294 : vec4<f32> = x_1535.x_AdditionalLightsWorldToLights[((x_3287 + 3i) / 4i)][((x_3290 + 3i) % 4i)];
        let x_3296 : vec3<f32> = (vec3<f32>(x_3285.x, x_3285.y, x_3285.z) + vec3<f32>(x_3294.x, x_3294.y, x_3294.w));
        let x_3297 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3296.x, x_3296.y, x_3296.z, x_3297.w);
        let x_3299 : vec4<f32> = u_xlat8;
        let x_3301 : vec4<f32> = u_xlat8;
        let x_3303 : vec2<f32> = (vec2<f32>(x_3299.x, x_3299.y) / vec2<f32>(x_3301.z, x_3301.z));
        let x_3304 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3303.x, x_3303.y, x_3304.z, x_3304.w);
        let x_3306 : vec4<f32> = u_xlat8;
        let x_3309 : vec2<f32> = ((vec2<f32>(x_3306.x, x_3306.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3310 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3309.x, x_3309.y, x_3310.z, x_3310.w);
        let x_3312 : vec4<f32> = u_xlat8;
        let x_3316 : vec2<f32> = clamp(vec2<f32>(x_3312.x, x_3312.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3317 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3316.x, x_3316.y, x_3317.z, x_3317.w);
        let x_3319 : i32 = u_xlati72;
        let x_3321 : vec4<f32> = x_1535.x_AdditionalLightsCookieAtlasUVRects[x_3319];
        let x_3323 : vec4<f32> = u_xlat8;
        let x_3326 : i32 = u_xlati72;
        let x_3328 : vec4<f32> = x_1535.x_AdditionalLightsCookieAtlasUVRects[x_3326];
        let x_3330 : vec2<f32> = ((vec2<f32>(x_3321.x, x_3321.y) * vec2<f32>(x_3323.x, x_3323.y)) + vec2<f32>(x_3328.z, x_3328.w));
        let x_3331 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3330.x, x_3330.y, x_3331.z, x_3331.w);
      } else {
        let x_3334 : i32 = u_xlati74;
        u_xlatb74 = (x_3334 == 1i);
        let x_3336 : bool = u_xlatb74;
        u_xlati74 = select(0i, 1i, x_3336);
        let x_3338 : i32 = u_xlati74;
        if ((x_3338 != 0i)) {
          let x_3343 : vec4<f32> = vs_TEXCOORD2;
          let x_3345 : i32 = u_xlati76;
          let x_3348 : i32 = u_xlati76;
          let x_3352 : vec4<f32> = x_1535.x_AdditionalLightsWorldToLights[((x_3345 + 1i) / 4i)][((x_3348 + 1i) % 4i)];
          u_xlat54 = (vec2<f32>(x_3343.y, x_3343.y) * vec2<f32>(x_3352.x, x_3352.y));
          let x_3355 : i32 = u_xlati76;
          let x_3357 : i32 = u_xlati76;
          let x_3360 : vec4<f32> = x_1535.x_AdditionalLightsWorldToLights[(x_3355 / 4i)][(x_3357 % 4i)];
          let x_3362 : vec4<f32> = vs_TEXCOORD2;
          let x_3365 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3360.x, x_3360.y) * vec2<f32>(x_3362.x, x_3362.x)) + x_3365);
          let x_3367 : i32 = u_xlati76;
          let x_3370 : i32 = u_xlati76;
          let x_3374 : vec4<f32> = x_1535.x_AdditionalLightsWorldToLights[((x_3367 + 2i) / 4i)][((x_3370 + 2i) % 4i)];
          let x_3376 : vec4<f32> = vs_TEXCOORD2;
          let x_3379 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3374.x, x_3374.y) * vec2<f32>(x_3376.z, x_3376.z)) + x_3379);
          let x_3381 : vec2<f32> = u_xlat54;
          let x_3382 : i32 = u_xlati76;
          let x_3385 : i32 = u_xlati76;
          let x_3389 : vec4<f32> = x_1535.x_AdditionalLightsWorldToLights[((x_3382 + 3i) / 4i)][((x_3385 + 3i) % 4i)];
          u_xlat54 = (x_3381 + vec2<f32>(x_3389.x, x_3389.y));
          let x_3392 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3392 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3395 : vec2<f32> = u_xlat54;
          u_xlat54 = fract(x_3395);
          let x_3397 : i32 = u_xlati72;
          let x_3399 : vec4<f32> = x_1535.x_AdditionalLightsCookieAtlasUVRects[x_3397];
          let x_3401 : vec2<f32> = u_xlat54;
          let x_3403 : i32 = u_xlati72;
          let x_3405 : vec4<f32> = x_1535.x_AdditionalLightsCookieAtlasUVRects[x_3403];
          let x_3407 : vec2<f32> = ((vec2<f32>(x_3399.x, x_3399.y) * x_3401) + vec2<f32>(x_3405.z, x_3405.w));
          let x_3408 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3407.x, x_3407.y, x_3408.z, x_3408.w);
        } else {
          let x_3411 : vec4<f32> = vs_TEXCOORD2;
          let x_3413 : i32 = u_xlati76;
          let x_3416 : i32 = u_xlati76;
          let x_3420 : vec4<f32> = x_1535.x_AdditionalLightsWorldToLights[((x_3413 + 1i) / 4i)][((x_3416 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3411.y, x_3411.y, x_3411.y, x_3411.y) * x_3420);
          let x_3422 : i32 = u_xlati76;
          let x_3424 : i32 = u_xlati76;
          let x_3427 : vec4<f32> = x_1535.x_AdditionalLightsWorldToLights[(x_3422 / 4i)][(x_3424 % 4i)];
          let x_3428 : vec4<f32> = vs_TEXCOORD2;
          let x_3431 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3427 * vec4<f32>(x_3428.x, x_3428.x, x_3428.x, x_3428.x)) + x_3431);
          let x_3433 : i32 = u_xlati76;
          let x_3436 : i32 = u_xlati76;
          let x_3440 : vec4<f32> = x_1535.x_AdditionalLightsWorldToLights[((x_3433 + 2i) / 4i)][((x_3436 + 2i) % 4i)];
          let x_3441 : vec4<f32> = vs_TEXCOORD2;
          let x_3444 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3440 * vec4<f32>(x_3441.z, x_3441.z, x_3441.z, x_3441.z)) + x_3444);
          let x_3446 : vec4<f32> = u_xlat9;
          let x_3447 : i32 = u_xlati76;
          let x_3450 : i32 = u_xlati76;
          let x_3454 : vec4<f32> = x_1535.x_AdditionalLightsWorldToLights[((x_3447 + 3i) / 4i)][((x_3450 + 3i) % 4i)];
          u_xlat9 = (x_3446 + x_3454);
          let x_3456 : vec4<f32> = u_xlat9;
          let x_3458 : vec4<f32> = u_xlat9;
          let x_3460 : vec3<f32> = (vec3<f32>(x_3456.x, x_3456.y, x_3456.z) / vec3<f32>(x_3458.w, x_3458.w, x_3458.w));
          let x_3461 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3460.x, x_3460.y, x_3460.z, x_3461.w);
          let x_3463 : vec4<f32> = u_xlat9;
          let x_3465 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(vec3<f32>(x_3463.x, x_3463.y, x_3463.z), vec3<f32>(x_3465.x, x_3465.y, x_3465.z));
          let x_3468 : f32 = u_xlat74;
          u_xlat74 = inverseSqrt(x_3468);
          let x_3470 : f32 = u_xlat74;
          let x_3472 : vec4<f32> = u_xlat9;
          let x_3474 : vec3<f32> = (vec3<f32>(x_3470, x_3470, x_3470) * vec3<f32>(x_3472.x, x_3472.y, x_3472.z));
          let x_3475 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3474.x, x_3474.y, x_3474.z, x_3475.w);
          let x_3477 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(abs(vec3<f32>(x_3477.x, x_3477.y, x_3477.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3482 : f32 = u_xlat74;
          u_xlat74 = max(x_3482, 0.00000099999999747524f);
          let x_3485 : f32 = u_xlat74;
          u_xlat74 = (1.0f / x_3485);
          let x_3487 : f32 = u_xlat74;
          let x_3489 : vec4<f32> = u_xlat9;
          let x_3491 : vec3<f32> = (vec3<f32>(x_3487, x_3487, x_3487) * vec3<f32>(x_3489.z, x_3489.x, x_3489.y));
          let x_3492 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3491.x, x_3491.y, x_3491.z, x_3492.w);
          let x_3495 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3495);
          let x_3499 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3499, 0.0f, 1.0f);
          let x_3503 : vec4<f32> = u_xlat10;
          let x_3505 : vec4<bool> = (vec4<f32>(x_3503.y, x_3503.z, x_3503.y, x_3503.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3505.x, x_3505.y);
          let x_3508 : bool = u_xlatb54.x;
          if (x_3508) {
            let x_3513 : f32 = u_xlat10.x;
            x_3509 = x_3513;
          } else {
            let x_3516 : f32 = u_xlat10.x;
            x_3509 = -(x_3516);
          }
          let x_3518 : f32 = x_3509;
          u_xlat54.x = x_3518;
          let x_3521 : bool = u_xlatb54.y;
          if (x_3521) {
            let x_3526 : f32 = u_xlat10.x;
            x_3522 = x_3526;
          } else {
            let x_3529 : f32 = u_xlat10.x;
            x_3522 = -(x_3529);
          }
          let x_3531 : f32 = x_3522;
          u_xlat54.y = x_3531;
          let x_3533 : vec4<f32> = u_xlat9;
          let x_3535 : f32 = u_xlat74;
          let x_3538 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3533.x, x_3533.y) * vec2<f32>(x_3535, x_3535)) + x_3538);
          let x_3540 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3540 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3543 : vec2<f32> = u_xlat54;
          u_xlat54 = clamp(x_3543, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3547 : i32 = u_xlati72;
          let x_3549 : vec4<f32> = x_1535.x_AdditionalLightsCookieAtlasUVRects[x_3547];
          let x_3551 : vec2<f32> = u_xlat54;
          let x_3553 : i32 = u_xlati72;
          let x_3555 : vec4<f32> = x_1535.x_AdditionalLightsCookieAtlasUVRects[x_3553];
          let x_3557 : vec2<f32> = ((vec2<f32>(x_3549.x, x_3549.y) * x_3551) + vec2<f32>(x_3555.z, x_3555.w));
          let x_3558 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3557.x, x_3557.y, x_3558.z, x_3558.w);
        }
      }
      let x_3565 : vec4<f32> = u_xlat8;
      let x_3567 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3565.x, x_3565.y), 0.0f);
      u_xlat8 = x_3567;
      let x_3569 : bool = u_xlatb5.y;
      if (x_3569) {
        let x_3574 : f32 = u_xlat8.w;
        x_3570 = x_3574;
      } else {
        let x_3577 : f32 = u_xlat8.x;
        x_3570 = x_3577;
      }
      let x_3578 : f32 = x_3570;
      u_xlat74 = x_3578;
      let x_3580 : bool = u_xlatb5.x;
      if (x_3580) {
        let x_3584 : vec4<f32> = u_xlat8;
        x_3581 = vec3<f32>(x_3584.x, x_3584.y, x_3584.z);
      } else {
        let x_3587 : f32 = u_xlat74;
        x_3581 = vec3<f32>(x_3587, x_3587, x_3587);
      }
      let x_3589 : vec3<f32> = x_3581;
      let x_3590 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3589.x, x_3589.y, x_3589.z, x_3590.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3596 : vec4<f32> = u_xlat8;
    let x_3598 : i32 = u_xlati72;
    let x_3600 : vec4<f32> = x_1784.x_AdditionalLightsColor[x_3598];
    let x_3602 : vec3<f32> = (vec3<f32>(x_3596.x, x_3596.y, x_3596.z) * vec3<f32>(x_3600.x, x_3600.y, x_3600.z));
    let x_3603 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3602.x, x_3602.y, x_3602.z, x_3603.w);
    let x_3605 : f32 = u_xlat73;
    let x_3606 : f32 = u_xlat51;
    u_xlat72 = (x_3605 * x_3606);
    let x_3608 : f32 = u_xlat72;
    let x_3610 : vec4<f32> = u_xlat8;
    let x_3612 : vec3<f32> = (vec3<f32>(x_3608, x_3608, x_3608) * vec3<f32>(x_3610.x, x_3610.y, x_3610.z));
    let x_3613 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3612.x, x_3612.y, x_3612.z, x_3613.w);
    let x_3615 : vec3<f32> = u_xlat2;
    let x_3616 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(x_3615, vec3<f32>(x_3616.x, x_3616.y, x_3616.z));
    let x_3619 : f32 = u_xlat72;
    u_xlat72 = clamp(x_3619, 0.0f, 1.0f);
    let x_3621 : f32 = u_xlat72;
    let x_3623 : vec4<f32> = u_xlat8;
    let x_3625 : vec3<f32> = (vec3<f32>(x_3621, x_3621, x_3621) * vec3<f32>(x_3623.x, x_3623.y, x_3623.z));
    let x_3626 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3625.x, x_3625.y, x_3625.z, x_3626.w);
    let x_3628 : vec4<f32> = u_xlat7;
    let x_3630 : vec4<f32> = u_xlat1;
    let x_3633 : vec4<f32> = u_xlat6;
    let x_3635 : vec3<f32> = ((vec3<f32>(x_3628.x, x_3628.y, x_3628.z) * vec3<f32>(x_3630.x, x_3630.y, x_3630.z)) + vec3<f32>(x_3633.x, x_3633.y, x_3633.z));
    let x_3636 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3635.x, x_3635.y, x_3635.z, x_3636.w);

    continuing {
      let x_3638 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3638 + bitcast<u32>(1i));
    }
  }
  let x_3640 : vec4<f32> = u_xlat3;
  let x_3642 : vec4<f32> = u_xlat1;
  let x_3645 : vec4<f32> = u_xlat4;
  let x_3647 : vec3<f32> = ((vec3<f32>(x_3640.x, x_3640.y, x_3640.z) * vec3<f32>(x_3642.x, x_3642.y, x_3642.z)) + vec3<f32>(x_3645.x, x_3645.y, x_3645.z));
  let x_3648 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3647.x, x_3647.y, x_3647.z, x_3648.w);
  let x_3650 : vec4<f32> = u_xlat6;
  let x_3652 : vec4<f32> = u_xlat1;
  let x_3654 : vec3<f32> = (vec3<f32>(x_3650.x, x_3650.y, x_3650.z) + vec3<f32>(x_3652.x, x_3652.y, x_3652.z));
  let x_3655 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3654.x, x_3654.y, x_3654.z, x_3655.w);
  let x_3658 : f32 = u_xlat0.x;
  let x_3660 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3658 * -(x_3660));
  let x_3665 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_3665);
  let x_3668 : vec4<f32> = u_xlat1;
  let x_3671 : vec4<f32> = x_44.unity_FogColor;
  let x_3674 : vec3<f32> = (vec3<f32>(x_3668.x, x_3668.y, x_3668.z) + -(vec3<f32>(x_3671.x, x_3671.y, x_3671.z)));
  let x_3675 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3674.x, x_3674.y, x_3674.z, x_3675.w);
  let x_3679 : vec4<f32> = u_xlat0;
  let x_3681 : vec4<f32> = u_xlat1;
  let x_3685 : vec4<f32> = x_44.unity_FogColor;
  let x_3687 : vec3<f32> = ((vec3<f32>(x_3679.x, x_3679.x, x_3679.x) * vec3<f32>(x_3681.x, x_3681.y, x_3681.z)) + vec3<f32>(x_3685.x, x_3685.y, x_3685.z));
  let x_3688 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3687.x, x_3687.y, x_3687.z, x_3688.w);
  let x_3690 : bool = u_xlatb46;
  let x_3691 : f32 = u_xlat23;
  SV_Target0.w = select(1.0f, x_3691, x_3690);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


