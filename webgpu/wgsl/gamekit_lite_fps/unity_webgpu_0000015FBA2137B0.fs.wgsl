struct PGlobals {
  x_AOColor : vec3<f32>,
}

var<private> u_xlat0 : f32;

@group(0) @binding(1) var x_MSVOcclusionTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_MSVOcclusionTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_39 : PGlobals;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MSVOcclusionTexture, sampler_MSVOcclusionTexture, x_22);
  u_xlat0 = x_24.x;
  let x_28 : f32 = u_xlat0;
  u_xlat0 = (-(x_28) + 1.0f);
  let x_34 : f32 = u_xlat0;
  let x_44 : vec3<f32> = x_39.x_AOColor;
  let x_45 : vec3<f32> = (vec3<f32>(x_34, x_34, x_34) * x_44);
  let x_46 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_45.x, x_45.y, x_45.z, x_46.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

