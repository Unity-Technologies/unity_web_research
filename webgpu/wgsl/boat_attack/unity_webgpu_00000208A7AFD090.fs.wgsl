struct PGlobals {
  x_MainLightPosition : vec4<f32>,
  x_SunSize : f32,
  x_SunSizeConvergence : f32,
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

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_44 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlatb4 : bool;
  var x_192 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = x_12.x_SunSize;
  u_xlat0.x = log2(x_17);
  let x_24 : f32 = u_xlat0.x;
  u_xlat0.x = (x_24 * 0.649999976f);
  let x_29 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_29);
  let x_37 : vec3<f32> = vs_TEXCOORD0;
  let x_48 : vec4<f32> = x_44.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_37.y, x_37.y, x_37.y) * vec3<f32>(x_48.x, x_48.y, x_48.z));
  let x_52 : vec4<f32> = x_44.unity_ObjectToWorld[0i];
  let x_54 : vec3<f32> = vs_TEXCOORD0;
  let x_57 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_52.x, x_52.y, x_52.z) * vec3<f32>(x_54.x, x_54.x, x_54.x)) + x_57);
  let x_61 : vec4<f32> = x_44.unity_ObjectToWorld[2i];
  let x_63 : vec3<f32> = vs_TEXCOORD0;
  let x_66 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_63.z, x_63.z, x_63.z)) + x_66);
  let x_69 : vec3<f32> = u_xlat2;
  let x_70 : vec3<f32> = u_xlat2;
  u_xlat1.x = dot(x_69, x_70);
  let x_74 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_74);
  let x_77 : vec3<f32> = u_xlat2;
  let x_78 : vec3<f32> = u_xlat1;
  u_xlat2 = (x_77 * vec3<f32>(x_78.x, x_78.x, x_78.x));
  let x_82 : vec4<f32> = x_12.x_MainLightPosition;
  let x_84 : vec3<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), -(x_84));
  let x_89 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_89, 0.0f, 1.0f);
  let x_95 : f32 = u_xlat2.x;
  u_xlat2.x = log2(x_95);
  let x_99 : f32 = u_xlat2.x;
  let x_101 : f32 = x_12.x_SunSizeConvergence;
  u_xlat2.x = (x_99 * x_101);
  let x_105 : f32 = u_xlat2.x;
  u_xlat2.x = exp2(x_105);
  let x_110 : f32 = u_xlat2.x;
  u_xlat6 = ((-(x_110) * 1.980000019f) + 1.980100036f);
  let x_117 : f32 = u_xlat2.x;
  let x_119 : f32 = u_xlat2.x;
  u_xlat0.y = ((x_117 * x_119) + 1.0f);
  let x_125 : vec4<f32> = u_xlat0;
  let x_130 : vec2<f32> = (vec2<f32>(x_125.x, x_125.y) * vec2<f32>(10.0f, 0.010016442f));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_130.x, x_130.y, x_131.z, x_131.w);
  let x_133 : f32 = u_xlat6;
  u_xlat6 = log2(x_133);
  let x_135 : f32 = u_xlat6;
  let x_137 : f32 = u_xlat0.x;
  u_xlat0.x = (x_135 * x_137);
  let x_141 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_141);
  let x_145 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_145, 0.0001f);
  let x_150 : f32 = u_xlat0.y;
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = (x_150 / x_152);
  let x_156 : f32 = u_xlat2.y;
  u_xlat2.x = (x_156 * 50.0f);
  let x_161 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_161, 0.0f, 1.0f);
  let x_168 : f32 = u_xlat2.y;
  u_xlatb4 = (x_168 < 0.0f);
  let x_171 : vec3<f32> = vs_TEXCOORD1;
  let x_173 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (x_171 + -(x_173));
  let x_176 : vec3<f32> = u_xlat2;
  let x_178 : vec3<f32> = u_xlat1;
  let x_180 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = ((vec3<f32>(x_176.x, x_176.x, x_176.x) * x_178) + x_180);
  let x_183 : vec3<f32> = vs_TEXCOORD3;
  let x_184 : vec4<f32> = u_xlat0;
  let x_187 : vec3<f32> = u_xlat1;
  let x_188 : vec3<f32> = ((x_183 * vec3<f32>(x_184.x, x_184.x, x_184.x)) + x_187);
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_188.x, x_188.y, x_189.z, x_188.z);
  let x_191 : bool = u_xlatb4;
  if (x_191) {
    let x_195 : vec4<f32> = u_xlat0;
    x_192 = vec3<f32>(x_195.x, x_195.y, x_195.w);
  } else {
    let x_198 : vec3<f32> = u_xlat1;
    x_192 = x_198;
  }
  let x_199 : vec3<f32> = x_192;
  let x_200 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec4<f32> = u_xlat0;
  let x_205 : vec3<f32> = max(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_210 : vec4<f32> = u_xlat0;
  let x_214 : vec3<f32> = min(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(25.0f, 25.0f, 25.0f));
  let x_215 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

