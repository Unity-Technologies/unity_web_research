diagnostic(off, derivative_uniformity);

var<private> u_xlati0 : i32;

var<private> gl_VertexIndex : i32;

var<private> u_xlatu2 : u32;

var<private> u_xlati4 : i32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlat0 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
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
  let x_47 : u32 = u_xlatu0;
  u_xlat0 = f32(x_47);
  let x_49 : f32 = u_xlat0;
  u_xlat0 = (-(x_49) + 1.0f);
  let x_53 : f32 = u_xlat0;
  u_xlat1.z = (-(x_53) + 1.0f);
  let x_61 : vec3<f32> = u_xlat1;
  vs_TEXCOORD0 = vec2<f32>(x_61.x, x_61.z);
  let x_63 : i32 = u_xlati4;
  u_xlati0 = (x_63 + 1i);
  let x_66 : i32 = u_xlati0;
  u_xlatu0 = (bitcast<u32>(x_66) & 1u);
  let x_69 : u32 = u_xlatu0;
  u_xlat1.y = f32(x_69);
  let x_78 : vec3<f32> = u_xlat1;
  let x_85 : vec2<f32> = ((vec2<f32>(x_78.x, x_78.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_88 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_85.x, x_85.y, x_88.z, x_88.w);
  let x_92 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_92.x, x_92.y, vec2<f32>(1.0f, 1.0f).x, vec2<f32>(1.0f, 1.0f).y);
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


