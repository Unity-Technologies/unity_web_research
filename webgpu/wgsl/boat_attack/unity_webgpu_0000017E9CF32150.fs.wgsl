diagnostic(off, derivative_uniformity);

var<private> u_xlat0 : f32;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> gl_FragDepth : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_22);
  u_xlat0 = x_24.x;
  let x_31 : f32 = u_xlat0;
  u_xlatb1 = (x_31 < 0.5f);
  let x_36 : f32 = u_xlat0;
  gl_FragDepth = x_36;
  let x_37 : bool = u_xlatb1;
  if (((select(0i, 1i, x_37) * -1i) != 0i)) {
    discard;
  }
  return;
}

struct main_out {
  @builtin(frag_depth)
  gl_FragDepth_1 : f32,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(gl_FragDepth);
}


