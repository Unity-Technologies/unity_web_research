struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

@group(0) @binding(1) var x_FullCoCTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> SV_Target0 : f32;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> SV_Target1 : vec3<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_32 : f32 = x_25.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_FullCoCTexture, sampler_LinearClamp, x_22, x_32);
  u_xlat0 = x_34.x;
  let x_38 : f32 = u_xlat0;
  SV_Target0 = x_38;
  let x_46 : vec2<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_25.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_46, x_48);
  u_xlat1 = vec3<f32>(x_49.x, x_49.y, x_49.z);
  let x_53 : f32 = u_xlat0;
  let x_55 : vec3<f32> = u_xlat1;
  SV_Target1 = (vec3<f32>(x_53, x_53, x_53) * x_55);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : f32,
  @location(1)
  SV_Target1_1 : vec3<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

