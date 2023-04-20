diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_ScreenSize : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_LensFlareScreenSpaceResultTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_14.x_ScreenSize;
  let x_27 : vec4<f32> = x_14.x_RTHandleScale;
  let x_29 : vec2<f32> = ((-(vec2<f32>(x_19.z, x_19.w)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_27.x, x_27.y));
  let x_30 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_29.x, x_29.y, x_30.z);
  let x_32 : vec3<f32> = u_xlat0;
  let x_36 : vec2<f32> = vs_TEXCOORD0;
  let x_37 : vec2<f32> = min(vec2<f32>(x_32.x, x_32.y), x_36);
  let x_38 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_38.z);
  let x_50 : vec3<f32> = u_xlat0;
  let x_57 : f32 = x_14.x_GlobalMipBias.x;
  let x_58 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceResultTexture, sampler_LinearClamp, vec2<f32>(x_50.x, x_50.y), x_57);
  u_xlat0 = vec3<f32>(x_58.x, x_58.y, x_58.z);
  let x_62 : vec3<f32> = u_xlat0;
  let x_63 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
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


