diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
}

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_81 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlatb30 : vec2<bool>;

@group(1) @binding(3) var<uniform> x_236 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat30 : f32;

var<private> u_xlatb56 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlatb82 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_1584 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat83 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatu78 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2063 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
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
  var x_1671 : f32;
  var x_1682 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2201 : f32;
  var x_2211 : f32;
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
  var x_3799 : f32;
  var x_3812 : f32;
  var x_3870 : f32;
  var x_3881 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0 = x_36;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_47 : f32 = x_28.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_44.x, x_44.y), x_47);
  u_xlat1.x = x_48.x;
  let x_54 : vec4<f32> = vs_TEXCOORD3;
  let x_56 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(vec3<f32>(x_54.x, x_54.y, x_54.z), vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_61 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_61);
  let x_65 : vec3<f32> = u_xlat27;
  let x_67 : vec4<f32> = vs_TEXCOORD3;
  let x_69 : vec3<f32> = (vec3<f32>(x_65.x, x_65.x, x_65.x) * vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  u_xlat2.w = 1.0f;
  let x_85 : vec4<f32> = x_81.unity_SHAr;
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_85, x_86);
  let x_91 : vec4<f32> = x_81.unity_SHAg;
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_91, x_92);
  let x_98 : vec4<f32> = x_81.unity_SHAb;
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_98, x_99);
  let x_103 : vec4<f32> = u_xlat2;
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_103.y, x_103.z, x_103.z, x_103.x) * vec4<f32>(x_105.x, x_105.y, x_105.z, x_105.z));
  let x_111 : vec4<f32> = x_81.unity_SHBr;
  let x_112 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_111, x_112);
  let x_117 : vec4<f32> = x_81.unity_SHBg;
  let x_118 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_117, x_118);
  let x_123 : vec4<f32> = x_81.unity_SHBb;
  let x_124 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_123, x_124);
  let x_128 : f32 = u_xlat2.y;
  let x_130 : f32 = u_xlat2.y;
  u_xlat27.x = (x_128 * x_130);
  let x_134 : f32 = u_xlat2.x;
  let x_136 : f32 = u_xlat2.x;
  let x_139 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_134 * x_136) + -(x_139));
  let x_145 : vec4<f32> = x_81.unity_SHC;
  let x_147 : vec3<f32> = u_xlat27;
  let x_150 : vec4<f32> = u_xlat5;
  u_xlat27 = ((vec3<f32>(x_145.x, x_145.y, x_145.z) * vec3<f32>(x_147.x, x_147.x, x_147.x)) + vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : vec3<f32> = u_xlat27;
  let x_154 : vec3<f32> = u_xlat3;
  u_xlat27 = (x_153 + x_154);
  let x_156 : vec3<f32> = u_xlat27;
  u_xlat27 = max(x_156, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_162 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_162) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_167 : f32 = u_xlat80;
  u_xlat3.x = (-(x_167) + 1.0f);
  let x_172 : vec4<f32> = u_xlat0;
  let x_174 : f32 = u_xlat80;
  u_xlat29 = (vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174, x_174, x_174));
  let x_177 : vec4<f32> = u_xlat0;
  let x_181 : vec3<f32> = (vec3<f32>(x_177.x, x_177.y, x_177.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_184 : vec3<f32> = u_xlat1;
  let x_186 : vec4<f32> = u_xlat0;
  let x_191 : vec3<f32> = ((vec3<f32>(x_184.x, x_184.x, x_184.x) * vec3<f32>(x_186.x, x_186.y, x_186.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_192 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_195) + 1.0f);
  let x_200 : f32 = u_xlat1.x;
  let x_202 : f32 = u_xlat1.x;
  u_xlat80 = (x_200 * x_202);
  let x_204 : f32 = u_xlat80;
  u_xlat80 = max(x_204, 0.0078125f);
  let x_207 : f32 = u_xlat80;
  let x_208 : f32 = u_xlat80;
  u_xlat4.x = (x_207 * x_208);
  let x_213 : f32 = u_xlat0.w;
  let x_215 : f32 = u_xlat3.x;
  u_xlat78 = (x_213 + x_215);
  let x_217 : f32 = u_xlat78;
  u_xlat78 = clamp(x_217, 0.0f, 1.0f);
  let x_219 : f32 = u_xlat80;
  u_xlat3.x = ((x_219 * 4.0f) + 2.0f);
  let x_239 : f32 = x_236.x_MainLightShadowParams.y;
  u_xlatb30.x = (0.0f < x_239);
  let x_244 : bool = u_xlatb30.x;
  if (x_244) {
    let x_248 : f32 = x_236.x_MainLightShadowParams.y;
    u_xlatb30.x = (x_248 == 1.0f);
    let x_252 : bool = u_xlatb30.x;
    if (x_252) {
      let x_256 : vec4<f32> = vs_TEXCOORD8;
      let x_260 : vec4<f32> = x_236.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_256.x, x_256.y, x_256.x, x_256.y) + x_260);
      let x_264 : vec4<f32> = u_xlat5;
      let x_265 : vec2<f32> = vec2<f32>(x_264.x, x_264.y);
      let x_268 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_265.x, x_265.y, x_268);
      let x_281 : vec3<f32> = txVec0;
      let x_283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_281.xy, x_281.z);
      u_xlat6.x = x_283;
      let x_286 : vec4<f32> = u_xlat5;
      let x_287 : vec2<f32> = vec2<f32>(x_286.z, x_286.w);
      let x_289 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_287.x, x_287.y, x_289);
      let x_296 : vec3<f32> = txVec1;
      let x_298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_296.xy, x_296.z);
      u_xlat6.y = x_298;
      let x_300 : vec4<f32> = vs_TEXCOORD8;
      let x_304 : vec4<f32> = x_236.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_300.x, x_300.y, x_300.x, x_300.y) + x_304);
      let x_307 : vec4<f32> = u_xlat5;
      let x_308 : vec2<f32> = vec2<f32>(x_307.x, x_307.y);
      let x_310 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_308.x, x_308.y, x_310);
      let x_317 : vec3<f32> = txVec2;
      let x_319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_317.xy, x_317.z);
      u_xlat6.z = x_319;
      let x_322 : vec4<f32> = u_xlat5;
      let x_323 : vec2<f32> = vec2<f32>(x_322.z, x_322.w);
      let x_325 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_323.x, x_323.y, x_325);
      let x_332 : vec3<f32> = txVec3;
      let x_334 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_332.xy, x_332.z);
      u_xlat6.w = x_334;
      let x_337 : vec4<f32> = u_xlat6;
      u_xlat30 = dot(x_337, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_344 : f32 = x_236.x_MainLightShadowParams.y;
      u_xlatb56 = (x_344 == 2.0f);
      let x_346 : bool = u_xlatb56;
      if (x_346) {
        let x_351 : vec4<f32> = vs_TEXCOORD8;
        let x_355 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_351.x, x_351.y) * vec2<f32>(x_355.z, x_355.w)) + vec2<f32>(0.5f, 0.5f));
        let x_361 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_361);
        let x_363 : vec4<f32> = vs_TEXCOORD8;
        let x_366 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_369 : vec2<f32> = u_xlat56;
        let x_371 : vec2<f32> = ((vec2<f32>(x_363.x, x_363.y) * vec2<f32>(x_366.z, x_366.w)) + -(x_369));
        let x_372 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
        let x_374 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_374.x, x_374.x, x_374.y, x_374.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_379 : vec4<f32> = u_xlat6;
        let x_381 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_379.x, x_379.x, x_379.z, x_379.z) * vec4<f32>(x_381.x, x_381.x, x_381.z, x_381.z));
        let x_385 : vec4<f32> = u_xlat7;
        u_xlat57 = (vec2<f32>(x_385.y, x_385.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_390 : vec4<f32> = u_xlat7;
        let x_393 : vec4<f32> = u_xlat5;
        let x_396 : vec2<f32> = ((vec2<f32>(x_390.x, x_390.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_393.x, x_393.y)));
        let x_397 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_396.x, x_397.y, x_396.y, x_397.w);
        let x_399 : vec4<f32> = u_xlat5;
        let x_403 : vec2<f32> = (-(vec2<f32>(x_399.x, x_399.y)) + vec2<f32>(1.0f, 1.0f));
        let x_404 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
        let x_407 : vec4<f32> = u_xlat5;
        u_xlat59 = min(vec2<f32>(x_407.x, x_407.y), vec2<f32>(0.0f, 0.0f));
        let x_411 : vec2<f32> = u_xlat59;
        let x_413 : vec2<f32> = u_xlat59;
        let x_415 : vec4<f32> = u_xlat7;
        u_xlat59 = ((-(x_411) * x_413) + vec2<f32>(x_415.x, x_415.y));
        let x_418 : vec4<f32> = u_xlat5;
        let x_420 : vec2<f32> = max(vec2<f32>(x_418.x, x_418.y), vec2<f32>(0.0f, 0.0f));
        let x_421 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
        let x_423 : vec4<f32> = u_xlat5;
        let x_426 : vec4<f32> = u_xlat5;
        let x_429 : vec4<f32> = u_xlat6;
        let x_431 : vec2<f32> = ((-(vec2<f32>(x_423.x, x_423.y)) * vec2<f32>(x_426.x, x_426.y)) + vec2<f32>(x_429.y, x_429.w));
        let x_432 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_434 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_434 + vec2<f32>(1.0f, 1.0f));
        let x_436 : vec4<f32> = u_xlat5;
        let x_438 : vec2<f32> = (vec2<f32>(x_436.x, x_436.y) + vec2<f32>(1.0f, 1.0f));
        let x_439 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
        let x_442 : vec4<f32> = u_xlat6;
        let x_446 : vec2<f32> = (vec2<f32>(x_442.x, x_442.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_447 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
        let x_450 : vec4<f32> = u_xlat7;
        let x_452 : vec2<f32> = (vec2<f32>(x_450.x, x_450.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_453 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_455 : vec2<f32> = u_xlat59;
        let x_456 : vec2<f32> = (x_455 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_457 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
        let x_460 : vec4<f32> = u_xlat5;
        let x_462 : vec2<f32> = (vec2<f32>(x_460.x, x_460.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_463 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
        let x_465 : vec4<f32> = u_xlat6;
        let x_467 : vec2<f32> = (vec2<f32>(x_465.y, x_465.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_468 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
        let x_471 : f32 = u_xlat7.x;
        u_xlat8.z = x_471;
        let x_474 : f32 = u_xlat5.x;
        u_xlat8.w = x_474;
        let x_477 : f32 = u_xlat10.x;
        u_xlat9.z = x_477;
        let x_480 : f32 = u_xlat57.x;
        u_xlat9.w = x_480;
        let x_482 : vec4<f32> = u_xlat8;
        let x_484 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_482.z, x_482.w, x_482.x, x_482.z) + vec4<f32>(x_484.z, x_484.w, x_484.x, x_484.z));
        let x_488 : f32 = u_xlat8.y;
        u_xlat7.z = x_488;
        let x_491 : f32 = u_xlat5.y;
        u_xlat7.w = x_491;
        let x_494 : f32 = u_xlat9.y;
        u_xlat10.z = x_494;
        let x_497 : f32 = u_xlat57.y;
        u_xlat10.w = x_497;
        let x_499 : vec4<f32> = u_xlat7;
        let x_501 : vec4<f32> = u_xlat10;
        let x_503 : vec3<f32> = (vec3<f32>(x_499.z, x_499.y, x_499.w) + vec3<f32>(x_501.z, x_501.y, x_501.w));
        let x_504 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
        let x_506 : vec4<f32> = u_xlat9;
        let x_508 : vec4<f32> = u_xlat6;
        let x_510 : vec3<f32> = (vec3<f32>(x_506.x, x_506.z, x_506.w) / vec3<f32>(x_508.z, x_508.w, x_508.y));
        let x_511 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
        let x_513 : vec4<f32> = u_xlat7;
        let x_519 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_520 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
        let x_522 : vec4<f32> = u_xlat10;
        let x_524 : vec4<f32> = u_xlat5;
        let x_526 : vec3<f32> = (vec3<f32>(x_522.z, x_522.y, x_522.w) / vec3<f32>(x_524.x, x_524.y, x_524.z));
        let x_527 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
        let x_529 : vec4<f32> = u_xlat8;
        let x_531 : vec3<f32> = (vec3<f32>(x_529.x, x_529.y, x_529.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_532 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
        let x_534 : vec4<f32> = u_xlat7;
        let x_537 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_539 : vec3<f32> = (vec3<f32>(x_534.y, x_534.x, x_534.z) * vec3<f32>(x_537.x, x_537.x, x_537.x));
        let x_540 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
        let x_542 : vec4<f32> = u_xlat8;
        let x_545 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_547 : vec3<f32> = (vec3<f32>(x_542.x, x_542.y, x_542.z) * vec3<f32>(x_545.y, x_545.y, x_545.y));
        let x_548 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
        let x_551 : f32 = u_xlat8.x;
        u_xlat7.w = x_551;
        let x_553 : vec2<f32> = u_xlat56;
        let x_556 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_559 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_553.x, x_553.y, x_553.x, x_553.y) * vec4<f32>(x_556.x, x_556.y, x_556.x, x_556.y)) + vec4<f32>(x_559.y, x_559.w, x_559.x, x_559.w));
        let x_562 : vec2<f32> = u_xlat56;
        let x_564 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_567 : vec4<f32> = u_xlat7;
        let x_569 : vec2<f32> = ((x_562 * vec2<f32>(x_564.x, x_564.y)) + vec2<f32>(x_567.z, x_567.w));
        let x_570 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
        let x_573 : f32 = u_xlat7.y;
        u_xlat8.w = x_573;
        let x_575 : vec4<f32> = u_xlat8;
        let x_576 : vec2<f32> = vec2<f32>(x_575.y, x_575.z);
        let x_577 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_577.x, x_576.x, x_577.z, x_576.y);
        let x_580 : vec2<f32> = u_xlat56;
        let x_583 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_586 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_580.x, x_580.y, x_580.x, x_580.y) * vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.y)) + vec4<f32>(x_586.x, x_586.y, x_586.z, x_586.y));
        let x_589 : vec2<f32> = u_xlat56;
        let x_592 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_595 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_589.x, x_589.y, x_589.x, x_589.y) * vec4<f32>(x_592.x, x_592.y, x_592.x, x_592.y)) + vec4<f32>(x_595.w, x_595.y, x_595.w, x_595.z));
        let x_598 : vec2<f32> = u_xlat56;
        let x_601 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_604 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_598.x, x_598.y, x_598.x, x_598.y) * vec4<f32>(x_601.x, x_601.y, x_601.x, x_601.y)) + vec4<f32>(x_604.x, x_604.w, x_604.z, x_604.w));
        let x_608 : vec4<f32> = u_xlat5;
        let x_610 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_608.x, x_608.x, x_608.x, x_608.y) * vec4<f32>(x_610.z, x_610.w, x_610.y, x_610.z));
        let x_614 : vec4<f32> = u_xlat5;
        let x_616 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_614.y, x_614.y, x_614.z, x_614.z) * x_616);
        let x_619 : f32 = u_xlat5.z;
        let x_621 : f32 = u_xlat6.y;
        u_xlat56.x = (x_619 * x_621);
        let x_625 : vec4<f32> = u_xlat9;
        let x_626 : vec2<f32> = vec2<f32>(x_625.x, x_625.y);
        let x_628 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_626.x, x_626.y, x_628);
        let x_636 : vec3<f32> = txVec4;
        let x_638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_636.xy, x_636.z);
        u_xlat82 = x_638;
        let x_640 : vec4<f32> = u_xlat9;
        let x_641 : vec2<f32> = vec2<f32>(x_640.z, x_640.w);
        let x_643 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_641.x, x_641.y, x_643);
        let x_650 : vec3<f32> = txVec5;
        let x_652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_650.xy, x_650.z);
        u_xlat5.x = x_652;
        let x_655 : f32 = u_xlat5.x;
        let x_657 : f32 = u_xlat12.y;
        u_xlat5.x = (x_655 * x_657);
        let x_661 : f32 = u_xlat12.x;
        let x_662 : f32 = u_xlat82;
        let x_665 : f32 = u_xlat5.x;
        u_xlat82 = ((x_661 * x_662) + x_665);
        let x_668 : vec4<f32> = u_xlat10;
        let x_669 : vec2<f32> = vec2<f32>(x_668.x, x_668.y);
        let x_671 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_669.x, x_669.y, x_671);
        let x_678 : vec3<f32> = txVec6;
        let x_680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_678.xy, x_678.z);
        u_xlat5.x = x_680;
        let x_683 : f32 = u_xlat12.z;
        let x_685 : f32 = u_xlat5.x;
        let x_687 : f32 = u_xlat82;
        u_xlat82 = ((x_683 * x_685) + x_687);
        let x_690 : vec4<f32> = u_xlat8;
        let x_691 : vec2<f32> = vec2<f32>(x_690.x, x_690.y);
        let x_693 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_691.x, x_691.y, x_693);
        let x_700 : vec3<f32> = txVec7;
        let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_700.xy, x_700.z);
        u_xlat5.x = x_702;
        let x_705 : f32 = u_xlat12.w;
        let x_707 : f32 = u_xlat5.x;
        let x_709 : f32 = u_xlat82;
        u_xlat82 = ((x_705 * x_707) + x_709);
        let x_712 : vec4<f32> = u_xlat11;
        let x_713 : vec2<f32> = vec2<f32>(x_712.x, x_712.y);
        let x_715 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_713.x, x_713.y, x_715);
        let x_722 : vec3<f32> = txVec8;
        let x_724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_722.xy, x_722.z);
        u_xlat5.x = x_724;
        let x_727 : f32 = u_xlat13.x;
        let x_729 : f32 = u_xlat5.x;
        let x_731 : f32 = u_xlat82;
        u_xlat82 = ((x_727 * x_729) + x_731);
        let x_734 : vec4<f32> = u_xlat11;
        let x_735 : vec2<f32> = vec2<f32>(x_734.z, x_734.w);
        let x_737 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_735.x, x_735.y, x_737);
        let x_744 : vec3<f32> = txVec9;
        let x_746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_744.xy, x_744.z);
        u_xlat5.x = x_746;
        let x_749 : f32 = u_xlat13.y;
        let x_751 : f32 = u_xlat5.x;
        let x_753 : f32 = u_xlat82;
        u_xlat82 = ((x_749 * x_751) + x_753);
        let x_756 : vec4<f32> = u_xlat8;
        let x_757 : vec2<f32> = vec2<f32>(x_756.z, x_756.w);
        let x_759 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_757.x, x_757.y, x_759);
        let x_766 : vec3<f32> = txVec10;
        let x_768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_766.xy, x_766.z);
        u_xlat5.x = x_768;
        let x_771 : f32 = u_xlat13.z;
        let x_773 : f32 = u_xlat5.x;
        let x_775 : f32 = u_xlat82;
        u_xlat82 = ((x_771 * x_773) + x_775);
        let x_778 : vec4<f32> = u_xlat7;
        let x_779 : vec2<f32> = vec2<f32>(x_778.x, x_778.y);
        let x_781 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_779.x, x_779.y, x_781);
        let x_788 : vec3<f32> = txVec11;
        let x_790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_788.xy, x_788.z);
        u_xlat5.x = x_790;
        let x_793 : f32 = u_xlat13.w;
        let x_795 : f32 = u_xlat5.x;
        let x_797 : f32 = u_xlat82;
        u_xlat82 = ((x_793 * x_795) + x_797);
        let x_800 : vec4<f32> = u_xlat7;
        let x_801 : vec2<f32> = vec2<f32>(x_800.z, x_800.w);
        let x_803 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_801.x, x_801.y, x_803);
        let x_810 : vec3<f32> = txVec12;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
        u_xlat5.x = x_812;
        let x_815 : f32 = u_xlat56.x;
        let x_817 : f32 = u_xlat5.x;
        let x_819 : f32 = u_xlat82;
        u_xlat30 = ((x_815 * x_817) + x_819);
      } else {
        let x_822 : vec4<f32> = vs_TEXCOORD8;
        let x_825 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_822.x, x_822.y) * vec2<f32>(x_825.z, x_825.w)) + vec2<f32>(0.5f, 0.5f));
        let x_829 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_829);
        let x_831 : vec4<f32> = vs_TEXCOORD8;
        let x_834 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_837 : vec2<f32> = u_xlat56;
        let x_839 : vec2<f32> = ((vec2<f32>(x_831.x, x_831.y) * vec2<f32>(x_834.z, x_834.w)) + -(x_837));
        let x_840 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_842.x, x_842.x, x_842.y, x_842.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_845 : vec4<f32> = u_xlat6;
        let x_847 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_845.x, x_845.x, x_845.z, x_845.z) * vec4<f32>(x_847.x, x_847.x, x_847.z, x_847.z));
        let x_850 : vec4<f32> = u_xlat7;
        let x_854 : vec2<f32> = (vec2<f32>(x_850.y, x_850.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_855 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_855.x, x_854.x, x_855.z, x_854.y);
        let x_857 : vec4<f32> = u_xlat7;
        let x_860 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_857.x, x_857.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_860.x, x_860.y)));
        let x_864 : vec4<f32> = u_xlat5;
        let x_867 : vec2<f32> = (-(vec2<f32>(x_864.x, x_864.y)) + vec2<f32>(1.0f, 1.0f));
        let x_868 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_867.x, x_868.y, x_867.y, x_868.w);
        let x_870 : vec4<f32> = u_xlat5;
        let x_872 : vec2<f32> = min(vec2<f32>(x_870.x, x_870.y), vec2<f32>(0.0f, 0.0f));
        let x_873 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
        let x_875 : vec4<f32> = u_xlat7;
        let x_878 : vec4<f32> = u_xlat7;
        let x_881 : vec4<f32> = u_xlat6;
        let x_883 : vec2<f32> = ((-(vec2<f32>(x_875.x, x_875.y)) * vec2<f32>(x_878.x, x_878.y)) + vec2<f32>(x_881.x, x_881.z));
        let x_884 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_883.x, x_884.y, x_883.y, x_884.w);
        let x_886 : vec4<f32> = u_xlat5;
        let x_888 : vec2<f32> = max(vec2<f32>(x_886.x, x_886.y), vec2<f32>(0.0f, 0.0f));
        let x_889 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
        let x_891 : vec4<f32> = u_xlat7;
        let x_894 : vec4<f32> = u_xlat7;
        let x_897 : vec4<f32> = u_xlat6;
        let x_899 : vec2<f32> = ((-(vec2<f32>(x_891.x, x_891.y)) * vec2<f32>(x_894.x, x_894.y)) + vec2<f32>(x_897.y, x_897.w));
        let x_900 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_900.x, x_899.x, x_900.z, x_899.y);
        let x_902 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_902 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_906 : f32 = u_xlat6.y;
        u_xlat7.z = (x_906 * 0.08163200318813323975f);
        let x_910 : vec2<f32> = u_xlat57;
        let x_913 : vec2<f32> = (vec2<f32>(x_910.y, x_910.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_914 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_913.x, x_913.y, x_914.z, x_914.w);
        let x_916 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_916.x, x_916.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_920 : f32 = u_xlat6.w;
        u_xlat9.z = (x_920 * 0.08163200318813323975f);
        let x_924 : f32 = u_xlat9.y;
        u_xlat7.x = x_924;
        let x_926 : vec4<f32> = u_xlat5;
        let x_933 : vec2<f32> = ((vec2<f32>(x_926.x, x_926.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_934 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_934.x, x_933.x, x_934.z, x_933.y);
        let x_936 : vec4<f32> = u_xlat5;
        let x_940 : vec2<f32> = ((vec2<f32>(x_936.x, x_936.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_941 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_940.x, x_941.y, x_940.y, x_941.w);
        let x_944 : f32 = u_xlat57.x;
        u_xlat6.y = x_944;
        let x_947 : f32 = u_xlat8.y;
        u_xlat6.w = x_947;
        let x_949 : vec4<f32> = u_xlat6;
        let x_950 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_949 + x_950);
        let x_952 : vec4<f32> = u_xlat5;
        let x_955 : vec2<f32> = ((vec2<f32>(x_952.y, x_952.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_956 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_956.x, x_955.x, x_956.z, x_955.y);
        let x_958 : vec4<f32> = u_xlat5;
        let x_961 : vec2<f32> = ((vec2<f32>(x_958.y, x_958.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_962 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_961.x, x_962.y, x_961.y, x_962.w);
        let x_965 : f32 = u_xlat57.y;
        u_xlat8.y = x_965;
        let x_967 : vec4<f32> = u_xlat8;
        let x_968 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_967 + x_968);
        let x_970 : vec4<f32> = u_xlat6;
        let x_971 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_970 / x_971);
        let x_973 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_973 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_979 : vec4<f32> = u_xlat8;
        let x_980 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_979 / x_980);
        let x_982 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_982 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_984 : vec4<f32> = u_xlat6;
        let x_987 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_984.w, x_984.x, x_984.y, x_984.z) * vec4<f32>(x_987.x, x_987.x, x_987.x, x_987.x));
        let x_990 : vec4<f32> = u_xlat8;
        let x_993 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_990.x, x_990.w, x_990.y, x_990.z) * vec4<f32>(x_993.y, x_993.y, x_993.y, x_993.y));
        let x_996 : vec4<f32> = u_xlat6;
        let x_997 : vec3<f32> = vec3<f32>(x_996.y, x_996.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_997.x, x_998.y, x_997.y, x_997.z);
        let x_1001 : f32 = u_xlat8.x;
        u_xlat9.y = x_1001;
        let x_1003 : vec2<f32> = u_xlat56;
        let x_1006 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1009 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1003.x, x_1003.y, x_1003.x, x_1003.y) * vec4<f32>(x_1006.x, x_1006.y, x_1006.x, x_1006.y)) + vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1009.y));
        let x_1012 : vec2<f32> = u_xlat56;
        let x_1014 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1017 : vec4<f32> = u_xlat9;
        let x_1019 : vec2<f32> = ((x_1012 * vec2<f32>(x_1014.x, x_1014.y)) + vec2<f32>(x_1017.w, x_1017.y));
        let x_1020 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1019.x, x_1019.y, x_1020.z, x_1020.w);
        let x_1023 : f32 = u_xlat9.y;
        u_xlat6.y = x_1023;
        let x_1026 : f32 = u_xlat8.z;
        u_xlat9.y = x_1026;
        let x_1028 : vec2<f32> = u_xlat56;
        let x_1031 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1034 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1028.x, x_1028.y, x_1028.x, x_1028.y) * vec4<f32>(x_1031.x, x_1031.y, x_1031.x, x_1031.y)) + vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1034.y));
        let x_1038 : vec2<f32> = u_xlat56;
        let x_1040 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1043 : vec4<f32> = u_xlat9;
        u_xlat63 = ((x_1038 * vec2<f32>(x_1040.x, x_1040.y)) + vec2<f32>(x_1043.w, x_1043.y));
        let x_1047 : f32 = u_xlat9.y;
        u_xlat6.z = x_1047;
        let x_1049 : vec2<f32> = u_xlat56;
        let x_1052 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1055 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1049.x, x_1049.y, x_1049.x, x_1049.y) * vec4<f32>(x_1052.x, x_1052.y, x_1052.x, x_1052.y)) + vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.z));
        let x_1059 : f32 = u_xlat8.w;
        u_xlat9.y = x_1059;
        let x_1062 : vec2<f32> = u_xlat56;
        let x_1065 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1068 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1062.x, x_1062.y, x_1062.x, x_1062.y) * vec4<f32>(x_1065.x, x_1065.y, x_1065.x, x_1065.y)) + vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1068.y));
        let x_1072 : vec2<f32> = u_xlat56;
        let x_1074 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1077 : vec4<f32> = u_xlat9;
        u_xlat32 = ((x_1072 * vec2<f32>(x_1074.x, x_1074.y)) + vec2<f32>(x_1077.w, x_1077.y));
        let x_1081 : f32 = u_xlat9.y;
        u_xlat6.w = x_1081;
        let x_1084 : vec2<f32> = u_xlat56;
        let x_1086 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat6;
        let x_1091 : vec2<f32> = ((x_1084 * vec2<f32>(x_1086.x, x_1086.y)) + vec2<f32>(x_1089.x, x_1089.w));
        let x_1092 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1091.x, x_1091.y, x_1092.z, x_1092.w);
        let x_1094 : vec4<f32> = u_xlat9;
        let x_1095 : vec3<f32> = vec3<f32>(x_1094.x, x_1094.z, x_1094.w);
        let x_1096 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1095.x, x_1096.y, x_1095.y, x_1095.z);
        let x_1098 : vec2<f32> = u_xlat56;
        let x_1101 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y) * vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y)) + vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1104.y));
        let x_1108 : vec2<f32> = u_xlat56;
        let x_1110 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1113 : vec4<f32> = u_xlat8;
        u_xlat60 = ((x_1108 * vec2<f32>(x_1110.x, x_1110.y)) + vec2<f32>(x_1113.w, x_1113.y));
        let x_1117 : f32 = u_xlat6.x;
        u_xlat8.x = x_1117;
        let x_1119 : vec2<f32> = u_xlat56;
        let x_1121 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1124 : vec4<f32> = u_xlat8;
        u_xlat56 = ((x_1119 * vec2<f32>(x_1121.x, x_1121.y)) + vec2<f32>(x_1124.x, x_1124.y));
        let x_1128 : vec4<f32> = u_xlat5;
        let x_1130 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1128.x, x_1128.x, x_1128.x, x_1128.x) * x_1130);
        let x_1133 : vec4<f32> = u_xlat5;
        let x_1135 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1133.y, x_1133.y, x_1133.y, x_1133.y) * x_1135);
        let x_1138 : vec4<f32> = u_xlat5;
        let x_1140 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1138.z, x_1138.z, x_1138.z, x_1138.z) * x_1140);
        let x_1142 : vec4<f32> = u_xlat5;
        let x_1144 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1142.w, x_1142.w, x_1142.w, x_1142.w) * x_1144);
        let x_1147 : vec4<f32> = u_xlat10;
        let x_1148 : vec2<f32> = vec2<f32>(x_1147.x, x_1147.y);
        let x_1150 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1148.x, x_1148.y, x_1150);
        let x_1157 : vec3<f32> = txVec13;
        let x_1159 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1157.xy, x_1157.z);
        u_xlat6.x = x_1159;
        let x_1162 : vec4<f32> = u_xlat10;
        let x_1163 : vec2<f32> = vec2<f32>(x_1162.z, x_1162.w);
        let x_1165 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1163.x, x_1163.y, x_1165);
        let x_1173 : vec3<f32> = txVec14;
        let x_1175 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1173.xy, x_1173.z);
        u_xlat84 = x_1175;
        let x_1176 : f32 = u_xlat84;
        let x_1178 : f32 = u_xlat16.y;
        u_xlat84 = (x_1176 * x_1178);
        let x_1181 : f32 = u_xlat16.x;
        let x_1183 : f32 = u_xlat6.x;
        let x_1185 : f32 = u_xlat84;
        u_xlat6.x = ((x_1181 * x_1183) + x_1185);
        let x_1189 : vec4<f32> = u_xlat11;
        let x_1190 : vec2<f32> = vec2<f32>(x_1189.x, x_1189.y);
        let x_1192 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1190.x, x_1190.y, x_1192);
        let x_1199 : vec3<f32> = txVec15;
        let x_1201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1199.xy, x_1199.z);
        u_xlat84 = x_1201;
        let x_1203 : f32 = u_xlat16.z;
        let x_1204 : f32 = u_xlat84;
        let x_1207 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1203 * x_1204) + x_1207);
        let x_1211 : vec4<f32> = u_xlat13;
        let x_1212 : vec2<f32> = vec2<f32>(x_1211.x, x_1211.y);
        let x_1214 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1212.x, x_1212.y, x_1214);
        let x_1221 : vec3<f32> = txVec16;
        let x_1223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1221.xy, x_1221.z);
        u_xlat84 = x_1223;
        let x_1225 : f32 = u_xlat16.w;
        let x_1226 : f32 = u_xlat84;
        let x_1229 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1225 * x_1226) + x_1229);
        let x_1233 : vec4<f32> = u_xlat12;
        let x_1234 : vec2<f32> = vec2<f32>(x_1233.x, x_1233.y);
        let x_1236 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
        let x_1243 : vec3<f32> = txVec17;
        let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1243.xy, x_1243.z);
        u_xlat84 = x_1245;
        let x_1247 : f32 = u_xlat17.x;
        let x_1248 : f32 = u_xlat84;
        let x_1251 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1247 * x_1248) + x_1251);
        let x_1255 : vec4<f32> = u_xlat12;
        let x_1256 : vec2<f32> = vec2<f32>(x_1255.z, x_1255.w);
        let x_1258 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec18;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1265.xy, x_1265.z);
        u_xlat84 = x_1267;
        let x_1269 : f32 = u_xlat17.y;
        let x_1270 : f32 = u_xlat84;
        let x_1273 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1269 * x_1270) + x_1273);
        let x_1277 : vec2<f32> = u_xlat63;
        let x_1279 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1277.x, x_1277.y, x_1279);
        let x_1286 : vec3<f32> = txVec19;
        let x_1288 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1286.xy, x_1286.z);
        u_xlat84 = x_1288;
        let x_1290 : f32 = u_xlat17.z;
        let x_1291 : f32 = u_xlat84;
        let x_1294 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1290 * x_1291) + x_1294);
        let x_1298 : vec4<f32> = u_xlat13;
        let x_1299 : vec2<f32> = vec2<f32>(x_1298.z, x_1298.w);
        let x_1301 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1299.x, x_1299.y, x_1301);
        let x_1308 : vec3<f32> = txVec20;
        let x_1310 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1308.xy, x_1308.z);
        u_xlat84 = x_1310;
        let x_1312 : f32 = u_xlat17.w;
        let x_1313 : f32 = u_xlat84;
        let x_1316 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1312 * x_1313) + x_1316);
        let x_1320 : vec4<f32> = u_xlat14;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.x, x_1320.y);
        let x_1323 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec21;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1330.xy, x_1330.z);
        u_xlat84 = x_1332;
        let x_1334 : f32 = u_xlat18.x;
        let x_1335 : f32 = u_xlat84;
        let x_1338 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1334 * x_1335) + x_1338);
        let x_1342 : vec4<f32> = u_xlat14;
        let x_1343 : vec2<f32> = vec2<f32>(x_1342.z, x_1342.w);
        let x_1345 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec22;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1352.xy, x_1352.z);
        u_xlat84 = x_1354;
        let x_1356 : f32 = u_xlat18.y;
        let x_1357 : f32 = u_xlat84;
        let x_1360 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1356 * x_1357) + x_1360);
        let x_1364 : vec2<f32> = u_xlat32;
        let x_1366 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec23;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1373.xy, x_1373.z);
        u_xlat32.x = x_1375;
        let x_1378 : f32 = u_xlat18.z;
        let x_1380 : f32 = u_xlat32.x;
        let x_1383 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1378 * x_1380) + x_1383);
        let x_1387 : vec4<f32> = u_xlat15;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.x, x_1387.y);
        let x_1390 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec24;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1397.xy, x_1397.z);
        u_xlat32.x = x_1399;
        let x_1402 : f32 = u_xlat18.w;
        let x_1404 : f32 = u_xlat32.x;
        let x_1407 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1402 * x_1404) + x_1407);
        let x_1411 : vec4<f32> = u_xlat9;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec25;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat32.x = x_1423;
        let x_1426 : f32 = u_xlat5.x;
        let x_1428 : f32 = u_xlat32.x;
        let x_1431 : f32 = u_xlat6.x;
        u_xlat5.x = ((x_1426 * x_1428) + x_1431);
        let x_1435 : vec4<f32> = u_xlat9;
        let x_1436 : vec2<f32> = vec2<f32>(x_1435.z, x_1435.w);
        let x_1438 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1436.x, x_1436.y, x_1438);
        let x_1445 : vec3<f32> = txVec26;
        let x_1447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1445.xy, x_1445.z);
        u_xlat6.x = x_1447;
        let x_1450 : f32 = u_xlat5.y;
        let x_1452 : f32 = u_xlat6.x;
        let x_1455 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1450 * x_1452) + x_1455);
        let x_1459 : vec2<f32> = u_xlat60;
        let x_1461 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1469 : vec3<f32> = txVec27;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1469.xy, x_1469.z);
        u_xlat31 = x_1471;
        let x_1473 : f32 = u_xlat5.z;
        let x_1474 : f32 = u_xlat31;
        let x_1477 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1473 * x_1474) + x_1477);
        let x_1481 : vec2<f32> = u_xlat56;
        let x_1483 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1481.x, x_1481.y, x_1483);
        let x_1490 : vec3<f32> = txVec28;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1490.xy, x_1490.z);
        u_xlat56.x = x_1492;
        let x_1495 : f32 = u_xlat5.w;
        let x_1497 : f32 = u_xlat56.x;
        let x_1500 : f32 = u_xlat5.x;
        u_xlat30 = ((x_1495 * x_1497) + x_1500);
      }
    }
  } else {
    let x_1504 : vec4<f32> = vs_TEXCOORD8;
    let x_1505 : vec2<f32> = vec2<f32>(x_1504.x, x_1504.y);
    let x_1507 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
    let x_1514 : vec3<f32> = txVec29;
    let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1514.xy, x_1514.z);
    u_xlat30 = x_1516;
  }
  let x_1518 : f32 = x_236.x_MainLightShadowParams.x;
  u_xlat56.x = (-(x_1518) + 1.0f);
  let x_1522 : f32 = u_xlat30;
  let x_1524 : f32 = x_236.x_MainLightShadowParams.x;
  let x_1527 : f32 = u_xlat56.x;
  u_xlat30 = ((x_1522 * x_1524) + x_1527);
  let x_1530 : f32 = vs_TEXCOORD8.z;
  u_xlatb56 = (0.0f >= x_1530);
  let x_1534 : f32 = vs_TEXCOORD8.z;
  u_xlatb82 = (x_1534 >= 1.0f);
  let x_1536 : bool = u_xlatb82;
  let x_1537 : bool = u_xlatb56;
  u_xlatb56 = (x_1536 | x_1537);
  let x_1539 : bool = u_xlatb56;
  let x_1540 : f32 = u_xlat30;
  u_xlat30 = select(x_1540, 1.0f, x_1539);
  let x_1544 : vec3<f32> = vs_TEXCOORD7;
  let x_1548 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1550 : vec3<f32> = (x_1544 + -(x_1548));
  let x_1551 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
  let x_1553 : vec4<f32> = u_xlat5;
  let x_1555 : vec4<f32> = u_xlat5;
  u_xlat56.x = dot(vec3<f32>(x_1553.x, x_1553.y, x_1553.z), vec3<f32>(x_1555.x, x_1555.y, x_1555.z));
  let x_1560 : f32 = u_xlat56.x;
  let x_1562 : f32 = x_236.x_MainLightShadowParams.z;
  let x_1565 : f32 = x_236.x_MainLightShadowParams.w;
  u_xlat82 = ((x_1560 * x_1562) + x_1565);
  let x_1567 : f32 = u_xlat82;
  u_xlat82 = clamp(x_1567, 0.0f, 1.0f);
  let x_1569 : f32 = u_xlat30;
  u_xlat5.x = (-(x_1569) + 1.0f);
  let x_1573 : f32 = u_xlat82;
  let x_1575 : f32 = u_xlat5.x;
  let x_1577 : f32 = u_xlat30;
  u_xlat30 = ((x_1573 * x_1575) + x_1577);
  let x_1587 : f32 = x_1584.x_MainLightCookieTextureFormat;
  u_xlatb82 = !((x_1587 == -1.0f));
  let x_1590 : bool = u_xlatb82;
  if (x_1590) {
    let x_1593 : vec3<f32> = vs_TEXCOORD7;
    let x_1597 : vec4<f32> = x_1584.x_MainLightWorldToLight[1i];
    let x_1599 : vec2<f32> = (vec2<f32>(x_1593.y, x_1593.y) * vec2<f32>(x_1597.x, x_1597.y));
    let x_1600 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1599.x, x_1599.y, x_1600.z, x_1600.w);
    let x_1603 : vec4<f32> = x_1584.x_MainLightWorldToLight[0i];
    let x_1605 : vec3<f32> = vs_TEXCOORD7;
    let x_1608 : vec4<f32> = u_xlat5;
    let x_1610 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(x_1605.x, x_1605.x)) + vec2<f32>(x_1608.x, x_1608.y));
    let x_1611 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1610.x, x_1610.y, x_1611.z, x_1611.w);
    let x_1614 : vec4<f32> = x_1584.x_MainLightWorldToLight[2i];
    let x_1616 : vec3<f32> = vs_TEXCOORD7;
    let x_1619 : vec4<f32> = u_xlat5;
    let x_1621 : vec2<f32> = ((vec2<f32>(x_1614.x, x_1614.y) * vec2<f32>(x_1616.z, x_1616.z)) + vec2<f32>(x_1619.x, x_1619.y));
    let x_1622 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1621.x, x_1621.y, x_1622.z, x_1622.w);
    let x_1624 : vec4<f32> = u_xlat5;
    let x_1628 : vec4<f32> = x_1584.x_MainLightWorldToLight[3i];
    let x_1630 : vec2<f32> = (vec2<f32>(x_1624.x, x_1624.y) + vec2<f32>(x_1628.x, x_1628.y));
    let x_1631 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1630.x, x_1630.y, x_1631.z, x_1631.w);
    let x_1633 : vec4<f32> = u_xlat5;
    let x_1636 : vec2<f32> = ((vec2<f32>(x_1633.x, x_1633.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1637 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1636.x, x_1636.y, x_1637.z, x_1637.w);
    let x_1644 : vec4<f32> = u_xlat5;
    let x_1647 : f32 = x_28.x_GlobalMipBias.x;
    let x_1648 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1644.x, x_1644.y), x_1647);
    u_xlat5 = x_1648;
    let x_1651 : f32 = x_1584.x_MainLightCookieTextureFormat;
    let x_1653 : f32 = x_1584.x_MainLightCookieTextureFormat;
    let x_1655 : f32 = x_1584.x_MainLightCookieTextureFormat;
    let x_1657 : f32 = x_1584.x_MainLightCookieTextureFormat;
    let x_1658 : vec4<f32> = vec4<f32>(x_1651, x_1653, x_1655, x_1657);
    let x_1666 : vec4<bool> = (vec4<f32>(x_1658.x, x_1658.y, x_1658.z, x_1658.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1666.x, x_1666.y);
    let x_1669 : bool = u_xlatb6.y;
    if (x_1669) {
      let x_1675 : f32 = u_xlat5.w;
      x_1671 = x_1675;
    } else {
      let x_1678 : f32 = u_xlat5.x;
      x_1671 = x_1678;
    }
    let x_1679 : f32 = x_1671;
    u_xlat82 = x_1679;
    let x_1681 : bool = u_xlatb6.x;
    if (x_1681) {
      let x_1685 : vec4<f32> = u_xlat5;
      x_1682 = vec3<f32>(x_1685.x, x_1685.y, x_1685.z);
    } else {
      let x_1688 : f32 = u_xlat82;
      x_1682 = vec3<f32>(x_1688, x_1688, x_1688);
    }
    let x_1690 : vec3<f32> = x_1682;
    let x_1691 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1691.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1697 : vec4<f32> = u_xlat5;
  let x_1700 : vec4<f32> = x_28.x_MainLightColor;
  let x_1702 : vec3<f32> = (vec3<f32>(x_1697.x, x_1697.y, x_1697.z) * vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
  let x_1703 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1703.w);
  let x_1706 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1706;
  let x_1710 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1710;
  let x_1714 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1714;
  let x_1716 : vec4<f32> = u_xlat6;
  let x_1719 : vec4<f32> = u_xlat2;
  u_xlat82 = dot(-(vec3<f32>(x_1716.x, x_1716.y, x_1716.z)), vec3<f32>(x_1719.x, x_1719.y, x_1719.z));
  let x_1722 : f32 = u_xlat82;
  let x_1723 : f32 = u_xlat82;
  u_xlat82 = (x_1722 + x_1723);
  let x_1725 : vec4<f32> = u_xlat2;
  let x_1727 : f32 = u_xlat82;
  let x_1731 : vec4<f32> = u_xlat6;
  let x_1734 : vec3<f32> = ((vec3<f32>(x_1725.x, x_1725.y, x_1725.z) * -(vec3<f32>(x_1727, x_1727, x_1727))) + -(vec3<f32>(x_1731.x, x_1731.y, x_1731.z)));
  let x_1735 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);
  let x_1737 : vec4<f32> = u_xlat2;
  let x_1739 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(vec3<f32>(x_1737.x, x_1737.y, x_1737.z), vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
  let x_1742 : f32 = u_xlat82;
  u_xlat82 = clamp(x_1742, 0.0f, 1.0f);
  let x_1744 : f32 = u_xlat82;
  u_xlat82 = (-(x_1744) + 1.0f);
  let x_1747 : f32 = u_xlat82;
  let x_1748 : f32 = u_xlat82;
  u_xlat82 = (x_1747 * x_1748);
  let x_1750 : f32 = u_xlat82;
  let x_1751 : f32 = u_xlat82;
  u_xlat82 = (x_1750 * x_1751);
  let x_1755 : f32 = u_xlat1.x;
  u_xlat83 = ((-(x_1755) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1762 : f32 = u_xlat1.x;
  let x_1763 : f32 = u_xlat83;
  u_xlat1.x = (x_1762 * x_1763);
  let x_1767 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1767 * 6.0f);
  let x_1779 : vec4<f32> = u_xlat7;
  let x_1782 : f32 = u_xlat1.x;
  let x_1783 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1779.x, x_1779.y, x_1779.z), x_1782);
  u_xlat7 = x_1783;
  let x_1785 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1785 + -1.0f);
  let x_1789 : f32 = x_81.unity_SpecCube0_HDR.w;
  let x_1791 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1789 * x_1791) + 1.0f);
  let x_1796 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1796, 0.0f);
  let x_1800 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1800);
  let x_1804 : f32 = u_xlat1.x;
  let x_1806 : f32 = x_81.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1804 * x_1806);
  let x_1810 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1810);
  let x_1814 : f32 = u_xlat1.x;
  let x_1816 : f32 = x_81.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1814 * x_1816);
  let x_1819 : vec4<f32> = u_xlat7;
  let x_1821 : vec3<f32> = u_xlat1;
  let x_1823 : vec3<f32> = (vec3<f32>(x_1819.x, x_1819.y, x_1819.z) * vec3<f32>(x_1821.x, x_1821.x, x_1821.x));
  let x_1824 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1823.x, x_1823.y, x_1823.z, x_1824.w);
  let x_1826 : f32 = u_xlat80;
  let x_1828 : f32 = u_xlat80;
  let x_1832 : vec2<f32> = ((vec2<f32>(x_1826, x_1826) * vec2<f32>(x_1828, x_1828)) + vec2<f32>(-1.0f, 1.0f));
  let x_1833 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1832.x, x_1832.y, x_1833.z, x_1833.w);
  let x_1836 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_1836);
  let x_1840 : vec4<f32> = u_xlat0;
  let x_1843 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1840.x, x_1840.y, x_1840.z)) + vec3<f32>(x_1843, x_1843, x_1843));
  let x_1846 : f32 = u_xlat82;
  let x_1848 : vec3<f32> = u_xlat34;
  let x_1850 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1846, x_1846, x_1846) * x_1848) + vec3<f32>(x_1850.x, x_1850.y, x_1850.z));
  let x_1853 : vec3<f32> = u_xlat1;
  let x_1855 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1853.x, x_1853.x, x_1853.x) * x_1855);
  let x_1857 : vec4<f32> = u_xlat7;
  let x_1859 : vec3<f32> = u_xlat34;
  let x_1860 : vec3<f32> = (vec3<f32>(x_1857.x, x_1857.y, x_1857.z) * x_1859);
  let x_1861 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
  let x_1863 : vec3<f32> = u_xlat27;
  let x_1864 : vec3<f32> = u_xlat29;
  let x_1866 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1863 * x_1864) + vec3<f32>(x_1866.x, x_1866.y, x_1866.z));
  let x_1869 : f32 = u_xlat30;
  let x_1872 : f32 = x_81.unity_LightData.z;
  u_xlat78 = (x_1869 * x_1872);
  let x_1875 : vec4<f32> = u_xlat2;
  let x_1878 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_1875.x, x_1875.y, x_1875.z), vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
  let x_1881 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1881, 0.0f, 1.0f);
  let x_1883 : f32 = u_xlat78;
  let x_1884 : f32 = u_xlat79;
  u_xlat78 = (x_1883 * x_1884);
  let x_1886 : f32 = u_xlat78;
  let x_1888 : vec4<f32> = u_xlat5;
  let x_1890 : vec3<f32> = (vec3<f32>(x_1886, x_1886, x_1886) * vec3<f32>(x_1888.x, x_1888.y, x_1888.z));
  let x_1891 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1891.w);
  let x_1893 : vec4<f32> = u_xlat6;
  let x_1896 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1898 : vec3<f32> = (vec3<f32>(x_1893.x, x_1893.y, x_1893.z) + vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
  let x_1899 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
  let x_1901 : vec4<f32> = u_xlat7;
  let x_1903 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1901.x, x_1901.y, x_1901.z), vec3<f32>(x_1903.x, x_1903.y, x_1903.z));
  let x_1906 : f32 = u_xlat78;
  u_xlat78 = max(x_1906, 1.17549435e-38f);
  let x_1909 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1909);
  let x_1911 : f32 = u_xlat78;
  let x_1913 : vec4<f32> = u_xlat7;
  let x_1915 : vec3<f32> = (vec3<f32>(x_1911, x_1911, x_1911) * vec3<f32>(x_1913.x, x_1913.y, x_1913.z));
  let x_1916 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1916.w);
  let x_1918 : vec4<f32> = u_xlat2;
  let x_1920 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1918.x, x_1918.y, x_1918.z), vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
  let x_1923 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1923, 0.0f, 1.0f);
  let x_1926 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1928 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_1926.x, x_1926.y, x_1926.z), vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
  let x_1931 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1931, 0.0f, 1.0f);
  let x_1933 : f32 = u_xlat78;
  let x_1934 : f32 = u_xlat78;
  u_xlat78 = (x_1933 * x_1934);
  let x_1936 : f32 = u_xlat78;
  let x_1938 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1936 * x_1938) + 1.00001001358032226562f);
  let x_1942 : f32 = u_xlat79;
  let x_1943 : f32 = u_xlat79;
  u_xlat79 = (x_1942 * x_1943);
  let x_1945 : f32 = u_xlat78;
  let x_1946 : f32 = u_xlat78;
  u_xlat78 = (x_1945 * x_1946);
  let x_1948 : f32 = u_xlat79;
  u_xlat79 = max(x_1948, 0.10000000149011611938f);
  let x_1951 : f32 = u_xlat78;
  let x_1952 : f32 = u_xlat79;
  u_xlat78 = (x_1951 * x_1952);
  let x_1955 : f32 = u_xlat3.x;
  let x_1956 : f32 = u_xlat78;
  u_xlat78 = (x_1955 * x_1956);
  let x_1959 : f32 = u_xlat4.x;
  let x_1960 : f32 = u_xlat78;
  u_xlat78 = (x_1959 / x_1960);
  let x_1962 : vec4<f32> = u_xlat0;
  let x_1964 : f32 = u_xlat78;
  let x_1967 : vec3<f32> = u_xlat29;
  let x_1968 : vec3<f32> = ((vec3<f32>(x_1962.x, x_1962.y, x_1962.z) * vec3<f32>(x_1964, x_1964, x_1964)) + x_1967);
  let x_1969 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1968.x, x_1968.y, x_1968.z, x_1969.w);
  let x_1972 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1974 : f32 = x_81.unity_LightData.y;
  u_xlat78 = min(x_1972, x_1974);
  let x_1978 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_1978));
  let x_1982 : f32 = u_xlat56.x;
  let x_1985 : f32 = x_236.x_AdditionalShadowFadeParams.x;
  let x_1988 : f32 = x_236.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_1982 * x_1985) + x_1988);
  let x_1990 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1990, 0.0f, 1.0f);
  let x_1993 : f32 = x_1584.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1995 : f32 = x_1584.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1997 : f32 = x_1584.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1999 : f32 = x_1584.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2000 : vec4<f32> = vec4<f32>(x_1993, x_1995, x_1997, x_1999);
  let x_2006 : vec4<bool> = (vec4<f32>(x_2000.x, x_2000.y, x_2000.z, x_2000.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb30 = vec2<bool>(x_2006.x, x_2006.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2018 : u32 = u_xlatu_loop_1;
    let x_2019 : u32 = u_xlatu78;
    if ((x_2018 < x_2019)) {
    } else {
      break;
    }
    let x_2022 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_2022 >> 2u);
    let x_2026 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2026 & 3u));
    let x_2029 : u32 = u_xlatu82;
    let x_2032 : vec4<f32> = x_81.unity_LightIndices[bitcast<i32>(x_2029)];
    let x_2042 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2047 : vec4<u32> = indexable[x_2042];
    u_xlat82 = dot(x_2032, bitcast<vec4<f32>>(x_2047));
    let x_2051 : f32 = u_xlat82;
    u_xlati82 = i32(x_2051);
    let x_2053 : vec3<f32> = vs_TEXCOORD7;
    let x_2064 : i32 = u_xlati82;
    let x_2066 : vec4<f32> = x_2063.x_AdditionalLightsPosition[x_2064];
    let x_2069 : i32 = u_xlati82;
    let x_2071 : vec4<f32> = x_2063.x_AdditionalLightsPosition[x_2069];
    let x_2073 : vec3<f32> = ((-(x_2053) * vec3<f32>(x_2066.w, x_2066.w, x_2066.w)) + vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
    let x_2074 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
    let x_2076 : vec4<f32> = u_xlat9;
    let x_2078 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2076.x, x_2076.y, x_2076.z), vec3<f32>(x_2078.x, x_2078.y, x_2078.z));
    let x_2081 : f32 = u_xlat83;
    u_xlat83 = max(x_2081, 0.00006103515625f);
    let x_2084 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2084);
    let x_2086 : f32 = u_xlat84;
    let x_2088 : vec4<f32> = u_xlat9;
    let x_2090 : vec3<f32> = (vec3<f32>(x_2086, x_2086, x_2086) * vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
    let x_2091 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
    let x_2094 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_2094);
    let x_2096 : f32 = u_xlat83;
    let x_2097 : i32 = u_xlati82;
    let x_2099 : f32 = x_2063.x_AdditionalLightsAttenuation[x_2097].x;
    u_xlat83 = (x_2096 * x_2099);
    let x_2101 : f32 = u_xlat83;
    let x_2103 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2101) * x_2103) + 1.0f);
    let x_2106 : f32 = u_xlat83;
    u_xlat83 = max(x_2106, 0.0f);
    let x_2108 : f32 = u_xlat83;
    let x_2109 : f32 = u_xlat83;
    u_xlat83 = (x_2108 * x_2109);
    let x_2111 : f32 = u_xlat83;
    let x_2112 : f32 = u_xlat85;
    u_xlat83 = (x_2111 * x_2112);
    let x_2114 : i32 = u_xlati82;
    let x_2116 : vec4<f32> = x_2063.x_AdditionalLightsSpotDir[x_2114];
    let x_2118 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2116.x, x_2116.y, x_2116.z), vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
    let x_2121 : f32 = u_xlat85;
    let x_2122 : i32 = u_xlati82;
    let x_2124 : f32 = x_2063.x_AdditionalLightsAttenuation[x_2122].z;
    let x_2126 : i32 = u_xlati82;
    let x_2128 : f32 = x_2063.x_AdditionalLightsAttenuation[x_2126].w;
    u_xlat85 = ((x_2121 * x_2124) + x_2128);
    let x_2130 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2130, 0.0f, 1.0f);
    let x_2132 : f32 = u_xlat85;
    let x_2133 : f32 = u_xlat85;
    u_xlat85 = (x_2132 * x_2133);
    let x_2135 : f32 = u_xlat83;
    let x_2136 : f32 = u_xlat85;
    u_xlat83 = (x_2135 * x_2136);
    let x_2140 : i32 = u_xlati82;
    let x_2142 : f32 = x_236.x_AdditionalShadowParams[x_2140].w;
    u_xlati85 = i32(x_2142);
    let x_2145 : i32 = u_xlati85;
    u_xlatb87 = (x_2145 >= 0i);
    let x_2147 : bool = u_xlatb87;
    if (x_2147) {
      let x_2151 : i32 = u_xlati82;
      let x_2153 : f32 = x_236.x_AdditionalShadowParams[x_2151].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2153, x_2153, x_2153, x_2153))));
      let x_2157 : bool = u_xlatb87;
      if (x_2157) {
        let x_2162 : vec4<f32> = u_xlat10;
        let x_2165 : vec4<f32> = u_xlat10;
        let x_2168 : vec4<bool> = (abs(vec4<f32>(x_2162.z, x_2162.z, x_2162.y, x_2162.z)) >= abs(vec4<f32>(x_2165.x, x_2165.y, x_2165.x, x_2165.x)));
        let x_2170 : vec3<bool> = vec3<bool>(x_2168.x, x_2168.y, x_2168.z);
        let x_2171 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2170.x, x_2170.y, x_2170.z, x_2171.w);
        let x_2174 : bool = u_xlatb11.y;
        let x_2176 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2174 & x_2176);
        let x_2178 : vec4<f32> = u_xlat10;
        let x_2181 : vec4<bool> = (-(vec4<f32>(x_2178.z, x_2178.y, x_2178.z, x_2178.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2182 : vec3<bool> = vec3<bool>(x_2181.x, x_2181.y, x_2181.w);
        let x_2183 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2182.x, x_2182.y, x_2183.z, x_2182.z);
        let x_2186 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2186);
        let x_2191 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2191);
        let x_2197 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2197);
        let x_2200 : bool = u_xlatb11.z;
        if (x_2200) {
          let x_2205 : f32 = u_xlat11.y;
          x_2201 = x_2205;
        } else {
          let x_2207 : f32 = u_xlat88;
          x_2201 = x_2207;
        }
        let x_2208 : f32 = x_2201;
        u_xlat88 = x_2208;
        let x_2210 : bool = u_xlatb87;
        if (x_2210) {
          let x_2215 : f32 = u_xlat11.x;
          x_2211 = x_2215;
        } else {
          let x_2217 : f32 = u_xlat88;
          x_2211 = x_2217;
        }
        let x_2218 : f32 = x_2211;
        u_xlat87 = x_2218;
        let x_2219 : i32 = u_xlati82;
        let x_2221 : f32 = x_236.x_AdditionalShadowParams[x_2219].w;
        u_xlat88 = trunc(x_2221);
        let x_2223 : f32 = u_xlat87;
        let x_2224 : f32 = u_xlat88;
        u_xlat87 = (x_2223 + x_2224);
        let x_2226 : f32 = u_xlat87;
        u_xlati85 = i32(x_2226);
      }
      let x_2228 : i32 = u_xlati85;
      u_xlati85 = (x_2228 << bitcast<u32>(2i));
      let x_2230 : vec3<f32> = vs_TEXCOORD7;
      let x_2233 : i32 = u_xlati85;
      let x_2236 : i32 = u_xlati85;
      let x_2240 : vec4<f32> = x_236.x_AdditionalLightsWorldToShadow[((x_2233 + 1i) / 4i)][((x_2236 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2230.y, x_2230.y, x_2230.y, x_2230.y) * x_2240);
      let x_2242 : i32 = u_xlati85;
      let x_2244 : i32 = u_xlati85;
      let x_2247 : vec4<f32> = x_236.x_AdditionalLightsWorldToShadow[(x_2242 / 4i)][(x_2244 % 4i)];
      let x_2248 : vec3<f32> = vs_TEXCOORD7;
      let x_2251 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2247 * vec4<f32>(x_2248.x, x_2248.x, x_2248.x, x_2248.x)) + x_2251);
      let x_2253 : i32 = u_xlati85;
      let x_2256 : i32 = u_xlati85;
      let x_2260 : vec4<f32> = x_236.x_AdditionalLightsWorldToShadow[((x_2253 + 2i) / 4i)][((x_2256 + 2i) % 4i)];
      let x_2261 : vec3<f32> = vs_TEXCOORD7;
      let x_2264 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2260 * vec4<f32>(x_2261.z, x_2261.z, x_2261.z, x_2261.z)) + x_2264);
      let x_2266 : vec4<f32> = u_xlat11;
      let x_2267 : i32 = u_xlati85;
      let x_2270 : i32 = u_xlati85;
      let x_2274 : vec4<f32> = x_236.x_AdditionalLightsWorldToShadow[((x_2267 + 3i) / 4i)][((x_2270 + 3i) % 4i)];
      u_xlat11 = (x_2266 + x_2274);
      let x_2276 : vec4<f32> = u_xlat11;
      let x_2278 : vec4<f32> = u_xlat11;
      let x_2280 : vec3<f32> = (vec3<f32>(x_2276.x, x_2276.y, x_2276.z) / vec3<f32>(x_2278.w, x_2278.w, x_2278.w));
      let x_2281 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2280.x, x_2280.y, x_2280.z, x_2281.w);
      let x_2284 : i32 = u_xlati82;
      let x_2286 : f32 = x_236.x_AdditionalShadowParams[x_2284].y;
      u_xlatb85 = (0.0f < x_2286);
      let x_2288 : bool = u_xlatb85;
      if (x_2288) {
        let x_2291 : i32 = u_xlati82;
        let x_2293 : f32 = x_236.x_AdditionalShadowParams[x_2291].y;
        u_xlatb85 = (1.0f == x_2293);
        let x_2295 : bool = u_xlatb85;
        if (x_2295) {
          let x_2298 : vec4<f32> = u_xlat11;
          let x_2302 : vec4<f32> = x_236.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2298.x, x_2298.y, x_2298.x, x_2298.y) + x_2302);
          let x_2305 : vec4<f32> = u_xlat12;
          let x_2306 : vec2<f32> = vec2<f32>(x_2305.x, x_2305.y);
          let x_2308 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2306.x, x_2306.y, x_2308);
          let x_2316 : vec3<f32> = txVec30;
          let x_2318 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2316.xy, x_2316.z);
          u_xlat13.x = x_2318;
          let x_2321 : vec4<f32> = u_xlat12;
          let x_2322 : vec2<f32> = vec2<f32>(x_2321.z, x_2321.w);
          let x_2324 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2322.x, x_2322.y, x_2324);
          let x_2331 : vec3<f32> = txVec31;
          let x_2333 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2331.xy, x_2331.z);
          u_xlat13.y = x_2333;
          let x_2335 : vec4<f32> = u_xlat11;
          let x_2339 : vec4<f32> = x_236.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2335.x, x_2335.y, x_2335.x, x_2335.y) + x_2339);
          let x_2342 : vec4<f32> = u_xlat12;
          let x_2343 : vec2<f32> = vec2<f32>(x_2342.x, x_2342.y);
          let x_2345 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2343.x, x_2343.y, x_2345);
          let x_2352 : vec3<f32> = txVec32;
          let x_2354 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2352.xy, x_2352.z);
          u_xlat13.z = x_2354;
          let x_2357 : vec4<f32> = u_xlat12;
          let x_2358 : vec2<f32> = vec2<f32>(x_2357.z, x_2357.w);
          let x_2360 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2358.x, x_2358.y, x_2360);
          let x_2367 : vec3<f32> = txVec33;
          let x_2369 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2367.xy, x_2367.z);
          u_xlat13.w = x_2369;
          let x_2371 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2371, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2374 : i32 = u_xlati82;
          let x_2376 : f32 = x_236.x_AdditionalShadowParams[x_2374].y;
          u_xlatb87 = (2.0f == x_2376);
          let x_2378 : bool = u_xlatb87;
          if (x_2378) {
            let x_2381 : vec4<f32> = u_xlat11;
            let x_2385 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2388 : vec2<f32> = ((vec2<f32>(x_2381.x, x_2381.y) * vec2<f32>(x_2385.z, x_2385.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2389 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2388.x, x_2388.y, x_2389.z, x_2389.w);
            let x_2391 : vec4<f32> = u_xlat12;
            let x_2393 : vec2<f32> = floor(vec2<f32>(x_2391.x, x_2391.y));
            let x_2394 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2393.x, x_2393.y, x_2394.z, x_2394.w);
            let x_2397 : vec4<f32> = u_xlat11;
            let x_2400 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2403 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2397.x, x_2397.y) * vec2<f32>(x_2400.z, x_2400.w)) + -(vec2<f32>(x_2403.x, x_2403.y)));
            let x_2407 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2407.x, x_2407.x, x_2407.y, x_2407.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2410 : vec4<f32> = u_xlat13;
            let x_2412 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2410.x, x_2410.x, x_2410.z, x_2410.z) * vec4<f32>(x_2412.x, x_2412.x, x_2412.z, x_2412.z));
            let x_2415 : vec4<f32> = u_xlat14;
            let x_2417 : vec2<f32> = (vec2<f32>(x_2415.y, x_2415.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2418 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2417.x, x_2418.y, x_2417.y, x_2418.w);
            let x_2420 : vec4<f32> = u_xlat14;
            let x_2423 : vec2<f32> = u_xlat64;
            let x_2425 : vec2<f32> = ((vec2<f32>(x_2420.x, x_2420.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2423));
            let x_2426 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2425.x, x_2425.y, x_2426.z, x_2426.w);
            let x_2429 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2429) + vec2<f32>(1.0f, 1.0f));
            let x_2432 : vec2<f32> = u_xlat64;
            let x_2433 : vec2<f32> = min(x_2432, vec2<f32>(0.0f, 0.0f));
            let x_2434 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2433.x, x_2433.y, x_2434.z, x_2434.w);
            let x_2436 : vec4<f32> = u_xlat15;
            let x_2439 : vec4<f32> = u_xlat15;
            let x_2442 : vec2<f32> = u_xlat66;
            let x_2443 : vec2<f32> = ((-(vec2<f32>(x_2436.x, x_2436.y)) * vec2<f32>(x_2439.x, x_2439.y)) + x_2442);
            let x_2444 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2443.x, x_2443.y, x_2444.z, x_2444.w);
            let x_2446 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2446, vec2<f32>(0.0f, 0.0f));
            let x_2448 : vec2<f32> = u_xlat64;
            let x_2450 : vec2<f32> = u_xlat64;
            let x_2452 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2448) * x_2450) + vec2<f32>(x_2452.y, x_2452.w));
            let x_2455 : vec4<f32> = u_xlat15;
            let x_2457 : vec2<f32> = (vec2<f32>(x_2455.x, x_2455.y) + vec2<f32>(1.0f, 1.0f));
            let x_2458 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2457.x, x_2457.y, x_2458.z, x_2458.w);
            let x_2460 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2460 + vec2<f32>(1.0f, 1.0f));
            let x_2462 : vec4<f32> = u_xlat14;
            let x_2464 : vec2<f32> = (vec2<f32>(x_2462.x, x_2462.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2465 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2464.x, x_2464.y, x_2465.z, x_2465.w);
            let x_2467 : vec2<f32> = u_xlat66;
            let x_2468 : vec2<f32> = (x_2467 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2469 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2468.x, x_2468.y, x_2469.z, x_2469.w);
            let x_2471 : vec4<f32> = u_xlat15;
            let x_2473 : vec2<f32> = (vec2<f32>(x_2471.x, x_2471.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2474 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2473.x, x_2473.y, x_2474.z, x_2474.w);
            let x_2476 : vec2<f32> = u_xlat64;
            let x_2477 : vec2<f32> = (x_2476 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2478 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2477.x, x_2477.y, x_2478.z, x_2478.w);
            let x_2480 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2480.y, x_2480.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2484 : f32 = u_xlat15.x;
            u_xlat16.z = x_2484;
            let x_2487 : f32 = u_xlat64.x;
            u_xlat16.w = x_2487;
            let x_2490 : f32 = u_xlat17.x;
            u_xlat14.z = x_2490;
            let x_2493 : f32 = u_xlat13.x;
            u_xlat14.w = x_2493;
            let x_2495 : vec4<f32> = u_xlat14;
            let x_2497 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2495.z, x_2495.w, x_2495.x, x_2495.z) + vec4<f32>(x_2497.z, x_2497.w, x_2497.x, x_2497.z));
            let x_2501 : f32 = u_xlat16.y;
            u_xlat15.z = x_2501;
            let x_2504 : f32 = u_xlat64.y;
            u_xlat15.w = x_2504;
            let x_2507 : f32 = u_xlat14.y;
            u_xlat17.z = x_2507;
            let x_2510 : f32 = u_xlat13.z;
            u_xlat17.w = x_2510;
            let x_2512 : vec4<f32> = u_xlat15;
            let x_2514 : vec4<f32> = u_xlat17;
            let x_2516 : vec3<f32> = (vec3<f32>(x_2512.z, x_2512.y, x_2512.w) + vec3<f32>(x_2514.z, x_2514.y, x_2514.w));
            let x_2517 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2516.x, x_2516.y, x_2516.z, x_2517.w);
            let x_2519 : vec4<f32> = u_xlat14;
            let x_2521 : vec4<f32> = u_xlat18;
            let x_2523 : vec3<f32> = (vec3<f32>(x_2519.x, x_2519.z, x_2519.w) / vec3<f32>(x_2521.z, x_2521.w, x_2521.y));
            let x_2524 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2523.x, x_2523.y, x_2523.z, x_2524.w);
            let x_2526 : vec4<f32> = u_xlat14;
            let x_2528 : vec3<f32> = (vec3<f32>(x_2526.x, x_2526.y, x_2526.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2529 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2528.x, x_2528.y, x_2528.z, x_2529.w);
            let x_2531 : vec4<f32> = u_xlat17;
            let x_2533 : vec4<f32> = u_xlat13;
            let x_2535 : vec3<f32> = (vec3<f32>(x_2531.z, x_2531.y, x_2531.w) / vec3<f32>(x_2533.x, x_2533.y, x_2533.z));
            let x_2536 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);
            let x_2538 : vec4<f32> = u_xlat15;
            let x_2540 : vec3<f32> = (vec3<f32>(x_2538.x, x_2538.y, x_2538.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2541 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
            let x_2543 : vec4<f32> = u_xlat14;
            let x_2546 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2548 : vec3<f32> = (vec3<f32>(x_2543.y, x_2543.x, x_2543.z) * vec3<f32>(x_2546.x, x_2546.x, x_2546.x));
            let x_2549 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2548.x, x_2548.y, x_2548.z, x_2549.w);
            let x_2551 : vec4<f32> = u_xlat15;
            let x_2554 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2556 : vec3<f32> = (vec3<f32>(x_2551.x, x_2551.y, x_2551.z) * vec3<f32>(x_2554.y, x_2554.y, x_2554.y));
            let x_2557 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2556.x, x_2556.y, x_2556.z, x_2557.w);
            let x_2560 : f32 = u_xlat15.x;
            u_xlat14.w = x_2560;
            let x_2562 : vec4<f32> = u_xlat12;
            let x_2565 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2568 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2562.x, x_2562.y, x_2562.x, x_2562.y) * vec4<f32>(x_2565.x, x_2565.y, x_2565.x, x_2565.y)) + vec4<f32>(x_2568.y, x_2568.w, x_2568.x, x_2568.w));
            let x_2571 : vec4<f32> = u_xlat12;
            let x_2574 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2577 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2571.x, x_2571.y) * vec2<f32>(x_2574.x, x_2574.y)) + vec2<f32>(x_2577.z, x_2577.w));
            let x_2581 : f32 = u_xlat14.y;
            u_xlat15.w = x_2581;
            let x_2583 : vec4<f32> = u_xlat15;
            let x_2584 : vec2<f32> = vec2<f32>(x_2583.y, x_2583.z);
            let x_2585 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2585.x, x_2584.x, x_2585.z, x_2584.y);
            let x_2587 : vec4<f32> = u_xlat12;
            let x_2590 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2593 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2587.x, x_2587.y, x_2587.x, x_2587.y) * vec4<f32>(x_2590.x, x_2590.y, x_2590.x, x_2590.y)) + vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2593.y));
            let x_2596 : vec4<f32> = u_xlat12;
            let x_2599 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2602 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2596.x, x_2596.y, x_2596.x, x_2596.y) * vec4<f32>(x_2599.x, x_2599.y, x_2599.x, x_2599.y)) + vec4<f32>(x_2602.w, x_2602.y, x_2602.w, x_2602.z));
            let x_2605 : vec4<f32> = u_xlat12;
            let x_2608 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2611 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2605.x, x_2605.y, x_2605.x, x_2605.y) * vec4<f32>(x_2608.x, x_2608.y, x_2608.x, x_2608.y)) + vec4<f32>(x_2611.x, x_2611.w, x_2611.z, x_2611.w));
            let x_2615 : vec4<f32> = u_xlat13;
            let x_2617 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2615.x, x_2615.x, x_2615.x, x_2615.y) * vec4<f32>(x_2617.z, x_2617.w, x_2617.y, x_2617.z));
            let x_2621 : vec4<f32> = u_xlat13;
            let x_2623 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2621.y, x_2621.y, x_2621.z, x_2621.z) * x_2623);
            let x_2626 : f32 = u_xlat13.z;
            let x_2628 : f32 = u_xlat18.y;
            u_xlat87 = (x_2626 * x_2628);
            let x_2631 : vec4<f32> = u_xlat16;
            let x_2632 : vec2<f32> = vec2<f32>(x_2631.x, x_2631.y);
            let x_2634 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2632.x, x_2632.y, x_2634);
            let x_2641 : vec3<f32> = txVec34;
            let x_2643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2641.xy, x_2641.z);
            u_xlat88 = x_2643;
            let x_2645 : vec4<f32> = u_xlat16;
            let x_2646 : vec2<f32> = vec2<f32>(x_2645.z, x_2645.w);
            let x_2648 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2646.x, x_2646.y, x_2648);
            let x_2656 : vec3<f32> = txVec35;
            let x_2658 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2656.xy, x_2656.z);
            u_xlat89 = x_2658;
            let x_2659 : f32 = u_xlat89;
            let x_2661 : f32 = u_xlat19.y;
            u_xlat89 = (x_2659 * x_2661);
            let x_2664 : f32 = u_xlat19.x;
            let x_2665 : f32 = u_xlat88;
            let x_2667 : f32 = u_xlat89;
            u_xlat88 = ((x_2664 * x_2665) + x_2667);
            let x_2670 : vec2<f32> = u_xlat64;
            let x_2672 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2670.x, x_2670.y, x_2672);
            let x_2679 : vec3<f32> = txVec36;
            let x_2681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2679.xy, x_2679.z);
            u_xlat89 = x_2681;
            let x_2683 : f32 = u_xlat19.z;
            let x_2684 : f32 = u_xlat89;
            let x_2686 : f32 = u_xlat88;
            u_xlat88 = ((x_2683 * x_2684) + x_2686);
            let x_2689 : vec4<f32> = u_xlat15;
            let x_2690 : vec2<f32> = vec2<f32>(x_2689.x, x_2689.y);
            let x_2692 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2690.x, x_2690.y, x_2692);
            let x_2699 : vec3<f32> = txVec37;
            let x_2701 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2699.xy, x_2699.z);
            u_xlat89 = x_2701;
            let x_2703 : f32 = u_xlat19.w;
            let x_2704 : f32 = u_xlat89;
            let x_2706 : f32 = u_xlat88;
            u_xlat88 = ((x_2703 * x_2704) + x_2706);
            let x_2709 : vec4<f32> = u_xlat17;
            let x_2710 : vec2<f32> = vec2<f32>(x_2709.x, x_2709.y);
            let x_2712 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2710.x, x_2710.y, x_2712);
            let x_2719 : vec3<f32> = txVec38;
            let x_2721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2719.xy, x_2719.z);
            u_xlat89 = x_2721;
            let x_2723 : f32 = u_xlat20.x;
            let x_2724 : f32 = u_xlat89;
            let x_2726 : f32 = u_xlat88;
            u_xlat88 = ((x_2723 * x_2724) + x_2726);
            let x_2729 : vec4<f32> = u_xlat17;
            let x_2730 : vec2<f32> = vec2<f32>(x_2729.z, x_2729.w);
            let x_2732 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2730.x, x_2730.y, x_2732);
            let x_2739 : vec3<f32> = txVec39;
            let x_2741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2739.xy, x_2739.z);
            u_xlat89 = x_2741;
            let x_2743 : f32 = u_xlat20.y;
            let x_2744 : f32 = u_xlat89;
            let x_2746 : f32 = u_xlat88;
            u_xlat88 = ((x_2743 * x_2744) + x_2746);
            let x_2749 : vec4<f32> = u_xlat15;
            let x_2750 : vec2<f32> = vec2<f32>(x_2749.z, x_2749.w);
            let x_2752 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2750.x, x_2750.y, x_2752);
            let x_2759 : vec3<f32> = txVec40;
            let x_2761 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2759.xy, x_2759.z);
            u_xlat89 = x_2761;
            let x_2763 : f32 = u_xlat20.z;
            let x_2764 : f32 = u_xlat89;
            let x_2766 : f32 = u_xlat88;
            u_xlat88 = ((x_2763 * x_2764) + x_2766);
            let x_2769 : vec4<f32> = u_xlat14;
            let x_2770 : vec2<f32> = vec2<f32>(x_2769.x, x_2769.y);
            let x_2772 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2770.x, x_2770.y, x_2772);
            let x_2779 : vec3<f32> = txVec41;
            let x_2781 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2779.xy, x_2779.z);
            u_xlat89 = x_2781;
            let x_2783 : f32 = u_xlat20.w;
            let x_2784 : f32 = u_xlat89;
            let x_2786 : f32 = u_xlat88;
            u_xlat88 = ((x_2783 * x_2784) + x_2786);
            let x_2789 : vec4<f32> = u_xlat14;
            let x_2790 : vec2<f32> = vec2<f32>(x_2789.z, x_2789.w);
            let x_2792 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2790.x, x_2790.y, x_2792);
            let x_2799 : vec3<f32> = txVec42;
            let x_2801 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2799.xy, x_2799.z);
            u_xlat89 = x_2801;
            let x_2802 : f32 = u_xlat87;
            let x_2803 : f32 = u_xlat89;
            let x_2805 : f32 = u_xlat88;
            u_xlat85 = ((x_2802 * x_2803) + x_2805);
          } else {
            let x_2808 : vec4<f32> = u_xlat11;
            let x_2811 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2814 : vec2<f32> = ((vec2<f32>(x_2808.x, x_2808.y) * vec2<f32>(x_2811.z, x_2811.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2815 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2814.x, x_2814.y, x_2815.z, x_2815.w);
            let x_2817 : vec4<f32> = u_xlat12;
            let x_2819 : vec2<f32> = floor(vec2<f32>(x_2817.x, x_2817.y));
            let x_2820 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2819.x, x_2819.y, x_2820.z, x_2820.w);
            let x_2822 : vec4<f32> = u_xlat11;
            let x_2825 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2828 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2822.x, x_2822.y) * vec2<f32>(x_2825.z, x_2825.w)) + -(vec2<f32>(x_2828.x, x_2828.y)));
            let x_2832 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2832.x, x_2832.x, x_2832.y, x_2832.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2835 : vec4<f32> = u_xlat13;
            let x_2837 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2835.x, x_2835.x, x_2835.z, x_2835.z) * vec4<f32>(x_2837.x, x_2837.x, x_2837.z, x_2837.z));
            let x_2840 : vec4<f32> = u_xlat14;
            let x_2842 : vec2<f32> = (vec2<f32>(x_2840.y, x_2840.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2843 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2843.x, x_2842.x, x_2843.z, x_2842.y);
            let x_2845 : vec4<f32> = u_xlat14;
            let x_2848 : vec2<f32> = u_xlat64;
            let x_2850 : vec2<f32> = ((vec2<f32>(x_2845.x, x_2845.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2848));
            let x_2851 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2850.x, x_2851.y, x_2850.y, x_2851.w);
            let x_2853 : vec2<f32> = u_xlat64;
            let x_2855 : vec2<f32> = (-(x_2853) + vec2<f32>(1.0f, 1.0f));
            let x_2856 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2855.x, x_2855.y, x_2856.z, x_2856.w);
            let x_2858 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2858, vec2<f32>(0.0f, 0.0f));
            let x_2860 : vec2<f32> = u_xlat66;
            let x_2862 : vec2<f32> = u_xlat66;
            let x_2864 : vec4<f32> = u_xlat14;
            let x_2866 : vec2<f32> = ((-(x_2860) * x_2862) + vec2<f32>(x_2864.x, x_2864.y));
            let x_2867 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2866.x, x_2866.y, x_2867.z, x_2867.w);
            let x_2869 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2869, vec2<f32>(0.0f, 0.0f));
            let x_2872 : vec2<f32> = u_xlat66;
            let x_2874 : vec2<f32> = u_xlat66;
            let x_2876 : vec4<f32> = u_xlat13;
            let x_2878 : vec2<f32> = ((-(x_2872) * x_2874) + vec2<f32>(x_2876.y, x_2876.w));
            let x_2879 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2878.x, x_2879.y, x_2878.y);
            let x_2881 : vec4<f32> = u_xlat14;
            let x_2884 : vec2<f32> = (vec2<f32>(x_2881.x, x_2881.y) + vec2<f32>(2.0f, 2.0f));
            let x_2885 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2884.x, x_2884.y, x_2885.z, x_2885.w);
            let x_2887 : vec3<f32> = u_xlat39;
            let x_2889 : vec2<f32> = (vec2<f32>(x_2887.x, x_2887.z) + vec2<f32>(2.0f, 2.0f));
            let x_2890 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2890.x, x_2889.x, x_2890.z, x_2889.y);
            let x_2893 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2893 * 0.08163200318813323975f);
            let x_2896 : vec4<f32> = u_xlat13;
            let x_2899 : vec3<f32> = (vec3<f32>(x_2896.z, x_2896.x, x_2896.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2900 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2899.x, x_2899.y, x_2899.z, x_2900.w);
            let x_2902 : vec4<f32> = u_xlat14;
            let x_2904 : vec2<f32> = (vec2<f32>(x_2902.x, x_2902.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2905 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2904.x, x_2904.y, x_2905.z, x_2905.w);
            let x_2908 : f32 = u_xlat17.y;
            u_xlat16.x = x_2908;
            let x_2910 : vec2<f32> = u_xlat64;
            let x_2913 : vec2<f32> = ((vec2<f32>(x_2910.x, x_2910.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2914 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2914.x, x_2913.x, x_2914.z, x_2913.y);
            let x_2916 : vec2<f32> = u_xlat64;
            let x_2919 : vec2<f32> = ((vec2<f32>(x_2916.x, x_2916.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2920 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2919.x, x_2920.y, x_2919.y, x_2920.w);
            let x_2923 : f32 = u_xlat13.x;
            u_xlat14.y = x_2923;
            let x_2926 : f32 = u_xlat15.y;
            u_xlat14.w = x_2926;
            let x_2928 : vec4<f32> = u_xlat14;
            let x_2929 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2928 + x_2929);
            let x_2931 : vec2<f32> = u_xlat64;
            let x_2934 : vec2<f32> = ((vec2<f32>(x_2931.y, x_2931.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2935 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2935.x, x_2934.x, x_2935.z, x_2934.y);
            let x_2937 : vec2<f32> = u_xlat64;
            let x_2940 : vec2<f32> = ((vec2<f32>(x_2937.y, x_2937.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2941 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2940.x, x_2941.y, x_2940.y, x_2941.w);
            let x_2944 : f32 = u_xlat13.y;
            u_xlat15.y = x_2944;
            let x_2946 : vec4<f32> = u_xlat15;
            let x_2947 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2946 + x_2947);
            let x_2949 : vec4<f32> = u_xlat14;
            let x_2950 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2949 / x_2950);
            let x_2952 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2952 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2954 : vec4<f32> = u_xlat15;
            let x_2955 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2954 / x_2955);
            let x_2957 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2957 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2959 : vec4<f32> = u_xlat14;
            let x_2962 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2959.w, x_2959.x, x_2959.y, x_2959.z) * vec4<f32>(x_2962.x, x_2962.x, x_2962.x, x_2962.x));
            let x_2965 : vec4<f32> = u_xlat15;
            let x_2968 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2965.x, x_2965.w, x_2965.y, x_2965.z) * vec4<f32>(x_2968.y, x_2968.y, x_2968.y, x_2968.y));
            let x_2971 : vec4<f32> = u_xlat14;
            let x_2972 : vec3<f32> = vec3<f32>(x_2971.y, x_2971.z, x_2971.w);
            let x_2973 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2972.x, x_2973.y, x_2972.y, x_2972.z);
            let x_2976 : f32 = u_xlat15.x;
            u_xlat17.y = x_2976;
            let x_2978 : vec4<f32> = u_xlat12;
            let x_2981 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2984 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_2978.x, x_2978.y, x_2978.x, x_2978.y) * vec4<f32>(x_2981.x, x_2981.y, x_2981.x, x_2981.y)) + vec4<f32>(x_2984.x, x_2984.y, x_2984.z, x_2984.y));
            let x_2987 : vec4<f32> = u_xlat12;
            let x_2990 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_2993 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_2987.x, x_2987.y) * vec2<f32>(x_2990.x, x_2990.y)) + vec2<f32>(x_2993.w, x_2993.y));
            let x_2997 : f32 = u_xlat17.y;
            u_xlat14.y = x_2997;
            let x_3000 : f32 = u_xlat15.z;
            u_xlat17.y = x_3000;
            let x_3002 : vec4<f32> = u_xlat12;
            let x_3005 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_3008 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3002.x, x_3002.y, x_3002.x, x_3002.y) * vec4<f32>(x_3005.x, x_3005.y, x_3005.x, x_3005.y)) + vec4<f32>(x_3008.x, x_3008.y, x_3008.z, x_3008.y));
            let x_3011 : vec4<f32> = u_xlat12;
            let x_3014 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_3017 : vec4<f32> = u_xlat17;
            let x_3019 : vec2<f32> = ((vec2<f32>(x_3011.x, x_3011.y) * vec2<f32>(x_3014.x, x_3014.y)) + vec2<f32>(x_3017.w, x_3017.y));
            let x_3020 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3019.x, x_3019.y, x_3020.z, x_3020.w);
            let x_3023 : f32 = u_xlat17.y;
            u_xlat14.z = x_3023;
            let x_3026 : vec4<f32> = u_xlat12;
            let x_3029 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_3032 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3026.x, x_3026.y, x_3026.x, x_3026.y) * vec4<f32>(x_3029.x, x_3029.y, x_3029.x, x_3029.y)) + vec4<f32>(x_3032.x, x_3032.y, x_3032.x, x_3032.z));
            let x_3036 : f32 = u_xlat15.w;
            u_xlat17.y = x_3036;
            let x_3039 : vec4<f32> = u_xlat12;
            let x_3042 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_3045 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3039.x, x_3039.y, x_3039.x, x_3039.y) * vec4<f32>(x_3042.x, x_3042.y, x_3042.x, x_3042.y)) + vec4<f32>(x_3045.x, x_3045.y, x_3045.z, x_3045.y));
            let x_3049 : vec4<f32> = u_xlat12;
            let x_3052 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_3055 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3049.x, x_3049.y) * vec2<f32>(x_3052.x, x_3052.y)) + vec2<f32>(x_3055.w, x_3055.y));
            let x_3059 : f32 = u_xlat17.y;
            u_xlat14.w = x_3059;
            let x_3062 : vec4<f32> = u_xlat12;
            let x_3065 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_3068 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3062.x, x_3062.y) * vec2<f32>(x_3065.x, x_3065.y)) + vec2<f32>(x_3068.x, x_3068.w));
            let x_3071 : vec4<f32> = u_xlat17;
            let x_3072 : vec3<f32> = vec3<f32>(x_3071.x, x_3071.z, x_3071.w);
            let x_3073 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3072.x, x_3073.y, x_3072.y, x_3072.z);
            let x_3075 : vec4<f32> = u_xlat12;
            let x_3078 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_3081 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3075.x, x_3075.y, x_3075.x, x_3075.y) * vec4<f32>(x_3078.x, x_3078.y, x_3078.x, x_3078.y)) + vec4<f32>(x_3081.x, x_3081.y, x_3081.z, x_3081.y));
            let x_3085 : vec4<f32> = u_xlat12;
            let x_3088 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_3091 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3085.x, x_3085.y) * vec2<f32>(x_3088.x, x_3088.y)) + vec2<f32>(x_3091.w, x_3091.y));
            let x_3095 : f32 = u_xlat14.x;
            u_xlat15.x = x_3095;
            let x_3097 : vec4<f32> = u_xlat12;
            let x_3100 : vec4<f32> = x_236.x_AdditionalShadowmapSize;
            let x_3103 : vec4<f32> = u_xlat15;
            let x_3105 : vec2<f32> = ((vec2<f32>(x_3097.x, x_3097.y) * vec2<f32>(x_3100.x, x_3100.y)) + vec2<f32>(x_3103.x, x_3103.y));
            let x_3106 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3105.x, x_3105.y, x_3106.z, x_3106.w);
            let x_3109 : vec4<f32> = u_xlat13;
            let x_3111 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3109.x, x_3109.x, x_3109.x, x_3109.x) * x_3111);
            let x_3114 : vec4<f32> = u_xlat13;
            let x_3116 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3114.y, x_3114.y, x_3114.y, x_3114.y) * x_3116);
            let x_3119 : vec4<f32> = u_xlat13;
            let x_3121 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3119.z, x_3119.z, x_3119.z, x_3119.z) * x_3121);
            let x_3123 : vec4<f32> = u_xlat13;
            let x_3125 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3123.w, x_3123.w, x_3123.w, x_3123.w) * x_3125);
            let x_3128 : vec4<f32> = u_xlat18;
            let x_3129 : vec2<f32> = vec2<f32>(x_3128.x, x_3128.y);
            let x_3131 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3129.x, x_3129.y, x_3131);
            let x_3138 : vec3<f32> = txVec43;
            let x_3140 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3138.xy, x_3138.z);
            u_xlat87 = x_3140;
            let x_3142 : vec4<f32> = u_xlat18;
            let x_3143 : vec2<f32> = vec2<f32>(x_3142.z, x_3142.w);
            let x_3145 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
            let x_3152 : vec3<f32> = txVec44;
            let x_3154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
            u_xlat88 = x_3154;
            let x_3155 : f32 = u_xlat88;
            let x_3157 : f32 = u_xlat23.y;
            u_xlat88 = (x_3155 * x_3157);
            let x_3160 : f32 = u_xlat23.x;
            let x_3161 : f32 = u_xlat87;
            let x_3163 : f32 = u_xlat88;
            u_xlat87 = ((x_3160 * x_3161) + x_3163);
            let x_3166 : vec2<f32> = u_xlat64;
            let x_3168 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3166.x, x_3166.y, x_3168);
            let x_3175 : vec3<f32> = txVec45;
            let x_3177 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3175.xy, x_3175.z);
            u_xlat88 = x_3177;
            let x_3179 : f32 = u_xlat23.z;
            let x_3180 : f32 = u_xlat88;
            let x_3182 : f32 = u_xlat87;
            u_xlat87 = ((x_3179 * x_3180) + x_3182);
            let x_3185 : vec4<f32> = u_xlat21;
            let x_3186 : vec2<f32> = vec2<f32>(x_3185.x, x_3185.y);
            let x_3188 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3186.x, x_3186.y, x_3188);
            let x_3195 : vec3<f32> = txVec46;
            let x_3197 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3195.xy, x_3195.z);
            u_xlat88 = x_3197;
            let x_3199 : f32 = u_xlat23.w;
            let x_3200 : f32 = u_xlat88;
            let x_3202 : f32 = u_xlat87;
            u_xlat87 = ((x_3199 * x_3200) + x_3202);
            let x_3205 : vec4<f32> = u_xlat19;
            let x_3206 : vec2<f32> = vec2<f32>(x_3205.x, x_3205.y);
            let x_3208 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3206.x, x_3206.y, x_3208);
            let x_3215 : vec3<f32> = txVec47;
            let x_3217 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3215.xy, x_3215.z);
            u_xlat88 = x_3217;
            let x_3219 : f32 = u_xlat24.x;
            let x_3220 : f32 = u_xlat88;
            let x_3222 : f32 = u_xlat87;
            u_xlat87 = ((x_3219 * x_3220) + x_3222);
            let x_3225 : vec4<f32> = u_xlat19;
            let x_3226 : vec2<f32> = vec2<f32>(x_3225.z, x_3225.w);
            let x_3228 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3226.x, x_3226.y, x_3228);
            let x_3235 : vec3<f32> = txVec48;
            let x_3237 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3235.xy, x_3235.z);
            u_xlat88 = x_3237;
            let x_3239 : f32 = u_xlat24.y;
            let x_3240 : f32 = u_xlat88;
            let x_3242 : f32 = u_xlat87;
            u_xlat87 = ((x_3239 * x_3240) + x_3242);
            let x_3245 : vec4<f32> = u_xlat20;
            let x_3246 : vec2<f32> = vec2<f32>(x_3245.x, x_3245.y);
            let x_3248 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3246.x, x_3246.y, x_3248);
            let x_3255 : vec3<f32> = txVec49;
            let x_3257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3255.xy, x_3255.z);
            u_xlat88 = x_3257;
            let x_3259 : f32 = u_xlat24.z;
            let x_3260 : f32 = u_xlat88;
            let x_3262 : f32 = u_xlat87;
            u_xlat87 = ((x_3259 * x_3260) + x_3262);
            let x_3265 : vec4<f32> = u_xlat21;
            let x_3266 : vec2<f32> = vec2<f32>(x_3265.z, x_3265.w);
            let x_3268 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3266.x, x_3266.y, x_3268);
            let x_3275 : vec3<f32> = txVec50;
            let x_3277 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3275.xy, x_3275.z);
            u_xlat88 = x_3277;
            let x_3279 : f32 = u_xlat24.w;
            let x_3280 : f32 = u_xlat88;
            let x_3282 : f32 = u_xlat87;
            u_xlat87 = ((x_3279 * x_3280) + x_3282);
            let x_3285 : vec4<f32> = u_xlat22;
            let x_3286 : vec2<f32> = vec2<f32>(x_3285.x, x_3285.y);
            let x_3288 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3286.x, x_3286.y, x_3288);
            let x_3295 : vec3<f32> = txVec51;
            let x_3297 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3295.xy, x_3295.z);
            u_xlat88 = x_3297;
            let x_3299 : f32 = u_xlat25.x;
            let x_3300 : f32 = u_xlat88;
            let x_3302 : f32 = u_xlat87;
            u_xlat87 = ((x_3299 * x_3300) + x_3302);
            let x_3305 : vec4<f32> = u_xlat22;
            let x_3306 : vec2<f32> = vec2<f32>(x_3305.z, x_3305.w);
            let x_3308 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3306.x, x_3306.y, x_3308);
            let x_3315 : vec3<f32> = txVec52;
            let x_3317 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3315.xy, x_3315.z);
            u_xlat88 = x_3317;
            let x_3319 : f32 = u_xlat25.y;
            let x_3320 : f32 = u_xlat88;
            let x_3322 : f32 = u_xlat87;
            u_xlat87 = ((x_3319 * x_3320) + x_3322);
            let x_3325 : vec2<f32> = u_xlat40;
            let x_3327 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3325.x, x_3325.y, x_3327);
            let x_3334 : vec3<f32> = txVec53;
            let x_3336 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3334.xy, x_3334.z);
            u_xlat88 = x_3336;
            let x_3338 : f32 = u_xlat25.z;
            let x_3339 : f32 = u_xlat88;
            let x_3341 : f32 = u_xlat87;
            u_xlat87 = ((x_3338 * x_3339) + x_3341);
            let x_3344 : vec2<f32> = u_xlat72;
            let x_3346 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3344.x, x_3344.y, x_3346);
            let x_3353 : vec3<f32> = txVec54;
            let x_3355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3353.xy, x_3353.z);
            u_xlat88 = x_3355;
            let x_3357 : f32 = u_xlat25.w;
            let x_3358 : f32 = u_xlat88;
            let x_3360 : f32 = u_xlat87;
            u_xlat87 = ((x_3357 * x_3358) + x_3360);
            let x_3363 : vec4<f32> = u_xlat17;
            let x_3364 : vec2<f32> = vec2<f32>(x_3363.x, x_3363.y);
            let x_3366 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3364.x, x_3364.y, x_3366);
            let x_3373 : vec3<f32> = txVec55;
            let x_3375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3373.xy, x_3373.z);
            u_xlat88 = x_3375;
            let x_3377 : f32 = u_xlat13.x;
            let x_3378 : f32 = u_xlat88;
            let x_3380 : f32 = u_xlat87;
            u_xlat87 = ((x_3377 * x_3378) + x_3380);
            let x_3383 : vec4<f32> = u_xlat17;
            let x_3384 : vec2<f32> = vec2<f32>(x_3383.z, x_3383.w);
            let x_3386 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3384.x, x_3384.y, x_3386);
            let x_3393 : vec3<f32> = txVec56;
            let x_3395 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3393.xy, x_3393.z);
            u_xlat88 = x_3395;
            let x_3397 : f32 = u_xlat13.y;
            let x_3398 : f32 = u_xlat88;
            let x_3400 : f32 = u_xlat87;
            u_xlat87 = ((x_3397 * x_3398) + x_3400);
            let x_3403 : vec2<f32> = u_xlat67;
            let x_3405 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3403.x, x_3403.y, x_3405);
            let x_3412 : vec3<f32> = txVec57;
            let x_3414 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3412.xy, x_3412.z);
            u_xlat88 = x_3414;
            let x_3416 : f32 = u_xlat13.z;
            let x_3417 : f32 = u_xlat88;
            let x_3419 : f32 = u_xlat87;
            u_xlat87 = ((x_3416 * x_3417) + x_3419);
            let x_3422 : vec4<f32> = u_xlat12;
            let x_3423 : vec2<f32> = vec2<f32>(x_3422.x, x_3422.y);
            let x_3425 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3423.x, x_3423.y, x_3425);
            let x_3432 : vec3<f32> = txVec58;
            let x_3434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3432.xy, x_3432.z);
            u_xlat88 = x_3434;
            let x_3436 : f32 = u_xlat13.w;
            let x_3437 : f32 = u_xlat88;
            let x_3439 : f32 = u_xlat87;
            u_xlat85 = ((x_3436 * x_3437) + x_3439);
          }
        }
      } else {
        let x_3443 : vec4<f32> = u_xlat11;
        let x_3444 : vec2<f32> = vec2<f32>(x_3443.x, x_3443.y);
        let x_3446 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3444.x, x_3444.y, x_3446);
        let x_3453 : vec3<f32> = txVec59;
        let x_3455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3453.xy, x_3453.z);
        u_xlat85 = x_3455;
      }
      let x_3456 : i32 = u_xlati82;
      let x_3458 : f32 = x_236.x_AdditionalShadowParams[x_3456].x;
      u_xlat87 = (1.0f + -(x_3458));
      let x_3461 : f32 = u_xlat85;
      let x_3462 : i32 = u_xlati82;
      let x_3464 : f32 = x_236.x_AdditionalShadowParams[x_3462].x;
      let x_3466 : f32 = u_xlat87;
      u_xlat85 = ((x_3461 * x_3464) + x_3466);
      let x_3469 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3469);
      let x_3473 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3473 >= 1.0f);
      let x_3475 : bool = u_xlatb87;
      let x_3476 : bool = u_xlatb88;
      u_xlatb87 = (x_3475 | x_3476);
      let x_3478 : bool = u_xlatb87;
      let x_3479 : f32 = u_xlat85;
      u_xlat85 = select(x_3479, 1.0f, x_3478);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3482 : f32 = u_xlat85;
    u_xlat87 = (-(x_3482) + 1.0f);
    let x_3485 : f32 = u_xlat79;
    let x_3486 : f32 = u_xlat87;
    let x_3488 : f32 = u_xlat85;
    u_xlat85 = ((x_3485 * x_3486) + x_3488);
    let x_3491 : i32 = u_xlati82;
    u_xlati87 = (1i << bitcast<u32>((x_3491 & 31i)));
    let x_3495 : i32 = u_xlati87;
    let x_3498 : f32 = x_1584.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3495) & bitcast<u32>(x_3498)));
    let x_3502 : i32 = u_xlati87;
    if ((x_3502 != 0i)) {
      let x_3506 : i32 = u_xlati82;
      let x_3508 : f32 = x_1584.x_AdditionalLightsLightTypes[x_3506].el;
      u_xlati87 = i32(x_3508);
      let x_3511 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3511 != 0i));
      let x_3515 : i32 = u_xlati82;
      u_xlati11 = (x_3515 << bitcast<u32>(2i));
      let x_3517 : i32 = u_xlati88;
      if ((x_3517 != 0i)) {
        let x_3522 : vec3<f32> = vs_TEXCOORD7;
        let x_3524 : i32 = u_xlati11;
        let x_3527 : i32 = u_xlati11;
        let x_3531 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3524 + 1i) / 4i)][((x_3527 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3522.y, x_3522.y, x_3522.y) * vec3<f32>(x_3531.x, x_3531.y, x_3531.w));
        let x_3534 : i32 = u_xlati11;
        let x_3536 : i32 = u_xlati11;
        let x_3539 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[(x_3534 / 4i)][(x_3536 % 4i)];
        let x_3541 : vec3<f32> = vs_TEXCOORD7;
        let x_3544 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3539.x, x_3539.y, x_3539.w) * vec3<f32>(x_3541.x, x_3541.x, x_3541.x)) + x_3544);
        let x_3546 : i32 = u_xlati11;
        let x_3549 : i32 = u_xlati11;
        let x_3553 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3546 + 2i) / 4i)][((x_3549 + 2i) % 4i)];
        let x_3555 : vec3<f32> = vs_TEXCOORD7;
        let x_3558 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3553.x, x_3553.y, x_3553.w) * vec3<f32>(x_3555.z, x_3555.z, x_3555.z)) + x_3558);
        let x_3560 : vec3<f32> = u_xlat37;
        let x_3561 : i32 = u_xlati11;
        let x_3564 : i32 = u_xlati11;
        let x_3568 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3561 + 3i) / 4i)][((x_3564 + 3i) % 4i)];
        u_xlat37 = (x_3560 + vec3<f32>(x_3568.x, x_3568.y, x_3568.w));
        let x_3571 : vec3<f32> = u_xlat37;
        let x_3573 : vec3<f32> = u_xlat37;
        let x_3575 : vec2<f32> = (vec2<f32>(x_3571.x, x_3571.y) / vec2<f32>(x_3573.z, x_3573.z));
        let x_3576 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3575.x, x_3575.y, x_3576.z);
        let x_3578 : vec3<f32> = u_xlat37;
        let x_3581 : vec2<f32> = ((vec2<f32>(x_3578.x, x_3578.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3582 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3581.x, x_3581.y, x_3582.z);
        let x_3584 : vec3<f32> = u_xlat37;
        let x_3588 : vec2<f32> = clamp(vec2<f32>(x_3584.x, x_3584.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3589 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3588.x, x_3588.y, x_3589.z);
        let x_3591 : i32 = u_xlati82;
        let x_3593 : vec4<f32> = x_1584.x_AdditionalLightsCookieAtlasUVRects[x_3591];
        let x_3595 : vec3<f32> = u_xlat37;
        let x_3598 : i32 = u_xlati82;
        let x_3600 : vec4<f32> = x_1584.x_AdditionalLightsCookieAtlasUVRects[x_3598];
        let x_3602 : vec2<f32> = ((vec2<f32>(x_3593.x, x_3593.y) * vec2<f32>(x_3595.x, x_3595.y)) + vec2<f32>(x_3600.z, x_3600.w));
        let x_3603 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3602.x, x_3602.y, x_3603.z);
      } else {
        let x_3606 : i32 = u_xlati87;
        u_xlatb87 = (x_3606 == 1i);
        let x_3608 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3608);
        let x_3610 : i32 = u_xlati87;
        if ((x_3610 != 0i)) {
          let x_3614 : vec3<f32> = vs_TEXCOORD7;
          let x_3616 : i32 = u_xlati11;
          let x_3619 : i32 = u_xlati11;
          let x_3623 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3616 + 1i) / 4i)][((x_3619 + 1i) % 4i)];
          let x_3625 : vec2<f32> = (vec2<f32>(x_3614.y, x_3614.y) * vec2<f32>(x_3623.x, x_3623.y));
          let x_3626 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3625.x, x_3625.y, x_3626.z, x_3626.w);
          let x_3628 : i32 = u_xlati11;
          let x_3630 : i32 = u_xlati11;
          let x_3633 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[(x_3628 / 4i)][(x_3630 % 4i)];
          let x_3635 : vec3<f32> = vs_TEXCOORD7;
          let x_3638 : vec4<f32> = u_xlat12;
          let x_3640 : vec2<f32> = ((vec2<f32>(x_3633.x, x_3633.y) * vec2<f32>(x_3635.x, x_3635.x)) + vec2<f32>(x_3638.x, x_3638.y));
          let x_3641 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3640.x, x_3640.y, x_3641.z, x_3641.w);
          let x_3643 : i32 = u_xlati11;
          let x_3646 : i32 = u_xlati11;
          let x_3650 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3643 + 2i) / 4i)][((x_3646 + 2i) % 4i)];
          let x_3652 : vec3<f32> = vs_TEXCOORD7;
          let x_3655 : vec4<f32> = u_xlat12;
          let x_3657 : vec2<f32> = ((vec2<f32>(x_3650.x, x_3650.y) * vec2<f32>(x_3652.z, x_3652.z)) + vec2<f32>(x_3655.x, x_3655.y));
          let x_3658 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3657.x, x_3657.y, x_3658.z, x_3658.w);
          let x_3660 : vec4<f32> = u_xlat12;
          let x_3662 : i32 = u_xlati11;
          let x_3665 : i32 = u_xlati11;
          let x_3669 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3662 + 3i) / 4i)][((x_3665 + 3i) % 4i)];
          let x_3671 : vec2<f32> = (vec2<f32>(x_3660.x, x_3660.y) + vec2<f32>(x_3669.x, x_3669.y));
          let x_3672 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3671.x, x_3671.y, x_3672.z, x_3672.w);
          let x_3674 : vec4<f32> = u_xlat12;
          let x_3677 : vec2<f32> = ((vec2<f32>(x_3674.x, x_3674.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3678 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3677.x, x_3677.y, x_3678.z, x_3678.w);
          let x_3680 : vec4<f32> = u_xlat12;
          let x_3682 : vec2<f32> = fract(vec2<f32>(x_3680.x, x_3680.y));
          let x_3683 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3682.x, x_3682.y, x_3683.z, x_3683.w);
          let x_3685 : i32 = u_xlati82;
          let x_3687 : vec4<f32> = x_1584.x_AdditionalLightsCookieAtlasUVRects[x_3685];
          let x_3689 : vec4<f32> = u_xlat12;
          let x_3692 : i32 = u_xlati82;
          let x_3694 : vec4<f32> = x_1584.x_AdditionalLightsCookieAtlasUVRects[x_3692];
          let x_3696 : vec2<f32> = ((vec2<f32>(x_3687.x, x_3687.y) * vec2<f32>(x_3689.x, x_3689.y)) + vec2<f32>(x_3694.z, x_3694.w));
          let x_3697 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3696.x, x_3696.y, x_3697.z);
        } else {
          let x_3700 : vec3<f32> = vs_TEXCOORD7;
          let x_3702 : i32 = u_xlati11;
          let x_3705 : i32 = u_xlati11;
          let x_3709 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3702 + 1i) / 4i)][((x_3705 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3700.y, x_3700.y, x_3700.y, x_3700.y) * x_3709);
          let x_3711 : i32 = u_xlati11;
          let x_3713 : i32 = u_xlati11;
          let x_3716 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[(x_3711 / 4i)][(x_3713 % 4i)];
          let x_3717 : vec3<f32> = vs_TEXCOORD7;
          let x_3720 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3716 * vec4<f32>(x_3717.x, x_3717.x, x_3717.x, x_3717.x)) + x_3720);
          let x_3722 : i32 = u_xlati11;
          let x_3725 : i32 = u_xlati11;
          let x_3729 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3722 + 2i) / 4i)][((x_3725 + 2i) % 4i)];
          let x_3730 : vec3<f32> = vs_TEXCOORD7;
          let x_3733 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3729 * vec4<f32>(x_3730.z, x_3730.z, x_3730.z, x_3730.z)) + x_3733);
          let x_3735 : vec4<f32> = u_xlat12;
          let x_3736 : i32 = u_xlati11;
          let x_3739 : i32 = u_xlati11;
          let x_3743 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3736 + 3i) / 4i)][((x_3739 + 3i) % 4i)];
          u_xlat12 = (x_3735 + x_3743);
          let x_3745 : vec4<f32> = u_xlat12;
          let x_3747 : vec4<f32> = u_xlat12;
          let x_3749 : vec3<f32> = (vec3<f32>(x_3745.x, x_3745.y, x_3745.z) / vec3<f32>(x_3747.w, x_3747.w, x_3747.w));
          let x_3750 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3749.x, x_3749.y, x_3749.z, x_3750.w);
          let x_3752 : vec4<f32> = u_xlat12;
          let x_3754 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3752.x, x_3752.y, x_3752.z), vec3<f32>(x_3754.x, x_3754.y, x_3754.z));
          let x_3757 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3757);
          let x_3759 : f32 = u_xlat87;
          let x_3761 : vec4<f32> = u_xlat12;
          let x_3763 : vec3<f32> = (vec3<f32>(x_3759, x_3759, x_3759) * vec3<f32>(x_3761.x, x_3761.y, x_3761.z));
          let x_3764 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3763.x, x_3763.y, x_3763.z, x_3764.w);
          let x_3766 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3766.x, x_3766.y, x_3766.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3771 : f32 = u_xlat87;
          u_xlat87 = max(x_3771, 0.00000099999999747524f);
          let x_3774 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3774);
          let x_3776 : f32 = u_xlat87;
          let x_3778 : vec4<f32> = u_xlat12;
          let x_3780 : vec3<f32> = (vec3<f32>(x_3776, x_3776, x_3776) * vec3<f32>(x_3778.z, x_3778.x, x_3778.y));
          let x_3781 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3780.x, x_3780.y, x_3780.z, x_3781.w);
          let x_3784 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3784);
          let x_3788 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3788, 0.0f, 1.0f);
          let x_3791 : vec4<f32> = u_xlat13;
          let x_3793 : vec4<bool> = (vec4<f32>(x_3791.y, x_3791.y, x_3791.y, x_3791.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3794 : vec2<bool> = vec2<bool>(x_3793.x, x_3793.w);
          let x_3795 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3794.x, x_3795.y, x_3795.z, x_3794.y);
          let x_3798 : bool = u_xlatb11.x;
          if (x_3798) {
            let x_3803 : f32 = u_xlat13.x;
            x_3799 = x_3803;
          } else {
            let x_3806 : f32 = u_xlat13.x;
            x_3799 = -(x_3806);
          }
          let x_3808 : f32 = x_3799;
          u_xlat11.x = x_3808;
          let x_3811 : bool = u_xlatb11.w;
          if (x_3811) {
            let x_3816 : f32 = u_xlat13.x;
            x_3812 = x_3816;
          } else {
            let x_3819 : f32 = u_xlat13.x;
            x_3812 = -(x_3819);
          }
          let x_3821 : f32 = x_3812;
          u_xlat11.w = x_3821;
          let x_3823 : vec4<f32> = u_xlat12;
          let x_3825 : f32 = u_xlat87;
          let x_3828 : vec4<f32> = u_xlat11;
          let x_3830 : vec2<f32> = ((vec2<f32>(x_3823.x, x_3823.y) * vec2<f32>(x_3825, x_3825)) + vec2<f32>(x_3828.x, x_3828.w));
          let x_3831 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3830.x, x_3831.y, x_3831.z, x_3830.y);
          let x_3833 : vec4<f32> = u_xlat11;
          let x_3836 : vec2<f32> = ((vec2<f32>(x_3833.x, x_3833.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3837 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3836.x, x_3837.y, x_3837.z, x_3836.y);
          let x_3839 : vec4<f32> = u_xlat11;
          let x_3843 : vec2<f32> = clamp(vec2<f32>(x_3839.x, x_3839.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3844 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3843.x, x_3844.y, x_3844.z, x_3843.y);
          let x_3846 : i32 = u_xlati82;
          let x_3848 : vec4<f32> = x_1584.x_AdditionalLightsCookieAtlasUVRects[x_3846];
          let x_3850 : vec4<f32> = u_xlat11;
          let x_3853 : i32 = u_xlati82;
          let x_3855 : vec4<f32> = x_1584.x_AdditionalLightsCookieAtlasUVRects[x_3853];
          let x_3857 : vec2<f32> = ((vec2<f32>(x_3848.x, x_3848.y) * vec2<f32>(x_3850.x, x_3850.w)) + vec2<f32>(x_3855.z, x_3855.w));
          let x_3858 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3857.x, x_3857.y, x_3858.z);
        }
      }
      let x_3865 : vec3<f32> = u_xlat37;
      let x_3867 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3865.x, x_3865.y), 0.0f);
      u_xlat11 = x_3867;
      let x_3869 : bool = u_xlatb30.y;
      if (x_3869) {
        let x_3874 : f32 = u_xlat11.w;
        x_3870 = x_3874;
      } else {
        let x_3877 : f32 = u_xlat11.x;
        x_3870 = x_3877;
      }
      let x_3878 : f32 = x_3870;
      u_xlat87 = x_3878;
      let x_3880 : bool = u_xlatb30.x;
      if (x_3880) {
        let x_3884 : vec4<f32> = u_xlat11;
        x_3881 = vec3<f32>(x_3884.x, x_3884.y, x_3884.z);
      } else {
        let x_3887 : f32 = u_xlat87;
        x_3881 = vec3<f32>(x_3887, x_3887, x_3887);
      }
      let x_3889 : vec3<f32> = x_3881;
      let x_3890 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3889.x, x_3889.y, x_3889.z, x_3890.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3896 : vec4<f32> = u_xlat11;
    let x_3898 : i32 = u_xlati82;
    let x_3900 : vec4<f32> = x_2063.x_AdditionalLightsColor[x_3898];
    let x_3902 : vec3<f32> = (vec3<f32>(x_3896.x, x_3896.y, x_3896.z) * vec3<f32>(x_3900.x, x_3900.y, x_3900.z));
    let x_3903 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3902.x, x_3902.y, x_3902.z, x_3903.w);
    let x_3905 : f32 = u_xlat83;
    let x_3906 : f32 = u_xlat85;
    u_xlat82 = (x_3905 * x_3906);
    let x_3908 : vec4<f32> = u_xlat2;
    let x_3910 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_3908.x, x_3908.y, x_3908.z), vec3<f32>(x_3910.x, x_3910.y, x_3910.z));
    let x_3913 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3913, 0.0f, 1.0f);
    let x_3915 : f32 = u_xlat82;
    let x_3916 : f32 = u_xlat83;
    u_xlat82 = (x_3915 * x_3916);
    let x_3918 : f32 = u_xlat82;
    let x_3920 : vec4<f32> = u_xlat11;
    let x_3922 : vec3<f32> = (vec3<f32>(x_3918, x_3918, x_3918) * vec3<f32>(x_3920.x, x_3920.y, x_3920.z));
    let x_3923 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3922.x, x_3922.y, x_3922.z, x_3923.w);
    let x_3925 : vec4<f32> = u_xlat9;
    let x_3927 : f32 = u_xlat84;
    let x_3930 : vec4<f32> = u_xlat6;
    let x_3932 : vec3<f32> = ((vec3<f32>(x_3925.x, x_3925.y, x_3925.z) * vec3<f32>(x_3927, x_3927, x_3927)) + vec3<f32>(x_3930.x, x_3930.y, x_3930.z));
    let x_3933 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3932.x, x_3932.y, x_3932.z, x_3933.w);
    let x_3935 : vec4<f32> = u_xlat9;
    let x_3937 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3935.x, x_3935.y, x_3935.z), vec3<f32>(x_3937.x, x_3937.y, x_3937.z));
    let x_3940 : f32 = u_xlat82;
    u_xlat82 = max(x_3940, 1.17549435e-38f);
    let x_3942 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_3942);
    let x_3944 : f32 = u_xlat82;
    let x_3946 : vec4<f32> = u_xlat9;
    let x_3948 : vec3<f32> = (vec3<f32>(x_3944, x_3944, x_3944) * vec3<f32>(x_3946.x, x_3946.y, x_3946.z));
    let x_3949 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3948.x, x_3948.y, x_3948.z, x_3949.w);
    let x_3951 : vec4<f32> = u_xlat2;
    let x_3953 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3951.x, x_3951.y, x_3951.z), vec3<f32>(x_3953.x, x_3953.y, x_3953.z));
    let x_3956 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3956, 0.0f, 1.0f);
    let x_3958 : vec4<f32> = u_xlat10;
    let x_3960 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3958.x, x_3958.y, x_3958.z), vec3<f32>(x_3960.x, x_3960.y, x_3960.z));
    let x_3963 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3963, 0.0f, 1.0f);
    let x_3965 : f32 = u_xlat82;
    let x_3966 : f32 = u_xlat82;
    u_xlat82 = (x_3965 * x_3966);
    let x_3968 : f32 = u_xlat82;
    let x_3970 : f32 = u_xlat8.x;
    u_xlat82 = ((x_3968 * x_3970) + 1.00001001358032226562f);
    let x_3973 : f32 = u_xlat83;
    let x_3974 : f32 = u_xlat83;
    u_xlat83 = (x_3973 * x_3974);
    let x_3976 : f32 = u_xlat82;
    let x_3977 : f32 = u_xlat82;
    u_xlat82 = (x_3976 * x_3977);
    let x_3979 : f32 = u_xlat83;
    u_xlat83 = max(x_3979, 0.10000000149011611938f);
    let x_3981 : f32 = u_xlat82;
    let x_3982 : f32 = u_xlat83;
    u_xlat82 = (x_3981 * x_3982);
    let x_3985 : f32 = u_xlat3.x;
    let x_3986 : f32 = u_xlat82;
    u_xlat82 = (x_3985 * x_3986);
    let x_3989 : f32 = u_xlat4.x;
    let x_3990 : f32 = u_xlat82;
    u_xlat82 = (x_3989 / x_3990);
    let x_3992 : vec4<f32> = u_xlat0;
    let x_3994 : f32 = u_xlat82;
    let x_3997 : vec3<f32> = u_xlat29;
    let x_3998 : vec3<f32> = ((vec3<f32>(x_3992.x, x_3992.y, x_3992.z) * vec3<f32>(x_3994, x_3994, x_3994)) + x_3997);
    let x_3999 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3998.x, x_3998.y, x_3998.z, x_3999.w);
    let x_4001 : vec4<f32> = u_xlat9;
    let x_4003 : vec4<f32> = u_xlat11;
    let x_4006 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4001.x, x_4001.y, x_4001.z) * vec3<f32>(x_4003.x, x_4003.y, x_4003.z)) + x_4006);

    continuing {
      let x_4008 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4008 + bitcast<u32>(1i));
    }
  }
  let x_4010 : vec4<f32> = u_xlat7;
  let x_4012 : vec4<f32> = u_xlat5;
  let x_4015 : vec3<f32> = u_xlat1;
  let x_4016 : vec3<f32> = ((vec3<f32>(x_4010.x, x_4010.y, x_4010.z) * vec3<f32>(x_4012.x, x_4012.y, x_4012.z)) + x_4015);
  let x_4017 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4016.x, x_4016.y, x_4016.z, x_4017.w);
  let x_4021 : vec3<f32> = u_xlat34;
  let x_4022 : vec4<f32> = u_xlat0;
  let x_4024 : vec3<f32> = (x_4021 + vec3<f32>(x_4022.x, x_4022.y, x_4022.z));
  let x_4025 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4024.x, x_4024.y, x_4024.z, x_4025.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


