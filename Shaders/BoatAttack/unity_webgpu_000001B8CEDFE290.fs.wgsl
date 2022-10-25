@group(0) @binding(0) var x_HaloFalloff : texture_2d<f32>;

@group(0) @binding(1) var sampler_HaloFalloff : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_HaloFalloff, sampler_HaloFalloff, x_22);
  u_xlat0 = x_24.w;
  let x_30 : f32 = u_xlat0;
  let x_35 : vec4<f32> = vs_COLOR0;
  let x_37 : vec3<f32> = (vec3<f32>(x_30, x_30, x_30) * vec3<f32>(x_35.x, x_35.y, x_35.z));
  let x_38 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_37.x, x_37.y, x_37.z, x_38.w);
  let x_40 : f32 = u_xlat0;
  SV_Target0.w = x_40;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

