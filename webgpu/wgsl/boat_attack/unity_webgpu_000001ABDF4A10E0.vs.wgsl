struct VGlobals {
  x_ScreenParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

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
  let x_73 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = u_xlat0;
  let x_77 : vec2<f32> = (vec2<f32>(x_73.x, x_73.y) / vec2<f32>(x_75.w, x_75.w));
  let x_78 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_77.x, x_77.y, x_78.z, x_78.w);
  let x_81 : vec4<f32> = x_17.x_ScreenParams;
  let x_85 : vec2<f32> = (vec2<f32>(x_81.x, x_81.y) * vec2<f32>(0.5f, 0.5f));
  let x_86 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat0;
  let x_90 : vec4<f32> = u_xlat1;
  let x_92 : vec2<f32> = (vec2<f32>(x_88.x, x_88.y) * vec2<f32>(x_90.x, x_90.y));
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_92.x, x_92.y, x_93.z, x_93.w);
  let x_95 : vec4<f32> = u_xlat0;
  let x_97 : vec2<f32> = round(vec2<f32>(x_95.x, x_95.y));
  let x_98 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_97.x, x_97.y, x_98.z, x_98.w);
  let x_100 : vec4<f32> = u_xlat0;
  let x_102 : vec4<f32> = u_xlat1;
  let x_104 : vec2<f32> = (vec2<f32>(x_100.x, x_100.y) / vec2<f32>(x_102.x, x_102.y));
  let x_105 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
  let x_113 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat0;
  let x_117 : vec2<f32> = (vec2<f32>(x_113.w, x_113.w) * vec2<f32>(x_115.x, x_115.y));
  let x_120 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_117.x, x_117.y, x_120.z, x_120.w);
  let x_122 : vec4<f32> = u_xlat0;
  let x_123 : vec2<f32> = vec2<f32>(x_122.z, x_122.w);
  let x_125 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_125.x, x_125.y, x_123.x, x_123.y);
  let x_131 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_131;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}

