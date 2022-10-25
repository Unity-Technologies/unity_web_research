struct VGlobals {
  x_ScaleBias : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
}

var<private> gl_VertexIndex : i32;

@group(1) @binding(1) var<uniform> x_69 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlatu3 : u32;
  var u_xlati6 : i32;
  var u_xlat1 : vec2<f32>;
  var u_xlatu0 : u32;
  var u_xlat0 : f32;
  var u_xlati3 : i32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_VertexIndex;
  u_xlati0 = bitcast<i32>((bitcast<u32>(x_11) & 1u));
  let x_19 : i32 = gl_VertexIndex;
  u_xlatu3 = (bitcast<u32>(x_19) >> 1u);
  let x_23 : i32 = u_xlati0;
  let x_25 : u32 = u_xlatu3;
  u_xlati6 = (-(x_23) + -(bitcast<i32>(x_25)));
  let x_29 : i32 = u_xlati0;
  let x_30 : u32 = u_xlatu3;
  u_xlati0 = (x_29 + bitcast<i32>(x_30));
  let x_37 : u32 = u_xlatu3;
  u_xlat1.x = f32(x_37);
  let x_43 : i32 = u_xlati0;
  u_xlatu0 = (bitcast<u32>(x_43) & 1u);
  let x_47 : u32 = u_xlatu0;
  u_xlat0 = f32(x_47);
  let x_49 : f32 = u_xlat0;
  u_xlat0 = (-(x_49) + 1.0f);
  let x_54 : i32 = u_xlati6;
  u_xlati3 = (x_54 + 1i);
  let x_57 : i32 = u_xlati3;
  u_xlatu3 = (bitcast<u32>(x_57) & 1u);
  let x_60 : u32 = u_xlatu3;
  u_xlat1.y = f32(x_60);
  let x_66 : vec2<f32> = u_xlat1;
  let x_72 : vec4<f32> = x_69.x_ScaleBiasRt;
  let x_76 : vec4<f32> = x_69.x_ScaleBiasRt;
  let x_78 : vec2<f32> = ((x_66 * vec2<f32>(x_72.x, x_72.y)) + vec2<f32>(x_76.z, x_76.w));
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_78.x, x_78.y, x_79.z, x_79.w);
  let x_84 : f32 = u_xlat1.x;
  let x_88 : f32 = x_69.x_ScaleBias.x;
  let x_92 : f32 = x_69.x_ScaleBias.z;
  vs_TEXCOORD0.x = ((x_84 * x_88) + x_92);
  u_xlat2.z = 1.0f;
  u_xlat2.w = 1.0f;
  let x_103 : vec4<f32> = u_xlat2;
  gl_Position = ((x_103 * vec4<f32>(2.0f, -2.0f, 1.0f, 1.0f)) + vec4<f32>(-1.0f, 1.0f, 0.0f, 0.0f));
  let x_116 : f32 = x_69.x_ScaleBias.w;
  u_xlat3 = (-(x_116) + 1.0f);
  let x_119 : f32 = u_xlat3;
  let x_121 : f32 = x_69.x_ScaleBias.y;
  u_xlat3 = (x_119 + -(x_121));
  let x_124 : f32 = u_xlat0;
  let x_126 : f32 = x_69.x_ScaleBias.y;
  let x_128 : f32 = u_xlat3;
  vs_TEXCOORD0.y = ((x_124 * x_126) + x_128);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(vertex_index) gl_VertexIndex_param : u32) -> main_out {
  gl_VertexIndex = bitcast<i32>(gl_VertexIndex_param);
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position);
}

