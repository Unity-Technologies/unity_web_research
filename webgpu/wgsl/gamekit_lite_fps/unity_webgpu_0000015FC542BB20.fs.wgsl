var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_CameraReflectionsTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_CameraReflectionsTexture : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_CameraReflectionsTexture, sampler_CameraReflectionsTexture, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_31 : vec3<f32> = exp2(-(x_29));
  let x_32 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_31.x, x_31.y, x_31.z, x_32.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

