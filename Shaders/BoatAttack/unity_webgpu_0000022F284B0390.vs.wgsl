struct VGlobals {
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
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

type Arr_1 = array<vec4<f32>, 256u>;

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_6 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_5,
  x_AdditionalLightsColor : Arr_5,
  x_AdditionalLightsAttenuation : Arr_5,
  x_AdditionalLightsSpotDir : Arr_5,
  x_AdditionalLightsOcclusionProbes : Arr_5,
  x_AdditionalLightsLayerMasks : Arr_6,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

@group(1) @binding(4) var<uniform> x_37 : UnityPerDraw;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_217 : AdditionalLights;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlati15 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu17 : u32;
  var u_xlati3 : i32;
  var u_xlat17 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati17 : i32;
  var u_xlat3 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_MainTex_ST;
  let x_26 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_31 : vec2<f32> = in_TEXCOORD1;
  let x_40 : vec4<f32> = x_37.unity_LightmapST;
  let x_44 : vec4<f32> = x_37.unity_LightmapST;
  vs_TEXCOORD1 = ((x_31 * vec2<f32>(x_40.x, x_40.y)) + vec2<f32>(x_44.z, x_44.w));
  let x_52 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = x_37.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_52.y, x_52.y, x_52.y) * vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_61 : vec4<f32> = x_37.unity_ObjectToWorld[0i];
  let x_63 : vec4<f32> = in_POSITION0;
  let x_66 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_63.x, x_63.x, x_63.x)) + x_66);
  let x_70 : vec4<f32> = x_37.unity_ObjectToWorld[2i];
  let x_72 : vec4<f32> = in_POSITION0;
  let x_75 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_70.x, x_70.y, x_70.z) * vec3<f32>(x_72.z, x_72.z, x_72.z)) + x_75);
  let x_77 : vec3<f32> = u_xlat0;
  let x_80 : vec4<f32> = x_37.unity_ObjectToWorld[3i];
  u_xlat0 = (x_77 + vec3<f32>(x_80.x, x_80.y, x_80.z));
  let x_85 : vec3<f32> = u_xlat0;
  let x_88 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_85.y, x_85.y, x_85.y, x_85.y) * x_88);
  let x_91 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_92 : vec3<f32> = u_xlat0;
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_91 * vec4<f32>(x_92.x, x_92.x, x_92.x, x_92.x)) + x_95);
  let x_98 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_99 : vec3<f32> = u_xlat0;
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_98 * vec4<f32>(x_99.z, x_99.z, x_99.z, x_99.z)) + x_102);
  let x_109 : vec4<f32> = u_xlat1;
  let x_111 : vec4<f32> = x_17.unity_MatrixVP[3i];
  gl_Position = (x_109 + x_111);
  let x_116 : vec4<f32> = x_17.x_MainLightColor;
  let x_120 : vec4<f32> = x_37.unity_LightData;
  let x_122 : vec3<f32> = (vec3<f32>(x_116.x, x_116.y, x_116.z) * vec3<f32>(x_120.z, x_120.z, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_129 : vec3<f32> = in_NORMAL0;
  let x_131 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat15 = dot(x_129, vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : f32 = u_xlat15;
  u_xlat15 = clamp(x_134, 0.0f, 1.0f);
  let x_138 : f32 = u_xlat15;
  let x_140 : vec4<f32> = u_xlat1;
  let x_142 : vec3<f32> = (vec3<f32>(x_138, x_138, x_138) * vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_148 : f32 = x_17.x_AdditionalLightsCount.x;
  let x_150 : f32 = x_37.unity_LightData.y;
  u_xlat15 = min(x_148, x_150);
  let x_154 : f32 = u_xlat15;
  u_xlati15 = i32(x_154);
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat2 = vec3<f32>(x_157.x, x_157.y, x_157.z);
  u_xlatu_loop_1 = 0u;
  loop {
    let x_166 : u32 = u_xlatu_loop_1;
    let x_167 : i32 = u_xlati15;
    if ((x_166 < bitcast<u32>(x_167))) {
    } else {
      break;
    }
    let x_172 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_172 >> 2u);
    let x_175 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_175 & 3u));
    let x_181 : u32 = u_xlatu17;
    let x_184 : vec4<f32> = x_37.unity_LightIndices[bitcast<i32>(x_181)];
    let x_194 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_199 : vec4<u32> = indexable[x_194];
    u_xlat17 = dot(x_184, bitcast<vec4<f32>>(x_199));
    let x_203 : f32 = u_xlat17;
    u_xlati17 = i32(x_203);
    let x_206 : vec3<f32> = u_xlat0;
    let x_218 : i32 = u_xlati17;
    let x_220 : vec4<f32> = x_217.x_AdditionalLightsPosition[x_218];
    let x_223 : i32 = u_xlati17;
    let x_225 : vec4<f32> = x_217.x_AdditionalLightsPosition[x_223];
    u_xlat3 = ((-(x_206) * vec3<f32>(x_220.w, x_220.w, x_220.w)) + vec3<f32>(x_225.x, x_225.y, x_225.z));
    let x_229 : vec3<f32> = u_xlat3;
    let x_230 : vec3<f32> = u_xlat3;
    u_xlat18 = dot(x_229, x_230);
    let x_232 : f32 = u_xlat18;
    u_xlat18 = max(x_232, 6.10351562e-05f);
    let x_236 : f32 = u_xlat18;
    u_xlat4.x = inverseSqrt(x_236);
    let x_239 : vec3<f32> = u_xlat3;
    let x_240 : vec3<f32> = u_xlat4;
    u_xlat3 = (x_239 * vec3<f32>(x_240.x, x_240.x, x_240.x));
    let x_243 : f32 = u_xlat18;
    u_xlat4.x = (1.0f / x_243);
    let x_246 : f32 = u_xlat18;
    let x_247 : i32 = u_xlati17;
    let x_249 : f32 = x_217.x_AdditionalLightsAttenuation[x_247].x;
    u_xlat18 = (x_246 * x_249);
    let x_251 : f32 = u_xlat18;
    let x_253 : f32 = u_xlat18;
    u_xlat18 = ((-(x_251) * x_253) + 1.0f);
    let x_256 : f32 = u_xlat18;
    u_xlat18 = max(x_256, 0.0f);
    let x_258 : f32 = u_xlat18;
    let x_259 : f32 = u_xlat18;
    u_xlat18 = (x_258 * x_259);
    let x_261 : f32 = u_xlat18;
    let x_263 : f32 = u_xlat4.x;
    u_xlat18 = (x_261 * x_263);
    let x_265 : i32 = u_xlati17;
    let x_267 : vec4<f32> = x_217.x_AdditionalLightsSpotDir[x_265];
    let x_269 : vec3<f32> = u_xlat3;
    u_xlat4.x = dot(vec3<f32>(x_267.x, x_267.y, x_267.z), x_269);
    let x_273 : f32 = u_xlat4.x;
    let x_274 : i32 = u_xlati17;
    let x_276 : f32 = x_217.x_AdditionalLightsAttenuation[x_274].z;
    let x_278 : i32 = u_xlati17;
    let x_280 : f32 = x_217.x_AdditionalLightsAttenuation[x_278].w;
    u_xlat4.x = ((x_273 * x_276) + x_280);
    let x_284 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_284, 0.0f, 1.0f);
    let x_288 : f32 = u_xlat4.x;
    let x_290 : f32 = u_xlat4.x;
    u_xlat4.x = (x_288 * x_290);
    let x_293 : f32 = u_xlat18;
    let x_295 : f32 = u_xlat4.x;
    u_xlat18 = (x_293 * x_295);
    let x_297 : f32 = u_xlat18;
    let x_299 : i32 = u_xlati17;
    let x_301 : vec4<f32> = x_217.x_AdditionalLightsColor[x_299];
    u_xlat4 = (vec3<f32>(x_297, x_297, x_297) * vec3<f32>(x_301.x, x_301.y, x_301.z));
    let x_304 : vec3<f32> = in_NORMAL0;
    let x_305 : vec3<f32> = u_xlat3;
    u_xlat17 = dot(x_304, x_305);
    let x_307 : f32 = u_xlat17;
    u_xlat17 = clamp(x_307, 0.0f, 1.0f);
    let x_309 : vec3<f32> = u_xlat4;
    let x_310 : f32 = u_xlat17;
    let x_313 : vec3<f32> = u_xlat2;
    u_xlat2 = ((x_309 * vec3<f32>(x_310, x_310, x_310)) + x_313);

    continuing {
      let x_315 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_315 + bitcast<u32>(1i));
    }
  }
  let x_318 : vec3<f32> = u_xlat2;
  let x_319 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_324 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_324;
  vs_TEXCOORD3.w = 0.0f;
  let x_328 : vec3<f32> = in_NORMAL0;
  let x_329 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_334 : vec3<f32> = u_xlat0;
  vs_TEXCOORD6 = x_334;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD6_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(2) in_TEXCOORD1_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(3) in_NORMAL0_param : vec3<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, gl_Position, vs_TEXCOORD3, vs_TEXCOORD5, vs_TEXCOORD6);
}

