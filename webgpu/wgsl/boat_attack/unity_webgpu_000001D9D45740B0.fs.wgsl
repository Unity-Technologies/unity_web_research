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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

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

@group(1) @binding(4) var<uniform> x_215 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb69 : bool;

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

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb70 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_1507 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_1633 : UnityPerDraw;

var<private> u_xlatu0 : u32;

var<private> u_xlatu71 : u32;

var<private> u_xlati72 : i32;

var<private> u_xlati71 : i32;

@group(1) @binding(1) var<uniform> x_1763 : AdditionalLights;

var<private> u_xlat72 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlati73 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat74 : f32;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlatb73 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat75 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlatb74 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati74 : i32;

var<private> u_xlati75 : i32;

var<private> u_xlatb54 : vec2<bool>;

var<private> u_xlat54 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu70 : u32;

var<private> u_xlatb71 : bool;

fn main_1() {
  var x_58 : f32;
  var x_109 : f32;
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
  var x_1458 : f32;
  var x_1594 : f32;
  var x_1605 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1903 : f32;
  var x_1913 : f32;
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
  var x_3506 : f32;
  var x_3519 : f32;
  var x_3567 : f32;
  var x_3579 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_37 * x_40);
  let x_48 : f32 = u_xlat1.w;
  let x_54 : f32 = x_51.x_Cutoff;
  u_xlatb0 = (x_48 >= x_54);
  let x_56 : bool = u_xlatb0;
  if (x_56) {
    let x_62 : f32 = u_xlat1.w;
    x_58 = x_62;
  } else {
    x_58 = 0.0f;
  }
  let x_65 : f32 = x_58;
  u_xlat0.x = x_65;
  let x_69 : f32 = u_xlat0.w;
  let x_72 : f32 = vs_TEXCOORD7.w;
  let x_75 : f32 = x_51.x_Cutoff;
  u_xlat23 = ((x_69 * x_72) + -(x_75));
  let x_80 : f32 = u_xlat1.w;
  u_xlat46 = dpdxCoarse(x_80);
  let x_84 : f32 = u_xlat1.w;
  u_xlat69 = dpdyCoarse(x_84);
  let x_86 : f32 = u_xlat69;
  let x_88 : f32 = u_xlat46;
  u_xlat46 = (abs(x_86) + abs(x_88));
  let x_91 : f32 = u_xlat46;
  u_xlat46 = max(x_91, 0.00009999999747378752f);
  let x_94 : f32 = u_xlat23;
  let x_95 : f32 = u_xlat46;
  u_xlat23 = (x_94 / x_95);
  let x_97 : f32 = u_xlat23;
  u_xlat23 = (x_97 + 0.5f);
  let x_100 : f32 = u_xlat23;
  u_xlat23 = clamp(x_100, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb46;
  if (x_108) {
    let x_112 : f32 = u_xlat23;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat0.x = (x_119 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat0.x;
  u_xlatb0 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb0;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  let x_137 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_141);
  let x_146 : vec4<f32> = u_xlat0;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_146.x, x_146.x, x_146.x) * x_148);
  let x_157 : vec2<f32> = vs_TEXCOORD1;
  let x_159 : f32 = x_27.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_157, x_159);
  u_xlat3 = x_160;
  let x_166 : vec2<f32> = vs_TEXCOORD1;
  let x_168 : f32 = x_27.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_166, x_168);
  let x_170 : vec3<f32> = vec3<f32>(x_169.x, x_169.y, x_169.z);
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec4<f32> = u_xlat3;
  let x_177 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_180 : vec3<f32> = u_xlat2;
  let x_181 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_180, vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = (x_186 + 0.5f);
  let x_189 : vec4<f32> = u_xlat0;
  let x_191 : vec4<f32> = u_xlat4;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.x, x_189.x) * vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_197 : f32 = u_xlat3.w;
  u_xlat0.x = max(x_197, 0.00009999999747378752f);
  let x_200 : vec4<f32> = u_xlat3;
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = (vec3<f32>(x_200.x, x_200.y, x_200.z) / vec3<f32>(x_202.x, x_202.x, x_202.x));
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_219 : f32 = x_215.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_219);
  let x_221 : bool = u_xlatb0;
  if (x_221) {
    let x_225 : f32 = x_215.x_MainLightShadowParams.y;
    u_xlatb0 = (x_225 == 1.0f);
    let x_227 : bool = u_xlatb0;
    if (x_227) {
      let x_231 : vec4<f32> = vs_TEXCOORD6;
      let x_236 : vec4<f32> = x_215.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_231.x, x_231.y, x_231.x, x_231.y) + x_236);
      let x_240 : vec4<f32> = u_xlat4;
      let x_241 : vec2<f32> = vec2<f32>(x_240.x, x_240.y);
      let x_244 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_241.x, x_241.y, x_244);
      let x_257 : vec3<f32> = txVec0;
      let x_259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_257.xy, x_257.z);
      u_xlat5.x = x_259;
      let x_262 : vec4<f32> = u_xlat4;
      let x_263 : vec2<f32> = vec2<f32>(x_262.z, x_262.w);
      let x_265 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_263.x, x_263.y, x_265);
      let x_272 : vec3<f32> = txVec1;
      let x_274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_272.xy, x_272.z);
      u_xlat5.y = x_274;
      let x_276 : vec4<f32> = vs_TEXCOORD6;
      let x_280 : vec4<f32> = x_215.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_276.x, x_276.y, x_276.x, x_276.y) + x_280);
      let x_283 : vec4<f32> = u_xlat4;
      let x_284 : vec2<f32> = vec2<f32>(x_283.x, x_283.y);
      let x_286 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_284.x, x_284.y, x_286);
      let x_293 : vec3<f32> = txVec2;
      let x_295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_293.xy, x_293.z);
      u_xlat5.z = x_295;
      let x_298 : vec4<f32> = u_xlat4;
      let x_299 : vec2<f32> = vec2<f32>(x_298.z, x_298.w);
      let x_301 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_299.x, x_299.y, x_301);
      let x_308 : vec3<f32> = txVec3;
      let x_310 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_308.xy, x_308.z);
      u_xlat5.w = x_310;
      let x_312 : vec4<f32> = u_xlat5;
      u_xlat0.x = dot(x_312, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_320 : f32 = x_215.x_MainLightShadowParams.y;
      u_xlatb69 = (x_320 == 2.0f);
      let x_323 : bool = u_xlatb69;
      if (x_323) {
        let x_326 : vec4<f32> = vs_TEXCOORD6;
        let x_330 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_334 : vec2<f32> = ((vec2<f32>(x_326.x, x_326.y) * vec2<f32>(x_330.z, x_330.w)) + vec2<f32>(0.5f, 0.5f));
        let x_335 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_335.z, x_335.w);
        let x_337 : vec4<f32> = u_xlat4;
        let x_339 : vec2<f32> = floor(vec2<f32>(x_337.x, x_337.y));
        let x_340 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_339.x, x_339.y, x_340.z, x_340.w);
        let x_344 : vec4<f32> = vs_TEXCOORD6;
        let x_347 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_350 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_344.x, x_344.y) * vec2<f32>(x_347.z, x_347.w)) + -(vec2<f32>(x_350.x, x_350.y)));
        let x_354 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_354.x, x_354.x, x_354.y, x_354.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_359 : vec4<f32> = u_xlat5;
        let x_361 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_359.x, x_359.x, x_359.z, x_359.z) * vec4<f32>(x_361.x, x_361.x, x_361.z, x_361.z));
        let x_364 : vec4<f32> = u_xlat6;
        let x_368 : vec2<f32> = (vec2<f32>(x_364.y, x_364.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_369 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_368.x, x_369.y, x_368.y, x_369.w);
        let x_371 : vec4<f32> = u_xlat6;
        let x_374 : vec2<f32> = u_xlat50;
        let x_376 : vec2<f32> = ((vec2<f32>(x_371.x, x_371.z) * vec2<f32>(0.5f, 0.5f)) + -(x_374));
        let x_377 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
        let x_380 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_380) + vec2<f32>(1.0f, 1.0f));
        let x_385 : vec2<f32> = u_xlat50;
        let x_387 : vec2<f32> = min(x_385, vec2<f32>(0.0f, 0.0f));
        let x_388 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
        let x_390 : vec4<f32> = u_xlat7;
        let x_393 : vec4<f32> = u_xlat7;
        let x_396 : vec2<f32> = u_xlat52;
        let x_397 : vec2<f32> = ((-(vec2<f32>(x_390.x, x_390.y)) * vec2<f32>(x_393.x, x_393.y)) + x_396);
        let x_398 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
        let x_400 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_400, vec2<f32>(0.0f, 0.0f));
        let x_402 : vec2<f32> = u_xlat50;
        let x_404 : vec2<f32> = u_xlat50;
        let x_406 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_402) * x_404) + vec2<f32>(x_406.y, x_406.w));
        let x_409 : vec4<f32> = u_xlat7;
        let x_411 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) + vec2<f32>(1.0f, 1.0f));
        let x_412 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
        let x_414 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_414 + vec2<f32>(1.0f, 1.0f));
        let x_417 : vec4<f32> = u_xlat6;
        let x_421 : vec2<f32> = (vec2<f32>(x_417.x, x_417.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_422 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
        let x_424 : vec2<f32> = u_xlat52;
        let x_425 : vec2<f32> = (x_424 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_426 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
        let x_428 : vec4<f32> = u_xlat7;
        let x_430 : vec2<f32> = (vec2<f32>(x_428.x, x_428.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_431 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
        let x_434 : vec2<f32> = u_xlat50;
        let x_435 : vec2<f32> = (x_434 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_436 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
        let x_438 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_438.y, x_438.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_442 : f32 = u_xlat7.x;
        u_xlat8.z = x_442;
        let x_445 : f32 = u_xlat50.x;
        u_xlat8.w = x_445;
        let x_448 : f32 = u_xlat9.x;
        u_xlat6.z = x_448;
        let x_451 : f32 = u_xlat5.x;
        u_xlat6.w = x_451;
        let x_454 : vec4<f32> = u_xlat6;
        let x_456 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_454.z, x_454.w, x_454.x, x_454.z) + vec4<f32>(x_456.z, x_456.w, x_456.x, x_456.z));
        let x_460 : f32 = u_xlat8.y;
        u_xlat7.z = x_460;
        let x_463 : f32 = u_xlat50.y;
        u_xlat7.w = x_463;
        let x_466 : f32 = u_xlat6.y;
        u_xlat9.z = x_466;
        let x_469 : f32 = u_xlat5.z;
        u_xlat9.w = x_469;
        let x_471 : vec4<f32> = u_xlat7;
        let x_473 : vec4<f32> = u_xlat9;
        let x_475 : vec3<f32> = (vec3<f32>(x_471.z, x_471.y, x_471.w) + vec3<f32>(x_473.z, x_473.y, x_473.w));
        let x_476 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
        let x_478 : vec4<f32> = u_xlat6;
        let x_480 : vec4<f32> = u_xlat10;
        let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.z, x_478.w) / vec3<f32>(x_480.z, x_480.w, x_480.y));
        let x_483 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
        let x_485 : vec4<f32> = u_xlat6;
        let x_490 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_491 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat9;
        let x_495 : vec4<f32> = u_xlat5;
        let x_497 : vec3<f32> = (vec3<f32>(x_493.z, x_493.y, x_493.w) / vec3<f32>(x_495.x, x_495.y, x_495.z));
        let x_498 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
        let x_500 : vec4<f32> = u_xlat7;
        let x_502 : vec3<f32> = (vec3<f32>(x_500.x, x_500.y, x_500.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_503 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
        let x_505 : vec4<f32> = u_xlat6;
        let x_508 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_510 : vec3<f32> = (vec3<f32>(x_505.y, x_505.x, x_505.z) * vec3<f32>(x_508.x, x_508.x, x_508.x));
        let x_511 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
        let x_513 : vec4<f32> = u_xlat7;
        let x_516 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_518 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(x_516.y, x_516.y, x_516.y));
        let x_519 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
        let x_522 : f32 = u_xlat7.x;
        u_xlat6.w = x_522;
        let x_524 : vec4<f32> = u_xlat4;
        let x_527 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_530 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_524.x, x_524.y, x_524.x, x_524.y) * vec4<f32>(x_527.x, x_527.y, x_527.x, x_527.y)) + vec4<f32>(x_530.y, x_530.w, x_530.x, x_530.w));
        let x_533 : vec4<f32> = u_xlat4;
        let x_536 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_539 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_533.x, x_533.y) * vec2<f32>(x_536.x, x_536.y)) + vec2<f32>(x_539.z, x_539.w));
        let x_543 : f32 = u_xlat6.y;
        u_xlat7.w = x_543;
        let x_545 : vec4<f32> = u_xlat7;
        let x_546 : vec2<f32> = vec2<f32>(x_545.y, x_545.z);
        let x_547 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_547.x, x_546.x, x_547.z, x_546.y);
        let x_549 : vec4<f32> = u_xlat4;
        let x_552 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_555 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_549.x, x_549.y, x_549.x, x_549.y) * vec4<f32>(x_552.x, x_552.y, x_552.x, x_552.y)) + vec4<f32>(x_555.x, x_555.y, x_555.z, x_555.y));
        let x_558 : vec4<f32> = u_xlat4;
        let x_561 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_564 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_558.x, x_558.y, x_558.x, x_558.y) * vec4<f32>(x_561.x, x_561.y, x_561.x, x_561.y)) + vec4<f32>(x_564.w, x_564.y, x_564.w, x_564.z));
        let x_567 : vec4<f32> = u_xlat4;
        let x_570 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_573 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_567.x, x_567.y, x_567.x, x_567.y) * vec4<f32>(x_570.x, x_570.y, x_570.x, x_570.y)) + vec4<f32>(x_573.x, x_573.w, x_573.z, x_573.w));
        let x_577 : vec4<f32> = u_xlat5;
        let x_579 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_577.x, x_577.x, x_577.x, x_577.y) * vec4<f32>(x_579.z, x_579.w, x_579.y, x_579.z));
        let x_583 : vec4<f32> = u_xlat5;
        let x_585 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_583.y, x_583.y, x_583.z, x_583.z) * x_585);
        let x_588 : f32 = u_xlat5.z;
        let x_590 : f32 = u_xlat10.y;
        u_xlat69 = (x_588 * x_590);
        let x_593 : vec4<f32> = u_xlat8;
        let x_594 : vec2<f32> = vec2<f32>(x_593.x, x_593.y);
        let x_596 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_594.x, x_594.y, x_596);
        let x_604 : vec3<f32> = txVec4;
        let x_606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_604.xy, x_604.z);
        u_xlat70 = x_606;
        let x_608 : vec4<f32> = u_xlat8;
        let x_609 : vec2<f32> = vec2<f32>(x_608.z, x_608.w);
        let x_611 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_609.x, x_609.y, x_611);
        let x_619 : vec3<f32> = txVec5;
        let x_621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_619.xy, x_619.z);
        u_xlat71 = x_621;
        let x_622 : f32 = u_xlat71;
        let x_624 : f32 = u_xlat11.y;
        u_xlat71 = (x_622 * x_624);
        let x_627 : f32 = u_xlat11.x;
        let x_628 : f32 = u_xlat70;
        let x_630 : f32 = u_xlat71;
        u_xlat70 = ((x_627 * x_628) + x_630);
        let x_633 : vec2<f32> = u_xlat50;
        let x_635 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_633.x, x_633.y, x_635);
        let x_642 : vec3<f32> = txVec6;
        let x_644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_642.xy, x_642.z);
        u_xlat71 = x_644;
        let x_646 : f32 = u_xlat11.z;
        let x_647 : f32 = u_xlat71;
        let x_649 : f32 = u_xlat70;
        u_xlat70 = ((x_646 * x_647) + x_649);
        let x_652 : vec4<f32> = u_xlat7;
        let x_653 : vec2<f32> = vec2<f32>(x_652.x, x_652.y);
        let x_655 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_653.x, x_653.y, x_655);
        let x_662 : vec3<f32> = txVec7;
        let x_664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_662.xy, x_662.z);
        u_xlat71 = x_664;
        let x_666 : f32 = u_xlat11.w;
        let x_667 : f32 = u_xlat71;
        let x_669 : f32 = u_xlat70;
        u_xlat70 = ((x_666 * x_667) + x_669);
        let x_672 : vec4<f32> = u_xlat9;
        let x_673 : vec2<f32> = vec2<f32>(x_672.x, x_672.y);
        let x_675 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_673.x, x_673.y, x_675);
        let x_682 : vec3<f32> = txVec8;
        let x_684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_682.xy, x_682.z);
        u_xlat71 = x_684;
        let x_686 : f32 = u_xlat12.x;
        let x_687 : f32 = u_xlat71;
        let x_689 : f32 = u_xlat70;
        u_xlat70 = ((x_686 * x_687) + x_689);
        let x_692 : vec4<f32> = u_xlat9;
        let x_693 : vec2<f32> = vec2<f32>(x_692.z, x_692.w);
        let x_695 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_693.x, x_693.y, x_695);
        let x_702 : vec3<f32> = txVec9;
        let x_704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_702.xy, x_702.z);
        u_xlat71 = x_704;
        let x_706 : f32 = u_xlat12.y;
        let x_707 : f32 = u_xlat71;
        let x_709 : f32 = u_xlat70;
        u_xlat70 = ((x_706 * x_707) + x_709);
        let x_712 : vec4<f32> = u_xlat7;
        let x_713 : vec2<f32> = vec2<f32>(x_712.z, x_712.w);
        let x_715 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_713.x, x_713.y, x_715);
        let x_722 : vec3<f32> = txVec10;
        let x_724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_722.xy, x_722.z);
        u_xlat71 = x_724;
        let x_726 : f32 = u_xlat12.z;
        let x_727 : f32 = u_xlat71;
        let x_729 : f32 = u_xlat70;
        u_xlat70 = ((x_726 * x_727) + x_729);
        let x_732 : vec4<f32> = u_xlat6;
        let x_733 : vec2<f32> = vec2<f32>(x_732.x, x_732.y);
        let x_735 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_733.x, x_733.y, x_735);
        let x_742 : vec3<f32> = txVec11;
        let x_744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_742.xy, x_742.z);
        u_xlat71 = x_744;
        let x_746 : f32 = u_xlat12.w;
        let x_747 : f32 = u_xlat71;
        let x_749 : f32 = u_xlat70;
        u_xlat70 = ((x_746 * x_747) + x_749);
        let x_752 : vec4<f32> = u_xlat6;
        let x_753 : vec2<f32> = vec2<f32>(x_752.z, x_752.w);
        let x_755 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_753.x, x_753.y, x_755);
        let x_762 : vec3<f32> = txVec12;
        let x_764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_762.xy, x_762.z);
        u_xlat71 = x_764;
        let x_765 : f32 = u_xlat69;
        let x_766 : f32 = u_xlat71;
        let x_768 : f32 = u_xlat70;
        u_xlat0.x = ((x_765 * x_766) + x_768);
      } else {
        let x_772 : vec4<f32> = vs_TEXCOORD6;
        let x_775 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_778 : vec2<f32> = ((vec2<f32>(x_772.x, x_772.y) * vec2<f32>(x_775.z, x_775.w)) + vec2<f32>(0.5f, 0.5f));
        let x_779 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_778.x, x_778.y, x_779.z, x_779.w);
        let x_781 : vec4<f32> = u_xlat4;
        let x_783 : vec2<f32> = floor(vec2<f32>(x_781.x, x_781.y));
        let x_784 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
        let x_786 : vec4<f32> = vs_TEXCOORD6;
        let x_789 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_792 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_786.x, x_786.y) * vec2<f32>(x_789.z, x_789.w)) + -(vec2<f32>(x_792.x, x_792.y)));
        let x_796 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_796.x, x_796.x, x_796.y, x_796.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_799 : vec4<f32> = u_xlat5;
        let x_801 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_799.x, x_799.x, x_799.z, x_799.z) * vec4<f32>(x_801.x, x_801.x, x_801.z, x_801.z));
        let x_804 : vec4<f32> = u_xlat6;
        let x_808 : vec2<f32> = (vec2<f32>(x_804.y, x_804.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_809 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_809.x, x_808.x, x_809.z, x_808.y);
        let x_811 : vec4<f32> = u_xlat6;
        let x_814 : vec2<f32> = u_xlat50;
        let x_816 : vec2<f32> = ((vec2<f32>(x_811.x, x_811.z) * vec2<f32>(0.5f, 0.5f)) + -(x_814));
        let x_817 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_816.x, x_817.y, x_816.y, x_817.w);
        let x_819 : vec2<f32> = u_xlat50;
        let x_821 : vec2<f32> = (-(x_819) + vec2<f32>(1.0f, 1.0f));
        let x_822 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
        let x_824 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_824, vec2<f32>(0.0f, 0.0f));
        let x_826 : vec2<f32> = u_xlat52;
        let x_828 : vec2<f32> = u_xlat52;
        let x_830 : vec4<f32> = u_xlat6;
        let x_832 : vec2<f32> = ((-(x_826) * x_828) + vec2<f32>(x_830.x, x_830.y));
        let x_833 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_832.x, x_832.y, x_833.z, x_833.w);
        let x_835 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_835, vec2<f32>(0.0f, 0.0f));
        let x_838 : vec2<f32> = u_xlat52;
        let x_840 : vec2<f32> = u_xlat52;
        let x_842 : vec4<f32> = u_xlat5;
        let x_844 : vec2<f32> = ((-(x_838) * x_840) + vec2<f32>(x_842.y, x_842.w));
        let x_845 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_844.x, x_845.y, x_844.y);
        let x_847 : vec4<f32> = u_xlat6;
        let x_850 : vec2<f32> = (vec2<f32>(x_847.x, x_847.y) + vec2<f32>(2.0f, 2.0f));
        let x_851 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_851.w);
        let x_853 : vec3<f32> = u_xlat28;
        let x_855 : vec2<f32> = (vec2<f32>(x_853.x, x_853.z) + vec2<f32>(2.0f, 2.0f));
        let x_856 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_856.x, x_855.x, x_856.z, x_855.y);
        let x_859 : f32 = u_xlat5.y;
        u_xlat8.z = (x_859 * 0.08163200318813323975f);
        let x_863 : vec4<f32> = u_xlat5;
        let x_866 : vec3<f32> = (vec3<f32>(x_863.z, x_863.x, x_863.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_867 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
        let x_869 : vec4<f32> = u_xlat6;
        let x_872 : vec2<f32> = (vec2<f32>(x_869.x, x_869.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_873 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
        let x_876 : f32 = u_xlat9.y;
        u_xlat8.x = x_876;
        let x_878 : vec2<f32> = u_xlat50;
        let x_885 : vec2<f32> = ((vec2<f32>(x_878.x, x_878.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_886 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_886.x, x_885.x, x_886.z, x_885.y);
        let x_888 : vec2<f32> = u_xlat50;
        let x_892 : vec2<f32> = ((vec2<f32>(x_888.x, x_888.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_893 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_892.x, x_893.y, x_892.y, x_893.w);
        let x_896 : f32 = u_xlat5.x;
        u_xlat6.y = x_896;
        let x_899 : f32 = u_xlat7.y;
        u_xlat6.w = x_899;
        let x_901 : vec4<f32> = u_xlat6;
        let x_902 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_901 + x_902);
        let x_904 : vec2<f32> = u_xlat50;
        let x_907 : vec2<f32> = ((vec2<f32>(x_904.y, x_904.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_908 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_908.x, x_907.x, x_908.z, x_907.y);
        let x_910 : vec2<f32> = u_xlat50;
        let x_913 : vec2<f32> = ((vec2<f32>(x_910.y, x_910.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_914 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_913.x, x_914.y, x_913.y, x_914.w);
        let x_917 : f32 = u_xlat5.y;
        u_xlat7.y = x_917;
        let x_919 : vec4<f32> = u_xlat7;
        let x_920 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_919 + x_920);
        let x_922 : vec4<f32> = u_xlat6;
        let x_923 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_922 / x_923);
        let x_925 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_925 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_931 : vec4<f32> = u_xlat7;
        let x_932 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_931 / x_932);
        let x_934 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_934 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_936 : vec4<f32> = u_xlat6;
        let x_939 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_936.w, x_936.x, x_936.y, x_936.z) * vec4<f32>(x_939.x, x_939.x, x_939.x, x_939.x));
        let x_942 : vec4<f32> = u_xlat7;
        let x_945 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_942.x, x_942.w, x_942.y, x_942.z) * vec4<f32>(x_945.y, x_945.y, x_945.y, x_945.y));
        let x_948 : vec4<f32> = u_xlat6;
        let x_949 : vec3<f32> = vec3<f32>(x_948.y, x_948.z, x_948.w);
        let x_950 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_949.x, x_950.y, x_949.y, x_949.z);
        let x_953 : f32 = u_xlat7.x;
        u_xlat9.y = x_953;
        let x_955 : vec4<f32> = u_xlat4;
        let x_958 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_961 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_955.x, x_955.y, x_955.x, x_955.y) * vec4<f32>(x_958.x, x_958.y, x_958.x, x_958.y)) + vec4<f32>(x_961.x, x_961.y, x_961.z, x_961.y));
        let x_964 : vec4<f32> = u_xlat4;
        let x_967 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_970 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_967.x, x_967.y)) + vec2<f32>(x_970.w, x_970.y));
        let x_974 : f32 = u_xlat9.y;
        u_xlat6.y = x_974;
        let x_977 : f32 = u_xlat7.z;
        u_xlat9.y = x_977;
        let x_979 : vec4<f32> = u_xlat4;
        let x_982 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_985 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_979.x, x_979.y, x_979.x, x_979.y) * vec4<f32>(x_982.x, x_982.y, x_982.x, x_982.y)) + vec4<f32>(x_985.x, x_985.y, x_985.z, x_985.y));
        let x_988 : vec4<f32> = u_xlat4;
        let x_991 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_994 : vec4<f32> = u_xlat9;
        let x_996 : vec2<f32> = ((vec2<f32>(x_988.x, x_988.y) * vec2<f32>(x_991.x, x_991.y)) + vec2<f32>(x_994.w, x_994.y));
        let x_997 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_996.x, x_996.y, x_997.z, x_997.w);
        let x_1000 : f32 = u_xlat9.y;
        u_xlat6.z = x_1000;
        let x_1003 : vec4<f32> = u_xlat4;
        let x_1006 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1009 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1003.x, x_1003.y, x_1003.x, x_1003.y) * vec4<f32>(x_1006.x, x_1006.y, x_1006.x, x_1006.y)) + vec4<f32>(x_1009.x, x_1009.y, x_1009.x, x_1009.z));
        let x_1013 : f32 = u_xlat7.w;
        u_xlat9.y = x_1013;
        let x_1016 : vec4<f32> = u_xlat4;
        let x_1019 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1022 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y) * vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y)) + vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1022.y));
        let x_1026 : vec4<f32> = u_xlat4;
        let x_1029 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(x_1029.x, x_1029.y)) + vec2<f32>(x_1032.w, x_1032.y));
        let x_1036 : f32 = u_xlat9.y;
        u_xlat6.w = x_1036;
        let x_1039 : vec4<f32> = u_xlat4;
        let x_1042 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1045 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1039.x, x_1039.y) * vec2<f32>(x_1042.x, x_1042.y)) + vec2<f32>(x_1045.x, x_1045.w));
        let x_1048 : vec4<f32> = u_xlat9;
        let x_1049 : vec3<f32> = vec3<f32>(x_1048.x, x_1048.z, x_1048.w);
        let x_1050 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1049.x, x_1050.y, x_1049.y, x_1049.z);
        let x_1052 : vec4<f32> = u_xlat4;
        let x_1055 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1058 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1052.x, x_1052.y, x_1052.x, x_1052.y) * vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y)) + vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1058.y));
        let x_1062 : vec4<f32> = u_xlat4;
        let x_1065 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1068 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1062.x, x_1062.y) * vec2<f32>(x_1065.x, x_1065.y)) + vec2<f32>(x_1068.w, x_1068.y));
        let x_1072 : f32 = u_xlat6.x;
        u_xlat7.x = x_1072;
        let x_1074 : vec4<f32> = u_xlat4;
        let x_1077 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat7;
        let x_1082 : vec2<f32> = ((vec2<f32>(x_1074.x, x_1074.y) * vec2<f32>(x_1077.x, x_1077.y)) + vec2<f32>(x_1080.x, x_1080.y));
        let x_1083 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1086 : vec4<f32> = u_xlat5;
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1086.x, x_1086.x, x_1086.x, x_1086.x) * x_1088);
        let x_1091 : vec4<f32> = u_xlat5;
        let x_1093 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1091.y, x_1091.y, x_1091.y, x_1091.y) * x_1093);
        let x_1096 : vec4<f32> = u_xlat5;
        let x_1098 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1096.z, x_1096.z, x_1096.z, x_1096.z) * x_1098);
        let x_1100 : vec4<f32> = u_xlat5;
        let x_1102 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1100.w, x_1100.w, x_1100.w, x_1100.w) * x_1102);
        let x_1105 : vec4<f32> = u_xlat10;
        let x_1106 : vec2<f32> = vec2<f32>(x_1105.x, x_1105.y);
        let x_1108 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1106.x, x_1106.y, x_1108);
        let x_1115 : vec3<f32> = txVec13;
        let x_1117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1115.xy, x_1115.z);
        u_xlat69 = x_1117;
        let x_1119 : vec4<f32> = u_xlat10;
        let x_1120 : vec2<f32> = vec2<f32>(x_1119.z, x_1119.w);
        let x_1122 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1120.x, x_1120.y, x_1122);
        let x_1129 : vec3<f32> = txVec14;
        let x_1131 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1129.xy, x_1129.z);
        u_xlat70 = x_1131;
        let x_1132 : f32 = u_xlat70;
        let x_1134 : f32 = u_xlat15.y;
        u_xlat70 = (x_1132 * x_1134);
        let x_1137 : f32 = u_xlat15.x;
        let x_1138 : f32 = u_xlat69;
        let x_1140 : f32 = u_xlat70;
        u_xlat69 = ((x_1137 * x_1138) + x_1140);
        let x_1143 : vec2<f32> = u_xlat50;
        let x_1145 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1143.x, x_1143.y, x_1145);
        let x_1152 : vec3<f32> = txVec15;
        let x_1154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1152.xy, x_1152.z);
        u_xlat70 = x_1154;
        let x_1156 : f32 = u_xlat15.z;
        let x_1157 : f32 = u_xlat70;
        let x_1159 : f32 = u_xlat69;
        u_xlat69 = ((x_1156 * x_1157) + x_1159);
        let x_1162 : vec4<f32> = u_xlat13;
        let x_1163 : vec2<f32> = vec2<f32>(x_1162.x, x_1162.y);
        let x_1165 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1163.x, x_1163.y, x_1165);
        let x_1172 : vec3<f32> = txVec16;
        let x_1174 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1172.xy, x_1172.z);
        u_xlat70 = x_1174;
        let x_1176 : f32 = u_xlat15.w;
        let x_1177 : f32 = u_xlat70;
        let x_1179 : f32 = u_xlat69;
        u_xlat69 = ((x_1176 * x_1177) + x_1179);
        let x_1182 : vec4<f32> = u_xlat11;
        let x_1183 : vec2<f32> = vec2<f32>(x_1182.x, x_1182.y);
        let x_1185 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1183.x, x_1183.y, x_1185);
        let x_1192 : vec3<f32> = txVec17;
        let x_1194 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1192.xy, x_1192.z);
        u_xlat70 = x_1194;
        let x_1196 : f32 = u_xlat16.x;
        let x_1197 : f32 = u_xlat70;
        let x_1199 : f32 = u_xlat69;
        u_xlat69 = ((x_1196 * x_1197) + x_1199);
        let x_1202 : vec4<f32> = u_xlat11;
        let x_1203 : vec2<f32> = vec2<f32>(x_1202.z, x_1202.w);
        let x_1205 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1203.x, x_1203.y, x_1205);
        let x_1212 : vec3<f32> = txVec18;
        let x_1214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1212.xy, x_1212.z);
        u_xlat70 = x_1214;
        let x_1216 : f32 = u_xlat16.y;
        let x_1217 : f32 = u_xlat70;
        let x_1219 : f32 = u_xlat69;
        u_xlat69 = ((x_1216 * x_1217) + x_1219);
        let x_1222 : vec4<f32> = u_xlat12;
        let x_1223 : vec2<f32> = vec2<f32>(x_1222.x, x_1222.y);
        let x_1225 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1223.x, x_1223.y, x_1225);
        let x_1232 : vec3<f32> = txVec19;
        let x_1234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1232.xy, x_1232.z);
        u_xlat70 = x_1234;
        let x_1236 : f32 = u_xlat16.z;
        let x_1237 : f32 = u_xlat70;
        let x_1239 : f32 = u_xlat69;
        u_xlat69 = ((x_1236 * x_1237) + x_1239);
        let x_1242 : vec4<f32> = u_xlat13;
        let x_1243 : vec2<f32> = vec2<f32>(x_1242.z, x_1242.w);
        let x_1245 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1243.x, x_1243.y, x_1245);
        let x_1252 : vec3<f32> = txVec20;
        let x_1254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1252.xy, x_1252.z);
        u_xlat70 = x_1254;
        let x_1256 : f32 = u_xlat16.w;
        let x_1257 : f32 = u_xlat70;
        let x_1259 : f32 = u_xlat69;
        u_xlat69 = ((x_1256 * x_1257) + x_1259);
        let x_1262 : vec4<f32> = u_xlat14;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.x, x_1262.y);
        let x_1265 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec21;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1272.xy, x_1272.z);
        u_xlat70 = x_1274;
        let x_1276 : f32 = u_xlat17.x;
        let x_1277 : f32 = u_xlat70;
        let x_1279 : f32 = u_xlat69;
        u_xlat69 = ((x_1276 * x_1277) + x_1279);
        let x_1282 : vec4<f32> = u_xlat14;
        let x_1283 : vec2<f32> = vec2<f32>(x_1282.z, x_1282.w);
        let x_1285 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1283.x, x_1283.y, x_1285);
        let x_1292 : vec3<f32> = txVec22;
        let x_1294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1292.xy, x_1292.z);
        u_xlat70 = x_1294;
        let x_1296 : f32 = u_xlat17.y;
        let x_1297 : f32 = u_xlat70;
        let x_1299 : f32 = u_xlat69;
        u_xlat69 = ((x_1296 * x_1297) + x_1299);
        let x_1302 : vec2<f32> = u_xlat29;
        let x_1304 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec23;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1311.xy, x_1311.z);
        u_xlat70 = x_1313;
        let x_1315 : f32 = u_xlat17.z;
        let x_1316 : f32 = u_xlat70;
        let x_1318 : f32 = u_xlat69;
        u_xlat69 = ((x_1315 * x_1316) + x_1318);
        let x_1321 : vec2<f32> = u_xlat58;
        let x_1323 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec24;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1330.xy, x_1330.z);
        u_xlat70 = x_1332;
        let x_1334 : f32 = u_xlat17.w;
        let x_1335 : f32 = u_xlat70;
        let x_1337 : f32 = u_xlat69;
        u_xlat69 = ((x_1334 * x_1335) + x_1337);
        let x_1340 : vec4<f32> = u_xlat9;
        let x_1341 : vec2<f32> = vec2<f32>(x_1340.x, x_1340.y);
        let x_1343 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1341.x, x_1341.y, x_1343);
        let x_1350 : vec3<f32> = txVec25;
        let x_1352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1350.xy, x_1350.z);
        u_xlat70 = x_1352;
        let x_1354 : f32 = u_xlat5.x;
        let x_1355 : f32 = u_xlat70;
        let x_1357 : f32 = u_xlat69;
        u_xlat69 = ((x_1354 * x_1355) + x_1357);
        let x_1360 : vec4<f32> = u_xlat9;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.z, x_1360.w);
        let x_1363 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec26;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1370.xy, x_1370.z);
        u_xlat70 = x_1372;
        let x_1374 : f32 = u_xlat5.y;
        let x_1375 : f32 = u_xlat70;
        let x_1377 : f32 = u_xlat69;
        u_xlat69 = ((x_1374 * x_1375) + x_1377);
        let x_1380 : vec2<f32> = u_xlat53;
        let x_1382 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec27;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1389.xy, x_1389.z);
        u_xlat70 = x_1391;
        let x_1393 : f32 = u_xlat5.z;
        let x_1394 : f32 = u_xlat70;
        let x_1396 : f32 = u_xlat69;
        u_xlat69 = ((x_1393 * x_1394) + x_1396);
        let x_1399 : vec4<f32> = u_xlat4;
        let x_1400 : vec2<f32> = vec2<f32>(x_1399.x, x_1399.y);
        let x_1402 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1400.x, x_1400.y, x_1402);
        let x_1409 : vec3<f32> = txVec28;
        let x_1411 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1409.xy, x_1409.z);
        u_xlat70 = x_1411;
        let x_1413 : f32 = u_xlat5.w;
        let x_1414 : f32 = u_xlat70;
        let x_1416 : f32 = u_xlat69;
        u_xlat0.x = ((x_1413 * x_1414) + x_1416);
      }
    }
  } else {
    let x_1421 : vec4<f32> = vs_TEXCOORD6;
    let x_1422 : vec2<f32> = vec2<f32>(x_1421.x, x_1421.y);
    let x_1424 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
    let x_1431 : vec3<f32> = txVec29;
    let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1431.xy, x_1431.z);
    u_xlat0.x = x_1433;
  }
  let x_1436 : f32 = x_215.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1436) + 1.0f);
  let x_1440 : f32 = u_xlat0.x;
  let x_1442 : f32 = x_215.x_MainLightShadowParams.x;
  let x_1444 : f32 = u_xlat69;
  u_xlat0.x = ((x_1440 * x_1442) + x_1444);
  let x_1448 : f32 = vs_TEXCOORD6.z;
  u_xlatb69 = (0.0f >= x_1448);
  let x_1452 : f32 = vs_TEXCOORD6.z;
  u_xlatb70 = (x_1452 >= 1.0f);
  let x_1454 : bool = u_xlatb69;
  let x_1455 : bool = u_xlatb70;
  u_xlatb69 = (x_1454 | x_1455);
  let x_1457 : bool = u_xlatb69;
  if (x_1457) {
    x_1458 = 1.0f;
  } else {
    let x_1463 : f32 = u_xlat0.x;
    x_1458 = x_1463;
  }
  let x_1464 : f32 = x_1458;
  u_xlat0.x = x_1464;
  let x_1467 : vec4<f32> = vs_TEXCOORD2;
  let x_1472 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1474 : vec3<f32> = (vec3<f32>(x_1467.x, x_1467.y, x_1467.z) + -(x_1472));
  let x_1475 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1475.w);
  let x_1477 : vec4<f32> = u_xlat4;
  let x_1479 : vec4<f32> = u_xlat4;
  u_xlat69 = dot(vec3<f32>(x_1477.x, x_1477.y, x_1477.z), vec3<f32>(x_1479.x, x_1479.y, x_1479.z));
  let x_1482 : f32 = u_xlat69;
  let x_1484 : f32 = x_215.x_MainLightShadowParams.z;
  let x_1487 : f32 = x_215.x_MainLightShadowParams.w;
  u_xlat70 = ((x_1482 * x_1484) + x_1487);
  let x_1489 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1489, 0.0f, 1.0f);
  let x_1492 : f32 = u_xlat0.x;
  u_xlat71 = (-(x_1492) + 1.0f);
  let x_1495 : f32 = u_xlat70;
  let x_1496 : f32 = u_xlat71;
  let x_1499 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1495 * x_1496) + x_1499);
  let x_1510 : f32 = x_1507.x_MainLightCookieTextureFormat;
  u_xlatb70 = !((x_1510 == -1.0f));
  let x_1513 : bool = u_xlatb70;
  if (x_1513) {
    let x_1516 : vec4<f32> = vs_TEXCOORD2;
    let x_1519 : vec4<f32> = x_1507.x_MainLightWorldToLight[1i];
    let x_1521 : vec2<f32> = (vec2<f32>(x_1516.y, x_1516.y) * vec2<f32>(x_1519.x, x_1519.y));
    let x_1522 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1521.x, x_1521.y, x_1522.z, x_1522.w);
    let x_1525 : vec4<f32> = x_1507.x_MainLightWorldToLight[0i];
    let x_1527 : vec4<f32> = vs_TEXCOORD2;
    let x_1530 : vec4<f32> = u_xlat4;
    let x_1532 : vec2<f32> = ((vec2<f32>(x_1525.x, x_1525.y) * vec2<f32>(x_1527.x, x_1527.x)) + vec2<f32>(x_1530.x, x_1530.y));
    let x_1533 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1532.x, x_1532.y, x_1533.z, x_1533.w);
    let x_1536 : vec4<f32> = x_1507.x_MainLightWorldToLight[2i];
    let x_1538 : vec4<f32> = vs_TEXCOORD2;
    let x_1541 : vec4<f32> = u_xlat4;
    let x_1543 : vec2<f32> = ((vec2<f32>(x_1536.x, x_1536.y) * vec2<f32>(x_1538.z, x_1538.z)) + vec2<f32>(x_1541.x, x_1541.y));
    let x_1544 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
    let x_1546 : vec4<f32> = u_xlat4;
    let x_1550 : vec4<f32> = x_1507.x_MainLightWorldToLight[3i];
    let x_1552 : vec2<f32> = (vec2<f32>(x_1546.x, x_1546.y) + vec2<f32>(x_1550.x, x_1550.y));
    let x_1553 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1552.x, x_1552.y, x_1553.z, x_1553.w);
    let x_1555 : vec4<f32> = u_xlat4;
    let x_1558 : vec2<f32> = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1559 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1558.x, x_1558.y, x_1559.z, x_1559.w);
    let x_1566 : vec4<f32> = u_xlat4;
    let x_1569 : f32 = x_27.x_GlobalMipBias.x;
    let x_1570 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1566.x, x_1566.y), x_1569);
    u_xlat4 = x_1570;
    let x_1575 : f32 = x_1507.x_MainLightCookieTextureFormat;
    let x_1577 : f32 = x_1507.x_MainLightCookieTextureFormat;
    let x_1579 : f32 = x_1507.x_MainLightCookieTextureFormat;
    let x_1581 : f32 = x_1507.x_MainLightCookieTextureFormat;
    let x_1582 : vec4<f32> = vec4<f32>(x_1575, x_1577, x_1579, x_1581);
    let x_1590 : vec4<bool> = (vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1582.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1590.x, x_1590.y);
    let x_1593 : bool = u_xlatb5.y;
    if (x_1593) {
      let x_1598 : f32 = u_xlat4.w;
      x_1594 = x_1598;
    } else {
      let x_1601 : f32 = u_xlat4.x;
      x_1594 = x_1601;
    }
    let x_1602 : f32 = x_1594;
    u_xlat70 = x_1602;
    let x_1604 : bool = u_xlatb5.x;
    if (x_1604) {
      let x_1608 : vec4<f32> = u_xlat4;
      x_1605 = vec3<f32>(x_1608.x, x_1608.y, x_1608.z);
    } else {
      let x_1611 : f32 = u_xlat70;
      x_1605 = vec3<f32>(x_1611, x_1611, x_1611);
    }
    let x_1613 : vec3<f32> = x_1605;
    let x_1614 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1613.x, x_1613.y, x_1613.z, x_1614.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1620 : vec4<f32> = u_xlat4;
  let x_1623 : vec4<f32> = x_27.x_MainLightColor;
  let x_1625 : vec3<f32> = (vec3<f32>(x_1620.x, x_1620.y, x_1620.z) * vec3<f32>(x_1623.x, x_1623.y, x_1623.z));
  let x_1626 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1625.x, x_1625.y, x_1625.z, x_1626.w);
  let x_1629 : f32 = u_xlat0.x;
  let x_1635 : f32 = x_1633.unity_LightData.z;
  u_xlat0.x = (x_1629 * x_1635);
  let x_1638 : vec4<f32> = u_xlat0;
  let x_1640 : vec4<f32> = u_xlat4;
  let x_1642 : vec3<f32> = (vec3<f32>(x_1638.x, x_1638.x, x_1638.x) * vec3<f32>(x_1640.x, x_1640.y, x_1640.z));
  let x_1643 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1642.x, x_1642.y, x_1642.z, x_1643.w);
  let x_1645 : vec3<f32> = u_xlat2;
  let x_1647 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(x_1645, vec3<f32>(x_1647.x, x_1647.y, x_1647.z));
  let x_1652 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1652, 0.0f, 1.0f);
  let x_1655 : vec4<f32> = u_xlat0;
  let x_1657 : vec4<f32> = u_xlat4;
  let x_1659 : vec3<f32> = (vec3<f32>(x_1655.x, x_1655.x, x_1655.x) * vec3<f32>(x_1657.x, x_1657.y, x_1657.z));
  let x_1660 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1659.x, x_1659.y, x_1659.z, x_1660.w);
  let x_1662 : vec4<f32> = u_xlat1;
  let x_1664 : vec4<f32> = u_xlat4;
  let x_1666 : vec3<f32> = (vec3<f32>(x_1662.x, x_1662.y, x_1662.z) * vec3<f32>(x_1664.x, x_1664.y, x_1664.z));
  let x_1667 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1666.x, x_1666.y, x_1666.z, x_1667.w);
  let x_1670 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1672 : f32 = x_1633.unity_LightData.y;
  u_xlat0.x = min(x_1670, x_1672);
  let x_1678 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1678));
  let x_1681 : f32 = u_xlat69;
  let x_1684 : f32 = x_215.x_AdditionalShadowFadeParams.x;
  let x_1687 : f32 = x_215.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1681 * x_1684) + x_1687);
  let x_1689 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1689, 0.0f, 1.0f);
  let x_1692 : f32 = x_1507.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1694 : f32 = x_1507.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1696 : f32 = x_1507.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1698 : f32 = x_1507.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1699 : vec4<f32> = vec4<f32>(x_1692, x_1694, x_1696, x_1698);
  let x_1705 : vec4<bool> = (vec4<f32>(x_1699.x, x_1699.y, x_1699.z, x_1699.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1705.x, x_1705.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1717 : u32 = u_xlatu_loop_1;
    let x_1718 : u32 = u_xlatu0;
    if ((x_1717 < x_1718)) {
    } else {
      break;
    }
    let x_1721 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_1721 >> 2u);
    let x_1725 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_1725 & 3u));
    let x_1728 : u32 = u_xlatu71;
    let x_1731 : vec4<f32> = x_1633.unity_LightIndices[bitcast<i32>(x_1728)];
    let x_1741 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1746 : vec4<u32> = indexable[x_1741];
    u_xlat71 = dot(x_1731, bitcast<vec4<f32>>(x_1746));
    let x_1750 : f32 = u_xlat71;
    u_xlati71 = i32(x_1750);
    let x_1752 : vec4<f32> = vs_TEXCOORD2;
    let x_1764 : i32 = u_xlati71;
    let x_1766 : vec4<f32> = x_1763.x_AdditionalLightsPosition[x_1764];
    let x_1769 : i32 = u_xlati71;
    let x_1771 : vec4<f32> = x_1763.x_AdditionalLightsPosition[x_1769];
    let x_1773 : vec3<f32> = ((-(vec3<f32>(x_1752.x, x_1752.y, x_1752.z)) * vec3<f32>(x_1766.w, x_1766.w, x_1766.w)) + vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
    let x_1774 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
    let x_1777 : vec4<f32> = u_xlat7;
    let x_1779 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_1777.x, x_1777.y, x_1777.z), vec3<f32>(x_1779.x, x_1779.y, x_1779.z));
    let x_1782 : f32 = u_xlat72;
    u_xlat72 = max(x_1782, 0.00006103515625f);
    let x_1786 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_1786);
    let x_1788 : f32 = u_xlat73;
    let x_1790 : vec4<f32> = u_xlat7;
    let x_1792 : vec3<f32> = (vec3<f32>(x_1788, x_1788, x_1788) * vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
    let x_1793 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
    let x_1795 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_1795);
    let x_1797 : f32 = u_xlat72;
    let x_1798 : i32 = u_xlati71;
    let x_1800 : f32 = x_1763.x_AdditionalLightsAttenuation[x_1798].x;
    u_xlat72 = (x_1797 * x_1800);
    let x_1802 : f32 = u_xlat72;
    let x_1804 : f32 = u_xlat72;
    u_xlat72 = ((-(x_1802) * x_1804) + 1.0f);
    let x_1807 : f32 = u_xlat72;
    u_xlat72 = max(x_1807, 0.0f);
    let x_1809 : f32 = u_xlat72;
    let x_1810 : f32 = u_xlat72;
    u_xlat72 = (x_1809 * x_1810);
    let x_1812 : f32 = u_xlat72;
    let x_1813 : f32 = u_xlat73;
    u_xlat72 = (x_1812 * x_1813);
    let x_1815 : i32 = u_xlati71;
    let x_1817 : vec4<f32> = x_1763.x_AdditionalLightsSpotDir[x_1815];
    let x_1819 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_1817.x, x_1817.y, x_1817.z), vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
    let x_1822 : f32 = u_xlat73;
    let x_1823 : i32 = u_xlati71;
    let x_1825 : f32 = x_1763.x_AdditionalLightsAttenuation[x_1823].z;
    let x_1827 : i32 = u_xlati71;
    let x_1829 : f32 = x_1763.x_AdditionalLightsAttenuation[x_1827].w;
    u_xlat73 = ((x_1822 * x_1825) + x_1829);
    let x_1831 : f32 = u_xlat73;
    u_xlat73 = clamp(x_1831, 0.0f, 1.0f);
    let x_1833 : f32 = u_xlat73;
    let x_1834 : f32 = u_xlat73;
    u_xlat73 = (x_1833 * x_1834);
    let x_1836 : f32 = u_xlat72;
    let x_1837 : f32 = u_xlat73;
    u_xlat72 = (x_1836 * x_1837);
    let x_1841 : i32 = u_xlati71;
    let x_1843 : f32 = x_215.x_AdditionalShadowParams[x_1841].w;
    u_xlati73 = i32(x_1843);
    let x_1846 : i32 = u_xlati73;
    u_xlatb51 = (x_1846 >= 0i);
    let x_1848 : bool = u_xlatb51;
    if (x_1848) {
      let x_1852 : i32 = u_xlati71;
      let x_1854 : f32 = x_215.x_AdditionalShadowParams[x_1852].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1854, x_1854, x_1854, x_1854))));
      let x_1858 : bool = u_xlatb51;
      if (x_1858) {
        let x_1863 : vec4<f32> = u_xlat7;
        let x_1866 : vec4<f32> = u_xlat7;
        let x_1869 : vec4<bool> = (abs(vec4<f32>(x_1863.z, x_1863.z, x_1863.y, x_1863.z)) >= abs(vec4<f32>(x_1866.x, x_1866.y, x_1866.x, x_1866.x)));
        let x_1871 : vec3<bool> = vec3<bool>(x_1869.x, x_1869.y, x_1869.z);
        let x_1872 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1871.x, x_1871.y, x_1871.z, x_1872.w);
        let x_1875 : bool = u_xlatb8.y;
        let x_1877 : bool = u_xlatb8.x;
        u_xlatb51 = (x_1875 & x_1877);
        let x_1879 : vec4<f32> = u_xlat7;
        let x_1882 : vec4<bool> = (-(vec4<f32>(x_1879.z, x_1879.y, x_1879.z, x_1879.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1883 : vec3<bool> = vec3<bool>(x_1882.x, x_1882.y, x_1882.w);
        let x_1884 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1883.x, x_1883.y, x_1884.z, x_1883.z);
        let x_1887 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1887);
        let x_1893 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1893);
        let x_1899 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_1899);
        let x_1902 : bool = u_xlatb8.z;
        if (x_1902) {
          let x_1907 : f32 = u_xlat8.y;
          x_1903 = x_1907;
        } else {
          let x_1909 : f32 = u_xlat74;
          x_1903 = x_1909;
        }
        let x_1910 : f32 = x_1903;
        u_xlat74 = x_1910;
        let x_1912 : bool = u_xlatb51;
        if (x_1912) {
          let x_1917 : f32 = u_xlat8.x;
          x_1913 = x_1917;
        } else {
          let x_1919 : f32 = u_xlat74;
          x_1913 = x_1919;
        }
        let x_1920 : f32 = x_1913;
        u_xlat51.x = x_1920;
        let x_1922 : i32 = u_xlati71;
        let x_1924 : f32 = x_215.x_AdditionalShadowParams[x_1922].w;
        u_xlat74 = trunc(x_1924);
        let x_1927 : f32 = u_xlat51.x;
        let x_1928 : f32 = u_xlat74;
        u_xlat51.x = (x_1927 + x_1928);
        let x_1932 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_1932);
      }
      let x_1934 : i32 = u_xlati73;
      u_xlati73 = (x_1934 << bitcast<u32>(2i));
      let x_1936 : vec4<f32> = vs_TEXCOORD2;
      let x_1939 : i32 = u_xlati73;
      let x_1942 : i32 = u_xlati73;
      let x_1946 : vec4<f32> = x_215.x_AdditionalLightsWorldToShadow[((x_1939 + 1i) / 4i)][((x_1942 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1936.y, x_1936.y, x_1936.y, x_1936.y) * x_1946);
      let x_1948 : i32 = u_xlati73;
      let x_1950 : i32 = u_xlati73;
      let x_1953 : vec4<f32> = x_215.x_AdditionalLightsWorldToShadow[(x_1948 / 4i)][(x_1950 % 4i)];
      let x_1954 : vec4<f32> = vs_TEXCOORD2;
      let x_1957 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1953 * vec4<f32>(x_1954.x, x_1954.x, x_1954.x, x_1954.x)) + x_1957);
      let x_1959 : i32 = u_xlati73;
      let x_1962 : i32 = u_xlati73;
      let x_1966 : vec4<f32> = x_215.x_AdditionalLightsWorldToShadow[((x_1959 + 2i) / 4i)][((x_1962 + 2i) % 4i)];
      let x_1967 : vec4<f32> = vs_TEXCOORD2;
      let x_1970 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1966 * vec4<f32>(x_1967.z, x_1967.z, x_1967.z, x_1967.z)) + x_1970);
      let x_1972 : vec4<f32> = u_xlat8;
      let x_1973 : i32 = u_xlati73;
      let x_1976 : i32 = u_xlati73;
      let x_1980 : vec4<f32> = x_215.x_AdditionalLightsWorldToShadow[((x_1973 + 3i) / 4i)][((x_1976 + 3i) % 4i)];
      u_xlat8 = (x_1972 + x_1980);
      let x_1982 : vec4<f32> = u_xlat8;
      let x_1984 : vec4<f32> = u_xlat8;
      let x_1986 : vec3<f32> = (vec3<f32>(x_1982.x, x_1982.y, x_1982.z) / vec3<f32>(x_1984.w, x_1984.w, x_1984.w));
      let x_1987 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1987.w);
      let x_1990 : i32 = u_xlati71;
      let x_1992 : f32 = x_215.x_AdditionalShadowParams[x_1990].y;
      u_xlatb73 = (0.0f < x_1992);
      let x_1994 : bool = u_xlatb73;
      if (x_1994) {
        let x_1997 : i32 = u_xlati71;
        let x_1999 : f32 = x_215.x_AdditionalShadowParams[x_1997].y;
        u_xlatb73 = (1.0f == x_1999);
        let x_2001 : bool = u_xlatb73;
        if (x_2001) {
          let x_2004 : vec4<f32> = u_xlat8;
          let x_2008 : vec4<f32> = x_215.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2004.x, x_2004.y, x_2004.x, x_2004.y) + x_2008);
          let x_2011 : vec4<f32> = u_xlat9;
          let x_2012 : vec2<f32> = vec2<f32>(x_2011.x, x_2011.y);
          let x_2014 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2012.x, x_2012.y, x_2014);
          let x_2022 : vec3<f32> = txVec30;
          let x_2024 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2022.xy, x_2022.z);
          u_xlat10.x = x_2024;
          let x_2027 : vec4<f32> = u_xlat9;
          let x_2028 : vec2<f32> = vec2<f32>(x_2027.z, x_2027.w);
          let x_2030 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2028.x, x_2028.y, x_2030);
          let x_2037 : vec3<f32> = txVec31;
          let x_2039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2037.xy, x_2037.z);
          u_xlat10.y = x_2039;
          let x_2041 : vec4<f32> = u_xlat8;
          let x_2045 : vec4<f32> = x_215.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2041.x, x_2041.y, x_2041.x, x_2041.y) + x_2045);
          let x_2048 : vec4<f32> = u_xlat9;
          let x_2049 : vec2<f32> = vec2<f32>(x_2048.x, x_2048.y);
          let x_2051 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2049.x, x_2049.y, x_2051);
          let x_2058 : vec3<f32> = txVec32;
          let x_2060 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2058.xy, x_2058.z);
          u_xlat10.z = x_2060;
          let x_2063 : vec4<f32> = u_xlat9;
          let x_2064 : vec2<f32> = vec2<f32>(x_2063.z, x_2063.w);
          let x_2066 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2064.x, x_2064.y, x_2066);
          let x_2073 : vec3<f32> = txVec33;
          let x_2075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2073.xy, x_2073.z);
          u_xlat10.w = x_2075;
          let x_2077 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2077, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2080 : i32 = u_xlati71;
          let x_2082 : f32 = x_215.x_AdditionalShadowParams[x_2080].y;
          u_xlatb51 = (2.0f == x_2082);
          let x_2084 : bool = u_xlatb51;
          if (x_2084) {
            let x_2087 : vec4<f32> = u_xlat8;
            let x_2091 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2087.x, x_2087.y) * vec2<f32>(x_2091.z, x_2091.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2095 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2095);
            let x_2097 : vec4<f32> = u_xlat8;
            let x_2100 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2103 : vec2<f32> = u_xlat51;
            let x_2105 : vec2<f32> = ((vec2<f32>(x_2097.x, x_2097.y) * vec2<f32>(x_2100.z, x_2100.w)) + -(x_2103));
            let x_2106 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2105.x, x_2105.y, x_2106.z, x_2106.w);
            let x_2108 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2108.x, x_2108.x, x_2108.y, x_2108.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2111 : vec4<f32> = u_xlat10;
            let x_2113 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2111.x, x_2111.x, x_2111.z, x_2111.z) * vec4<f32>(x_2113.x, x_2113.x, x_2113.z, x_2113.z));
            let x_2117 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2117.y, x_2117.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2120 : vec4<f32> = u_xlat11;
            let x_2123 : vec4<f32> = u_xlat9;
            let x_2126 : vec2<f32> = ((vec2<f32>(x_2120.x, x_2120.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2123.x, x_2123.y)));
            let x_2127 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2126.x, x_2127.y, x_2126.y, x_2127.w);
            let x_2129 : vec4<f32> = u_xlat9;
            let x_2132 : vec2<f32> = (-(vec2<f32>(x_2129.x, x_2129.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2133 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2132.x, x_2132.y, x_2133.z, x_2133.w);
            let x_2136 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2136.x, x_2136.y), vec2<f32>(0.0f, 0.0f));
            let x_2139 : vec2<f32> = u_xlat57;
            let x_2141 : vec2<f32> = u_xlat57;
            let x_2143 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2139) * x_2141) + vec2<f32>(x_2143.x, x_2143.y));
            let x_2146 : vec4<f32> = u_xlat9;
            let x_2148 : vec2<f32> = max(vec2<f32>(x_2146.x, x_2146.y), vec2<f32>(0.0f, 0.0f));
            let x_2149 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2148.x, x_2148.y, x_2149.z, x_2149.w);
            let x_2151 : vec4<f32> = u_xlat9;
            let x_2154 : vec4<f32> = u_xlat9;
            let x_2157 : vec4<f32> = u_xlat10;
            let x_2159 : vec2<f32> = ((-(vec2<f32>(x_2151.x, x_2151.y)) * vec2<f32>(x_2154.x, x_2154.y)) + vec2<f32>(x_2157.y, x_2157.w));
            let x_2160 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2159.x, x_2159.y, x_2160.z, x_2160.w);
            let x_2162 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2162 + vec2<f32>(1.0f, 1.0f));
            let x_2164 : vec4<f32> = u_xlat9;
            let x_2166 : vec2<f32> = (vec2<f32>(x_2164.x, x_2164.y) + vec2<f32>(1.0f, 1.0f));
            let x_2167 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2166.x, x_2166.y, x_2167.z, x_2167.w);
            let x_2169 : vec4<f32> = u_xlat10;
            let x_2171 : vec2<f32> = (vec2<f32>(x_2169.x, x_2169.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2172 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2171.x, x_2171.y, x_2172.z, x_2172.w);
            let x_2174 : vec4<f32> = u_xlat11;
            let x_2176 : vec2<f32> = (vec2<f32>(x_2174.x, x_2174.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2177 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2176.x, x_2176.y, x_2177.z, x_2177.w);
            let x_2179 : vec2<f32> = u_xlat57;
            let x_2180 : vec2<f32> = (x_2179 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2181 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2180.x, x_2180.y, x_2181.z, x_2181.w);
            let x_2183 : vec4<f32> = u_xlat9;
            let x_2185 : vec2<f32> = (vec2<f32>(x_2183.x, x_2183.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2186 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2185.x, x_2185.y, x_2186.z, x_2186.w);
            let x_2188 : vec4<f32> = u_xlat10;
            let x_2190 : vec2<f32> = (vec2<f32>(x_2188.y, x_2188.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2191 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2190.x, x_2190.y, x_2191.z, x_2191.w);
            let x_2194 : f32 = u_xlat11.x;
            u_xlat12.z = x_2194;
            let x_2197 : f32 = u_xlat9.x;
            u_xlat12.w = x_2197;
            let x_2200 : f32 = u_xlat14.x;
            u_xlat13.z = x_2200;
            let x_2203 : f32 = u_xlat55.x;
            u_xlat13.w = x_2203;
            let x_2205 : vec4<f32> = u_xlat12;
            let x_2207 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2205.z, x_2205.w, x_2205.x, x_2205.z) + vec4<f32>(x_2207.z, x_2207.w, x_2207.x, x_2207.z));
            let x_2211 : f32 = u_xlat12.y;
            u_xlat11.z = x_2211;
            let x_2214 : f32 = u_xlat9.y;
            u_xlat11.w = x_2214;
            let x_2217 : f32 = u_xlat13.y;
            u_xlat14.z = x_2217;
            let x_2220 : f32 = u_xlat55.y;
            u_xlat14.w = x_2220;
            let x_2222 : vec4<f32> = u_xlat11;
            let x_2224 : vec4<f32> = u_xlat14;
            let x_2226 : vec3<f32> = (vec3<f32>(x_2222.z, x_2222.y, x_2222.w) + vec3<f32>(x_2224.z, x_2224.y, x_2224.w));
            let x_2227 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2226.x, x_2226.y, x_2226.z, x_2227.w);
            let x_2229 : vec4<f32> = u_xlat13;
            let x_2231 : vec4<f32> = u_xlat10;
            let x_2233 : vec3<f32> = (vec3<f32>(x_2229.x, x_2229.z, x_2229.w) / vec3<f32>(x_2231.z, x_2231.w, x_2231.y));
            let x_2234 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
            let x_2236 : vec4<f32> = u_xlat11;
            let x_2238 : vec3<f32> = (vec3<f32>(x_2236.x, x_2236.y, x_2236.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2239 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2238.x, x_2238.y, x_2238.z, x_2239.w);
            let x_2241 : vec4<f32> = u_xlat14;
            let x_2243 : vec4<f32> = u_xlat9;
            let x_2245 : vec3<f32> = (vec3<f32>(x_2241.z, x_2241.y, x_2241.w) / vec3<f32>(x_2243.x, x_2243.y, x_2243.z));
            let x_2246 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2245.x, x_2245.y, x_2245.z, x_2246.w);
            let x_2248 : vec4<f32> = u_xlat12;
            let x_2250 : vec3<f32> = (vec3<f32>(x_2248.x, x_2248.y, x_2248.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2251 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);
            let x_2253 : vec4<f32> = u_xlat11;
            let x_2256 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2258 : vec3<f32> = (vec3<f32>(x_2253.y, x_2253.x, x_2253.z) * vec3<f32>(x_2256.x, x_2256.x, x_2256.x));
            let x_2259 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
            let x_2261 : vec4<f32> = u_xlat12;
            let x_2264 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2266 : vec3<f32> = (vec3<f32>(x_2261.x, x_2261.y, x_2261.z) * vec3<f32>(x_2264.y, x_2264.y, x_2264.y));
            let x_2267 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2266.x, x_2266.y, x_2266.z, x_2267.w);
            let x_2270 : f32 = u_xlat12.x;
            u_xlat11.w = x_2270;
            let x_2272 : vec2<f32> = u_xlat51;
            let x_2275 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2278 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2272.x, x_2272.y, x_2272.x, x_2272.y) * vec4<f32>(x_2275.x, x_2275.y, x_2275.x, x_2275.y)) + vec4<f32>(x_2278.y, x_2278.w, x_2278.x, x_2278.w));
            let x_2281 : vec2<f32> = u_xlat51;
            let x_2283 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2286 : vec4<f32> = u_xlat11;
            let x_2288 : vec2<f32> = ((x_2281 * vec2<f32>(x_2283.x, x_2283.y)) + vec2<f32>(x_2286.z, x_2286.w));
            let x_2289 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2288.x, x_2288.y, x_2289.z, x_2289.w);
            let x_2292 : f32 = u_xlat11.y;
            u_xlat12.w = x_2292;
            let x_2294 : vec4<f32> = u_xlat12;
            let x_2295 : vec2<f32> = vec2<f32>(x_2294.y, x_2294.z);
            let x_2296 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2296.x, x_2295.x, x_2296.z, x_2295.y);
            let x_2298 : vec2<f32> = u_xlat51;
            let x_2301 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2304 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2298.x, x_2298.y, x_2298.x, x_2298.y) * vec4<f32>(x_2301.x, x_2301.y, x_2301.x, x_2301.y)) + vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2304.y));
            let x_2307 : vec2<f32> = u_xlat51;
            let x_2310 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2313 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2307.x, x_2307.y, x_2307.x, x_2307.y) * vec4<f32>(x_2310.x, x_2310.y, x_2310.x, x_2310.y)) + vec4<f32>(x_2313.w, x_2313.y, x_2313.w, x_2313.z));
            let x_2316 : vec2<f32> = u_xlat51;
            let x_2319 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2322 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2316.x, x_2316.y, x_2316.x, x_2316.y) * vec4<f32>(x_2319.x, x_2319.y, x_2319.x, x_2319.y)) + vec4<f32>(x_2322.x, x_2322.w, x_2322.z, x_2322.w));
            let x_2325 : vec4<f32> = u_xlat9;
            let x_2327 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2325.x, x_2325.x, x_2325.x, x_2325.y) * vec4<f32>(x_2327.z, x_2327.w, x_2327.y, x_2327.z));
            let x_2330 : vec4<f32> = u_xlat9;
            let x_2332 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2330.y, x_2330.y, x_2330.z, x_2330.z) * x_2332);
            let x_2335 : f32 = u_xlat9.z;
            let x_2337 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2335 * x_2337);
            let x_2341 : vec4<f32> = u_xlat13;
            let x_2342 : vec2<f32> = vec2<f32>(x_2341.x, x_2341.y);
            let x_2344 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2342.x, x_2342.y, x_2344);
            let x_2351 : vec3<f32> = txVec34;
            let x_2353 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2351.xy, x_2351.z);
            u_xlat74 = x_2353;
            let x_2355 : vec4<f32> = u_xlat13;
            let x_2356 : vec2<f32> = vec2<f32>(x_2355.z, x_2355.w);
            let x_2358 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2356.x, x_2356.y, x_2358);
            let x_2366 : vec3<f32> = txVec35;
            let x_2368 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2366.xy, x_2366.z);
            u_xlat75 = x_2368;
            let x_2369 : f32 = u_xlat75;
            let x_2371 : f32 = u_xlat16.y;
            u_xlat75 = (x_2369 * x_2371);
            let x_2374 : f32 = u_xlat16.x;
            let x_2375 : f32 = u_xlat74;
            let x_2377 : f32 = u_xlat75;
            u_xlat74 = ((x_2374 * x_2375) + x_2377);
            let x_2380 : vec4<f32> = u_xlat14;
            let x_2381 : vec2<f32> = vec2<f32>(x_2380.x, x_2380.y);
            let x_2383 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2381.x, x_2381.y, x_2383);
            let x_2390 : vec3<f32> = txVec36;
            let x_2392 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2390.xy, x_2390.z);
            u_xlat75 = x_2392;
            let x_2394 : f32 = u_xlat16.z;
            let x_2395 : f32 = u_xlat75;
            let x_2397 : f32 = u_xlat74;
            u_xlat74 = ((x_2394 * x_2395) + x_2397);
            let x_2400 : vec4<f32> = u_xlat12;
            let x_2401 : vec2<f32> = vec2<f32>(x_2400.x, x_2400.y);
            let x_2403 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2401.x, x_2401.y, x_2403);
            let x_2410 : vec3<f32> = txVec37;
            let x_2412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2410.xy, x_2410.z);
            u_xlat75 = x_2412;
            let x_2414 : f32 = u_xlat16.w;
            let x_2415 : f32 = u_xlat75;
            let x_2417 : f32 = u_xlat74;
            u_xlat74 = ((x_2414 * x_2415) + x_2417);
            let x_2420 : vec4<f32> = u_xlat15;
            let x_2421 : vec2<f32> = vec2<f32>(x_2420.x, x_2420.y);
            let x_2423 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2421.x, x_2421.y, x_2423);
            let x_2430 : vec3<f32> = txVec38;
            let x_2432 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2430.xy, x_2430.z);
            u_xlat75 = x_2432;
            let x_2434 : f32 = u_xlat17.x;
            let x_2435 : f32 = u_xlat75;
            let x_2437 : f32 = u_xlat74;
            u_xlat74 = ((x_2434 * x_2435) + x_2437);
            let x_2440 : vec4<f32> = u_xlat15;
            let x_2441 : vec2<f32> = vec2<f32>(x_2440.z, x_2440.w);
            let x_2443 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2441.x, x_2441.y, x_2443);
            let x_2450 : vec3<f32> = txVec39;
            let x_2452 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2450.xy, x_2450.z);
            u_xlat75 = x_2452;
            let x_2454 : f32 = u_xlat17.y;
            let x_2455 : f32 = u_xlat75;
            let x_2457 : f32 = u_xlat74;
            u_xlat74 = ((x_2454 * x_2455) + x_2457);
            let x_2460 : vec4<f32> = u_xlat12;
            let x_2461 : vec2<f32> = vec2<f32>(x_2460.z, x_2460.w);
            let x_2463 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2461.x, x_2461.y, x_2463);
            let x_2470 : vec3<f32> = txVec40;
            let x_2472 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2470.xy, x_2470.z);
            u_xlat75 = x_2472;
            let x_2474 : f32 = u_xlat17.z;
            let x_2475 : f32 = u_xlat75;
            let x_2477 : f32 = u_xlat74;
            u_xlat74 = ((x_2474 * x_2475) + x_2477);
            let x_2480 : vec4<f32> = u_xlat11;
            let x_2481 : vec2<f32> = vec2<f32>(x_2480.x, x_2480.y);
            let x_2483 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2481.x, x_2481.y, x_2483);
            let x_2490 : vec3<f32> = txVec41;
            let x_2492 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2490.xy, x_2490.z);
            u_xlat75 = x_2492;
            let x_2494 : f32 = u_xlat17.w;
            let x_2495 : f32 = u_xlat75;
            let x_2497 : f32 = u_xlat74;
            u_xlat74 = ((x_2494 * x_2495) + x_2497);
            let x_2500 : vec4<f32> = u_xlat11;
            let x_2501 : vec2<f32> = vec2<f32>(x_2500.z, x_2500.w);
            let x_2503 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2501.x, x_2501.y, x_2503);
            let x_2510 : vec3<f32> = txVec42;
            let x_2512 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2510.xy, x_2510.z);
            u_xlat75 = x_2512;
            let x_2514 : f32 = u_xlat51.x;
            let x_2515 : f32 = u_xlat75;
            let x_2517 : f32 = u_xlat74;
            u_xlat73 = ((x_2514 * x_2515) + x_2517);
          } else {
            let x_2520 : vec4<f32> = u_xlat8;
            let x_2523 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2520.x, x_2520.y) * vec2<f32>(x_2523.z, x_2523.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2527 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2527);
            let x_2529 : vec4<f32> = u_xlat8;
            let x_2532 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2535 : vec2<f32> = u_xlat51;
            let x_2537 : vec2<f32> = ((vec2<f32>(x_2529.x, x_2529.y) * vec2<f32>(x_2532.z, x_2532.w)) + -(x_2535));
            let x_2538 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2537.x, x_2537.y, x_2538.z, x_2538.w);
            let x_2540 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2540.x, x_2540.x, x_2540.y, x_2540.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2543 : vec4<f32> = u_xlat10;
            let x_2545 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2543.x, x_2543.x, x_2543.z, x_2543.z) * vec4<f32>(x_2545.x, x_2545.x, x_2545.z, x_2545.z));
            let x_2548 : vec4<f32> = u_xlat11;
            let x_2550 : vec2<f32> = (vec2<f32>(x_2548.y, x_2548.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2551 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2551.x, x_2550.x, x_2551.z, x_2550.y);
            let x_2553 : vec4<f32> = u_xlat11;
            let x_2556 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2553.x, x_2553.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2556.x, x_2556.y)));
            let x_2560 : vec4<f32> = u_xlat9;
            let x_2563 : vec2<f32> = (-(vec2<f32>(x_2560.x, x_2560.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2564 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2563.x, x_2564.y, x_2563.y, x_2564.w);
            let x_2566 : vec4<f32> = u_xlat9;
            let x_2568 : vec2<f32> = min(vec2<f32>(x_2566.x, x_2566.y), vec2<f32>(0.0f, 0.0f));
            let x_2569 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2568.x, x_2568.y, x_2569.z, x_2569.w);
            let x_2571 : vec4<f32> = u_xlat11;
            let x_2574 : vec4<f32> = u_xlat11;
            let x_2577 : vec4<f32> = u_xlat10;
            let x_2579 : vec2<f32> = ((-(vec2<f32>(x_2571.x, x_2571.y)) * vec2<f32>(x_2574.x, x_2574.y)) + vec2<f32>(x_2577.x, x_2577.z));
            let x_2580 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2579.x, x_2580.y, x_2579.y, x_2580.w);
            let x_2582 : vec4<f32> = u_xlat9;
            let x_2584 : vec2<f32> = max(vec2<f32>(x_2582.x, x_2582.y), vec2<f32>(0.0f, 0.0f));
            let x_2585 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2584.x, x_2584.y, x_2585.z, x_2585.w);
            let x_2587 : vec4<f32> = u_xlat11;
            let x_2590 : vec4<f32> = u_xlat11;
            let x_2593 : vec4<f32> = u_xlat10;
            let x_2595 : vec2<f32> = ((-(vec2<f32>(x_2587.x, x_2587.y)) * vec2<f32>(x_2590.x, x_2590.y)) + vec2<f32>(x_2593.y, x_2593.w));
            let x_2596 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2596.x, x_2595.x, x_2596.z, x_2595.y);
            let x_2598 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2598 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2602 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2602 * 0.08163200318813323975f);
            let x_2605 : vec2<f32> = u_xlat55;
            let x_2607 : vec2<f32> = (vec2<f32>(x_2605.y, x_2605.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2608 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2607.x, x_2607.y, x_2608.z, x_2608.w);
            let x_2610 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2610.x, x_2610.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2614 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2614 * 0.08163200318813323975f);
            let x_2618 : f32 = u_xlat13.y;
            u_xlat11.x = x_2618;
            let x_2620 : vec4<f32> = u_xlat9;
            let x_2623 : vec2<f32> = ((vec2<f32>(x_2620.x, x_2620.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2624 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2624.x, x_2623.x, x_2624.z, x_2623.y);
            let x_2626 : vec4<f32> = u_xlat9;
            let x_2629 : vec2<f32> = ((vec2<f32>(x_2626.x, x_2626.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2630 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2629.x, x_2630.y, x_2629.y, x_2630.w);
            let x_2633 : f32 = u_xlat55.x;
            u_xlat10.y = x_2633;
            let x_2636 : f32 = u_xlat12.y;
            u_xlat10.w = x_2636;
            let x_2638 : vec4<f32> = u_xlat10;
            let x_2639 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2638 + x_2639);
            let x_2641 : vec4<f32> = u_xlat9;
            let x_2644 : vec2<f32> = ((vec2<f32>(x_2641.y, x_2641.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2645 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2645.x, x_2644.x, x_2645.z, x_2644.y);
            let x_2647 : vec4<f32> = u_xlat9;
            let x_2650 : vec2<f32> = ((vec2<f32>(x_2647.y, x_2647.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2651 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2650.x, x_2651.y, x_2650.y, x_2651.w);
            let x_2654 : f32 = u_xlat55.y;
            u_xlat12.y = x_2654;
            let x_2656 : vec4<f32> = u_xlat12;
            let x_2657 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2656 + x_2657);
            let x_2659 : vec4<f32> = u_xlat10;
            let x_2660 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2659 / x_2660);
            let x_2662 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2662 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2664 : vec4<f32> = u_xlat12;
            let x_2665 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2664 / x_2665);
            let x_2667 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2667 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2669 : vec4<f32> = u_xlat10;
            let x_2672 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2669.w, x_2669.x, x_2669.y, x_2669.z) * vec4<f32>(x_2672.x, x_2672.x, x_2672.x, x_2672.x));
            let x_2675 : vec4<f32> = u_xlat12;
            let x_2678 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2675.x, x_2675.w, x_2675.y, x_2675.z) * vec4<f32>(x_2678.y, x_2678.y, x_2678.y, x_2678.y));
            let x_2681 : vec4<f32> = u_xlat10;
            let x_2682 : vec3<f32> = vec3<f32>(x_2681.y, x_2681.z, x_2681.w);
            let x_2683 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2682.x, x_2683.y, x_2682.y, x_2682.z);
            let x_2686 : f32 = u_xlat12.x;
            u_xlat13.y = x_2686;
            let x_2688 : vec2<f32> = u_xlat51;
            let x_2691 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2694 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2688.x, x_2688.y, x_2688.x, x_2688.y) * vec4<f32>(x_2691.x, x_2691.y, x_2691.x, x_2691.y)) + vec4<f32>(x_2694.x, x_2694.y, x_2694.z, x_2694.y));
            let x_2697 : vec2<f32> = u_xlat51;
            let x_2699 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2702 : vec4<f32> = u_xlat13;
            let x_2704 : vec2<f32> = ((x_2697 * vec2<f32>(x_2699.x, x_2699.y)) + vec2<f32>(x_2702.w, x_2702.y));
            let x_2705 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2704.x, x_2704.y, x_2705.z, x_2705.w);
            let x_2708 : f32 = u_xlat13.y;
            u_xlat10.y = x_2708;
            let x_2711 : f32 = u_xlat12.z;
            u_xlat13.y = x_2711;
            let x_2713 : vec2<f32> = u_xlat51;
            let x_2716 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2719 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2713.x, x_2713.y, x_2713.x, x_2713.y) * vec4<f32>(x_2716.x, x_2716.y, x_2716.x, x_2716.y)) + vec4<f32>(x_2719.x, x_2719.y, x_2719.z, x_2719.y));
            let x_2723 : vec2<f32> = u_xlat51;
            let x_2725 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2728 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2723 * vec2<f32>(x_2725.x, x_2725.y)) + vec2<f32>(x_2728.w, x_2728.y));
            let x_2732 : f32 = u_xlat13.y;
            u_xlat10.z = x_2732;
            let x_2734 : vec2<f32> = u_xlat51;
            let x_2737 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2740 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2734.x, x_2734.y, x_2734.x, x_2734.y) * vec4<f32>(x_2737.x, x_2737.y, x_2737.x, x_2737.y)) + vec4<f32>(x_2740.x, x_2740.y, x_2740.x, x_2740.z));
            let x_2744 : f32 = u_xlat12.w;
            u_xlat13.y = x_2744;
            let x_2747 : vec2<f32> = u_xlat51;
            let x_2750 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2753 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2747.x, x_2747.y, x_2747.x, x_2747.y) * vec4<f32>(x_2750.x, x_2750.y, x_2750.x, x_2750.y)) + vec4<f32>(x_2753.x, x_2753.y, x_2753.z, x_2753.y));
            let x_2757 : vec2<f32> = u_xlat51;
            let x_2759 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2762 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2757 * vec2<f32>(x_2759.x, x_2759.y)) + vec2<f32>(x_2762.w, x_2762.y));
            let x_2766 : f32 = u_xlat13.y;
            u_xlat10.w = x_2766;
            let x_2769 : vec2<f32> = u_xlat51;
            let x_2771 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2774 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2769 * vec2<f32>(x_2771.x, x_2771.y)) + vec2<f32>(x_2774.x, x_2774.w));
            let x_2777 : vec4<f32> = u_xlat13;
            let x_2778 : vec3<f32> = vec3<f32>(x_2777.x, x_2777.z, x_2777.w);
            let x_2779 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2778.x, x_2779.y, x_2778.y, x_2778.z);
            let x_2781 : vec2<f32> = u_xlat51;
            let x_2784 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2787 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2781.x, x_2781.y, x_2781.x, x_2781.y) * vec4<f32>(x_2784.x, x_2784.y, x_2784.x, x_2784.y)) + vec4<f32>(x_2787.x, x_2787.y, x_2787.z, x_2787.y));
            let x_2790 : vec2<f32> = u_xlat51;
            let x_2792 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2795 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2790 * vec2<f32>(x_2792.x, x_2792.y)) + vec2<f32>(x_2795.w, x_2795.y));
            let x_2799 : f32 = u_xlat10.x;
            u_xlat12.x = x_2799;
            let x_2801 : vec2<f32> = u_xlat51;
            let x_2803 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2806 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_2801 * vec2<f32>(x_2803.x, x_2803.y)) + vec2<f32>(x_2806.x, x_2806.y));
            let x_2810 : vec4<f32> = u_xlat9;
            let x_2812 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2810.x, x_2810.x, x_2810.x, x_2810.x) * x_2812);
            let x_2815 : vec4<f32> = u_xlat9;
            let x_2817 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_2815.y, x_2815.y, x_2815.y, x_2815.y) * x_2817);
            let x_2820 : vec4<f32> = u_xlat9;
            let x_2822 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_2820.z, x_2820.z, x_2820.z, x_2820.z) * x_2822);
            let x_2824 : vec4<f32> = u_xlat9;
            let x_2826 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_2824.w, x_2824.w, x_2824.w, x_2824.w) * x_2826);
            let x_2829 : vec4<f32> = u_xlat14;
            let x_2830 : vec2<f32> = vec2<f32>(x_2829.x, x_2829.y);
            let x_2832 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2830.x, x_2830.y, x_2832);
            let x_2839 : vec3<f32> = txVec43;
            let x_2841 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2839.xy, x_2839.z);
            u_xlat75 = x_2841;
            let x_2843 : vec4<f32> = u_xlat14;
            let x_2844 : vec2<f32> = vec2<f32>(x_2843.z, x_2843.w);
            let x_2846 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_2844.x, x_2844.y, x_2846);
            let x_2854 : vec3<f32> = txVec44;
            let x_2856 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2854.xy, x_2854.z);
            u_xlat76 = x_2856;
            let x_2857 : f32 = u_xlat76;
            let x_2859 : f32 = u_xlat20.y;
            u_xlat76 = (x_2857 * x_2859);
            let x_2862 : f32 = u_xlat20.x;
            let x_2863 : f32 = u_xlat75;
            let x_2865 : f32 = u_xlat76;
            u_xlat75 = ((x_2862 * x_2863) + x_2865);
            let x_2868 : vec4<f32> = u_xlat15;
            let x_2869 : vec2<f32> = vec2<f32>(x_2868.x, x_2868.y);
            let x_2871 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_2869.x, x_2869.y, x_2871);
            let x_2878 : vec3<f32> = txVec45;
            let x_2880 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2878.xy, x_2878.z);
            u_xlat76 = x_2880;
            let x_2882 : f32 = u_xlat20.z;
            let x_2883 : f32 = u_xlat76;
            let x_2885 : f32 = u_xlat75;
            u_xlat75 = ((x_2882 * x_2883) + x_2885);
            let x_2888 : vec4<f32> = u_xlat17;
            let x_2889 : vec2<f32> = vec2<f32>(x_2888.x, x_2888.y);
            let x_2891 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_2889.x, x_2889.y, x_2891);
            let x_2898 : vec3<f32> = txVec46;
            let x_2900 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2898.xy, x_2898.z);
            u_xlat76 = x_2900;
            let x_2902 : f32 = u_xlat20.w;
            let x_2903 : f32 = u_xlat76;
            let x_2905 : f32 = u_xlat75;
            u_xlat75 = ((x_2902 * x_2903) + x_2905);
            let x_2908 : vec4<f32> = u_xlat16;
            let x_2909 : vec2<f32> = vec2<f32>(x_2908.x, x_2908.y);
            let x_2911 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_2909.x, x_2909.y, x_2911);
            let x_2918 : vec3<f32> = txVec47;
            let x_2920 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2918.xy, x_2918.z);
            u_xlat76 = x_2920;
            let x_2922 : f32 = u_xlat21.x;
            let x_2923 : f32 = u_xlat76;
            let x_2925 : f32 = u_xlat75;
            u_xlat75 = ((x_2922 * x_2923) + x_2925);
            let x_2928 : vec4<f32> = u_xlat16;
            let x_2929 : vec2<f32> = vec2<f32>(x_2928.z, x_2928.w);
            let x_2931 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_2929.x, x_2929.y, x_2931);
            let x_2938 : vec3<f32> = txVec48;
            let x_2940 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2938.xy, x_2938.z);
            u_xlat76 = x_2940;
            let x_2942 : f32 = u_xlat21.y;
            let x_2943 : f32 = u_xlat76;
            let x_2945 : f32 = u_xlat75;
            u_xlat75 = ((x_2942 * x_2943) + x_2945);
            let x_2948 : vec2<f32> = u_xlat61;
            let x_2950 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_2948.x, x_2948.y, x_2950);
            let x_2957 : vec3<f32> = txVec49;
            let x_2959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2957.xy, x_2957.z);
            u_xlat76 = x_2959;
            let x_2961 : f32 = u_xlat21.z;
            let x_2962 : f32 = u_xlat76;
            let x_2964 : f32 = u_xlat75;
            u_xlat75 = ((x_2961 * x_2962) + x_2964);
            let x_2967 : vec4<f32> = u_xlat17;
            let x_2968 : vec2<f32> = vec2<f32>(x_2967.z, x_2967.w);
            let x_2970 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_2968.x, x_2968.y, x_2970);
            let x_2977 : vec3<f32> = txVec50;
            let x_2979 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2977.xy, x_2977.z);
            u_xlat76 = x_2979;
            let x_2981 : f32 = u_xlat21.w;
            let x_2982 : f32 = u_xlat76;
            let x_2984 : f32 = u_xlat75;
            u_xlat75 = ((x_2981 * x_2982) + x_2984);
            let x_2987 : vec4<f32> = u_xlat18;
            let x_2988 : vec2<f32> = vec2<f32>(x_2987.x, x_2987.y);
            let x_2990 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_2988.x, x_2988.y, x_2990);
            let x_2997 : vec3<f32> = txVec51;
            let x_2999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2997.xy, x_2997.z);
            u_xlat76 = x_2999;
            let x_3001 : f32 = u_xlat22.x;
            let x_3002 : f32 = u_xlat76;
            let x_3004 : f32 = u_xlat75;
            u_xlat75 = ((x_3001 * x_3002) + x_3004);
            let x_3007 : vec4<f32> = u_xlat18;
            let x_3008 : vec2<f32> = vec2<f32>(x_3007.z, x_3007.w);
            let x_3010 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
            let x_3017 : vec3<f32> = txVec52;
            let x_3019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
            u_xlat76 = x_3019;
            let x_3021 : f32 = u_xlat22.y;
            let x_3022 : f32 = u_xlat76;
            let x_3024 : f32 = u_xlat75;
            u_xlat75 = ((x_3021 * x_3022) + x_3024);
            let x_3027 : vec2<f32> = u_xlat33;
            let x_3029 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3027.x, x_3027.y, x_3029);
            let x_3036 : vec3<f32> = txVec53;
            let x_3038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3036.xy, x_3036.z);
            u_xlat76 = x_3038;
            let x_3040 : f32 = u_xlat22.z;
            let x_3041 : f32 = u_xlat76;
            let x_3043 : f32 = u_xlat75;
            u_xlat75 = ((x_3040 * x_3041) + x_3043);
            let x_3046 : vec2<f32> = u_xlat19;
            let x_3048 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3046.x, x_3046.y, x_3048);
            let x_3055 : vec3<f32> = txVec54;
            let x_3057 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3055.xy, x_3055.z);
            u_xlat76 = x_3057;
            let x_3059 : f32 = u_xlat22.w;
            let x_3060 : f32 = u_xlat76;
            let x_3062 : f32 = u_xlat75;
            u_xlat75 = ((x_3059 * x_3060) + x_3062);
            let x_3065 : vec4<f32> = u_xlat13;
            let x_3066 : vec2<f32> = vec2<f32>(x_3065.x, x_3065.y);
            let x_3068 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3066.x, x_3066.y, x_3068);
            let x_3075 : vec3<f32> = txVec55;
            let x_3077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3075.xy, x_3075.z);
            u_xlat76 = x_3077;
            let x_3079 : f32 = u_xlat9.x;
            let x_3080 : f32 = u_xlat76;
            let x_3082 : f32 = u_xlat75;
            u_xlat75 = ((x_3079 * x_3080) + x_3082);
            let x_3085 : vec4<f32> = u_xlat13;
            let x_3086 : vec2<f32> = vec2<f32>(x_3085.z, x_3085.w);
            let x_3088 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3086.x, x_3086.y, x_3088);
            let x_3095 : vec3<f32> = txVec56;
            let x_3097 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3095.xy, x_3095.z);
            u_xlat76 = x_3097;
            let x_3099 : f32 = u_xlat9.y;
            let x_3100 : f32 = u_xlat76;
            let x_3102 : f32 = u_xlat75;
            u_xlat75 = ((x_3099 * x_3100) + x_3102);
            let x_3105 : vec2<f32> = u_xlat58;
            let x_3107 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3105.x, x_3105.y, x_3107);
            let x_3114 : vec3<f32> = txVec57;
            let x_3116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3114.xy, x_3114.z);
            u_xlat76 = x_3116;
            let x_3118 : f32 = u_xlat9.z;
            let x_3119 : f32 = u_xlat76;
            let x_3121 : f32 = u_xlat75;
            u_xlat75 = ((x_3118 * x_3119) + x_3121);
            let x_3124 : vec2<f32> = u_xlat51;
            let x_3126 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3124.x, x_3124.y, x_3126);
            let x_3133 : vec3<f32> = txVec58;
            let x_3135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3133.xy, x_3133.z);
            u_xlat51.x = x_3135;
            let x_3138 : f32 = u_xlat9.w;
            let x_3140 : f32 = u_xlat51.x;
            let x_3142 : f32 = u_xlat75;
            u_xlat73 = ((x_3138 * x_3140) + x_3142);
          }
        }
      } else {
        let x_3146 : vec4<f32> = u_xlat8;
        let x_3147 : vec2<f32> = vec2<f32>(x_3146.x, x_3146.y);
        let x_3149 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3147.x, x_3147.y, x_3149);
        let x_3156 : vec3<f32> = txVec59;
        let x_3158 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3156.xy, x_3156.z);
        u_xlat73 = x_3158;
      }
      let x_3159 : i32 = u_xlati71;
      let x_3161 : f32 = x_215.x_AdditionalShadowParams[x_3159].x;
      u_xlat51.x = (1.0f + -(x_3161));
      let x_3165 : f32 = u_xlat73;
      let x_3166 : i32 = u_xlati71;
      let x_3168 : f32 = x_215.x_AdditionalShadowParams[x_3166].x;
      let x_3171 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3165 * x_3168) + x_3171);
      let x_3174 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3174);
      let x_3178 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3178 >= 1.0f);
      let x_3180 : bool = u_xlatb74;
      let x_3181 : bool = u_xlatb51;
      u_xlatb51 = (x_3180 | x_3181);
      let x_3183 : bool = u_xlatb51;
      let x_3184 : f32 = u_xlat73;
      u_xlat73 = select(x_3184, 1.0f, x_3183);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3187 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3187) + 1.0f);
    let x_3191 : f32 = u_xlat69;
    let x_3193 : f32 = u_xlat51.x;
    let x_3195 : f32 = u_xlat73;
    u_xlat73 = ((x_3191 * x_3193) + x_3195);
    let x_3198 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3198 & 31i)));
    let x_3202 : i32 = u_xlati51;
    let x_3205 : f32 = x_1507.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3202) & bitcast<u32>(x_3205)));
    let x_3209 : i32 = u_xlati51;
    if ((x_3209 != 0i)) {
      let x_3213 : i32 = u_xlati71;
      let x_3215 : f32 = x_1507.x_AdditionalLightsLightTypes[x_3213].el;
      u_xlati51 = i32(x_3215);
      let x_3218 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3218 != 0i));
      let x_3222 : i32 = u_xlati71;
      u_xlati75 = (x_3222 << bitcast<u32>(2i));
      let x_3224 : i32 = u_xlati74;
      if ((x_3224 != 0i)) {
        let x_3228 : vec4<f32> = vs_TEXCOORD2;
        let x_3230 : i32 = u_xlati75;
        let x_3233 : i32 = u_xlati75;
        let x_3237 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_3230 + 1i) / 4i)][((x_3233 + 1i) % 4i)];
        let x_3239 : vec3<f32> = (vec3<f32>(x_3228.y, x_3228.y, x_3228.y) * vec3<f32>(x_3237.x, x_3237.y, x_3237.w));
        let x_3240 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3239.x, x_3239.y, x_3239.z, x_3240.w);
        let x_3242 : i32 = u_xlati75;
        let x_3244 : i32 = u_xlati75;
        let x_3247 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[(x_3242 / 4i)][(x_3244 % 4i)];
        let x_3249 : vec4<f32> = vs_TEXCOORD2;
        let x_3252 : vec4<f32> = u_xlat8;
        let x_3254 : vec3<f32> = ((vec3<f32>(x_3247.x, x_3247.y, x_3247.w) * vec3<f32>(x_3249.x, x_3249.x, x_3249.x)) + vec3<f32>(x_3252.x, x_3252.y, x_3252.z));
        let x_3255 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3254.x, x_3254.y, x_3254.z, x_3255.w);
        let x_3257 : i32 = u_xlati75;
        let x_3260 : i32 = u_xlati75;
        let x_3264 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_3257 + 2i) / 4i)][((x_3260 + 2i) % 4i)];
        let x_3266 : vec4<f32> = vs_TEXCOORD2;
        let x_3269 : vec4<f32> = u_xlat8;
        let x_3271 : vec3<f32> = ((vec3<f32>(x_3264.x, x_3264.y, x_3264.w) * vec3<f32>(x_3266.z, x_3266.z, x_3266.z)) + vec3<f32>(x_3269.x, x_3269.y, x_3269.z));
        let x_3272 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3271.x, x_3271.y, x_3271.z, x_3272.w);
        let x_3274 : vec4<f32> = u_xlat8;
        let x_3276 : i32 = u_xlati75;
        let x_3279 : i32 = u_xlati75;
        let x_3283 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_3276 + 3i) / 4i)][((x_3279 + 3i) % 4i)];
        let x_3285 : vec3<f32> = (vec3<f32>(x_3274.x, x_3274.y, x_3274.z) + vec3<f32>(x_3283.x, x_3283.y, x_3283.w));
        let x_3286 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3285.x, x_3285.y, x_3285.z, x_3286.w);
        let x_3288 : vec4<f32> = u_xlat8;
        let x_3290 : vec4<f32> = u_xlat8;
        let x_3292 : vec2<f32> = (vec2<f32>(x_3288.x, x_3288.y) / vec2<f32>(x_3290.z, x_3290.z));
        let x_3293 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3292.x, x_3292.y, x_3293.z, x_3293.w);
        let x_3295 : vec4<f32> = u_xlat8;
        let x_3298 : vec2<f32> = ((vec2<f32>(x_3295.x, x_3295.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3299 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3298.x, x_3298.y, x_3299.z, x_3299.w);
        let x_3301 : vec4<f32> = u_xlat8;
        let x_3305 : vec2<f32> = clamp(vec2<f32>(x_3301.x, x_3301.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3306 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3305.x, x_3305.y, x_3306.z, x_3306.w);
        let x_3308 : i32 = u_xlati71;
        let x_3310 : vec4<f32> = x_1507.x_AdditionalLightsCookieAtlasUVRects[x_3308];
        let x_3312 : vec4<f32> = u_xlat8;
        let x_3315 : i32 = u_xlati71;
        let x_3317 : vec4<f32> = x_1507.x_AdditionalLightsCookieAtlasUVRects[x_3315];
        let x_3319 : vec2<f32> = ((vec2<f32>(x_3310.x, x_3310.y) * vec2<f32>(x_3312.x, x_3312.y)) + vec2<f32>(x_3317.z, x_3317.w));
        let x_3320 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3319.x, x_3319.y, x_3320.z, x_3320.w);
      } else {
        let x_3323 : i32 = u_xlati51;
        u_xlatb51 = (x_3323 == 1i);
        let x_3325 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3325);
        let x_3327 : i32 = u_xlati51;
        if ((x_3327 != 0i)) {
          let x_3331 : vec4<f32> = vs_TEXCOORD2;
          let x_3333 : i32 = u_xlati75;
          let x_3336 : i32 = u_xlati75;
          let x_3340 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_3333 + 1i) / 4i)][((x_3336 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3331.y, x_3331.y) * vec2<f32>(x_3340.x, x_3340.y));
          let x_3343 : i32 = u_xlati75;
          let x_3345 : i32 = u_xlati75;
          let x_3348 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[(x_3343 / 4i)][(x_3345 % 4i)];
          let x_3350 : vec4<f32> = vs_TEXCOORD2;
          let x_3353 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3348.x, x_3348.y) * vec2<f32>(x_3350.x, x_3350.x)) + x_3353);
          let x_3355 : i32 = u_xlati75;
          let x_3358 : i32 = u_xlati75;
          let x_3362 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_3355 + 2i) / 4i)][((x_3358 + 2i) % 4i)];
          let x_3364 : vec4<f32> = vs_TEXCOORD2;
          let x_3367 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3362.x, x_3362.y) * vec2<f32>(x_3364.z, x_3364.z)) + x_3367);
          let x_3369 : vec2<f32> = u_xlat51;
          let x_3370 : i32 = u_xlati75;
          let x_3373 : i32 = u_xlati75;
          let x_3377 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_3370 + 3i) / 4i)][((x_3373 + 3i) % 4i)];
          u_xlat51 = (x_3369 + vec2<f32>(x_3377.x, x_3377.y));
          let x_3380 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3380 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3383 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3383);
          let x_3385 : i32 = u_xlati71;
          let x_3387 : vec4<f32> = x_1507.x_AdditionalLightsCookieAtlasUVRects[x_3385];
          let x_3389 : vec2<f32> = u_xlat51;
          let x_3391 : i32 = u_xlati71;
          let x_3393 : vec4<f32> = x_1507.x_AdditionalLightsCookieAtlasUVRects[x_3391];
          let x_3395 : vec2<f32> = ((vec2<f32>(x_3387.x, x_3387.y) * x_3389) + vec2<f32>(x_3393.z, x_3393.w));
          let x_3396 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3395.x, x_3395.y, x_3396.z, x_3396.w);
        } else {
          let x_3399 : vec4<f32> = vs_TEXCOORD2;
          let x_3401 : i32 = u_xlati75;
          let x_3404 : i32 = u_xlati75;
          let x_3408 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_3401 + 1i) / 4i)][((x_3404 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3399.y, x_3399.y, x_3399.y, x_3399.y) * x_3408);
          let x_3410 : i32 = u_xlati75;
          let x_3412 : i32 = u_xlati75;
          let x_3415 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[(x_3410 / 4i)][(x_3412 % 4i)];
          let x_3416 : vec4<f32> = vs_TEXCOORD2;
          let x_3419 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3415 * vec4<f32>(x_3416.x, x_3416.x, x_3416.x, x_3416.x)) + x_3419);
          let x_3421 : i32 = u_xlati75;
          let x_3424 : i32 = u_xlati75;
          let x_3428 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_3421 + 2i) / 4i)][((x_3424 + 2i) % 4i)];
          let x_3429 : vec4<f32> = vs_TEXCOORD2;
          let x_3432 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3428 * vec4<f32>(x_3429.z, x_3429.z, x_3429.z, x_3429.z)) + x_3432);
          let x_3434 : vec4<f32> = u_xlat9;
          let x_3435 : i32 = u_xlati75;
          let x_3438 : i32 = u_xlati75;
          let x_3442 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_3435 + 3i) / 4i)][((x_3438 + 3i) % 4i)];
          u_xlat9 = (x_3434 + x_3442);
          let x_3444 : vec4<f32> = u_xlat9;
          let x_3446 : vec4<f32> = u_xlat9;
          let x_3448 : vec3<f32> = (vec3<f32>(x_3444.x, x_3444.y, x_3444.z) / vec3<f32>(x_3446.w, x_3446.w, x_3446.w));
          let x_3449 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3448.x, x_3448.y, x_3448.z, x_3449.w);
          let x_3451 : vec4<f32> = u_xlat9;
          let x_3453 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3451.x, x_3451.y, x_3451.z), vec3<f32>(x_3453.x, x_3453.y, x_3453.z));
          let x_3458 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3458);
          let x_3461 : vec2<f32> = u_xlat51;
          let x_3463 : vec4<f32> = u_xlat9;
          let x_3465 : vec3<f32> = (vec3<f32>(x_3461.x, x_3461.x, x_3461.x) * vec3<f32>(x_3463.x, x_3463.y, x_3463.z));
          let x_3466 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3465.x, x_3465.y, x_3465.z, x_3466.w);
          let x_3468 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3468.x, x_3468.y, x_3468.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3475 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3475, 0.00000099999999747524f);
          let x_3480 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3480);
          let x_3483 : vec2<f32> = u_xlat51;
          let x_3485 : vec4<f32> = u_xlat9;
          let x_3487 : vec3<f32> = (vec3<f32>(x_3483.x, x_3483.x, x_3483.x) * vec3<f32>(x_3485.z, x_3485.x, x_3485.y));
          let x_3488 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3487.x, x_3487.y, x_3487.z, x_3488.w);
          let x_3491 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3491);
          let x_3495 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3495, 0.0f, 1.0f);
          let x_3499 : vec4<f32> = u_xlat10;
          let x_3501 : vec4<bool> = (vec4<f32>(x_3499.y, x_3499.z, x_3499.y, x_3499.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3501.x, x_3501.y);
          let x_3505 : bool = u_xlatb54.x;
          if (x_3505) {
            let x_3510 : f32 = u_xlat10.x;
            x_3506 = x_3510;
          } else {
            let x_3513 : f32 = u_xlat10.x;
            x_3506 = -(x_3513);
          }
          let x_3515 : f32 = x_3506;
          u_xlat54.x = x_3515;
          let x_3518 : bool = u_xlatb54.y;
          if (x_3518) {
            let x_3523 : f32 = u_xlat10.x;
            x_3519 = x_3523;
          } else {
            let x_3526 : f32 = u_xlat10.x;
            x_3519 = -(x_3526);
          }
          let x_3528 : f32 = x_3519;
          u_xlat54.y = x_3528;
          let x_3530 : vec4<f32> = u_xlat9;
          let x_3532 : vec2<f32> = u_xlat51;
          let x_3535 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3530.x, x_3530.y) * vec2<f32>(x_3532.x, x_3532.x)) + x_3535);
          let x_3537 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3537 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3540 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3540, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3544 : i32 = u_xlati71;
          let x_3546 : vec4<f32> = x_1507.x_AdditionalLightsCookieAtlasUVRects[x_3544];
          let x_3548 : vec2<f32> = u_xlat51;
          let x_3550 : i32 = u_xlati71;
          let x_3552 : vec4<f32> = x_1507.x_AdditionalLightsCookieAtlasUVRects[x_3550];
          let x_3554 : vec2<f32> = ((vec2<f32>(x_3546.x, x_3546.y) * x_3548) + vec2<f32>(x_3552.z, x_3552.w));
          let x_3555 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3554.x, x_3554.y, x_3555.z, x_3555.w);
        }
      }
      let x_3562 : vec4<f32> = u_xlat8;
      let x_3564 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3562.x, x_3562.y), 0.0f);
      u_xlat8 = x_3564;
      let x_3566 : bool = u_xlatb5.y;
      if (x_3566) {
        let x_3571 : f32 = u_xlat8.w;
        x_3567 = x_3571;
      } else {
        let x_3574 : f32 = u_xlat8.x;
        x_3567 = x_3574;
      }
      let x_3575 : f32 = x_3567;
      u_xlat51.x = x_3575;
      let x_3578 : bool = u_xlatb5.x;
      if (x_3578) {
        let x_3582 : vec4<f32> = u_xlat8;
        x_3579 = vec3<f32>(x_3582.x, x_3582.y, x_3582.z);
      } else {
        let x_3585 : vec2<f32> = u_xlat51;
        x_3579 = vec3<f32>(x_3585.x, x_3585.x, x_3585.x);
      }
      let x_3587 : vec3<f32> = x_3579;
      let x_3588 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3587.x, x_3587.y, x_3587.z, x_3588.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3594 : vec4<f32> = u_xlat8;
    let x_3596 : i32 = u_xlati71;
    let x_3598 : vec4<f32> = x_1763.x_AdditionalLightsColor[x_3596];
    let x_3600 : vec3<f32> = (vec3<f32>(x_3594.x, x_3594.y, x_3594.z) * vec3<f32>(x_3598.x, x_3598.y, x_3598.z));
    let x_3601 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3600.x, x_3600.y, x_3600.z, x_3601.w);
    let x_3603 : f32 = u_xlat72;
    let x_3604 : f32 = u_xlat73;
    u_xlat71 = (x_3603 * x_3604);
    let x_3606 : f32 = u_xlat71;
    let x_3608 : vec4<f32> = u_xlat8;
    let x_3610 : vec3<f32> = (vec3<f32>(x_3606, x_3606, x_3606) * vec3<f32>(x_3608.x, x_3608.y, x_3608.z));
    let x_3611 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3610.x, x_3610.y, x_3610.z, x_3611.w);
    let x_3613 : vec3<f32> = u_xlat2;
    let x_3614 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(x_3613, vec3<f32>(x_3614.x, x_3614.y, x_3614.z));
    let x_3617 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3617, 0.0f, 1.0f);
    let x_3619 : f32 = u_xlat71;
    let x_3621 : vec4<f32> = u_xlat8;
    let x_3623 : vec3<f32> = (vec3<f32>(x_3619, x_3619, x_3619) * vec3<f32>(x_3621.x, x_3621.y, x_3621.z));
    let x_3624 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3623.x, x_3623.y, x_3623.z, x_3624.w);
    let x_3626 : vec4<f32> = u_xlat7;
    let x_3628 : vec4<f32> = u_xlat1;
    let x_3631 : vec4<f32> = u_xlat6;
    let x_3633 : vec3<f32> = ((vec3<f32>(x_3626.x, x_3626.y, x_3626.z) * vec3<f32>(x_3628.x, x_3628.y, x_3628.z)) + vec3<f32>(x_3631.x, x_3631.y, x_3631.z));
    let x_3634 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3633.x, x_3633.y, x_3633.z, x_3634.w);

    continuing {
      let x_3636 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3636 + bitcast<u32>(1i));
    }
  }
  let x_3638 : vec4<f32> = u_xlat3;
  let x_3640 : vec4<f32> = u_xlat1;
  let x_3643 : vec4<f32> = u_xlat4;
  let x_3645 : vec3<f32> = ((vec3<f32>(x_3638.x, x_3638.y, x_3638.z) * vec3<f32>(x_3640.x, x_3640.y, x_3640.z)) + vec3<f32>(x_3643.x, x_3643.y, x_3643.z));
  let x_3646 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3645.x, x_3645.y, x_3645.z, x_3646.w);
  let x_3650 : vec4<f32> = u_xlat6;
  let x_3652 : vec4<f32> = u_xlat1;
  let x_3654 : vec3<f32> = (vec3<f32>(x_3650.x, x_3650.y, x_3650.z) + vec3<f32>(x_3652.x, x_3652.y, x_3652.z));
  let x_3655 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3654.x, x_3654.y, x_3654.z, x_3655.w);
  let x_3657 : bool = u_xlatb46;
  let x_3658 : f32 = u_xlat23;
  SV_Target0.w = select(1.0f, x_3658, x_3657);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


