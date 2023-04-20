diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_TextureSampleAdd : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_50 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_COLOR0.w;
  u_xlat0.x = (x_16 * 255.0f);
  let x_23 : f32 = u_xlat0.x;
  u_xlat0.x = round(x_23);
  let x_27 : f32 = u_xlat0.x;
  u_xlat0.w = (x_27 * 0.0039215688593685627f);
  let x_45 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_45);
  u_xlat1 = x_46;
  let x_47 : vec4<f32> = u_xlat1;
  let x_55 : vec4<f32> = x_50.x_TextureSampleAdd;
  u_xlat1 = (x_47 + x_55);
  let x_58 : vec4<f32> = vs_COLOR0;
  let x_59 : vec3<f32> = vec3<f32>(x_58.x, x_58.y, x_58.z);
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_62 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_62 * x_63);
  let x_67 : vec4<f32> = u_xlat0;
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec3<f32> = (vec3<f32>(x_67.w, x_67.w, x_67.w) * vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_72 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  let x_75 : f32 = u_xlat0.w;
  SV_Target0.w = x_75;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


