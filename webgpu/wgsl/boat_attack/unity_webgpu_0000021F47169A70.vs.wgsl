struct VGlobals {
  x_BlitScaleBias : vec4<f32>,
  x_BlitScaleBiasRt : vec4<f32>,
}

var<private> gl_VertexIndex : i32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(1) var<uniform> x_66 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlatu2 : u32;
  var u_xlati4 : i32;
  var u_xlat1 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlat0 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_VertexIndex;
  u_xlati0 = bitcast<i32>((bitcast<u32>(x_11) & 1u));
  let x_19 : i32 = gl_VertexIndex;
  u_xlatu2 = (bitcast<u32>(x_19) >> 1u);
  let x_23 : i32 = u_xlati0;
  let x_25 : u32 = u_xlatu2;
  u_xlati4 = (-(x_23) + -(bitcast<i32>(x_25)));
  let x_29 : i32 = u_xlati0;
  let x_30 : u32 = u_xlatu2;
  u_xlati0 = (x_29 + bitcast<i32>(x_30));
  let x_37 : u32 = u_xlatu2;
  u_xlat1.x = f32(x_37);
  let x_43 : i32 = u_xlati0;
  u_xlatu0 = (bitcast<u32>(x_43) & 1u);
  let x_49 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_49);
  let x_53 : f32 = u_xlat0.x;
  u_xlat1.z = (-(x_53) + 1.0f);
  let x_62 : vec3<f32> = u_xlat1;
  let x_70 : vec4<f32> = x_66.x_BlitScaleBias;
  let x_74 : vec4<f32> = x_66.x_BlitScaleBias;
  vs_TEXCOORD0 = ((vec2<f32>(x_62.x, x_62.z) * vec2<f32>(x_70.x, x_70.y)) + vec2<f32>(x_74.z, x_74.w));
  let x_77 : i32 = u_xlati4;
  u_xlati0 = (x_77 + 1i);
  let x_80 : i32 = u_xlati0;
  u_xlatu0 = (bitcast<u32>(x_80) & 1u);
  let x_83 : u32 = u_xlatu0;
  u_xlat1.y = f32(x_83);
  let x_86 : vec3<f32> = u_xlat1;
  let x_89 : vec4<f32> = x_66.x_BlitScaleBiasRt;
  let x_93 : vec4<f32> = x_66.x_BlitScaleBiasRt;
  let x_95 : vec2<f32> = ((vec2<f32>(x_86.x, x_86.y) * vec2<f32>(x_89.x, x_89.y)) + vec2<f32>(x_93.z, x_93.w));
  let x_96 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  u_xlat0.z = 1.0f;
  u_xlat0.w = 1.0f;
  let x_105 : vec4<f32> = u_xlat0;
  gl_Position = ((x_105 * vec4<f32>(2.0f, -2.0f, 1.0f, 1.0f)) + vec4<f32>(-1.0f, 1.0f, 0.0f, 0.0f));
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

