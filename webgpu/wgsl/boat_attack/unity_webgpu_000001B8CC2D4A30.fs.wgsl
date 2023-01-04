struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Params : vec4<f32>,
}

@group(0) @binding(1) var x_SourceTexLowMip : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_SourceTexLowMip, sampler_LinearClamp, x_23, x_34);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_42 : vec2<f32> = vs_TEXCOORD0;
  let x_44 : f32 = x_27.x_GlobalMipBias.x;
  let x_45 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_42, x_44);
  u_xlat1 = vec3<f32>(x_45.x, x_45.y, x_45.z);
  let x_47 : vec3<f32> = u_xlat0;
  let x_48 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_47 + -(x_48));
  let x_56 : vec4<f32> = x_27.x_Params;
  let x_58 : vec3<f32> = u_xlat0;
  let x_60 : vec3<f32> = u_xlat1;
  let x_61 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.x, x_56.x) * x_58) + x_60);
  let x_62 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  SV_Target0.w = 1.0f;
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

