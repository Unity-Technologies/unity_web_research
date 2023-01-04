var<private> in_POSITION0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = in_POSITION0;
  let x_28 : vec2<f32> = ((vec2<f32>(x_19.x, x_19.y) * vec2<f32>(2.0f, -2.0f)) + vec2<f32>(-1.0f, 1.0f));
  let x_31 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_28.x, x_28.y, x_31.z, x_31.w);
  let x_35 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_35.x, x_35.y, vec2<f32>(1.0f, 1.0f).x, vec2<f32>(1.0f, 1.0f).y);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position);
}

