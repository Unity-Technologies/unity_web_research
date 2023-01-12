struct PGlobals {
  x_AOColor : vec3<f32>,
}

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_MSVOcclusionTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_MSVOcclusionTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_48 : PGlobals;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z, x_13.w);
  let x_30 : vec2<f32> = vs_TEXCOORD1;
  let x_31 : vec4<f32> = textureSample(x_MSVOcclusionTexture, sampler_MSVOcclusionTexture, x_30);
  u_xlat0 = x_31.x;
  let x_35 : f32 = u_xlat0;
  u_xlat0 = (-(x_35) + 1.0f);
  let x_39 : f32 = u_xlat0;
  SV_Target0.w = x_39;
  let x_44 : f32 = u_xlat0;
  let x_53 : vec3<f32> = x_48.x_AOColor;
  let x_54 : vec3<f32> = (vec3<f32>(x_44, x_44, x_44) * x_53);
  let x_55 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_54.x, x_54.y, x_54.z, x_55.w);
  SV_Target1.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

