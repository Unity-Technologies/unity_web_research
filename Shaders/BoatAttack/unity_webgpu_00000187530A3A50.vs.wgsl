struct VGlobals {
  unity_LightShadowBias : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_OutlineTex_ST : vec4<f32>,
  x_OutlineWidth : f32,
  x_FaceDilate : f32,
  x_ScaleRatioA : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD2 : f32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat0 = (x_40 + x_43);
  let x_46 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_46.y, x_46.y, x_46.y, x_46.y) * x_49);
  let x_52 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_53 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_52 * vec4<f32>(x_53.x, x_53.x, x_53.x, x_53.x)) + x_56);
  let x_59 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_60 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_59 * vec4<f32>(x_60.z, x_60.z, x_60.z, x_60.z)) + x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_67 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.w, x_67.w, x_67.w, x_67.w)) + x_70);
  let x_76 : f32 = u_xlat0.w;
  let x_79 : f32 = u_xlat0.z;
  u_xlat1.x = min(x_76, x_79);
  let x_84 : f32 = u_xlat0.z;
  let x_87 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_84) + x_87);
  let x_97 : f32 = x_17.unity_LightShadowBias.y;
  let x_99 : f32 = u_xlat1.x;
  let x_102 : f32 = u_xlat0.z;
  gl_Position.z = ((x_97 * x_99) + x_102);
  let x_107 : vec4<f32> = u_xlat0;
  let x_108 : vec3<f32> = vec3<f32>(x_107.x, x_107.y, x_107.w);
  let x_111 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_108.x, x_108.y, x_111.z, x_108.z);
  let x_117 : vec4<f32> = in_TEXCOORD0;
  let x_120 : vec4<f32> = x_17.x_MainTex_ST;
  let x_124 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_117.x, x_117.y) * vec2<f32>(x_120.x, x_120.y)) + vec2<f32>(x_124.z, x_124.w));
  let x_129 : vec4<f32> = in_TEXCOORD0;
  let x_133 : vec4<f32> = x_17.x_OutlineTex_ST;
  let x_137 : vec4<f32> = x_17.x_OutlineTex_ST;
  vs_TEXCOORD3 = ((vec2<f32>(x_129.x, x_129.y) * vec2<f32>(x_133.x, x_133.y)) + vec2<f32>(x_137.z, x_137.w));
  let x_142 : f32 = x_17.x_OutlineWidth;
  let x_146 : f32 = x_17.x_ScaleRatioA;
  u_xlat0.x = ((-(x_142) * x_146) + 1.0f);
  let x_153 : f32 = x_17.x_FaceDilate;
  let x_156 : f32 = x_17.x_ScaleRatioA;
  let x_159 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_153) * x_156) + x_159);
  let x_164 : f32 = u_xlat0.x;
  vs_TEXCOORD2 = (x_164 * 0.5f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD2);
}

