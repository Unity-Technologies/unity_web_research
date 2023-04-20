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
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlatb26 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(3) var<uniform> x_264 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb55 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1666 : UnityPerDraw;

var<private> u_xlatu75 : u32;

var<private> u_xlatu30 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati30 : i32;

@group(1) @binding(1) var<uniform> x_1913 : AdditionalLights;

var<private> u_xlat81 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

fn main_1() {
  var x_91 : f32;
  var x_104 : f32;
  var x_117 : f32;
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
  var x_1566 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2057 : f32;
  var x_2068 : f32;
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
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1 = x_49.x;
  let x_57 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb26 = (x_57 == 0.0f);
  let x_63 : vec3<f32> = vs_TEXCOORD7;
  let x_68 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_69 : vec3<f32> = (-(x_63) + x_68);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_73.x, x_73.y, x_73.z), vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_78);
  let x_80 : f32 = u_xlat51;
  let x_82 : vec4<f32> = u_xlat2;
  let x_84 : vec3<f32> = (vec3<f32>(x_80, x_80, x_80) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_89 : bool = u_xlatb26;
  if (x_89) {
    let x_95 : f32 = u_xlat2.x;
    x_91 = x_95;
  } else {
    let x_100 : f32 = x_29.unity_MatrixV[0i].z;
    x_91 = x_100;
  }
  let x_101 : f32 = x_91;
  u_xlat3.x = x_101;
  let x_103 : bool = u_xlatb26;
  if (x_103) {
    let x_109 : f32 = u_xlat2.y;
    x_104 = x_109;
  } else {
    let x_113 : f32 = x_29.unity_MatrixV[1i].z;
    x_104 = x_113;
  }
  let x_114 : f32 = x_104;
  u_xlat3.y = x_114;
  let x_116 : bool = u_xlatb26;
  if (x_116) {
    let x_121 : f32 = u_xlat2.z;
    x_117 = x_121;
  } else {
    let x_125 : f32 = x_29.unity_MatrixV[2i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.z = x_126;
  let x_130 : vec3<f32> = vs_TEXCOORD3;
  let x_131 : vec3<f32> = vs_TEXCOORD3;
  u_xlat26.x = dot(x_130, x_131);
  let x_135 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_135);
  let x_138 : vec3<f32> = u_xlat26;
  let x_140 : vec3<f32> = vs_TEXCOORD3;
  u_xlat26 = (vec3<f32>(x_138.x, x_138.x, x_138.x) * x_140);
  let x_147 : vec4<f32> = vs_TEXCOORD0;
  let x_150 : f32 = x_29.x_GlobalMipBias.x;
  let x_151 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_147.z, x_147.w), x_150);
  u_xlat2 = x_151;
  let x_157 : vec4<f32> = vs_TEXCOORD0;
  let x_160 : f32 = x_29.x_GlobalMipBias.x;
  let x_161 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_157.z, x_157.w), x_160);
  u_xlat4 = vec3<f32>(x_161.x, x_161.y, x_161.z);
  let x_163 : vec4<f32> = u_xlat2;
  let x_167 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec3<f32> = u_xlat26;
  let x_171 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_170, vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_176 : f32 = u_xlat2.x;
  u_xlat2.x = (x_176 + 0.5f);
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec3<f32> = u_xlat4;
  let x_183 : vec3<f32> = (vec3<f32>(x_180.x, x_180.x, x_180.x) * x_182);
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_188 : f32 = u_xlat2.w;
  u_xlat77 = max(x_188, 0.00009999999747378752f);
  let x_191 : vec4<f32> = u_xlat2;
  let x_193 : f32 = u_xlat77;
  let x_195 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) / vec3<f32>(x_193, x_193, x_193));
  let x_196 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_198 : f32 = u_xlat1;
  u_xlat77 = ((-(x_198) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_204 : f32 = u_xlat77;
  u_xlat78 = (-(x_204) + 1.0f);
  let x_208 : vec4<f32> = u_xlat0;
  let x_210 : f32 = u_xlat77;
  u_xlat4 = (vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210, x_210, x_210));
  let x_213 : vec4<f32> = u_xlat0;
  let x_217 : vec3<f32> = (vec3<f32>(x_213.x, x_213.y, x_213.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : f32 = u_xlat1;
  let x_222 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = ((vec3<f32>(x_220, x_220, x_220) * vec3<f32>(x_222.x, x_222.y, x_222.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_231) + 1.0f);
  let x_234 : f32 = u_xlat1;
  let x_235 : f32 = u_xlat1;
  u_xlat77 = (x_234 * x_235);
  let x_237 : f32 = u_xlat77;
  u_xlat77 = max(x_237, 0.0078125f);
  let x_241 : f32 = u_xlat77;
  let x_242 : f32 = u_xlat77;
  u_xlat79 = (x_241 * x_242);
  let x_246 : f32 = u_xlat0.w;
  let x_247 : f32 = u_xlat78;
  u_xlat75 = (x_246 + x_247);
  let x_249 : f32 = u_xlat75;
  u_xlat75 = clamp(x_249, 0.0f, 1.0f);
  let x_251 : f32 = u_xlat77;
  u_xlat78 = ((x_251 * 4.0f) + 2.0f);
  let x_267 : f32 = x_264.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_267);
  let x_269 : bool = u_xlatb5;
  if (x_269) {
    let x_273 : f32 = x_264.x_MainLightShadowParams.y;
    u_xlatb5 = (x_273 == 1.0f);
    let x_275 : bool = u_xlatb5;
    if (x_275) {
      let x_280 : vec4<f32> = vs_TEXCOORD8;
      let x_284 : vec4<f32> = x_264.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_280.x, x_280.y, x_280.x, x_280.y) + x_284);
      let x_288 : vec4<f32> = u_xlat5;
      let x_289 : vec2<f32> = vec2<f32>(x_288.x, x_288.y);
      let x_292 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_289.x, x_289.y, x_292);
      let x_305 : vec3<f32> = txVec0;
      let x_307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_305.xy, x_305.z);
      u_xlat6.x = x_307;
      let x_310 : vec4<f32> = u_xlat5;
      let x_311 : vec2<f32> = vec2<f32>(x_310.z, x_310.w);
      let x_313 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_311.x, x_311.y, x_313);
      let x_320 : vec3<f32> = txVec1;
      let x_322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_320.xy, x_320.z);
      u_xlat6.y = x_322;
      let x_324 : vec4<f32> = vs_TEXCOORD8;
      let x_328 : vec4<f32> = x_264.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_324.x, x_324.y, x_324.x, x_324.y) + x_328);
      let x_331 : vec4<f32> = u_xlat5;
      let x_332 : vec2<f32> = vec2<f32>(x_331.x, x_331.y);
      let x_334 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_332.x, x_332.y, x_334);
      let x_341 : vec3<f32> = txVec2;
      let x_343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_341.xy, x_341.z);
      u_xlat6.z = x_343;
      let x_346 : vec4<f32> = u_xlat5;
      let x_347 : vec2<f32> = vec2<f32>(x_346.z, x_346.w);
      let x_349 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_347.x, x_347.y, x_349);
      let x_356 : vec3<f32> = txVec3;
      let x_358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_356.xy, x_356.z);
      u_xlat6.w = x_358;
      let x_360 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_360, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_368 : f32 = x_264.x_MainLightShadowParams.y;
      u_xlatb30 = (x_368 == 2.0f);
      let x_370 : bool = u_xlatb30;
      if (x_370) {
        let x_374 : vec4<f32> = vs_TEXCOORD8;
        let x_378 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_382 : vec2<f32> = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(x_378.z, x_378.w)) + vec2<f32>(0.5f, 0.5f));
        let x_383 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_382.x, x_382.y, x_383.z);
        let x_385 : vec3<f32> = u_xlat30;
        let x_387 : vec2<f32> = floor(vec2<f32>(x_385.x, x_385.y));
        let x_388 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_387.x, x_387.y, x_388.z);
        let x_390 : vec4<f32> = vs_TEXCOORD8;
        let x_393 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_396 : vec3<f32> = u_xlat30;
        let x_399 : vec2<f32> = ((vec2<f32>(x_390.x, x_390.y) * vec2<f32>(x_393.z, x_393.w)) + -(vec2<f32>(x_396.x, x_396.y)));
        let x_400 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
        let x_403 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_403.x, x_403.x, x_403.y, x_403.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_408 : vec4<f32> = u_xlat7;
        let x_410 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_408.x, x_408.x, x_408.z, x_408.z) * vec4<f32>(x_410.x, x_410.x, x_410.z, x_410.z));
        let x_415 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_415.y, x_415.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_420 : vec4<f32> = u_xlat8;
        let x_423 : vec4<f32> = u_xlat6;
        let x_426 : vec2<f32> = ((vec2<f32>(x_420.x, x_420.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_423.x, x_423.y)));
        let x_427 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_426.x, x_427.y, x_426.y, x_427.w);
        let x_429 : vec4<f32> = u_xlat6;
        let x_433 : vec2<f32> = (-(vec2<f32>(x_429.x, x_429.y)) + vec2<f32>(1.0f, 1.0f));
        let x_434 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_433.x, x_433.y, x_434.z, x_434.w);
        let x_437 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_437.x, x_437.y), vec2<f32>(0.0f, 0.0f));
        let x_441 : vec2<f32> = u_xlat58;
        let x_443 : vec2<f32> = u_xlat58;
        let x_445 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_441) * x_443) + vec2<f32>(x_445.x, x_445.y));
        let x_448 : vec4<f32> = u_xlat6;
        let x_450 : vec2<f32> = max(vec2<f32>(x_448.x, x_448.y), vec2<f32>(0.0f, 0.0f));
        let x_451 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
        let x_453 : vec4<f32> = u_xlat6;
        let x_456 : vec4<f32> = u_xlat6;
        let x_459 : vec4<f32> = u_xlat7;
        let x_461 : vec2<f32> = ((-(vec2<f32>(x_453.x, x_453.y)) * vec2<f32>(x_456.x, x_456.y)) + vec2<f32>(x_459.y, x_459.w));
        let x_462 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
        let x_464 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_464 + vec2<f32>(1.0f, 1.0f));
        let x_466 : vec4<f32> = u_xlat6;
        let x_468 : vec2<f32> = (vec2<f32>(x_466.x, x_466.y) + vec2<f32>(1.0f, 1.0f));
        let x_469 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
        let x_472 : vec4<f32> = u_xlat7;
        let x_476 : vec2<f32> = (vec2<f32>(x_472.x, x_472.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_477 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
        let x_480 : vec4<f32> = u_xlat8;
        let x_482 : vec2<f32> = (vec2<f32>(x_480.x, x_480.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_483 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
        let x_485 : vec2<f32> = u_xlat58;
        let x_486 : vec2<f32> = (x_485 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_487 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_486.x, x_486.y, x_487.z, x_487.w);
        let x_490 : vec4<f32> = u_xlat6;
        let x_492 : vec2<f32> = (vec2<f32>(x_490.x, x_490.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_493 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat7;
        let x_497 : vec2<f32> = (vec2<f32>(x_495.y, x_495.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_498 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_501 : f32 = u_xlat8.x;
        u_xlat9.z = x_501;
        let x_504 : f32 = u_xlat6.x;
        u_xlat9.w = x_504;
        let x_507 : f32 = u_xlat11.x;
        u_xlat10.z = x_507;
        let x_510 : f32 = u_xlat56.x;
        u_xlat10.w = x_510;
        let x_512 : vec4<f32> = u_xlat9;
        let x_514 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_512.z, x_512.w, x_512.x, x_512.z) + vec4<f32>(x_514.z, x_514.w, x_514.x, x_514.z));
        let x_518 : f32 = u_xlat9.y;
        u_xlat8.z = x_518;
        let x_521 : f32 = u_xlat6.y;
        u_xlat8.w = x_521;
        let x_524 : f32 = u_xlat10.y;
        u_xlat11.z = x_524;
        let x_527 : f32 = u_xlat56.y;
        u_xlat11.w = x_527;
        let x_529 : vec4<f32> = u_xlat8;
        let x_531 : vec4<f32> = u_xlat11;
        let x_533 : vec3<f32> = (vec3<f32>(x_529.z, x_529.y, x_529.w) + vec3<f32>(x_531.z, x_531.y, x_531.w));
        let x_534 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
        let x_536 : vec4<f32> = u_xlat10;
        let x_538 : vec4<f32> = u_xlat7;
        let x_540 : vec3<f32> = (vec3<f32>(x_536.x, x_536.z, x_536.w) / vec3<f32>(x_538.z, x_538.w, x_538.y));
        let x_541 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
        let x_543 : vec4<f32> = u_xlat8;
        let x_548 : vec3<f32> = (vec3<f32>(x_543.x, x_543.y, x_543.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_549 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
        let x_551 : vec4<f32> = u_xlat11;
        let x_553 : vec4<f32> = u_xlat6;
        let x_555 : vec3<f32> = (vec3<f32>(x_551.z, x_551.y, x_551.w) / vec3<f32>(x_553.x, x_553.y, x_553.z));
        let x_556 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
        let x_558 : vec4<f32> = u_xlat9;
        let x_560 : vec3<f32> = (vec3<f32>(x_558.x, x_558.y, x_558.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_561 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
        let x_563 : vec4<f32> = u_xlat8;
        let x_566 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_568 : vec3<f32> = (vec3<f32>(x_563.y, x_563.x, x_563.z) * vec3<f32>(x_566.x, x_566.x, x_566.x));
        let x_569 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
        let x_571 : vec4<f32> = u_xlat9;
        let x_574 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_576 : vec3<f32> = (vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(x_574.y, x_574.y, x_574.y));
        let x_577 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
        let x_580 : f32 = u_xlat9.x;
        u_xlat8.w = x_580;
        let x_582 : vec3<f32> = u_xlat30;
        let x_585 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_588 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_582.x, x_582.y, x_582.x, x_582.y) * vec4<f32>(x_585.x, x_585.y, x_585.x, x_585.y)) + vec4<f32>(x_588.y, x_588.w, x_588.x, x_588.w));
        let x_591 : vec3<f32> = u_xlat30;
        let x_594 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_597 : vec4<f32> = u_xlat8;
        let x_599 : vec2<f32> = ((vec2<f32>(x_591.x, x_591.y) * vec2<f32>(x_594.x, x_594.y)) + vec2<f32>(x_597.z, x_597.w));
        let x_600 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_603 : f32 = u_xlat8.y;
        u_xlat9.w = x_603;
        let x_605 : vec4<f32> = u_xlat9;
        let x_606 : vec2<f32> = vec2<f32>(x_605.y, x_605.z);
        let x_607 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_607.x, x_606.x, x_607.z, x_606.y);
        let x_610 : vec3<f32> = u_xlat30;
        let x_613 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_616 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_610.x, x_610.y, x_610.x, x_610.y) * vec4<f32>(x_613.x, x_613.y, x_613.x, x_613.y)) + vec4<f32>(x_616.x, x_616.y, x_616.z, x_616.y));
        let x_619 : vec3<f32> = u_xlat30;
        let x_622 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_625 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_619.x, x_619.y, x_619.x, x_619.y) * vec4<f32>(x_622.x, x_622.y, x_622.x, x_622.y)) + vec4<f32>(x_625.w, x_625.y, x_625.w, x_625.z));
        let x_628 : vec3<f32> = u_xlat30;
        let x_631 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_634 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_628.x, x_628.y, x_628.x, x_628.y) * vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y)) + vec4<f32>(x_634.x, x_634.w, x_634.z, x_634.w));
        let x_638 : vec4<f32> = u_xlat6;
        let x_640 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_638.x, x_638.x, x_638.x, x_638.y) * vec4<f32>(x_640.z, x_640.w, x_640.y, x_640.z));
        let x_644 : vec4<f32> = u_xlat6;
        let x_646 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_644.y, x_644.y, x_644.z, x_644.z) * x_646);
        let x_649 : f32 = u_xlat6.z;
        let x_651 : f32 = u_xlat7.y;
        u_xlat30.x = (x_649 * x_651);
        let x_655 : vec4<f32> = u_xlat10;
        let x_656 : vec2<f32> = vec2<f32>(x_655.x, x_655.y);
        let x_658 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_656.x, x_656.y, x_658);
        let x_666 : vec3<f32> = txVec4;
        let x_668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_666.xy, x_666.z);
        u_xlat55 = x_668;
        let x_670 : vec4<f32> = u_xlat10;
        let x_671 : vec2<f32> = vec2<f32>(x_670.z, x_670.w);
        let x_673 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_671.x, x_671.y, x_673);
        let x_681 : vec3<f32> = txVec5;
        let x_683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_681.xy, x_681.z);
        u_xlat80 = x_683;
        let x_684 : f32 = u_xlat80;
        let x_686 : f32 = u_xlat13.y;
        u_xlat80 = (x_684 * x_686);
        let x_689 : f32 = u_xlat13.x;
        let x_690 : f32 = u_xlat55;
        let x_692 : f32 = u_xlat80;
        u_xlat55 = ((x_689 * x_690) + x_692);
        let x_695 : vec4<f32> = u_xlat11;
        let x_696 : vec2<f32> = vec2<f32>(x_695.x, x_695.y);
        let x_698 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_696.x, x_696.y, x_698);
        let x_705 : vec3<f32> = txVec6;
        let x_707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_705.xy, x_705.z);
        u_xlat80 = x_707;
        let x_709 : f32 = u_xlat13.z;
        let x_710 : f32 = u_xlat80;
        let x_712 : f32 = u_xlat55;
        u_xlat55 = ((x_709 * x_710) + x_712);
        let x_715 : vec4<f32> = u_xlat9;
        let x_716 : vec2<f32> = vec2<f32>(x_715.x, x_715.y);
        let x_718 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_725 : vec3<f32> = txVec7;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
        u_xlat80 = x_727;
        let x_729 : f32 = u_xlat13.w;
        let x_730 : f32 = u_xlat80;
        let x_732 : f32 = u_xlat55;
        u_xlat55 = ((x_729 * x_730) + x_732);
        let x_735 : vec4<f32> = u_xlat12;
        let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
        let x_738 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_736.x, x_736.y, x_738);
        let x_745 : vec3<f32> = txVec8;
        let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_745.xy, x_745.z);
        u_xlat80 = x_747;
        let x_749 : f32 = u_xlat14.x;
        let x_750 : f32 = u_xlat80;
        let x_752 : f32 = u_xlat55;
        u_xlat55 = ((x_749 * x_750) + x_752);
        let x_755 : vec4<f32> = u_xlat12;
        let x_756 : vec2<f32> = vec2<f32>(x_755.z, x_755.w);
        let x_758 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_756.x, x_756.y, x_758);
        let x_765 : vec3<f32> = txVec9;
        let x_767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_765.xy, x_765.z);
        u_xlat80 = x_767;
        let x_769 : f32 = u_xlat14.y;
        let x_770 : f32 = u_xlat80;
        let x_772 : f32 = u_xlat55;
        u_xlat55 = ((x_769 * x_770) + x_772);
        let x_775 : vec4<f32> = u_xlat9;
        let x_776 : vec2<f32> = vec2<f32>(x_775.z, x_775.w);
        let x_778 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_776.x, x_776.y, x_778);
        let x_785 : vec3<f32> = txVec10;
        let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_785.xy, x_785.z);
        u_xlat80 = x_787;
        let x_789 : f32 = u_xlat14.z;
        let x_790 : f32 = u_xlat80;
        let x_792 : f32 = u_xlat55;
        u_xlat55 = ((x_789 * x_790) + x_792);
        let x_795 : vec4<f32> = u_xlat8;
        let x_796 : vec2<f32> = vec2<f32>(x_795.x, x_795.y);
        let x_798 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec11;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
        u_xlat80 = x_807;
        let x_809 : f32 = u_xlat14.w;
        let x_810 : f32 = u_xlat80;
        let x_812 : f32 = u_xlat55;
        u_xlat55 = ((x_809 * x_810) + x_812);
        let x_815 : vec4<f32> = u_xlat8;
        let x_816 : vec2<f32> = vec2<f32>(x_815.z, x_815.w);
        let x_818 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_816.x, x_816.y, x_818);
        let x_825 : vec3<f32> = txVec12;
        let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_825.xy, x_825.z);
        u_xlat80 = x_827;
        let x_829 : f32 = u_xlat30.x;
        let x_830 : f32 = u_xlat80;
        let x_832 : f32 = u_xlat55;
        u_xlat5.x = ((x_829 * x_830) + x_832);
      } else {
        let x_836 : vec4<f32> = vs_TEXCOORD8;
        let x_839 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_842 : vec2<f32> = ((vec2<f32>(x_836.x, x_836.y) * vec2<f32>(x_839.z, x_839.w)) + vec2<f32>(0.5f, 0.5f));
        let x_843 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_842.x, x_842.y, x_843.z);
        let x_845 : vec3<f32> = u_xlat30;
        let x_847 : vec2<f32> = floor(vec2<f32>(x_845.x, x_845.y));
        let x_848 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_847.x, x_847.y, x_848.z);
        let x_850 : vec4<f32> = vs_TEXCOORD8;
        let x_853 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_856 : vec3<f32> = u_xlat30;
        let x_859 : vec2<f32> = ((vec2<f32>(x_850.x, x_850.y) * vec2<f32>(x_853.z, x_853.w)) + -(vec2<f32>(x_856.x, x_856.y)));
        let x_860 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
        let x_862 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_862.x, x_862.x, x_862.y, x_862.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_865 : vec4<f32> = u_xlat7;
        let x_867 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_865.x, x_865.x, x_865.z, x_865.z) * vec4<f32>(x_867.x, x_867.x, x_867.z, x_867.z));
        let x_870 : vec4<f32> = u_xlat8;
        let x_874 : vec2<f32> = (vec2<f32>(x_870.y, x_870.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_875 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_875.x, x_874.x, x_875.z, x_874.y);
        let x_877 : vec4<f32> = u_xlat8;
        let x_880 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_877.x, x_877.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_880.x, x_880.y)));
        let x_884 : vec4<f32> = u_xlat6;
        let x_887 : vec2<f32> = (-(vec2<f32>(x_884.x, x_884.y)) + vec2<f32>(1.0f, 1.0f));
        let x_888 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_887.x, x_888.y, x_887.y, x_888.w);
        let x_890 : vec4<f32> = u_xlat6;
        let x_892 : vec2<f32> = min(vec2<f32>(x_890.x, x_890.y), vec2<f32>(0.0f, 0.0f));
        let x_893 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_895 : vec4<f32> = u_xlat8;
        let x_898 : vec4<f32> = u_xlat8;
        let x_901 : vec4<f32> = u_xlat7;
        let x_903 : vec2<f32> = ((-(vec2<f32>(x_895.x, x_895.y)) * vec2<f32>(x_898.x, x_898.y)) + vec2<f32>(x_901.x, x_901.z));
        let x_904 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_903.x, x_904.y, x_903.y, x_904.w);
        let x_906 : vec4<f32> = u_xlat6;
        let x_908 : vec2<f32> = max(vec2<f32>(x_906.x, x_906.y), vec2<f32>(0.0f, 0.0f));
        let x_909 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_908.x, x_908.y, x_909.z, x_909.w);
        let x_911 : vec4<f32> = u_xlat8;
        let x_914 : vec4<f32> = u_xlat8;
        let x_917 : vec4<f32> = u_xlat7;
        let x_919 : vec2<f32> = ((-(vec2<f32>(x_911.x, x_911.y)) * vec2<f32>(x_914.x, x_914.y)) + vec2<f32>(x_917.y, x_917.w));
        let x_920 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_920.x, x_919.x, x_920.z, x_919.y);
        let x_922 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_922 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_926 : f32 = u_xlat7.y;
        u_xlat8.z = (x_926 * 0.08163200318813323975f);
        let x_930 : vec2<f32> = u_xlat56;
        let x_933 : vec2<f32> = (vec2<f32>(x_930.y, x_930.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_934 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_933.x, x_933.y, x_934.z, x_934.w);
        let x_936 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_936.x, x_936.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_940 : f32 = u_xlat7.w;
        u_xlat10.z = (x_940 * 0.08163200318813323975f);
        let x_944 : f32 = u_xlat10.y;
        u_xlat8.x = x_944;
        let x_946 : vec4<f32> = u_xlat6;
        let x_953 : vec2<f32> = ((vec2<f32>(x_946.x, x_946.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_954 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_954.x, x_953.x, x_954.z, x_953.y);
        let x_956 : vec4<f32> = u_xlat6;
        let x_960 : vec2<f32> = ((vec2<f32>(x_956.x, x_956.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_961 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_960.x, x_961.y, x_960.y, x_961.w);
        let x_964 : f32 = u_xlat56.x;
        u_xlat7.y = x_964;
        let x_967 : f32 = u_xlat9.y;
        u_xlat7.w = x_967;
        let x_969 : vec4<f32> = u_xlat7;
        let x_970 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_969 + x_970);
        let x_972 : vec4<f32> = u_xlat6;
        let x_975 : vec2<f32> = ((vec2<f32>(x_972.y, x_972.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_976 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_976.x, x_975.x, x_976.z, x_975.y);
        let x_978 : vec4<f32> = u_xlat6;
        let x_981 : vec2<f32> = ((vec2<f32>(x_978.y, x_978.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_982 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_981.x, x_982.y, x_981.y, x_982.w);
        let x_985 : f32 = u_xlat56.y;
        u_xlat9.y = x_985;
        let x_987 : vec4<f32> = u_xlat9;
        let x_988 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_987 + x_988);
        let x_990 : vec4<f32> = u_xlat7;
        let x_991 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_990 / x_991);
        let x_993 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_993 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_999 : vec4<f32> = u_xlat9;
        let x_1000 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_999 / x_1000);
        let x_1002 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1002 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1004 : vec4<f32> = u_xlat7;
        let x_1007 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1004.w, x_1004.x, x_1004.y, x_1004.z) * vec4<f32>(x_1007.x, x_1007.x, x_1007.x, x_1007.x));
        let x_1010 : vec4<f32> = u_xlat9;
        let x_1013 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1010.x, x_1010.w, x_1010.y, x_1010.z) * vec4<f32>(x_1013.y, x_1013.y, x_1013.y, x_1013.y));
        let x_1016 : vec4<f32> = u_xlat7;
        let x_1017 : vec3<f32> = vec3<f32>(x_1016.y, x_1016.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1017.x, x_1018.y, x_1017.y, x_1017.z);
        let x_1021 : f32 = u_xlat9.x;
        u_xlat10.y = x_1021;
        let x_1023 : vec3<f32> = u_xlat30;
        let x_1026 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1029 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1023.x, x_1023.y, x_1023.x, x_1023.y) * vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y)) + vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1029.y));
        let x_1032 : vec3<f32> = u_xlat30;
        let x_1035 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1038 : vec4<f32> = u_xlat10;
        let x_1040 : vec2<f32> = ((vec2<f32>(x_1032.x, x_1032.y) * vec2<f32>(x_1035.x, x_1035.y)) + vec2<f32>(x_1038.w, x_1038.y));
        let x_1041 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1040.x, x_1040.y, x_1041.z, x_1041.w);
        let x_1044 : f32 = u_xlat10.y;
        u_xlat7.y = x_1044;
        let x_1047 : f32 = u_xlat9.z;
        u_xlat10.y = x_1047;
        let x_1049 : vec3<f32> = u_xlat30;
        let x_1052 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1055 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1049.x, x_1049.y, x_1049.x, x_1049.y) * vec4<f32>(x_1052.x, x_1052.y, x_1052.x, x_1052.y)) + vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1055.y));
        let x_1059 : vec3<f32> = u_xlat30;
        let x_1062 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(x_1062.x, x_1062.y)) + vec2<f32>(x_1065.w, x_1065.y));
        let x_1069 : f32 = u_xlat10.y;
        u_xlat7.z = x_1069;
        let x_1071 : vec3<f32> = u_xlat30;
        let x_1074 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1077 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1071.x, x_1071.y, x_1071.x, x_1071.y) * vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y)) + vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.z));
        let x_1081 : f32 = u_xlat9.w;
        u_xlat10.y = x_1081;
        let x_1084 : vec3<f32> = u_xlat30;
        let x_1087 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y) * vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y)) + vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1090.y));
        let x_1094 : vec3<f32> = u_xlat30;
        let x_1097 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat10;
        let x_1102 : vec2<f32> = ((vec2<f32>(x_1094.x, x_1094.y) * vec2<f32>(x_1097.x, x_1097.y)) + vec2<f32>(x_1100.w, x_1100.y));
        let x_1103 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1102.x, x_1102.y, x_1103.z);
        let x_1106 : f32 = u_xlat10.y;
        u_xlat7.w = x_1106;
        let x_1109 : vec3<f32> = u_xlat30;
        let x_1112 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1115 : vec4<f32> = u_xlat7;
        let x_1117 : vec2<f32> = ((vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(x_1112.x, x_1112.y)) + vec2<f32>(x_1115.x, x_1115.w));
        let x_1118 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
        let x_1120 : vec4<f32> = u_xlat10;
        let x_1121 : vec3<f32> = vec3<f32>(x_1120.x, x_1120.z, x_1120.w);
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1122.y, x_1121.y, x_1121.z);
        let x_1124 : vec3<f32> = u_xlat30;
        let x_1127 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1130 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y) * vec4<f32>(x_1127.x, x_1127.y, x_1127.x, x_1127.y)) + vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1130.y));
        let x_1134 : vec3<f32> = u_xlat30;
        let x_1137 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1134.x, x_1134.y) * vec2<f32>(x_1137.x, x_1137.y)) + vec2<f32>(x_1140.w, x_1140.y));
        let x_1144 : f32 = u_xlat7.x;
        u_xlat9.x = x_1144;
        let x_1146 : vec3<f32> = u_xlat30;
        let x_1149 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1152 : vec4<f32> = u_xlat9;
        let x_1154 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(x_1149.x, x_1149.y)) + vec2<f32>(x_1152.x, x_1152.y));
        let x_1155 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1154.x, x_1154.y, x_1155.z);
        let x_1158 : vec4<f32> = u_xlat6;
        let x_1160 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1158.x, x_1158.x, x_1158.x, x_1158.x) * x_1160);
        let x_1163 : vec4<f32> = u_xlat6;
        let x_1165 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1163.y, x_1163.y, x_1163.y, x_1163.y) * x_1165);
        let x_1168 : vec4<f32> = u_xlat6;
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1168.z, x_1168.z, x_1168.z, x_1168.z) * x_1170);
        let x_1172 : vec4<f32> = u_xlat6;
        let x_1174 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1172.w, x_1172.w, x_1172.w, x_1172.w) * x_1174);
        let x_1177 : vec4<f32> = u_xlat11;
        let x_1178 : vec2<f32> = vec2<f32>(x_1177.x, x_1177.y);
        let x_1180 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1178.x, x_1178.y, x_1180);
        let x_1187 : vec3<f32> = txVec13;
        let x_1189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1187.xy, x_1187.z);
        u_xlat80 = x_1189;
        let x_1191 : vec4<f32> = u_xlat11;
        let x_1192 : vec2<f32> = vec2<f32>(x_1191.z, x_1191.w);
        let x_1194 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1192.x, x_1192.y, x_1194);
        let x_1201 : vec3<f32> = txVec14;
        let x_1203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1201.xy, x_1201.z);
        u_xlat7.x = x_1203;
        let x_1206 : f32 = u_xlat7.x;
        let x_1208 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1206 * x_1208);
        let x_1212 : f32 = u_xlat17.x;
        let x_1213 : f32 = u_xlat80;
        let x_1216 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1212 * x_1213) + x_1216);
        let x_1219 : vec4<f32> = u_xlat12;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.x, x_1219.y);
        let x_1222 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec15;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1229.xy, x_1229.z);
        u_xlat7.x = x_1231;
        let x_1234 : f32 = u_xlat17.z;
        let x_1236 : f32 = u_xlat7.x;
        let x_1238 : f32 = u_xlat80;
        u_xlat80 = ((x_1234 * x_1236) + x_1238);
        let x_1241 : vec4<f32> = u_xlat14;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.x, x_1241.y);
        let x_1244 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec16;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat7.x = x_1253;
        let x_1256 : f32 = u_xlat17.w;
        let x_1258 : f32 = u_xlat7.x;
        let x_1260 : f32 = u_xlat80;
        u_xlat80 = ((x_1256 * x_1258) + x_1260);
        let x_1263 : vec4<f32> = u_xlat13;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.x, x_1263.y);
        let x_1266 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec17;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1273.xy, x_1273.z);
        u_xlat7.x = x_1275;
        let x_1278 : f32 = u_xlat18.x;
        let x_1280 : f32 = u_xlat7.x;
        let x_1282 : f32 = u_xlat80;
        u_xlat80 = ((x_1278 * x_1280) + x_1282);
        let x_1285 : vec4<f32> = u_xlat13;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.z, x_1285.w);
        let x_1288 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec18;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat7.x = x_1297;
        let x_1300 : f32 = u_xlat18.y;
        let x_1302 : f32 = u_xlat7.x;
        let x_1304 : f32 = u_xlat80;
        u_xlat80 = ((x_1300 * x_1302) + x_1304);
        let x_1307 : vec2<f32> = u_xlat62;
        let x_1309 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1307.x, x_1307.y, x_1309);
        let x_1316 : vec3<f32> = txVec19;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1316.xy, x_1316.z);
        u_xlat7.x = x_1318;
        let x_1321 : f32 = u_xlat18.z;
        let x_1323 : f32 = u_xlat7.x;
        let x_1325 : f32 = u_xlat80;
        u_xlat80 = ((x_1321 * x_1323) + x_1325);
        let x_1328 : vec4<f32> = u_xlat14;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.z, x_1328.w);
        let x_1331 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1338 : vec3<f32> = txVec20;
        let x_1340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1338.xy, x_1338.z);
        u_xlat7.x = x_1340;
        let x_1343 : f32 = u_xlat18.w;
        let x_1345 : f32 = u_xlat7.x;
        let x_1347 : f32 = u_xlat80;
        u_xlat80 = ((x_1343 * x_1345) + x_1347);
        let x_1350 : vec4<f32> = u_xlat15;
        let x_1351 : vec2<f32> = vec2<f32>(x_1350.x, x_1350.y);
        let x_1353 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
        let x_1360 : vec3<f32> = txVec21;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1360.xy, x_1360.z);
        u_xlat7.x = x_1362;
        let x_1365 : f32 = u_xlat19.x;
        let x_1367 : f32 = u_xlat7.x;
        let x_1369 : f32 = u_xlat80;
        u_xlat80 = ((x_1365 * x_1367) + x_1369);
        let x_1372 : vec4<f32> = u_xlat15;
        let x_1373 : vec2<f32> = vec2<f32>(x_1372.z, x_1372.w);
        let x_1375 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1373.x, x_1373.y, x_1375);
        let x_1382 : vec3<f32> = txVec22;
        let x_1384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1382.xy, x_1382.z);
        u_xlat7.x = x_1384;
        let x_1387 : f32 = u_xlat19.y;
        let x_1389 : f32 = u_xlat7.x;
        let x_1391 : f32 = u_xlat80;
        u_xlat80 = ((x_1387 * x_1389) + x_1391);
        let x_1394 : vec3<f32> = u_xlat32;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.x, x_1394.y);
        let x_1397 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec23;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1404.xy, x_1404.z);
        u_xlat7.x = x_1406;
        let x_1409 : f32 = u_xlat19.z;
        let x_1411 : f32 = u_xlat7.x;
        let x_1413 : f32 = u_xlat80;
        u_xlat80 = ((x_1409 * x_1411) + x_1413);
        let x_1416 : vec4<f32> = u_xlat16;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.x, x_1416.y);
        let x_1419 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec24;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1426.xy, x_1426.z);
        u_xlat7.x = x_1428;
        let x_1431 : f32 = u_xlat19.w;
        let x_1433 : f32 = u_xlat7.x;
        let x_1435 : f32 = u_xlat80;
        u_xlat80 = ((x_1431 * x_1433) + x_1435);
        let x_1438 : vec4<f32> = u_xlat10;
        let x_1439 : vec2<f32> = vec2<f32>(x_1438.x, x_1438.y);
        let x_1441 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec25;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1448.xy, x_1448.z);
        u_xlat7.x = x_1450;
        let x_1453 : f32 = u_xlat6.x;
        let x_1455 : f32 = u_xlat7.x;
        let x_1457 : f32 = u_xlat80;
        u_xlat80 = ((x_1453 * x_1455) + x_1457);
        let x_1460 : vec4<f32> = u_xlat10;
        let x_1461 : vec2<f32> = vec2<f32>(x_1460.z, x_1460.w);
        let x_1463 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1461.x, x_1461.y, x_1463);
        let x_1470 : vec3<f32> = txVec26;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1470.xy, x_1470.z);
        u_xlat6.x = x_1472;
        let x_1475 : f32 = u_xlat6.y;
        let x_1477 : f32 = u_xlat6.x;
        let x_1479 : f32 = u_xlat80;
        u_xlat80 = ((x_1475 * x_1477) + x_1479);
        let x_1482 : vec2<f32> = u_xlat59;
        let x_1484 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec27;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1491.xy, x_1491.z);
        u_xlat6.x = x_1493;
        let x_1496 : f32 = u_xlat6.z;
        let x_1498 : f32 = u_xlat6.x;
        let x_1500 : f32 = u_xlat80;
        u_xlat80 = ((x_1496 * x_1498) + x_1500);
        let x_1503 : vec3<f32> = u_xlat30;
        let x_1504 : vec2<f32> = vec2<f32>(x_1503.x, x_1503.y);
        let x_1506 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1513 : vec3<f32> = txVec28;
        let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1513.xy, x_1513.z);
        u_xlat30.x = x_1515;
        let x_1518 : f32 = u_xlat6.w;
        let x_1520 : f32 = u_xlat30.x;
        let x_1522 : f32 = u_xlat80;
        u_xlat5.x = ((x_1518 * x_1520) + x_1522);
      }
    }
  } else {
    let x_1527 : vec4<f32> = vs_TEXCOORD8;
    let x_1528 : vec2<f32> = vec2<f32>(x_1527.x, x_1527.y);
    let x_1530 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
    let x_1537 : vec3<f32> = txVec29;
    let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
    u_xlat5.x = x_1539;
  }
  let x_1542 : f32 = x_264.x_MainLightShadowParams.x;
  u_xlat30.x = (-(x_1542) + 1.0f);
  let x_1547 : f32 = u_xlat5.x;
  let x_1549 : f32 = x_264.x_MainLightShadowParams.x;
  let x_1552 : f32 = u_xlat30.x;
  u_xlat5.x = ((x_1547 * x_1549) + x_1552);
  let x_1556 : f32 = vs_TEXCOORD8.z;
  u_xlatb30 = (0.0f >= x_1556);
  let x_1560 : f32 = vs_TEXCOORD8.z;
  u_xlatb55 = (x_1560 >= 1.0f);
  let x_1562 : bool = u_xlatb55;
  let x_1563 : bool = u_xlatb30;
  u_xlatb30 = (x_1562 | x_1563);
  let x_1565 : bool = u_xlatb30;
  if (x_1565) {
    x_1566 = 1.0f;
  } else {
    let x_1571 : f32 = u_xlat5.x;
    x_1566 = x_1571;
  }
  let x_1572 : f32 = x_1566;
  u_xlat5.x = x_1572;
  let x_1574 : vec3<f32> = vs_TEXCOORD7;
  let x_1576 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat30 = (x_1574 + -(x_1576));
  let x_1579 : vec3<f32> = u_xlat30;
  let x_1580 : vec3<f32> = u_xlat30;
  u_xlat30.x = dot(x_1579, x_1580);
  let x_1584 : f32 = u_xlat30.x;
  let x_1586 : f32 = x_264.x_MainLightShadowParams.z;
  let x_1589 : f32 = x_264.x_MainLightShadowParams.w;
  u_xlat55 = ((x_1584 * x_1586) + x_1589);
  let x_1591 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1591, 0.0f, 1.0f);
  let x_1594 : f32 = u_xlat5.x;
  u_xlat80 = (-(x_1594) + 1.0f);
  let x_1597 : f32 = u_xlat55;
  let x_1598 : f32 = u_xlat80;
  let x_1601 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1597 * x_1598) + x_1601);
  let x_1604 : vec3<f32> = u_xlat3;
  let x_1606 : vec3<f32> = u_xlat26;
  u_xlat55 = dot(-(x_1604), x_1606);
  let x_1608 : f32 = u_xlat55;
  let x_1609 : f32 = u_xlat55;
  u_xlat55 = (x_1608 + x_1609);
  let x_1611 : vec3<f32> = u_xlat26;
  let x_1612 : f32 = u_xlat55;
  let x_1616 : vec3<f32> = u_xlat3;
  let x_1618 : vec3<f32> = ((x_1611 * -(vec3<f32>(x_1612, x_1612, x_1612))) + -(x_1616));
  let x_1619 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1618.x, x_1618.y, x_1618.z, x_1619.w);
  let x_1621 : vec3<f32> = u_xlat26;
  let x_1622 : vec3<f32> = u_xlat3;
  u_xlat55 = dot(x_1621, x_1622);
  let x_1624 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1624, 0.0f, 1.0f);
  let x_1626 : f32 = u_xlat55;
  u_xlat55 = (-(x_1626) + 1.0f);
  let x_1629 : f32 = u_xlat55;
  let x_1630 : f32 = u_xlat55;
  u_xlat55 = (x_1629 * x_1630);
  let x_1632 : f32 = u_xlat55;
  let x_1633 : f32 = u_xlat55;
  u_xlat55 = (x_1632 * x_1633);
  let x_1635 : f32 = u_xlat1;
  u_xlat80 = ((-(x_1635) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1641 : f32 = u_xlat1;
  let x_1642 : f32 = u_xlat80;
  u_xlat1 = (x_1641 * x_1642);
  let x_1644 : f32 = u_xlat1;
  u_xlat1 = (x_1644 * 6.0f);
  let x_1655 : vec4<f32> = u_xlat6;
  let x_1657 : f32 = u_xlat1;
  let x_1658 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1655.x, x_1655.y, x_1655.z), x_1657);
  u_xlat6 = x_1658;
  let x_1660 : f32 = u_xlat6.w;
  u_xlat1 = (x_1660 + -1.0f);
  let x_1668 : f32 = x_1666.unity_SpecCube0_HDR.w;
  let x_1669 : f32 = u_xlat1;
  u_xlat1 = ((x_1668 * x_1669) + 1.0f);
  let x_1672 : f32 = u_xlat1;
  u_xlat1 = max(x_1672, 0.0f);
  let x_1674 : f32 = u_xlat1;
  u_xlat1 = log2(x_1674);
  let x_1676 : f32 = u_xlat1;
  let x_1678 : f32 = x_1666.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1676 * x_1678);
  let x_1680 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1680);
  let x_1682 : f32 = u_xlat1;
  let x_1684 : f32 = x_1666.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1682 * x_1684);
  let x_1686 : vec4<f32> = u_xlat6;
  let x_1688 : f32 = u_xlat1;
  let x_1690 : vec3<f32> = (vec3<f32>(x_1686.x, x_1686.y, x_1686.z) * vec3<f32>(x_1688, x_1688, x_1688));
  let x_1691 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1691.w);
  let x_1693 : f32 = u_xlat77;
  let x_1695 : f32 = u_xlat77;
  let x_1699 : vec2<f32> = ((vec2<f32>(x_1693, x_1693) * vec2<f32>(x_1695, x_1695)) + vec2<f32>(-1.0f, 1.0f));
  let x_1700 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1699.x, x_1699.y, x_1700.z, x_1700.w);
  let x_1703 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1703);
  let x_1705 : vec4<f32> = u_xlat0;
  let x_1708 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1705.x, x_1705.y, x_1705.z)) + vec3<f32>(x_1708, x_1708, x_1708));
  let x_1711 : f32 = u_xlat55;
  let x_1713 : vec3<f32> = u_xlat32;
  let x_1715 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1711, x_1711, x_1711) * x_1713) + vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
  let x_1718 : f32 = u_xlat1;
  let x_1720 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1718, x_1718, x_1718) * x_1720);
  let x_1722 : vec4<f32> = u_xlat6;
  let x_1724 : vec3<f32> = u_xlat32;
  let x_1725 : vec3<f32> = (vec3<f32>(x_1722.x, x_1722.y, x_1722.z) * x_1724);
  let x_1726 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1726.w);
  let x_1728 : vec4<f32> = u_xlat2;
  let x_1730 : vec3<f32> = u_xlat4;
  let x_1732 : vec4<f32> = u_xlat6;
  let x_1734 : vec3<f32> = ((vec3<f32>(x_1728.x, x_1728.y, x_1728.z) * x_1730) + vec3<f32>(x_1732.x, x_1732.y, x_1732.z));
  let x_1735 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);
  let x_1738 : f32 = u_xlat5.x;
  let x_1740 : f32 = x_1666.unity_LightData.z;
  u_xlat75 = (x_1738 * x_1740);
  let x_1742 : vec3<f32> = u_xlat26;
  let x_1744 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1742, vec3<f32>(x_1744.x, x_1744.y, x_1744.z));
  let x_1747 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1747, 0.0f, 1.0f);
  let x_1749 : f32 = u_xlat75;
  let x_1750 : f32 = u_xlat1;
  u_xlat75 = (x_1749 * x_1750);
  let x_1752 : f32 = u_xlat75;
  let x_1755 : vec4<f32> = x_29.x_MainLightColor;
  let x_1757 : vec3<f32> = (vec3<f32>(x_1752, x_1752, x_1752) * vec3<f32>(x_1755.x, x_1755.y, x_1755.z));
  let x_1758 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1757.x, x_1758.y, x_1757.y, x_1757.z);
  let x_1760 : vec3<f32> = u_xlat3;
  let x_1762 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1764 : vec3<f32> = (x_1760 + vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
  let x_1765 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
  let x_1767 : vec4<f32> = u_xlat6;
  let x_1769 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1767.x, x_1767.y, x_1767.z), vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
  let x_1772 : f32 = u_xlat75;
  u_xlat75 = max(x_1772, 1.17549435e-38f);
  let x_1775 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1775);
  let x_1777 : f32 = u_xlat75;
  let x_1779 : vec4<f32> = u_xlat6;
  let x_1781 : vec3<f32> = (vec3<f32>(x_1777, x_1777, x_1777) * vec3<f32>(x_1779.x, x_1779.y, x_1779.z));
  let x_1782 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
  let x_1784 : vec3<f32> = u_xlat26;
  let x_1785 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(x_1784, vec3<f32>(x_1785.x, x_1785.y, x_1785.z));
  let x_1788 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1788, 0.0f, 1.0f);
  let x_1791 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1793 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_1791.x, x_1791.y, x_1791.z), vec3<f32>(x_1793.x, x_1793.y, x_1793.z));
  let x_1796 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1796, 0.0f, 1.0f);
  let x_1798 : f32 = u_xlat75;
  let x_1799 : f32 = u_xlat75;
  u_xlat75 = (x_1798 * x_1799);
  let x_1801 : f32 = u_xlat75;
  let x_1803 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1801 * x_1803) + 1.00001001358032226562f);
  let x_1807 : f32 = u_xlat1;
  let x_1808 : f32 = u_xlat1;
  u_xlat1 = (x_1807 * x_1808);
  let x_1810 : f32 = u_xlat75;
  let x_1811 : f32 = u_xlat75;
  u_xlat75 = (x_1810 * x_1811);
  let x_1813 : f32 = u_xlat1;
  u_xlat1 = max(x_1813, 0.10000000149011611938f);
  let x_1816 : f32 = u_xlat75;
  let x_1817 : f32 = u_xlat1;
  u_xlat75 = (x_1816 * x_1817);
  let x_1819 : f32 = u_xlat78;
  let x_1820 : f32 = u_xlat75;
  u_xlat75 = (x_1819 * x_1820);
  let x_1822 : f32 = u_xlat79;
  let x_1823 : f32 = u_xlat75;
  u_xlat75 = (x_1822 / x_1823);
  let x_1825 : vec4<f32> = u_xlat0;
  let x_1827 : f32 = u_xlat75;
  let x_1830 : vec3<f32> = u_xlat4;
  let x_1831 : vec3<f32> = ((vec3<f32>(x_1825.x, x_1825.y, x_1825.z) * vec3<f32>(x_1827, x_1827, x_1827)) + x_1830);
  let x_1832 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1832.w);
  let x_1836 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1838 : f32 = x_1666.unity_LightData.y;
  u_xlat75 = min(x_1836, x_1838);
  let x_1842 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1842));
  let x_1846 : f32 = u_xlat30.x;
  let x_1849 : f32 = x_264.x_AdditionalShadowFadeParams.x;
  let x_1852 : f32 = x_264.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1846 * x_1849) + x_1852);
  let x_1854 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1854, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1866 : u32 = u_xlatu_loop_1;
    let x_1867 : u32 = u_xlatu75;
    if ((x_1866 < x_1867)) {
    } else {
      break;
    }
    let x_1870 : u32 = u_xlatu_loop_1;
    u_xlatu30 = (x_1870 >> 2u);
    let x_1874 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_1874 & 3u));
    let x_1877 : u32 = u_xlatu30;
    let x_1880 : vec4<f32> = x_1666.unity_LightIndices[bitcast<i32>(x_1877)];
    let x_1890 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1895 : vec4<u32> = indexable[x_1890];
    u_xlat30.x = dot(x_1880, bitcast<vec4<f32>>(x_1895));
    let x_1901 : f32 = u_xlat30.x;
    u_xlati30 = i32(x_1901);
    let x_1903 : vec3<f32> = vs_TEXCOORD7;
    let x_1914 : i32 = u_xlati30;
    let x_1916 : vec4<f32> = x_1913.x_AdditionalLightsPosition[x_1914];
    let x_1919 : i32 = u_xlati30;
    let x_1921 : vec4<f32> = x_1913.x_AdditionalLightsPosition[x_1919];
    let x_1923 : vec3<f32> = ((-(x_1903) * vec3<f32>(x_1916.w, x_1916.w, x_1916.w)) + vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
    let x_1924 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
    let x_1927 : vec4<f32> = u_xlat8;
    let x_1929 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_1927.x, x_1927.y, x_1927.z), vec3<f32>(x_1929.x, x_1929.y, x_1929.z));
    let x_1932 : f32 = u_xlat81;
    u_xlat81 = max(x_1932, 0.00006103515625f);
    let x_1936 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_1936);
    let x_1938 : f32 = u_xlat83;
    let x_1940 : vec4<f32> = u_xlat8;
    let x_1942 : vec3<f32> = (vec3<f32>(x_1938, x_1938, x_1938) * vec3<f32>(x_1940.x, x_1940.y, x_1940.z));
    let x_1943 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1942.x, x_1942.y, x_1942.z, x_1943.w);
    let x_1946 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_1946);
    let x_1948 : f32 = u_xlat81;
    let x_1949 : i32 = u_xlati30;
    let x_1951 : f32 = x_1913.x_AdditionalLightsAttenuation[x_1949].x;
    u_xlat81 = (x_1948 * x_1951);
    let x_1953 : f32 = u_xlat81;
    let x_1955 : f32 = u_xlat81;
    u_xlat81 = ((-(x_1953) * x_1955) + 1.0f);
    let x_1958 : f32 = u_xlat81;
    u_xlat81 = max(x_1958, 0.0f);
    let x_1960 : f32 = u_xlat81;
    let x_1961 : f32 = u_xlat81;
    u_xlat81 = (x_1960 * x_1961);
    let x_1963 : f32 = u_xlat81;
    let x_1964 : f32 = u_xlat84;
    u_xlat81 = (x_1963 * x_1964);
    let x_1966 : i32 = u_xlati30;
    let x_1968 : vec4<f32> = x_1913.x_AdditionalLightsSpotDir[x_1966];
    let x_1970 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_1968.x, x_1968.y, x_1968.z), vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
    let x_1973 : f32 = u_xlat84;
    let x_1974 : i32 = u_xlati30;
    let x_1976 : f32 = x_1913.x_AdditionalLightsAttenuation[x_1974].z;
    let x_1978 : i32 = u_xlati30;
    let x_1980 : f32 = x_1913.x_AdditionalLightsAttenuation[x_1978].w;
    u_xlat84 = ((x_1973 * x_1976) + x_1980);
    let x_1982 : f32 = u_xlat84;
    u_xlat84 = clamp(x_1982, 0.0f, 1.0f);
    let x_1984 : f32 = u_xlat84;
    let x_1985 : f32 = u_xlat84;
    u_xlat84 = (x_1984 * x_1985);
    let x_1987 : f32 = u_xlat81;
    let x_1988 : f32 = u_xlat84;
    u_xlat81 = (x_1987 * x_1988);
    let x_1992 : i32 = u_xlati30;
    let x_1994 : f32 = x_264.x_AdditionalShadowParams[x_1992].w;
    u_xlati84 = i32(x_1994);
    let x_1999 : i32 = u_xlati84;
    u_xlatb10.x = (x_1999 >= 0i);
    let x_2003 : bool = u_xlatb10.x;
    if (x_2003) {
      let x_2007 : i32 = u_xlati30;
      let x_2009 : f32 = x_264.x_AdditionalShadowParams[x_2007].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2009, x_2009, x_2009, x_2009))));
      let x_2016 : bool = u_xlatb10.x;
      if (x_2016) {
        let x_2019 : vec4<f32> = u_xlat9;
        let x_2022 : vec4<f32> = u_xlat9;
        let x_2025 : vec4<bool> = (abs(vec4<f32>(x_2019.z, x_2019.z, x_2019.y, x_2019.z)) >= abs(vec4<f32>(x_2022.x, x_2022.y, x_2022.x, x_2022.x)));
        u_xlatb10 = vec3<bool>(x_2025.x, x_2025.y, x_2025.z);
        let x_2028 : bool = u_xlatb10.y;
        let x_2030 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2028 & x_2030);
        let x_2034 : vec4<f32> = u_xlat9;
        let x_2037 : vec4<bool> = (-(vec4<f32>(x_2034.z, x_2034.y, x_2034.x, x_2034.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2037.x, x_2037.y, x_2037.z);
        let x_2041 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2041);
        let x_2046 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2046);
        let x_2051 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2051);
        let x_2056 : bool = u_xlatb10.z;
        if (x_2056) {
          let x_2061 : f32 = u_xlat35.z;
          x_2057 = x_2061;
        } else {
          let x_2064 : f32 = u_xlat11.x;
          x_2057 = x_2064;
        }
        let x_2065 : f32 = x_2057;
        u_xlat60 = x_2065;
        let x_2067 : bool = u_xlatb10.x;
        if (x_2067) {
          let x_2072 : f32 = u_xlat35.x;
          x_2068 = x_2072;
        } else {
          let x_2074 : f32 = u_xlat60;
          x_2068 = x_2074;
        }
        let x_2075 : f32 = x_2068;
        u_xlat10.x = x_2075;
        let x_2077 : i32 = u_xlati30;
        let x_2079 : f32 = x_264.x_AdditionalShadowParams[x_2077].w;
        u_xlat35.x = trunc(x_2079);
        let x_2083 : f32 = u_xlat10.x;
        let x_2085 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2083 + x_2085);
        let x_2089 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2089);
      }
      let x_2091 : i32 = u_xlati84;
      u_xlati84 = (x_2091 << bitcast<u32>(2i));
      let x_2093 : vec3<f32> = vs_TEXCOORD7;
      let x_2096 : i32 = u_xlati84;
      let x_2099 : i32 = u_xlati84;
      let x_2103 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_2096 + 1i) / 4i)][((x_2099 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2093.y, x_2093.y, x_2093.y, x_2093.y) * x_2103);
      let x_2105 : i32 = u_xlati84;
      let x_2107 : i32 = u_xlati84;
      let x_2110 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[(x_2105 / 4i)][(x_2107 % 4i)];
      let x_2111 : vec3<f32> = vs_TEXCOORD7;
      let x_2114 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2110 * vec4<f32>(x_2111.x, x_2111.x, x_2111.x, x_2111.x)) + x_2114);
      let x_2116 : i32 = u_xlati84;
      let x_2119 : i32 = u_xlati84;
      let x_2123 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_2116 + 2i) / 4i)][((x_2119 + 2i) % 4i)];
      let x_2124 : vec3<f32> = vs_TEXCOORD7;
      let x_2127 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2123 * vec4<f32>(x_2124.z, x_2124.z, x_2124.z, x_2124.z)) + x_2127);
      let x_2129 : vec4<f32> = u_xlat10;
      let x_2130 : i32 = u_xlati84;
      let x_2133 : i32 = u_xlati84;
      let x_2137 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_2130 + 3i) / 4i)][((x_2133 + 3i) % 4i)];
      u_xlat10 = (x_2129 + x_2137);
      let x_2139 : vec4<f32> = u_xlat10;
      let x_2141 : vec4<f32> = u_xlat10;
      let x_2143 : vec3<f32> = (vec3<f32>(x_2139.x, x_2139.y, x_2139.z) / vec3<f32>(x_2141.w, x_2141.w, x_2141.w));
      let x_2144 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2143.x, x_2143.y, x_2143.z, x_2144.w);
      let x_2147 : i32 = u_xlati30;
      let x_2149 : f32 = x_264.x_AdditionalShadowParams[x_2147].y;
      u_xlatb84 = (0.0f < x_2149);
      let x_2151 : bool = u_xlatb84;
      if (x_2151) {
        let x_2154 : i32 = u_xlati30;
        let x_2156 : f32 = x_264.x_AdditionalShadowParams[x_2154].y;
        u_xlatb84 = (1.0f == x_2156);
        let x_2158 : bool = u_xlatb84;
        if (x_2158) {
          let x_2161 : vec4<f32> = u_xlat10;
          let x_2165 : vec4<f32> = x_264.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2161.x, x_2161.y, x_2161.x, x_2161.y) + x_2165);
          let x_2168 : vec4<f32> = u_xlat11;
          let x_2169 : vec2<f32> = vec2<f32>(x_2168.x, x_2168.y);
          let x_2171 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2169.x, x_2169.y, x_2171);
          let x_2179 : vec3<f32> = txVec30;
          let x_2181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2179.xy, x_2179.z);
          u_xlat12.x = x_2181;
          let x_2184 : vec4<f32> = u_xlat11;
          let x_2185 : vec2<f32> = vec2<f32>(x_2184.z, x_2184.w);
          let x_2187 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2185.x, x_2185.y, x_2187);
          let x_2194 : vec3<f32> = txVec31;
          let x_2196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2194.xy, x_2194.z);
          u_xlat12.y = x_2196;
          let x_2198 : vec4<f32> = u_xlat10;
          let x_2202 : vec4<f32> = x_264.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2198.x, x_2198.y, x_2198.x, x_2198.y) + x_2202);
          let x_2205 : vec4<f32> = u_xlat11;
          let x_2206 : vec2<f32> = vec2<f32>(x_2205.x, x_2205.y);
          let x_2208 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2206.x, x_2206.y, x_2208);
          let x_2215 : vec3<f32> = txVec32;
          let x_2217 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2215.xy, x_2215.z);
          u_xlat12.z = x_2217;
          let x_2220 : vec4<f32> = u_xlat11;
          let x_2221 : vec2<f32> = vec2<f32>(x_2220.z, x_2220.w);
          let x_2223 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2221.x, x_2221.y, x_2223);
          let x_2230 : vec3<f32> = txVec33;
          let x_2232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2230.xy, x_2230.z);
          u_xlat12.w = x_2232;
          let x_2234 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2234, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2238 : i32 = u_xlati30;
          let x_2240 : f32 = x_264.x_AdditionalShadowParams[x_2238].y;
          u_xlatb85 = (2.0f == x_2240);
          let x_2242 : bool = u_xlatb85;
          if (x_2242) {
            let x_2245 : vec4<f32> = u_xlat10;
            let x_2249 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2252 : vec2<f32> = ((vec2<f32>(x_2245.x, x_2245.y) * vec2<f32>(x_2249.z, x_2249.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2253 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2252.x, x_2252.y, x_2253.z, x_2253.w);
            let x_2255 : vec4<f32> = u_xlat11;
            let x_2257 : vec2<f32> = floor(vec2<f32>(x_2255.x, x_2255.y));
            let x_2258 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2257.x, x_2257.y, x_2258.z, x_2258.w);
            let x_2261 : vec4<f32> = u_xlat10;
            let x_2264 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2267 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2261.x, x_2261.y) * vec2<f32>(x_2264.z, x_2264.w)) + -(vec2<f32>(x_2267.x, x_2267.y)));
            let x_2271 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2271.x, x_2271.x, x_2271.y, x_2271.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2274 : vec4<f32> = u_xlat12;
            let x_2276 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2274.x, x_2274.x, x_2274.z, x_2274.z) * vec4<f32>(x_2276.x, x_2276.x, x_2276.z, x_2276.z));
            let x_2279 : vec4<f32> = u_xlat13;
            let x_2281 : vec2<f32> = (vec2<f32>(x_2279.y, x_2279.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2282 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2281.x, x_2282.y, x_2281.y, x_2282.w);
            let x_2284 : vec4<f32> = u_xlat13;
            let x_2287 : vec2<f32> = u_xlat61;
            let x_2289 : vec2<f32> = ((vec2<f32>(x_2284.x, x_2284.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2287));
            let x_2290 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2289.x, x_2289.y, x_2290.z, x_2290.w);
            let x_2293 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2293) + vec2<f32>(1.0f, 1.0f));
            let x_2296 : vec2<f32> = u_xlat61;
            let x_2297 : vec2<f32> = min(x_2296, vec2<f32>(0.0f, 0.0f));
            let x_2298 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2297.x, x_2297.y, x_2298.z, x_2298.w);
            let x_2300 : vec4<f32> = u_xlat14;
            let x_2303 : vec4<f32> = u_xlat14;
            let x_2306 : vec2<f32> = u_xlat63;
            let x_2307 : vec2<f32> = ((-(vec2<f32>(x_2300.x, x_2300.y)) * vec2<f32>(x_2303.x, x_2303.y)) + x_2306);
            let x_2308 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2307.x, x_2307.y, x_2308.z, x_2308.w);
            let x_2310 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2310, vec2<f32>(0.0f, 0.0f));
            let x_2312 : vec2<f32> = u_xlat61;
            let x_2314 : vec2<f32> = u_xlat61;
            let x_2316 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2312) * x_2314) + vec2<f32>(x_2316.y, x_2316.w));
            let x_2319 : vec4<f32> = u_xlat14;
            let x_2321 : vec2<f32> = (vec2<f32>(x_2319.x, x_2319.y) + vec2<f32>(1.0f, 1.0f));
            let x_2322 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2321.x, x_2321.y, x_2322.z, x_2322.w);
            let x_2324 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2324 + vec2<f32>(1.0f, 1.0f));
            let x_2326 : vec4<f32> = u_xlat13;
            let x_2328 : vec2<f32> = (vec2<f32>(x_2326.x, x_2326.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2329 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2328.x, x_2328.y, x_2329.z, x_2329.w);
            let x_2331 : vec2<f32> = u_xlat63;
            let x_2332 : vec2<f32> = (x_2331 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2333 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2332.x, x_2332.y, x_2333.z, x_2333.w);
            let x_2335 : vec4<f32> = u_xlat14;
            let x_2337 : vec2<f32> = (vec2<f32>(x_2335.x, x_2335.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2338 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2337.x, x_2337.y, x_2338.z, x_2338.w);
            let x_2340 : vec2<f32> = u_xlat61;
            let x_2341 : vec2<f32> = (x_2340 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2342 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2341.x, x_2341.y, x_2342.z, x_2342.w);
            let x_2344 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2344.y, x_2344.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2348 : f32 = u_xlat14.x;
            u_xlat15.z = x_2348;
            let x_2351 : f32 = u_xlat61.x;
            u_xlat15.w = x_2351;
            let x_2354 : f32 = u_xlat16.x;
            u_xlat13.z = x_2354;
            let x_2357 : f32 = u_xlat12.x;
            u_xlat13.w = x_2357;
            let x_2359 : vec4<f32> = u_xlat13;
            let x_2361 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2359.z, x_2359.w, x_2359.x, x_2359.z) + vec4<f32>(x_2361.z, x_2361.w, x_2361.x, x_2361.z));
            let x_2365 : f32 = u_xlat15.y;
            u_xlat14.z = x_2365;
            let x_2368 : f32 = u_xlat61.y;
            u_xlat14.w = x_2368;
            let x_2371 : f32 = u_xlat13.y;
            u_xlat16.z = x_2371;
            let x_2374 : f32 = u_xlat12.z;
            u_xlat16.w = x_2374;
            let x_2376 : vec4<f32> = u_xlat14;
            let x_2378 : vec4<f32> = u_xlat16;
            let x_2380 : vec3<f32> = (vec3<f32>(x_2376.z, x_2376.y, x_2376.w) + vec3<f32>(x_2378.z, x_2378.y, x_2378.w));
            let x_2381 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
            let x_2383 : vec4<f32> = u_xlat13;
            let x_2385 : vec4<f32> = u_xlat17;
            let x_2387 : vec3<f32> = (vec3<f32>(x_2383.x, x_2383.z, x_2383.w) / vec3<f32>(x_2385.z, x_2385.w, x_2385.y));
            let x_2388 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2387.x, x_2387.y, x_2387.z, x_2388.w);
            let x_2390 : vec4<f32> = u_xlat13;
            let x_2392 : vec3<f32> = (vec3<f32>(x_2390.x, x_2390.y, x_2390.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2393 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2392.x, x_2392.y, x_2392.z, x_2393.w);
            let x_2395 : vec4<f32> = u_xlat16;
            let x_2397 : vec4<f32> = u_xlat12;
            let x_2399 : vec3<f32> = (vec3<f32>(x_2395.z, x_2395.y, x_2395.w) / vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
            let x_2400 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
            let x_2402 : vec4<f32> = u_xlat14;
            let x_2404 : vec3<f32> = (vec3<f32>(x_2402.x, x_2402.y, x_2402.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2405 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2404.x, x_2404.y, x_2404.z, x_2405.w);
            let x_2407 : vec4<f32> = u_xlat13;
            let x_2410 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2412 : vec3<f32> = (vec3<f32>(x_2407.y, x_2407.x, x_2407.z) * vec3<f32>(x_2410.x, x_2410.x, x_2410.x));
            let x_2413 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2413.w);
            let x_2415 : vec4<f32> = u_xlat14;
            let x_2418 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2420 : vec3<f32> = (vec3<f32>(x_2415.x, x_2415.y, x_2415.z) * vec3<f32>(x_2418.y, x_2418.y, x_2418.y));
            let x_2421 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2420.x, x_2420.y, x_2420.z, x_2421.w);
            let x_2424 : f32 = u_xlat14.x;
            u_xlat13.w = x_2424;
            let x_2426 : vec4<f32> = u_xlat11;
            let x_2429 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2432 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2426.x, x_2426.y, x_2426.x, x_2426.y) * vec4<f32>(x_2429.x, x_2429.y, x_2429.x, x_2429.y)) + vec4<f32>(x_2432.y, x_2432.w, x_2432.x, x_2432.w));
            let x_2435 : vec4<f32> = u_xlat11;
            let x_2438 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2441 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2435.x, x_2435.y) * vec2<f32>(x_2438.x, x_2438.y)) + vec2<f32>(x_2441.z, x_2441.w));
            let x_2445 : f32 = u_xlat13.y;
            u_xlat14.w = x_2445;
            let x_2447 : vec4<f32> = u_xlat14;
            let x_2448 : vec2<f32> = vec2<f32>(x_2447.y, x_2447.z);
            let x_2449 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2449.x, x_2448.x, x_2449.z, x_2448.y);
            let x_2451 : vec4<f32> = u_xlat11;
            let x_2454 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2457 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2451.x, x_2451.y, x_2451.x, x_2451.y) * vec4<f32>(x_2454.x, x_2454.y, x_2454.x, x_2454.y)) + vec4<f32>(x_2457.x, x_2457.y, x_2457.z, x_2457.y));
            let x_2460 : vec4<f32> = u_xlat11;
            let x_2463 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2466 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2460.x, x_2460.y, x_2460.x, x_2460.y) * vec4<f32>(x_2463.x, x_2463.y, x_2463.x, x_2463.y)) + vec4<f32>(x_2466.w, x_2466.y, x_2466.w, x_2466.z));
            let x_2469 : vec4<f32> = u_xlat11;
            let x_2472 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2475 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2469.x, x_2469.y, x_2469.x, x_2469.y) * vec4<f32>(x_2472.x, x_2472.y, x_2472.x, x_2472.y)) + vec4<f32>(x_2475.x, x_2475.w, x_2475.z, x_2475.w));
            let x_2478 : vec4<f32> = u_xlat12;
            let x_2480 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2478.x, x_2478.x, x_2478.x, x_2478.y) * vec4<f32>(x_2480.z, x_2480.w, x_2480.y, x_2480.z));
            let x_2483 : vec4<f32> = u_xlat12;
            let x_2485 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2483.y, x_2483.y, x_2483.z, x_2483.z) * x_2485);
            let x_2489 : f32 = u_xlat12.z;
            let x_2491 : f32 = u_xlat17.y;
            u_xlat85 = (x_2489 * x_2491);
            let x_2494 : vec4<f32> = u_xlat15;
            let x_2495 : vec2<f32> = vec2<f32>(x_2494.x, x_2494.y);
            let x_2497 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2495.x, x_2495.y, x_2497);
            let x_2504 : vec3<f32> = txVec34;
            let x_2506 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2504.xy, x_2504.z);
            u_xlat11.x = x_2506;
            let x_2509 : vec4<f32> = u_xlat15;
            let x_2510 : vec2<f32> = vec2<f32>(x_2509.z, x_2509.w);
            let x_2512 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2510.x, x_2510.y, x_2512);
            let x_2520 : vec3<f32> = txVec35;
            let x_2522 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2520.xy, x_2520.z);
            u_xlat36 = x_2522;
            let x_2523 : f32 = u_xlat36;
            let x_2525 : f32 = u_xlat18.y;
            u_xlat36 = (x_2523 * x_2525);
            let x_2528 : f32 = u_xlat18.x;
            let x_2530 : f32 = u_xlat11.x;
            let x_2532 : f32 = u_xlat36;
            u_xlat11.x = ((x_2528 * x_2530) + x_2532);
            let x_2536 : vec2<f32> = u_xlat61;
            let x_2538 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2536.x, x_2536.y, x_2538);
            let x_2545 : vec3<f32> = txVec36;
            let x_2547 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2545.xy, x_2545.z);
            u_xlat36 = x_2547;
            let x_2549 : f32 = u_xlat18.z;
            let x_2550 : f32 = u_xlat36;
            let x_2553 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2549 * x_2550) + x_2553);
            let x_2557 : vec4<f32> = u_xlat14;
            let x_2558 : vec2<f32> = vec2<f32>(x_2557.x, x_2557.y);
            let x_2560 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2558.x, x_2558.y, x_2560);
            let x_2567 : vec3<f32> = txVec37;
            let x_2569 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2567.xy, x_2567.z);
            u_xlat36 = x_2569;
            let x_2571 : f32 = u_xlat18.w;
            let x_2572 : f32 = u_xlat36;
            let x_2575 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2571 * x_2572) + x_2575);
            let x_2579 : vec4<f32> = u_xlat16;
            let x_2580 : vec2<f32> = vec2<f32>(x_2579.x, x_2579.y);
            let x_2582 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2580.x, x_2580.y, x_2582);
            let x_2589 : vec3<f32> = txVec38;
            let x_2591 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2589.xy, x_2589.z);
            u_xlat36 = x_2591;
            let x_2593 : f32 = u_xlat19.x;
            let x_2594 : f32 = u_xlat36;
            let x_2597 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2593 * x_2594) + x_2597);
            let x_2601 : vec4<f32> = u_xlat16;
            let x_2602 : vec2<f32> = vec2<f32>(x_2601.z, x_2601.w);
            let x_2604 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2602.x, x_2602.y, x_2604);
            let x_2611 : vec3<f32> = txVec39;
            let x_2613 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2611.xy, x_2611.z);
            u_xlat36 = x_2613;
            let x_2615 : f32 = u_xlat19.y;
            let x_2616 : f32 = u_xlat36;
            let x_2619 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2615 * x_2616) + x_2619);
            let x_2623 : vec4<f32> = u_xlat14;
            let x_2624 : vec2<f32> = vec2<f32>(x_2623.z, x_2623.w);
            let x_2626 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2624.x, x_2624.y, x_2626);
            let x_2633 : vec3<f32> = txVec40;
            let x_2635 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2633.xy, x_2633.z);
            u_xlat36 = x_2635;
            let x_2637 : f32 = u_xlat19.z;
            let x_2638 : f32 = u_xlat36;
            let x_2641 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2637 * x_2638) + x_2641);
            let x_2645 : vec4<f32> = u_xlat13;
            let x_2646 : vec2<f32> = vec2<f32>(x_2645.x, x_2645.y);
            let x_2648 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2646.x, x_2646.y, x_2648);
            let x_2655 : vec3<f32> = txVec41;
            let x_2657 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2655.xy, x_2655.z);
            u_xlat36 = x_2657;
            let x_2659 : f32 = u_xlat19.w;
            let x_2660 : f32 = u_xlat36;
            let x_2663 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2659 * x_2660) + x_2663);
            let x_2667 : vec4<f32> = u_xlat13;
            let x_2668 : vec2<f32> = vec2<f32>(x_2667.z, x_2667.w);
            let x_2670 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2668.x, x_2668.y, x_2670);
            let x_2677 : vec3<f32> = txVec42;
            let x_2679 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2677.xy, x_2677.z);
            u_xlat36 = x_2679;
            let x_2680 : f32 = u_xlat85;
            let x_2681 : f32 = u_xlat36;
            let x_2684 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2680 * x_2681) + x_2684);
          } else {
            let x_2687 : vec4<f32> = u_xlat10;
            let x_2690 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2693 : vec2<f32> = ((vec2<f32>(x_2687.x, x_2687.y) * vec2<f32>(x_2690.z, x_2690.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2694 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2693.x, x_2693.y, x_2694.z, x_2694.w);
            let x_2696 : vec4<f32> = u_xlat11;
            let x_2698 : vec2<f32> = floor(vec2<f32>(x_2696.x, x_2696.y));
            let x_2699 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2698.x, x_2698.y, x_2699.z, x_2699.w);
            let x_2701 : vec4<f32> = u_xlat10;
            let x_2704 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2707 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2701.x, x_2701.y) * vec2<f32>(x_2704.z, x_2704.w)) + -(vec2<f32>(x_2707.x, x_2707.y)));
            let x_2711 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2711.x, x_2711.x, x_2711.y, x_2711.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2714 : vec4<f32> = u_xlat12;
            let x_2716 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2714.x, x_2714.x, x_2714.z, x_2714.z) * vec4<f32>(x_2716.x, x_2716.x, x_2716.z, x_2716.z));
            let x_2719 : vec4<f32> = u_xlat13;
            let x_2721 : vec2<f32> = (vec2<f32>(x_2719.y, x_2719.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2722 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2722.x, x_2721.x, x_2722.z, x_2721.y);
            let x_2724 : vec4<f32> = u_xlat13;
            let x_2727 : vec2<f32> = u_xlat61;
            let x_2729 : vec2<f32> = ((vec2<f32>(x_2724.x, x_2724.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2727));
            let x_2730 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2729.x, x_2730.y, x_2729.y, x_2730.w);
            let x_2732 : vec2<f32> = u_xlat61;
            let x_2734 : vec2<f32> = (-(x_2732) + vec2<f32>(1.0f, 1.0f));
            let x_2735 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2734.x, x_2734.y, x_2735.z, x_2735.w);
            let x_2737 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2737, vec2<f32>(0.0f, 0.0f));
            let x_2739 : vec2<f32> = u_xlat63;
            let x_2741 : vec2<f32> = u_xlat63;
            let x_2743 : vec4<f32> = u_xlat13;
            let x_2745 : vec2<f32> = ((-(x_2739) * x_2741) + vec2<f32>(x_2743.x, x_2743.y));
            let x_2746 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2745.x, x_2745.y, x_2746.z, x_2746.w);
            let x_2748 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2748, vec2<f32>(0.0f, 0.0f));
            let x_2751 : vec2<f32> = u_xlat63;
            let x_2753 : vec2<f32> = u_xlat63;
            let x_2755 : vec4<f32> = u_xlat12;
            let x_2757 : vec2<f32> = ((-(x_2751) * x_2753) + vec2<f32>(x_2755.y, x_2755.w));
            let x_2758 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2757.x, x_2758.y, x_2757.y);
            let x_2760 : vec4<f32> = u_xlat13;
            let x_2763 : vec2<f32> = (vec2<f32>(x_2760.x, x_2760.y) + vec2<f32>(2.0f, 2.0f));
            let x_2764 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2763.x, x_2763.y, x_2764.z, x_2764.w);
            let x_2766 : vec3<f32> = u_xlat37;
            let x_2768 : vec2<f32> = (vec2<f32>(x_2766.x, x_2766.z) + vec2<f32>(2.0f, 2.0f));
            let x_2769 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2769.x, x_2768.x, x_2769.z, x_2768.y);
            let x_2772 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2772 * 0.08163200318813323975f);
            let x_2775 : vec4<f32> = u_xlat12;
            let x_2778 : vec3<f32> = (vec3<f32>(x_2775.z, x_2775.x, x_2775.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2779 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2778.x, x_2778.y, x_2778.z, x_2779.w);
            let x_2781 : vec4<f32> = u_xlat13;
            let x_2783 : vec2<f32> = (vec2<f32>(x_2781.x, x_2781.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2784 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2783.x, x_2783.y, x_2784.z, x_2784.w);
            let x_2787 : f32 = u_xlat16.y;
            u_xlat15.x = x_2787;
            let x_2789 : vec2<f32> = u_xlat61;
            let x_2792 : vec2<f32> = ((vec2<f32>(x_2789.x, x_2789.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2793 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2793.x, x_2792.x, x_2793.z, x_2792.y);
            let x_2795 : vec2<f32> = u_xlat61;
            let x_2798 : vec2<f32> = ((vec2<f32>(x_2795.x, x_2795.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2799 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2798.x, x_2799.y, x_2798.y, x_2799.w);
            let x_2802 : f32 = u_xlat12.x;
            u_xlat13.y = x_2802;
            let x_2805 : f32 = u_xlat14.y;
            u_xlat13.w = x_2805;
            let x_2807 : vec4<f32> = u_xlat13;
            let x_2808 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2807 + x_2808);
            let x_2810 : vec2<f32> = u_xlat61;
            let x_2813 : vec2<f32> = ((vec2<f32>(x_2810.y, x_2810.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2814 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2814.x, x_2813.x, x_2814.z, x_2813.y);
            let x_2816 : vec2<f32> = u_xlat61;
            let x_2819 : vec2<f32> = ((vec2<f32>(x_2816.y, x_2816.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2820 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2819.x, x_2820.y, x_2819.y, x_2820.w);
            let x_2823 : f32 = u_xlat12.y;
            u_xlat14.y = x_2823;
            let x_2825 : vec4<f32> = u_xlat14;
            let x_2826 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2825 + x_2826);
            let x_2828 : vec4<f32> = u_xlat13;
            let x_2829 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2828 / x_2829);
            let x_2831 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2831 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2833 : vec4<f32> = u_xlat14;
            let x_2834 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2833 / x_2834);
            let x_2836 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2836 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2838 : vec4<f32> = u_xlat13;
            let x_2841 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2838.w, x_2838.x, x_2838.y, x_2838.z) * vec4<f32>(x_2841.x, x_2841.x, x_2841.x, x_2841.x));
            let x_2844 : vec4<f32> = u_xlat14;
            let x_2847 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2844.x, x_2844.w, x_2844.y, x_2844.z) * vec4<f32>(x_2847.y, x_2847.y, x_2847.y, x_2847.y));
            let x_2850 : vec4<f32> = u_xlat13;
            let x_2851 : vec3<f32> = vec3<f32>(x_2850.y, x_2850.z, x_2850.w);
            let x_2852 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2851.x, x_2852.y, x_2851.y, x_2851.z);
            let x_2855 : f32 = u_xlat14.x;
            u_xlat16.y = x_2855;
            let x_2857 : vec4<f32> = u_xlat11;
            let x_2860 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2863 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2857.x, x_2857.y, x_2857.x, x_2857.y) * vec4<f32>(x_2860.x, x_2860.y, x_2860.x, x_2860.y)) + vec4<f32>(x_2863.x, x_2863.y, x_2863.z, x_2863.y));
            let x_2866 : vec4<f32> = u_xlat11;
            let x_2869 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2872 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2866.x, x_2866.y) * vec2<f32>(x_2869.x, x_2869.y)) + vec2<f32>(x_2872.w, x_2872.y));
            let x_2876 : f32 = u_xlat16.y;
            u_xlat13.y = x_2876;
            let x_2879 : f32 = u_xlat14.z;
            u_xlat16.y = x_2879;
            let x_2881 : vec4<f32> = u_xlat11;
            let x_2884 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2887 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2881.x, x_2881.y, x_2881.x, x_2881.y) * vec4<f32>(x_2884.x, x_2884.y, x_2884.x, x_2884.y)) + vec4<f32>(x_2887.x, x_2887.y, x_2887.z, x_2887.y));
            let x_2890 : vec4<f32> = u_xlat11;
            let x_2893 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2896 : vec4<f32> = u_xlat16;
            let x_2898 : vec2<f32> = ((vec2<f32>(x_2890.x, x_2890.y) * vec2<f32>(x_2893.x, x_2893.y)) + vec2<f32>(x_2896.w, x_2896.y));
            let x_2899 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_2898.x, x_2898.y, x_2899.z, x_2899.w);
            let x_2902 : f32 = u_xlat16.y;
            u_xlat13.z = x_2902;
            let x_2905 : vec4<f32> = u_xlat11;
            let x_2908 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2911 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_2905.x, x_2905.y, x_2905.x, x_2905.y) * vec4<f32>(x_2908.x, x_2908.y, x_2908.x, x_2908.y)) + vec4<f32>(x_2911.x, x_2911.y, x_2911.x, x_2911.z));
            let x_2915 : f32 = u_xlat14.w;
            u_xlat16.y = x_2915;
            let x_2918 : vec4<f32> = u_xlat11;
            let x_2921 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2924 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_2918.x, x_2918.y, x_2918.x, x_2918.y) * vec4<f32>(x_2921.x, x_2921.y, x_2921.x, x_2921.y)) + vec4<f32>(x_2924.x, x_2924.y, x_2924.z, x_2924.y));
            let x_2928 : vec4<f32> = u_xlat11;
            let x_2931 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2934 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_2928.x, x_2928.y) * vec2<f32>(x_2931.x, x_2931.y)) + vec2<f32>(x_2934.w, x_2934.y));
            let x_2938 : f32 = u_xlat16.y;
            u_xlat13.w = x_2938;
            let x_2941 : vec4<f32> = u_xlat11;
            let x_2944 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2947 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_2941.x, x_2941.y) * vec2<f32>(x_2944.x, x_2944.y)) + vec2<f32>(x_2947.x, x_2947.w));
            let x_2950 : vec4<f32> = u_xlat16;
            let x_2951 : vec3<f32> = vec3<f32>(x_2950.x, x_2950.z, x_2950.w);
            let x_2952 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2951.x, x_2952.y, x_2951.y, x_2951.z);
            let x_2954 : vec4<f32> = u_xlat11;
            let x_2957 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2960 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2954.x, x_2954.y, x_2954.x, x_2954.y) * vec4<f32>(x_2957.x, x_2957.y, x_2957.x, x_2957.y)) + vec4<f32>(x_2960.x, x_2960.y, x_2960.z, x_2960.y));
            let x_2964 : vec4<f32> = u_xlat11;
            let x_2967 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2970 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2964.x, x_2964.y) * vec2<f32>(x_2967.x, x_2967.y)) + vec2<f32>(x_2970.w, x_2970.y));
            let x_2974 : f32 = u_xlat13.x;
            u_xlat14.x = x_2974;
            let x_2976 : vec4<f32> = u_xlat11;
            let x_2979 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2982 : vec4<f32> = u_xlat14;
            let x_2984 : vec2<f32> = ((vec2<f32>(x_2976.x, x_2976.y) * vec2<f32>(x_2979.x, x_2979.y)) + vec2<f32>(x_2982.x, x_2982.y));
            let x_2985 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2984.x, x_2984.y, x_2985.z, x_2985.w);
            let x_2988 : vec4<f32> = u_xlat12;
            let x_2990 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_2988.x, x_2988.x, x_2988.x, x_2988.x) * x_2990);
            let x_2993 : vec4<f32> = u_xlat12;
            let x_2995 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_2993.y, x_2993.y, x_2993.y, x_2993.y) * x_2995);
            let x_2998 : vec4<f32> = u_xlat12;
            let x_3000 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_2998.z, x_2998.z, x_2998.z, x_2998.z) * x_3000);
            let x_3002 : vec4<f32> = u_xlat12;
            let x_3004 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3002.w, x_3002.w, x_3002.w, x_3002.w) * x_3004);
            let x_3007 : vec4<f32> = u_xlat17;
            let x_3008 : vec2<f32> = vec2<f32>(x_3007.x, x_3007.y);
            let x_3010 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
            let x_3017 : vec3<f32> = txVec43;
            let x_3019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
            u_xlat85 = x_3019;
            let x_3021 : vec4<f32> = u_xlat17;
            let x_3022 : vec2<f32> = vec2<f32>(x_3021.z, x_3021.w);
            let x_3024 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3022.x, x_3022.y, x_3024);
            let x_3031 : vec3<f32> = txVec44;
            let x_3033 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3031.xy, x_3031.z);
            u_xlat13.x = x_3033;
            let x_3036 : f32 = u_xlat13.x;
            let x_3038 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3036 * x_3038);
            let x_3042 : f32 = u_xlat22.x;
            let x_3043 : f32 = u_xlat85;
            let x_3046 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3042 * x_3043) + x_3046);
            let x_3049 : vec2<f32> = u_xlat61;
            let x_3051 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3049.x, x_3049.y, x_3051);
            let x_3058 : vec3<f32> = txVec45;
            let x_3060 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3058.xy, x_3058.z);
            u_xlat61.x = x_3060;
            let x_3063 : f32 = u_xlat22.z;
            let x_3065 : f32 = u_xlat61.x;
            let x_3067 : f32 = u_xlat85;
            u_xlat85 = ((x_3063 * x_3065) + x_3067);
            let x_3070 : vec4<f32> = u_xlat20;
            let x_3071 : vec2<f32> = vec2<f32>(x_3070.x, x_3070.y);
            let x_3073 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3071.x, x_3071.y, x_3073);
            let x_3080 : vec3<f32> = txVec46;
            let x_3082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3080.xy, x_3080.z);
            u_xlat61.x = x_3082;
            let x_3085 : f32 = u_xlat22.w;
            let x_3087 : f32 = u_xlat61.x;
            let x_3089 : f32 = u_xlat85;
            u_xlat85 = ((x_3085 * x_3087) + x_3089);
            let x_3092 : vec4<f32> = u_xlat18;
            let x_3093 : vec2<f32> = vec2<f32>(x_3092.x, x_3092.y);
            let x_3095 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3093.x, x_3093.y, x_3095);
            let x_3102 : vec3<f32> = txVec47;
            let x_3104 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3102.xy, x_3102.z);
            u_xlat61.x = x_3104;
            let x_3107 : f32 = u_xlat23.x;
            let x_3109 : f32 = u_xlat61.x;
            let x_3111 : f32 = u_xlat85;
            u_xlat85 = ((x_3107 * x_3109) + x_3111);
            let x_3114 : vec4<f32> = u_xlat18;
            let x_3115 : vec2<f32> = vec2<f32>(x_3114.z, x_3114.w);
            let x_3117 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
            let x_3124 : vec3<f32> = txVec48;
            let x_3126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
            u_xlat61.x = x_3126;
            let x_3129 : f32 = u_xlat23.y;
            let x_3131 : f32 = u_xlat61.x;
            let x_3133 : f32 = u_xlat85;
            u_xlat85 = ((x_3129 * x_3131) + x_3133);
            let x_3136 : vec4<f32> = u_xlat19;
            let x_3137 : vec2<f32> = vec2<f32>(x_3136.x, x_3136.y);
            let x_3139 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3137.x, x_3137.y, x_3139);
            let x_3146 : vec3<f32> = txVec49;
            let x_3148 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3146.xy, x_3146.z);
            u_xlat61.x = x_3148;
            let x_3151 : f32 = u_xlat23.z;
            let x_3153 : f32 = u_xlat61.x;
            let x_3155 : f32 = u_xlat85;
            u_xlat85 = ((x_3151 * x_3153) + x_3155);
            let x_3158 : vec4<f32> = u_xlat20;
            let x_3159 : vec2<f32> = vec2<f32>(x_3158.z, x_3158.w);
            let x_3161 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3159.x, x_3159.y, x_3161);
            let x_3168 : vec3<f32> = txVec50;
            let x_3170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3168.xy, x_3168.z);
            u_xlat61.x = x_3170;
            let x_3173 : f32 = u_xlat23.w;
            let x_3175 : f32 = u_xlat61.x;
            let x_3177 : f32 = u_xlat85;
            u_xlat85 = ((x_3173 * x_3175) + x_3177);
            let x_3180 : vec4<f32> = u_xlat21;
            let x_3181 : vec2<f32> = vec2<f32>(x_3180.x, x_3180.y);
            let x_3183 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3181.x, x_3181.y, x_3183);
            let x_3190 : vec3<f32> = txVec51;
            let x_3192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
            u_xlat61.x = x_3192;
            let x_3195 : f32 = u_xlat24.x;
            let x_3197 : f32 = u_xlat61.x;
            let x_3199 : f32 = u_xlat85;
            u_xlat85 = ((x_3195 * x_3197) + x_3199);
            let x_3202 : vec4<f32> = u_xlat21;
            let x_3203 : vec2<f32> = vec2<f32>(x_3202.z, x_3202.w);
            let x_3205 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3203.x, x_3203.y, x_3205);
            let x_3212 : vec3<f32> = txVec52;
            let x_3214 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3212.xy, x_3212.z);
            u_xlat61.x = x_3214;
            let x_3217 : f32 = u_xlat24.y;
            let x_3219 : f32 = u_xlat61.x;
            let x_3221 : f32 = u_xlat85;
            u_xlat85 = ((x_3217 * x_3219) + x_3221);
            let x_3224 : vec2<f32> = u_xlat38;
            let x_3226 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3224.x, x_3224.y, x_3226);
            let x_3233 : vec3<f32> = txVec53;
            let x_3235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3233.xy, x_3233.z);
            u_xlat61.x = x_3235;
            let x_3238 : f32 = u_xlat24.z;
            let x_3240 : f32 = u_xlat61.x;
            let x_3242 : f32 = u_xlat85;
            u_xlat85 = ((x_3238 * x_3240) + x_3242);
            let x_3245 : vec2<f32> = u_xlat69;
            let x_3247 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3245.x, x_3245.y, x_3247);
            let x_3254 : vec3<f32> = txVec54;
            let x_3256 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3254.xy, x_3254.z);
            u_xlat61.x = x_3256;
            let x_3259 : f32 = u_xlat24.w;
            let x_3261 : f32 = u_xlat61.x;
            let x_3263 : f32 = u_xlat85;
            u_xlat85 = ((x_3259 * x_3261) + x_3263);
            let x_3266 : vec4<f32> = u_xlat16;
            let x_3267 : vec2<f32> = vec2<f32>(x_3266.x, x_3266.y);
            let x_3269 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3267.x, x_3267.y, x_3269);
            let x_3276 : vec3<f32> = txVec55;
            let x_3278 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3276.xy, x_3276.z);
            u_xlat61.x = x_3278;
            let x_3281 : f32 = u_xlat12.x;
            let x_3283 : f32 = u_xlat61.x;
            let x_3285 : f32 = u_xlat85;
            u_xlat85 = ((x_3281 * x_3283) + x_3285);
            let x_3288 : vec4<f32> = u_xlat16;
            let x_3289 : vec2<f32> = vec2<f32>(x_3288.z, x_3288.w);
            let x_3291 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3289.x, x_3289.y, x_3291);
            let x_3298 : vec3<f32> = txVec56;
            let x_3300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3298.xy, x_3298.z);
            u_xlat61.x = x_3300;
            let x_3303 : f32 = u_xlat12.y;
            let x_3305 : f32 = u_xlat61.x;
            let x_3307 : f32 = u_xlat85;
            u_xlat85 = ((x_3303 * x_3305) + x_3307);
            let x_3310 : vec2<f32> = u_xlat64;
            let x_3312 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3310.x, x_3310.y, x_3312);
            let x_3319 : vec3<f32> = txVec57;
            let x_3321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3319.xy, x_3319.z);
            u_xlat61.x = x_3321;
            let x_3324 : f32 = u_xlat12.z;
            let x_3326 : f32 = u_xlat61.x;
            let x_3328 : f32 = u_xlat85;
            u_xlat85 = ((x_3324 * x_3326) + x_3328);
            let x_3331 : vec4<f32> = u_xlat11;
            let x_3332 : vec2<f32> = vec2<f32>(x_3331.x, x_3331.y);
            let x_3334 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3332.x, x_3332.y, x_3334);
            let x_3341 : vec3<f32> = txVec58;
            let x_3343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3341.xy, x_3341.z);
            u_xlat11.x = x_3343;
            let x_3346 : f32 = u_xlat12.w;
            let x_3348 : f32 = u_xlat11.x;
            let x_3350 : f32 = u_xlat85;
            u_xlat84 = ((x_3346 * x_3348) + x_3350);
          }
        }
      } else {
        let x_3354 : vec4<f32> = u_xlat10;
        let x_3355 : vec2<f32> = vec2<f32>(x_3354.x, x_3354.y);
        let x_3357 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3355.x, x_3355.y, x_3357);
        let x_3364 : vec3<f32> = txVec59;
        let x_3366 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3364.xy, x_3364.z);
        u_xlat84 = x_3366;
      }
      let x_3367 : i32 = u_xlati30;
      let x_3369 : f32 = x_264.x_AdditionalShadowParams[x_3367].x;
      u_xlat10.x = (1.0f + -(x_3369));
      let x_3373 : f32 = u_xlat84;
      let x_3374 : i32 = u_xlati30;
      let x_3376 : f32 = x_264.x_AdditionalShadowParams[x_3374].x;
      let x_3379 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3373 * x_3376) + x_3379);
      let x_3382 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3382);
      let x_3387 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3387 >= 1.0f);
      let x_3389 : bool = u_xlatb35;
      let x_3391 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3389 | x_3391);
      let x_3395 : bool = u_xlatb10.x;
      let x_3396 : f32 = u_xlat84;
      u_xlat84 = select(x_3396, 1.0f, x_3395);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3399 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3399) + 1.0f);
    let x_3403 : f32 = u_xlat1;
    let x_3405 : f32 = u_xlat10.x;
    let x_3407 : f32 = u_xlat84;
    u_xlat84 = ((x_3403 * x_3405) + x_3407);
    let x_3409 : f32 = u_xlat81;
    let x_3410 : f32 = u_xlat84;
    u_xlat81 = (x_3409 * x_3410);
    let x_3412 : vec3<f32> = u_xlat26;
    let x_3413 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_3412, vec3<f32>(x_3413.x, x_3413.y, x_3413.z));
    let x_3416 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3416, 0.0f, 1.0f);
    let x_3418 : f32 = u_xlat81;
    let x_3419 : f32 = u_xlat84;
    u_xlat81 = (x_3418 * x_3419);
    let x_3421 : f32 = u_xlat81;
    let x_3423 : i32 = u_xlati30;
    let x_3425 : vec4<f32> = x_1913.x_AdditionalLightsColor[x_3423];
    let x_3427 : vec3<f32> = (vec3<f32>(x_3421, x_3421, x_3421) * vec3<f32>(x_3425.x, x_3425.y, x_3425.z));
    let x_3428 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3427.x, x_3427.y, x_3427.z, x_3428.w);
    let x_3430 : vec4<f32> = u_xlat8;
    let x_3432 : f32 = u_xlat83;
    let x_3435 : vec3<f32> = u_xlat3;
    let x_3436 : vec3<f32> = ((vec3<f32>(x_3430.x, x_3430.y, x_3430.z) * vec3<f32>(x_3432, x_3432, x_3432)) + x_3435);
    let x_3437 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3436.x, x_3436.y, x_3436.z, x_3437.w);
    let x_3439 : vec4<f32> = u_xlat8;
    let x_3441 : vec4<f32> = u_xlat8;
    u_xlat30.x = dot(vec3<f32>(x_3439.x, x_3439.y, x_3439.z), vec3<f32>(x_3441.x, x_3441.y, x_3441.z));
    let x_3446 : f32 = u_xlat30.x;
    u_xlat30.x = max(x_3446, 1.17549435e-38f);
    let x_3450 : f32 = u_xlat30.x;
    u_xlat30.x = inverseSqrt(x_3450);
    let x_3453 : vec3<f32> = u_xlat30;
    let x_3455 : vec4<f32> = u_xlat8;
    let x_3457 : vec3<f32> = (vec3<f32>(x_3453.x, x_3453.x, x_3453.x) * vec3<f32>(x_3455.x, x_3455.y, x_3455.z));
    let x_3458 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3457.x, x_3457.y, x_3457.z, x_3458.w);
    let x_3460 : vec3<f32> = u_xlat26;
    let x_3461 : vec4<f32> = u_xlat8;
    u_xlat30.x = dot(x_3460, vec3<f32>(x_3461.x, x_3461.y, x_3461.z));
    let x_3466 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_3466, 0.0f, 1.0f);
    let x_3469 : vec4<f32> = u_xlat9;
    let x_3471 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3469.x, x_3469.y, x_3469.z), vec3<f32>(x_3471.x, x_3471.y, x_3471.z));
    let x_3474 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3474, 0.0f, 1.0f);
    let x_3477 : f32 = u_xlat30.x;
    let x_3479 : f32 = u_xlat30.x;
    u_xlat30.x = (x_3477 * x_3479);
    let x_3483 : f32 = u_xlat30.x;
    let x_3485 : f32 = u_xlat7.x;
    u_xlat30.x = ((x_3483 * x_3485) + 1.00001001358032226562f);
    let x_3489 : f32 = u_xlat81;
    let x_3490 : f32 = u_xlat81;
    u_xlat81 = (x_3489 * x_3490);
    let x_3493 : f32 = u_xlat30.x;
    let x_3495 : f32 = u_xlat30.x;
    u_xlat30.x = (x_3493 * x_3495);
    let x_3498 : f32 = u_xlat81;
    u_xlat81 = max(x_3498, 0.10000000149011611938f);
    let x_3501 : f32 = u_xlat30.x;
    let x_3502 : f32 = u_xlat81;
    u_xlat30.x = (x_3501 * x_3502);
    let x_3505 : f32 = u_xlat78;
    let x_3507 : f32 = u_xlat30.x;
    u_xlat30.x = (x_3505 * x_3507);
    let x_3510 : f32 = u_xlat79;
    let x_3512 : f32 = u_xlat30.x;
    u_xlat30.x = (x_3510 / x_3512);
    let x_3515 : vec4<f32> = u_xlat0;
    let x_3517 : vec3<f32> = u_xlat30;
    let x_3520 : vec3<f32> = u_xlat4;
    let x_3521 : vec3<f32> = ((vec3<f32>(x_3515.x, x_3515.y, x_3515.z) * vec3<f32>(x_3517.x, x_3517.x, x_3517.x)) + x_3520);
    let x_3522 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3521.x, x_3521.y, x_3521.z, x_3522.w);
    let x_3524 : vec4<f32> = u_xlat8;
    let x_3526 : vec4<f32> = u_xlat10;
    let x_3529 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3524.x, x_3524.y, x_3524.z) * vec3<f32>(x_3526.x, x_3526.y, x_3526.z)) + x_3529);

    continuing {
      let x_3531 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3531 + bitcast<u32>(1i));
    }
  }
  let x_3533 : vec4<f32> = u_xlat6;
  let x_3535 : vec4<f32> = u_xlat5;
  let x_3538 : vec4<f32> = u_xlat2;
  let x_3540 : vec3<f32> = ((vec3<f32>(x_3533.x, x_3533.y, x_3533.z) * vec3<f32>(x_3535.x, x_3535.z, x_3535.w)) + vec3<f32>(x_3538.x, x_3538.y, x_3538.z));
  let x_3541 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3540.x, x_3540.y, x_3540.z, x_3541.w);
  let x_3545 : vec3<f32> = u_xlat32;
  let x_3546 : vec4<f32> = u_xlat0;
  let x_3548 : vec3<f32> = (x_3545 + vec3<f32>(x_3546.x, x_3546.y, x_3546.z));
  let x_3549 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3548.x, x_3548.y, x_3548.z, x_3549.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


